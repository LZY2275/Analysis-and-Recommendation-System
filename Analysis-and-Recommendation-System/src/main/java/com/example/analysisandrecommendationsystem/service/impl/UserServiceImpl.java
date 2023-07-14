package com.example.analysisandrecommendationsystem.service.impl;

import com.example.analysisandrecommendationsystem.dao.UserDao;
import com.example.analysisandrecommendationsystem.dao.impl.UserDaoImpl;
import com.example.analysisandrecommendationsystem.entity.User;
import com.example.analysisandrecommendationsystem.service.UserService;

public class UserServiceImpl implements UserService {

    private UserDao userDao = new UserDaoImpl();

    @Override
    public User login(String name, String password) {
        return userDao.login(name, password);
    }

    @Override
    public boolean hasSameUsername(String username) {
        return userDao.hasSameUsername(username);
    }

    @Override
    public void register(String username, String password) {
        userDao.register(username, password);
    }
}
