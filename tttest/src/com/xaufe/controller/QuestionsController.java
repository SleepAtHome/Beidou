package com.xaufe.controller;

import com.xaufe.entity.Answer;
import com.xaufe.entity.Questions;
import com.xaufe.entity.User;
import com.xaufe.model.service.AnswerService;
import com.xaufe.model.service.QuestionsService;
import com.xaufe.util.PageDiv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

/**
 * Created by JYK on 2017/12/24.
 */
@Controller
@RequestMapping("questions")
public class QuestionsController {
    @Autowired
    QuestionsService questionsService;

    @Autowired
    AnswerService answerService;

    @RequestMapping("condition_search")
    public ModelAndView conditionSearch(HttpServletRequest req, HttpServletResponse resp){
        String viewName="question_page/question_condition";
        ModelAndView modelAndView=new ModelAndView(viewName);

        String conditionSearch = req.getParameter("conditionSearch");
        List<Questions> conditionQuestionList=questionsService.getQuestionsListByQuestionName(conditionSearch);

        modelAndView.addObject("questionList",conditionQuestionList);
        return modelAndView;
    }

    @RequestMapping("user_questionList")
    public String user_questionList(Questions questions, HttpServletRequest req, HttpServletResponse resp){
        int pageNo=1;
        int pageSize=5;
        if(0<this.getInt(req, "pageNo"))
        {
            pageNo=this.getInt(req, "pageNo");
        }
        PageDiv<Questions> pd=null;
        try {
            pd=questionsService.getPageAllQuestions(pageNo,pageSize);
            req.setAttribute("pd",pd);
        }catch (Exception e){
            req.setAttribute("msg","获取问题列表失败!");
        }


        return "question_page/question_list";
    }

    @RequestMapping("user_myquestionList")
    public String user_myquestionList(HttpServletRequest req, HttpServletResponse resp){
        User user= (User) req.getSession().getAttribute("OnlineUser");
        int userId=user.getUserId();
        List<Questions> userQuestionList=questionsService.getQuestionsListByUserId(userId);
        req.setAttribute("user_questionList",userQuestionList);

        return "question_page/user_question_list";
    }

    @RequestMapping("question_getOnequestion")
    public String user_getOnequestion(HttpServletRequest req, HttpServletResponse resp){
        int id=this.getInt(req,"id");
        if (id>0){
            Questions q=null;
            List<Answer> list=answerService.getAnswerByQuestion(id);
            q=questionsService.getQuestionById(id);

            req.setAttribute("question",q);
            req.setAttribute("answerList",list);

        }
        return "answer_page/answer_list";
    }

    @RequestMapping("question_deleteOnequestion")
    public String user_deleteOnequestion(HttpServletRequest req, HttpServletResponse resp){
        int questionId=this.getInt(req,"id");
        if (questionId>0){
            questionsService.deleteOneQuestion(questionId);
        }
        return "question_page/user_question_list";
    }

    @RequestMapping("question_add")
    public String registUser(Questions questions, HttpServletRequest req, HttpServletResponse resp){
        Date now=new Date();
        questions.setQuestionTime(now);
        questionsService.addOneQuestion(questions);
        return "question_page/user_question_list";
    }


    public int getInt(HttpServletRequest req,String param)
    {
        int re=0;
        String str=this.getString(req, param);
        if(null!=str&&str.matches("\\d+"))
        {
            re=Integer.parseInt(str);
        }
        return re;
    }

    public String getString(HttpServletRequest req,String param)
    {
        String re=null;
        re=null==req.getParameter(param)?"":req.getParameter(param);

        try {
            byte [] tem=re.getBytes("iso-8859-1");
            re=new String(tem,"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        return re;
    }
}
