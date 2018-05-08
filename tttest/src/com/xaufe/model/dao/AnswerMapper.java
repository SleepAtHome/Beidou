package com.xaufe.model.dao;

import com.xaufe.entity.Answer;

import java.util.List;

public interface AnswerMapper {
    int deleteByPrimaryKey(Integer answerId);

    int insert(Answer record);

    int insertSelective(Answer record);

    Answer selectByPrimaryKey(Integer answerId);

    int updateByPrimaryKeySelective(Answer record);

    int updateByPrimaryKeyWithBLOBs(Answer record);

    int updateByPrimaryKey(Answer record);

    //根据问题id获得答案列表
    List<Answer> selectAnswerListByQuestionId(Integer questionId);
}