package com.xaufe.controller;

import com.google.code.kaptcha.Constants;
import com.xaufe.entity.User;
import com.xaufe.model.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import static com.xaufe.util.Constant.ONLINE_USER;


@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    UserService userService;
    @RequestMapping("user_regist")
    public String registUser(User user, HttpServletRequest req, HttpServletResponse resp){
        userService.registUser(user);
        req.setAttribute("msg","注册成功");
        return "redirect:login";
    }

    @RequestMapping("user_login")
    public String userLogin(User user,HttpServletRequest request, HttpSession session){
        System.out.println("用户登录");
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

    @RequestMapping("user_logout")
    public ModelAndView user_logout(HttpSession session){

        ModelAndView modelAndView = new ModelAndView();

        //从session里移除登录用户
        session.removeAttribute(ONLINE_USER);
        modelAndView.setView(new RedirectView("/index2.jsp",true));

        return modelAndView;

    }

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
