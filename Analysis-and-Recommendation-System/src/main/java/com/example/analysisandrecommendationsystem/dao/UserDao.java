package com.example.analysisandrecommendationsystem.dao;

import com.example.analysisandrecommendationsystem.entity.User;

public interface UserDao {

    User login(String name, String password);

    boolean hasSameUsername(String username);

    void register(String username, String password);
}
