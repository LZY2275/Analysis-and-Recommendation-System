package com.example.analysisandrecommendationsystem.dao.impl;

import com.example.analysisandrecommendationsystem.dao.UserDao;
import com.example.analysisandrecommendationsystem.entity.User;
import com.example.analysisandrecommendationsystem.utils.C3P0Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDaoImpl implements UserDao {

    private final static String LOGIN = "select * from user where username = ? and password = ?";
    private final static String HASSAMENAME = "select count(*) from user where username = ?";
    private final static String REGISTER = "insert into user(username, password) values (?,?)";

//    登录函数
    @Override
    public User login(String name, String password) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        User user = new User();
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(LOGIN);
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,password);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setBirthday(resultSet.getDate("birthday"));
                user.setUserimgurl(resultSet.getString("userimgurl"));
                user.setSex(resultSet.getString("sex"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            C3P0Util.release(resultSet,preparedStatement,connection);
        }
        return user;
    }

    @Override
    public boolean hasSameUsername(String username) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(HASSAMENAME);
            preparedStatement.setString(1,username);
            resultSet=preparedStatement.executeQuery();
            if (resultSet.next()) {
//                获得count（*）的值，为0代表无重名的，可以命名,
                int count = resultSet.getInt(1);
                if (count == 0){
                    return false;
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            C3P0Util.release(resultSet,preparedStatement,connection);
        }
        return true;
    }

    @Override
    public void register(String username, String password) {

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(REGISTER);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
//            只指定前两个属性的值，后面的插入为默认值
            preparedStatement.execute();
            System.out.println("注册成功");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            C3P0Util.release(null, preparedStatement, connection);
        }
    }

//    登出函数
}
