package com.xaufe.model.service;

import com.xaufe.entity.Area;

import java.util.List;

/**
 * Created by JYK on 2017/12/24.
 */
public interface AreaService {
    //得到对应的Area表
    public List<Area> getNeedArea(short partenId, int style);

    //得到省列表
    public List<String> getProvince();
}
