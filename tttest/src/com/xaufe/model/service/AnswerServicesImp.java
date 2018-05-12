package com.xaufe.model.service;

import com.xaufe.entity.Answer;
import com.xaufe.model.dao.AnswerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/12/24.
 */
@Service
public class AnswerServicesImp implements AnswerService {
    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    AnswerMapper answerMapper;

    @Override
    public List<Answer> getAnswerByQuestion(int questionId) {
        List<Answer> list=answerMapper.selectAnswerListByQuestionId(questionId);
        return list;
    }

    @Override
    public void addAnswer(Answer answer) {
        Date utilDate=new Date();
        java.sql.Date sqlDate=new java.sql.Date(utilDate.getTime());
        answer.setAnswerTime(sqlDate);
        answerMapper.insert(answer);
    }
}
