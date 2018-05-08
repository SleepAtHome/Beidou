package com.xaufe.entity;

import java.util.Date;

public class Answer {
    private Integer answerId;

    private Integer questionId;

    private Integer answerInter;

    private Date answerTime;

    private String answerContents;

    public Integer getAnswerId() {
        return answerId;
    }

    public void setAnswerId(Integer answerId) {
        this.answerId = answerId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getAnswerInter() {
        return answerInter;
    }

    public void setAnswerInter(Integer answerInter) {
        this.answerInter = answerInter;
    }

    public Date getAnswerTime() {
        return answerTime;
    }

    public void setAnswerTime(Date answerTime) {
        this.answerTime = answerTime;
    }

    public String getAnswerContents() {
        return answerContents;
    }

    public void setAnswerContents(String answerContents) {
        this.answerContents = answerContents == null ? null : answerContents.trim();
    }
}