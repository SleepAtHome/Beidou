package com.xaufe.model.service;

import com.xaufe.entity.Questions;
import com.xaufe.model.dao.QuestionsMapper;
import com.xaufe.util.PageDiv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/12/24.
 */
@Service
public class QuestionsServiceImp implements QuestionsService {
    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    QuestionsMapper questionsMapper;

    @Override
    public List<Questions> getQuestionsListByQuestionName(String str) {
        List<Questions> list = questionsMapper.getFiltrateQuestions(str);
        return list;
    }

    @Override
    public PageDiv<Questions> getPageAllQuestions(int pageNo, int pageSize) {
        PageDiv<Questions> pd=null;
        List<Questions> list=questionsMapper.getAllQuestions();
        int quentionNum=questionsMapper.getAllQuestionsNum();
        if (null!=list && 0!=quentionNum){
            pd=new PageDiv<>(pageNo,pageSize,quentionNum,list);
        }
        System.out.println(list);
        System.out.println(quentionNum);
        return pd;
    }

    @Override
    public Questions getQuestionById(int id) {
        Questions q=questionsMapper.selectByPrimaryKey(id);
        return q;
    }

    @Override
    public List<Questions> getQuestionsListByUserId(int userId) {
        List<Questions> userQuestionList=questionsMapper.getUserAllQuestions(userId);
        return userQuestionList;
    }

    @Override
    public void deleteOneQuestion(int questionId) {
        questionsMapper.deleteByPrimaryKey(questionId);
    }

    @Override
    public void addOneQuestion(Questions questions) {
        questionsMapper.insert(questions);
    }
}
