package com.example.analysisandrecommendationsystem.dao;

import com.example.analysisandrecommendationsystem.entity.School;

import java.util.List;

public interface SchoolDao {
    List<String> searchByName(String keyword);

    List<String> search985();

    List<String> search211();
}
