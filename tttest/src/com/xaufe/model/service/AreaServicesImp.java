package com.xaufe.model.service;

import com.xaufe.entity.Answer;
import com.xaufe.entity.Area;
import com.xaufe.model.dao.AnswerMapper;
import com.xaufe.model.dao.AreaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/12/24.
 */
@Service
public class AreaServicesImp implements AreaService {

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    AreaMapper areaMapper;


    @Override
    public List<Area> getNeedArea(short partenId, int style) {
        List<Area> areaList=areaMapper.selectNeedArea(partenId,style);
        return areaList;
    }

    @Override
    public List<String> getProvince() {
        List<String> list=areaMapper.selectProvince();
        return list;
    }
}
