package com.xaufe.entity;

import java.util.Date;

public class Questions {
    private Integer questionId;

    private Integer userId;

    private String questionTitle;

    private Integer questionInter;

    private Date questionTime;

    private String questionContents;

    private int account;


    public int getAccount() {
        return account;
    }

    public void setAccount(int account) {
        this.account = account;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getQuestionTitle() {
        return questionTitle;
    }

    public void setQuestionTitle(String questionTitle) {
        this.questionTitle = questionTitle == null ? null : questionTitle.trim();
    }

    public Integer getQuestionInter() {
        return questionInter;
    }

    public void setQuestionInter(Integer questionInter) {
        this.questionInter = questionInter;
    }

    public Date getQuestionTime() {
        return questionTime;
    }

    public void setQuestionTime(Date questionTime) {
        this.questionTime = questionTime;
    }

    public String getQuestionContents() {
        return questionContents;
    }

    public void setQuestionContents(String questionContents) {
        this.questionContents = questionContents == null ? null : questionContents.trim();
    }
}