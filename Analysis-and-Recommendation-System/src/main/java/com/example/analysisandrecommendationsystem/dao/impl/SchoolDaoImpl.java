package com.example.analysisandrecommendationsystem.dao.impl;

import com.example.analysisandrecommendationsystem.dao.SchoolDao;
import com.example.analysisandrecommendationsystem.entity.CollegeApplicationItem;
import com.example.analysisandrecommendationsystem.entity.EnrollmentInfo;
import com.example.analysisandrecommendationsystem.entity.School;
import com.example.analysisandrecommendationsystem.utils.C3P0Util;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SchoolDaoImpl implements SchoolDao {

    private final static String SEARCHBYNAME = "select * from school where name like ?";

    private final static String SEARCHBYRANK = "select * from school where `rank` = ?";

    private final static String GETENROLLMENTINFO = "select * from enrollmentinfo where name = ? and province = ?";

    private final static String GETSCHOOLBYFORM = "select * from school natural join enrollmentinfo natural join geography where (province = ?) and (type = ? or ? is null ) and ((score2022 < ?+5 and score2022 > ?-5)or ? is null )";
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
        String rank = "985";
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(SEARCHBYRANK);
            preparedStatement.setString(1, rank);
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
        String rank = "211";
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(SEARCHBYRANK);
            preparedStatement.setString(1, rank);
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
    public EnrollmentInfo getEnrollInfo(String name, String province) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        EnrollmentInfo enrollmentInfo = new EnrollmentInfo();
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(GETENROLLMENTINFO);
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,province);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                enrollmentInfo.setName(resultSet.getString("name"));
                enrollmentInfo.setProvince(resultSet.getString("province"));
                enrollmentInfo.setScore2020(resultSet.getInt("score2020"));
                enrollmentInfo.setScore2021(resultSet.getInt("score2021"));
                enrollmentInfo.setScore2022(resultSet.getInt("score2022"));
                enrollmentInfo.setEnrollmentNumber2020(resultSet.getInt("enrollmentNumber2020"));
                enrollmentInfo.setEnrollmentNumber2021(resultSet.getInt("enrollmentNumber2021"));
                enrollmentInfo.setEnrollmentNumber2022(resultSet.getInt("enrollmentNumber2022"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            C3P0Util.release(resultSet,preparedStatement,connection);
        }
        return enrollmentInfo;
    }

    @Override
    public List<CollegeApplicationItem> getSchoolByForm(String province, String type, int score) {
//        "select * from school natural join enrollmentinfo where (province = ? or ? is null ) and (type = ? or ? is null ) and ((score2022 < ?+5 and score2022 > ?-5)or ? is null )";
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<CollegeApplicationItem> list = new ArrayList<>();
        try {
            connection = C3P0Util.getConnection();
            preparedStatement = connection.prepareStatement(GETSCHOOLBYFORM);
            preparedStatement.setString(1,province);
            preparedStatement.setString(2,type);
            preparedStatement.setString(3,type);
            preparedStatement.setInt(4,score);
            preparedStatement.setInt(5,score);
            preparedStatement.setInt(6,score);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                CollegeApplicationItem item = new CollegeApplicationItem();
                item.setName(resultSet.getString("name"));
                item.setType(resultSet.getString("type"));
                item.setLogo(resultSet.getString("logo"));
//                学校所在的省份
                item.setLocation(resultSet.getString("location"));
                item.setEnrollmentNumber2020(resultSet.getInt("enrollmentNumber2020"));
                item.setEnrollmentNumber2021(resultSet.getInt("enrollmentNumber2021"));
                item.setEnrollmentNumber2022(resultSet.getInt("enrollmentNumber2022"));
                item.setScore2020(resultSet.getInt("score2020"));
                item.setScore2021(resultSet.getInt("score2021"));
                item.setScore2022(resultSet.getInt("score2022"));
                list.add(item);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            C3P0Util.release(resultSet,preparedStatement,connection);
        }
        return list;
    }
}
