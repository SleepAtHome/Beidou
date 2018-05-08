package com.xaufe.model.service;


/**
 * Created by JYK on 2017/12/19.
 */

public interface EvaluateService {

    public void updateUserGradeOne(int userId,double[] evaluate1Outcome);
    public void updateUserGradeTwo(int userId,double[] evaluate2Outcome);
    public void updateUserGradeThree(int userId,double[] evaluate3Outcome);

    public String getEvaluateOne(int userId);
    public String getEvaluateTwo(int userId);
    public String getEvaluateThree(int userId);


}

