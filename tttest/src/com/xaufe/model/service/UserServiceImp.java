package com.xaufe.model.service;

import com.xaufe.entity.User;
import com.xaufe.model.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class UserServiceImp implements UserService {
    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    UserMapper userMapper;

    @Override
    public void registUser(User user) {
        Date utilDate=new Date();
        java.sql.Date sqlDate=new java.sql.Date(utilDate.getTime());
        user.setUserCreatetime(sqlDate);
        userMapper.insert(user);
    }

    @Override
    public User getUserByEmail(String userEmail) {
        User user=userMapper.selectUserByEmail(userEmail);
        return user;
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateByPrimaryKeyWithBLOBs(user);
    }

    @Override
    public void modifyUserPassword(Integer userId, String userNewPassword) {
        userMapper.updateUserPassword(userId, userNewPassword);
    }

    @Override
    public void addUserImg(Integer userId, String imgPath, String imgDesc) {
        userMapper.updateUserImg(userId, imgPath, imgDesc);
    }

    @Override
    public String getUserImg(Integer userId) {
        String userImgpath = userMapper.selectUserImgPath(userId);
        return userImgpath;
    }

    @Override
    public List<String> getUsersEmail() {
        List<String> userEmail=userMapper.getUsersEmail();
        return userEmail;
    }
}
