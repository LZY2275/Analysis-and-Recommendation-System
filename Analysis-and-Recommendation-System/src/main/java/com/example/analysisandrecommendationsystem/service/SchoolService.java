package com.example.analysisandrecommendationsystem.service;

import com.example.analysisandrecommendationsystem.entity.CollegeApplicationItem;
import com.example.analysisandrecommendationsystem.entity.EnrollmentInfo;

import java.util.List;

public interface SchoolService {
    List<String> searchByName(String keyword);

    List<String> search985();

    List<String> search211();

    EnrollmentInfo getEnrollInfo(String name, String province);

    List<CollegeApplicationItem> getSchoolByForm(String province, String type, int score);
}
