package com.xaufe.model.service;

import com.xaufe.entity.Answer;

import java.util.List;

/**
 * Created by JYK on 2017/12/24.
 */
public interface AnswerService {
    //根据问题id得到答案列表
    List<Answer> getAnswerByQuestion(int questionId);

    // 增加一个回答
    void addAnswer(Answer answer);
}
