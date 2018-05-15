package com.xaufe.model.service;

import com.xaufe.entity.User;

import java.util.List;

/**
 * Created by JYK on 2017/12/19.
 */

public interface UserService {


    void registUser(User user);
    User getUserByEmail(String userEmail);
    List<String> getUsersEmail();

    void updateUser(User user);
    void modifyUserPassword(Integer userId, String userNewPassword);

    // 增加用户图片和用户描述
    void addUserImg(Integer userId, String imgPath, String imgDesc);

    // 查询用户图片路径
    String getUserImg(Integer userId);

}

