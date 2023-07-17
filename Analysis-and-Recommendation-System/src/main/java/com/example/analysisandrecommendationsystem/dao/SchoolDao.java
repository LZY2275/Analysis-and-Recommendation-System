package com.example.analysisandrecommendationsystem.dao;

import com.example.analysisandrecommendationsystem.entity.CollegeApplicationItem;
import com.example.analysisandrecommendationsystem.entity.EnrollmentInfo;
import com.example.analysisandrecommendationsystem.entity.School;

import java.util.List;

public interface SchoolDao {
    List<String> searchByName(String keyword);

    List<String> search985();

    List<String> search211();

    EnrollmentInfo getEnrollInfo(String name, String province);

    List<CollegeApplicationItem> getSchoolByForm(String province, String type, int score);

    School getSchoolInfo(String name);

    List<String> getSchoolMajorList(String name);
}
