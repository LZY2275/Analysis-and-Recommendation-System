package com.example.analysisandrecommendationsystem.dao.impl;

import com.example.analysisandrecommendationsystem.dao.SchoolDao;
import com.example.analysisandrecommendationsystem.entity.School;
import com.example.analysisandrecommendationsystem.utils.C3P0Util;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SchoolDaoImpl implements SchoolDao {

    private final static String SEARCHBYNAME = "select * from school where name like ?";

    private final static String SEARCHBYTYPE = "select * from school where type = ?";
    @Override
    public List<String> searchByName(String keyword) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<String> list = new ArrayList<>();
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(SEARCHBYNAME);
            preparedStatement.setString(1, "%"+keyword+"%");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String schoolname = resultSet.getString("name");
                list.add(schoolname);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            C3P0Util.release(resultSet,preparedStatement,connection);
        }
        return list;
    }

    @Override
    public List<String> search985() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<String> list = new ArrayList<>();
        String type = "985";
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(SEARCHBYTYPE);
            preparedStatement.setString(1, type);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String schoolname = resultSet.getString("name");
                list.add(schoolname);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            C3P0Util.release(resultSet,preparedStatement,connection);
        }
        return list;
    }

    @Override
    public List<String> search211() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<String> list = new ArrayList<>();
        String type = "211";
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(SEARCHBYTYPE);
            preparedStatement.setString(1, type);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String schoolname = resultSet.getString("name");
                list.add(schoolname);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        finally {
            C3P0Util.release(resultSet,preparedStatement,connection);
        }
        return list;
    }
}
