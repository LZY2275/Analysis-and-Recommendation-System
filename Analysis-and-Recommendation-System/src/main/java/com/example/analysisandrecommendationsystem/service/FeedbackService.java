package com.example.analysisandrecommendationsystem.service;

import com.example.analysisandrecommendationsystem.entity.Feedback;

import java.util.List;

public interface FeedbackService {
    List<Feedback> getSolvedList();

    List<Feedback> getUnsolvedList();
}
