package com.example.analysisandrecommendationsystem.dao.impl;

import com.example.analysisandrecommendationsystem.dao.AdvertiseDao;
import com.example.analysisandrecommendationsystem.entity.Advertisement;
import com.example.analysisandrecommendationsystem.utils.C3P0Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdvertiseDaoImpl implements AdvertiseDao {
    private final static String LIST = "select * from advertisement";
    @Override
    public List<Advertisement> list() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<Advertisement> list = new ArrayList<>();
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(LIST);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Advertisement advertisement = new Advertisement();
                advertisement.setTitle(resultSet.getString("title"));
                advertisement.setContenttext(resultSet.getString("contenttext"));
                advertisement.setName(resultSet.getString("name"));
                list.add(advertisement);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            C3P0Util.release(resultSet,preparedStatement,connection);
        }
        return list;
    }
}
