package com.example.analysisandrecommendationsystem.dao;

import com.example.analysisandrecommendationsystem.entity.User;

import java.sql.Date;

public interface UserDao {

    void modifyUserInfo(String imgurl, Date birthday, String gender, String password, String username);

    User login(String name, String password);

    boolean hasSameUsername(String username);

    void register(String username, String password);
}
