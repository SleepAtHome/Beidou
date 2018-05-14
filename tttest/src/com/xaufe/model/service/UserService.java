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

    void addUserImg(Integer userId, String imgPath, String imgDesc);

}

