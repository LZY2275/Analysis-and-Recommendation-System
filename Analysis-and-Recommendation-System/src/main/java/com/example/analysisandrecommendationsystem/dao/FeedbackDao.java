package com.example.analysisandrecommendationsystem.dao;

import com.example.analysisandrecommendationsystem.entity.Feedback;

import java.util.List;

public interface FeedbackDao {
    List<Feedback> getSolvedList();

    List<Feedback> getUnsolvedList();
}
