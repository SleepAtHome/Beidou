package com.xaufe.controller;

import com.google.code.kaptcha.Constants;
import com.xaufe.entity.User;
import com.xaufe.model.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.Date;
import java.util.List;

import static com.xaufe.util.Constant.ONLINE_USER;


@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("user_info_modify")
    public ModelAndView userInfoModify(HttpServletRequest req, HttpServletResponse resp){
        ModelAndView modelAndView = new ModelAndView("user_page/user_info_modify");
        User olUser= (User) req.getSession().getAttribute("OnlineUser");
        int olUserId=olUser.getUserId();

        String userImgpath = userService.getUserImg(olUserId);
        modelAndView.addObject("userImgPath",userImgpath);

        return modelAndView;
    }

    /**
     * 用户图片上传
     * @param request
     * @param userDesc
     * @param userImg
     * @return
     * @throws IOException
     */
    @RequestMapping("upload_userImg")
    public String userUploadImg(HttpServletRequest request, @RequestParam("userDesc") String userDesc,
                                @RequestParam("userImg") MultipartFile userImg) throws IOException {
        System.out.println(userDesc);
        User user = (User) request.getSession().getAttribute(ONLINE_USER);
        Integer userId = user.getUserId();
        String userEmail = user.getUserEmail();
        //如果文件不为空，写入上传路径
        if(!userImg.isEmpty()) {
            //上传文件路径 D:\workspace\Beidou\tttest\out\artifacts\tttest_war_exploded\images
            String path = request.getServletContext().getRealPath("/images/");
            //上传文件名
            String filename = userImg.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            // 图片路径
            String picturePath = path + File.separator + userEmail + filename;
            //将上传文件保存到一个目标文件当中
            userImg.transferTo(new File(picturePath));

            userService.addUserImg(userId, "/images/"+ userEmail + filename, userDesc);
            return "user_page/user_index";
        } else {
            return "redirect:login";
        }

/*
        // 1、得到 FileItem 的集合 items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // 设置内存中最多可以存放的上传文件的大小，若超出，则把文件写到一个临时文件夹中，以byte为单位（这里是500K）
        factory.setSizeThreshold(1024*500);
        // 设置临时的文件夹
        File tempDir = new File("d:\\tempDir");
        factory.setRepository(tempDir);

        ServletFileUpload upload = new ServletFileUpload(factory);

        // 设置上传文件总的大小的上限，也可以设置单个文件大小的上限(这里是5M)
        upload.setSizeMax(1024*1024*5);

            List<FileItem> items = upload.parseRequest(req);
            // 2、遍历items：
            for (FileItem item : items){
                // 若是一个一般的表单域，打印信息
                if (item.isFormField()){
                    String name = item.getFieldName();
                    String value = item.getString();
                    System.out.println(name+" = "+value);
                }
                // 若是一个文件域，则把文件保存到 d:\\files 目录下
                else {
                    String fieldName = item.getFieldName();
                    String fileName = item.getName();
                    String contentType = item.getContentType();
                    boolean isInMemory = item.isInMemory();
                    long sizeInBytes = item.getSize();

                    System.out.println(fieldName);
                    System.out.println(fileName);
                    System.out.println(contentType);
                    System.out.println(isInMemory);
                    System.out.println(sizeInBytes);

                    InputStream in = item.getInputStream();
                    byte [] buffer = new byte[1024];
                    int len = 0;

                    fileName = "d:\\files\\"+fileName;
                    System.out.println(fileName);
                    OutputStream out = new FileOutputStream(fileName);

                    while ((len = in.read(buffer))!=-1){
                        out.write(buffer,0 , len);
                    }
                    out.close();
                    in.close();
                }
            }


*/


    }

    //跳转到user_password_modify
    @RequestMapping("user_password_modify")
    public String Jump2userpasswordmodify(){
        return "user_page/user_password_modify";
    }

    /**
     * 用户修改密码
     * @param req
     * @param resp
     * @return
     */
    @RequestMapping("password_modify")
    public String modifyUserPassword(HttpServletRequest req, HttpServletResponse resp){
        String userNewPassword = req.getParameter("userNewPassword");
        User user = (User) req.getSession().getAttribute(ONLINE_USER);
        Integer userId = user.getUserId();
        userService.modifyUserPassword(userId, userNewPassword);
        req.setAttribute("msg","修改密码成功");
        return "redirect:login";
    }

    /**
     * 用户注册
     * @param user
     * @param req
     * @param resp
     * @return
     */
    @RequestMapping("user_regist")
    public String registUser(User user, HttpServletRequest req, HttpServletResponse resp){
        userService.registUser(user);
        req.setAttribute("msg","注册成功");
        return "redirect:login";
    }

    /**
     * 用户登录
     * @param user
     * @param request
     * @param session
     * @return
     */
    @RequestMapping("user_login")
    public String userLogin(User user,HttpServletRequest request, HttpSession session){
        User userData=userService.getUserByEmail(user.getUserEmail());
        System.out.println(userData.getUserId());

        if (userData!=null && userData.getUserPassword().equals(user.getUserPassword()))
        {
            String kaptchaExpected= (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
            System.out.println("正确验证码："+kaptchaExpected);
            //只要在这里接收页面传过来输入的验证码，就可以进行的对比验证了
            //request.getAttribute("..");
            session.setAttribute(ONLINE_USER,userData);
            System.out.println("登录成功");
            return "redirect:index";
        }
        else
        {
            return "redirect:login";
        }
    }

    /**
     * 用户注销
     * @param session
     * @return
     */
    @RequestMapping("user_logout")
    public ModelAndView user_logout(HttpSession session){

        ModelAndView modelAndView = new ModelAndView();

        //从session里移除登录用户
        session.removeAttribute(ONLINE_USER);
        modelAndView.setView(new RedirectView("/index2.jsp",true));

        return modelAndView;

    }

    /**
     * 用户注册测试
     * @param user
     * @param req
     * @param resp
     * @return
     */
    @RequestMapping("regist")
    public String regist(User user, HttpServletRequest req, HttpServletResponse resp){
        System.out.println(user.getUserEmail());
        System.out.println(user.getUserPassword());
        System.out.println(user.getUserName());
        System.out.println(user.getUserTel());
        System.out.println(user.getUserQq());
        System.out.println(user.getUserRealname());

        //SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        user.setUserCreatetime(new Date());
        System.out.println(user.getUserCreatetime());
        return "redirect:login";
    }

    /**
     * 用户更新心得
     * @param user
     * @param req
     * @param resp
     * @return
     */
    @RequestMapping("user_update_xinde")
    public String updateXindeUser(User user, HttpServletRequest req, HttpServletResponse resp) {
        User userData= (User) req.getSession().getAttribute(ONLINE_USER);

        userData.setUserUniversity(user.getUserUniversity());
        userData.setUserDepartment(user.getUserDepartment());
        userData.setUserXinde(user.getUserXinde());

        userService.updateUser(userData);

        return "redirect:index";
    }

    @RequestMapping("check_UserName")
    public void check_UserName(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //List<String> userNames= Arrays.asList("aaa","BBB","ccc");
        List<String> userEmails=userService.getUsersEmail();
        System.out.println(userEmails);
        String cuserName=req.getParameter("cuserName");
        String result=null;

        if(userEmails.contains(cuserName)){
            result="<font color='red'>此用户名已被使用</font>";
        }else{
            result="<font color='green'>此用户名可以使用</font>";
        }

        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().print(result);
    }


        @RequestMapping("login")
    public String login(){
        return "user_page/user_login";
    }

    @RequestMapping("index")
    public String index(){
        return "user_page/user_index";
    }
}
