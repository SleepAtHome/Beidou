package com.xaufe.model.dao;

import com.xaufe.entity.EvaluateInfo;
import com.xaufe.entity.EvaluateInfoWithBLOBs;

public interface EvaluateInfoMapper {
    int deleteByPrimaryKey(Integer evaluateId);

    int insert(EvaluateInfoWithBLOBs record);

    int insertSelective(EvaluateInfoWithBLOBs record);

    EvaluateInfoWithBLOBs selectByPrimaryKey(Integer evaluateId);

    int updateByPrimaryKeySelective(EvaluateInfoWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(EvaluateInfoWithBLOBs record);

    int updateByPrimaryKey(EvaluateInfo record);

}