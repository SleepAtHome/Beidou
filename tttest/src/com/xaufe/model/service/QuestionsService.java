package com.xaufe.model.service;

import com.xaufe.entity.Questions;
import com.xaufe.util.PageDiv;

import java.util.List;

/**
 * Created by JYK on 2017/12/24.
 */
public interface QuestionsService {
    //分页查询所有问题 （从数据库中查询所有问题并且取出来，并且进行分页）
    PageDiv<Questions> getPageAllQuestions(int pageNo,int pageSize);

    //根据问题id获得问题
    Questions getQuestionById(int id);

    //根据用户id获得问题列表
    List<Questions> getQuestionsListByUserId(int userId);

    //根据问题id删除问题
    void deleteOneQuestion(int questionId);

    //增加一个问题
    void addOneQuestion(Questions questions);

    // 按条件进行查询
    List<Questions> getQuestionsListByQuestionName(String str);
}
