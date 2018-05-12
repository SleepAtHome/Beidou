package com.xaufe.controller;

import com.xaufe.entity.Answer;
import com.xaufe.entity.Questions;
import com.xaufe.model.service.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by JYK on 2017/12/24.
 */
@Controller
@RequestMapping("answer")
public class AnswerController {

    @Autowired
    AnswerService answerService;

    @RequestMapping("addAnswer")
    public String user_getOnequestion(Answer answer, HttpServletRequest req, HttpServletResponse resp){
        answerService.addAnswer(answer);
        return "user_page/user_index";
    }

}
