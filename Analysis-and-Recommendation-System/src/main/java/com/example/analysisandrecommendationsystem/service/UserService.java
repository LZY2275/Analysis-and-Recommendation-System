package com.example.analysisandrecommendationsystem.service;

import com.example.analysisandrecommendationsystem.entity.User;

import java.sql.Date;

public interface UserService {

    User login(String name, String password);

//    查找是否有重名的人
    boolean hasSameUsername(String username);

//    凭借账号和密码注册
    void register(String username, String password);

//    修改用户的信息
    void modifyUserInfo(String imgurl, Date birthday, String gender, String password,String username);


    String getPassword(String name, Date birthday, String sex);
}
