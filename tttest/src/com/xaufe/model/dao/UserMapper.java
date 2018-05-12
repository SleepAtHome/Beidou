package com.xaufe.model.dao;

import com.xaufe.entity.User;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    User selectUserByEmail(String userEmail);

    //得到所有的用户名
    List<String> getUsersEmail();

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKeyWithBLOBs(User record);

    int updateByPrimaryKey(User record);

    //修改用户成绩1
    int updateUserGradeOne(Integer userId,String evaluate1Outcomestr);
    //修改用户成绩2
    int updateUserGradeTwo(Integer userId,String evaluate2Outcomestr);
    //修改用户成绩3
    int updateUserGradeThree(Integer userId,String evaluate3Outcomestr);

    // 查询用户成绩
    String selectEvaluateOne(int userId);
    String selectEvaluateTwo(int userId);
    String selectEvaluateThree(int userId);

    // 用户修改密码
    int updateUserPassword(Integer userId, String userNewPassword);
}