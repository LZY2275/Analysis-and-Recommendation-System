package com.example.analysisandrecommendationsystem.service.impl;

import com.example.analysisandrecommendationsystem.dao.AdvertiseDao;
import com.example.analysisandrecommendationsystem.dao.impl.AdvertiseDaoImpl;
import com.example.analysisandrecommendationsystem.entity.Advertisement;
import com.example.analysisandrecommendationsystem.service.AdvertiseService;

import java.util.List;

public class AdvertiseServiceImpl implements AdvertiseService {

    private AdvertiseDao advertiseDao = new AdvertiseDaoImpl();
    @Override
    public List<Advertisement> list() {
        return advertiseDao.list();
    }
}
