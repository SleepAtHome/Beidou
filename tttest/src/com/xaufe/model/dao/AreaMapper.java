package com.xaufe.model.dao;

import com.xaufe.entity.Area;
import com.xaufe.entity.AreaKey;

import java.util.List;

public interface AreaMapper {
    int deleteByPrimaryKey(AreaKey key);

    int insert(Area record);

    int insertSelective(Area record);

    Area selectByPrimaryKey(AreaKey key);

    int updateByPrimaryKeySelective(Area record);

    int updateByPrimaryKeyWithBLOBs(Area record);

    int updateByPrimaryKey(Area record);

    //得到所有的省
    List<String> selectProvince();

    //得到对应的Area
    List<Area> selectNeedArea(int partenId, int style);
}