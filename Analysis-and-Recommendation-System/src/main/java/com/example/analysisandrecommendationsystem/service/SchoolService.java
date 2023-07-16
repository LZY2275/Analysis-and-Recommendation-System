package com.example.analysisandrecommendationsystem.service;

import com.example.analysisandrecommendationsystem.entity.School;

import java.util.List;

public interface SchoolService {
    List<String> searchByName(String keyword);

    List<String> search985();

    List<String> search211();
}
