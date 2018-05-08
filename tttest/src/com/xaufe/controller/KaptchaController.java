package com.xaufe.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * Created by JYK on 2017/12/25.
 */
@Controller
@RequestMapping("kaptcha")
public class KaptchaController {
    private Producer kaptchaProducer=null;

    @Autowired
    public void setKaptchaProducer(Producer producer){
        this.kaptchaProducer=producer;
    }

    @RequestMapping("/Kaptcha.jpg")
    public ModelAndView getKaptchaImg(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session=request.getSession();
        String code= (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
       // System.out.println("验证码是："+code);

        response.setDateHeader("Expires",0);//设置过期时间

        // Set standard HTTP/1.1 no-cache headers.
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        // Set IE extended HTTP/1.1 no-cache headers (use addHeader).
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        // Set standard HTTP/1.0 no-cache header.
        response.setHeader("Pragma", "no-cache");

        // return a jpeg 设置返回类型
        response.setContentType("image/jpeg");

        // create the text for the image 随机自动生成验证码
        String kapText=kaptchaProducer.createText();

        // store the text in the session 将验证码字符串存在session中
        session.setAttribute(Constants.KAPTCHA_SESSION_KEY,kapText);

        // create the image with the text 根据验证码生成对应的图片
        BufferedImage bi=kaptchaProducer.createImage(kapText);
        ServletOutputStream out=response.getOutputStream();

        // write the data out 将数据输出
        ImageIO.write(bi,"jpg",out);
        try {
            out.flush();
        }finally {
            out.close();
        }

        return null;
    }

}
