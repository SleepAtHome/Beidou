package com.xaufe.model.dao;

import com.xaufe.entity.Questions;
import java.util.List;

public interface QuestionsMapper {
    int deleteByPrimaryKey(Integer questionId);

    int insert(Questions record);

    int insertSelective(Questions record);

    Questions selectByPrimaryKey(Integer questionId);

    int updateByPrimaryKeySelective(Questions record);

    int updateByPrimaryKeyWithBLOBs(Questions record);

    int updateByPrimaryKey(Questions record);

    // 返回所有的问题
    List<Questions> getAllQuestions();

    // 返回一个用户所有的问题
    List<Questions> getUserAllQuestions(Integer userId);

    // 返回问题的总个数
    int getAllQuestionsNum();

    // 模糊查询问题
    List<Questions> getFiltrateQuestions(String str);

    // 返回单个问题的回答个数
    int getOneQuestionAnswerNum (Integer questionId);
}