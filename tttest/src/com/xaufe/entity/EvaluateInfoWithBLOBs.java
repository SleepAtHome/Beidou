package com.xaufe.entity;

public class EvaluateInfoWithBLOBs extends EvaluateInfo {
    private String evaluateOne;

    private String evaluateTwo;

    private String evaluateThree;

    public String getEvaluateOne() {
        return evaluateOne;
    }

    public void setEvaluateOne(String evaluateOne) {
        this.evaluateOne = evaluateOne == null ? null : evaluateOne.trim();
    }

    public String getEvaluateTwo() {
        return evaluateTwo;
    }

    public void setEvaluateTwo(String evaluateTwo) {
        this.evaluateTwo = evaluateTwo == null ? null : evaluateTwo.trim();
    }

    public String getEvaluateThree() {
        return evaluateThree;
    }

    public void setEvaluateThree(String evaluateThree) {
        this.evaluateThree = evaluateThree == null ? null : evaluateThree.trim();
    }
}