package com.example.analysisandrecommendationsystem.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class C3P0Util {
    // 声明静态的数据源变量，用于存储C3P0连接池实例 就是从idea右端显示的数据库里面获取数据源
    private static DataSource dataSource = new ComboPooledDataSource();

    // 获取数据库连接的方法
    public static Connection getConnection(){
        Connection connection = null;
        try {
            // 从数据源中获取数据库连接对象
            connection = dataSource.getConnection();
        } catch (SQLException e) {
            // 如果获取连接过程中出现异常，打印异常堆栈信息，方便排查问题
            e.printStackTrace();
        }
        // 返回获取到的数据库连接对象
        return connection;
    }

    // 释放数据库相关资源的方法
    public static void release(ResultSet rs, Statement sta, Connection con){
        if (rs != null){
            try {
                // 关闭ResultSet对象，释放相关资源
                // ResultSet对象是Java中用于表示数据库查询结果的接口。它允许开发人员通过数据库连接执行SQL查询，并以编程方式从查询结果中获取数据
                rs.close();
            } catch (SQLException e) {
                // 如果关闭过程中出现异常，打印异常堆栈信息，方便排查问题
                e.printStackTrace();
            }
        }
        if (sta != null){
            try {
                // 关闭Statement对象，释放相关资源
//                Statement对象是Java中用于执行静态SQL语句的接口
                sta.close();
            } catch (SQLException e) {
                // 如果关闭过程中出现异常，打印异常堆栈信息，方便排查问题
                e.printStackTrace();
            }
        }
        if (con != null) {
            try {
                // 关闭Connection对象，释放相关资源
                con.close();
            } catch (SQLException e) {
                // 如果关闭过程中出现异常，打印异常堆栈信息，方便排查问题
                e.printStackTrace();
            }
        }
    }
}

