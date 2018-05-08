package com.xaufe.model.service;

import com.xaufe.entity.User;

import java.util.List;

/**
 * Created by JYK on 2017/12/19.
 */

public interface UserService {


    public void registUser(User user);
    public User getUserByEmail(String userEmail);
    public List<String> getUsersEmail();

    public void updateUser(User user);



}

