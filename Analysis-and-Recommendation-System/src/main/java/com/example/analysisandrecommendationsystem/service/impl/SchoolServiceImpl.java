package com.example.analysisandrecommendationsystem.service.impl;

import com.example.analysisandrecommendationsystem.dao.SchoolDao;
import com.example.analysisandrecommendationsystem.dao.impl.SchoolDaoImpl;
import com.example.analysisandrecommendationsystem.entity.CollegeApplicationItem;
import com.example.analysisandrecommendationsystem.entity.EnrollmentInfo;
import com.example.analysisandrecommendationsystem.service.SchoolService;

import java.util.List;

public class SchoolServiceImpl implements SchoolService {

    private SchoolDao schoolDao = new SchoolDaoImpl();
    @Override
    public List<String> searchByName(String keyword) {
        return schoolDao.searchByName(keyword);
    }

    @Override
    public List<String> search985() {
        return schoolDao.search985();
    }

    @Override
    public List<String> search211() {
        return schoolDao.search211();
    }

    @Override
    public EnrollmentInfo getEnrollInfo(String name, String province) {
        return schoolDao.getEnrollInfo(name, province);
    }

    @Override
    public List<CollegeApplicationItem> getSchoolByForm(String province, String type, int score) {
        return schoolDao.getSchoolByForm(province, type, score);
    }
}
