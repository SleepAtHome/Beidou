package com.xaufe.entity;

public class EvaluateInfo {
    private Integer evaluateId;

    private Integer userId;

    private String zimuType;

    public Integer getEvaluateId() {
        return evaluateId;
    }

    public void setEvaluateId(Integer evaluateId) {
        this.evaluateId = evaluateId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getZimuType() {
        return zimuType;
    }

    public void setZimuType(String zimuType) {
        this.zimuType = zimuType == null ? null : zimuType.trim();
    }
}