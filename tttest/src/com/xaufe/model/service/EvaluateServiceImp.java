package com.xaufe.model.service;

import com.xaufe.model.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2018/2/28.
 */
@Service
public class EvaluateServiceImp implements EvaluateService {

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    UserMapper userMapper;


    @Override
    public void updateUserGradeOne(int userId, double[] evaluate1Outcome) {

        StringBuilder evaluate1Outcomestr = new StringBuilder("");
        for (int i=0;i<evaluate1Outcome.length;i++){
            System.out.println(evaluate1Outcome[i]);
            evaluate1Outcomestr.append(evaluate1Outcome[i]+",");
        }
        userMapper.updateUserGradeOne(userId,evaluate1Outcomestr.toString());
    }

    @Override
    public void updateUserGradeTwo(int userId, double[] evaluate2Outcome) {
        StringBuilder evaluate2Outcomestr = new StringBuilder("");
        for (int i=0;i<evaluate2Outcome.length;i++){
            System.out.println(evaluate2Outcome[i]);
            evaluate2Outcomestr.append(evaluate2Outcome[i]+",");
        }
        userMapper.updateUserGradeTwo(userId,evaluate2Outcomestr.toString());
    }

    @Override
    public void updateUserGradeThree(int userId, double[] evaluate3Outcome) {
        StringBuilder evaluate3Outcomestr = new StringBuilder("");
        for (int i=0;i<evaluate3Outcome.length;i++){
            System.out.println(evaluate3Outcome[i]);
            evaluate3Outcomestr.append(evaluate3Outcome[i]+",");
        }
        userMapper.updateUserGradeThree(userId,evaluate3Outcomestr.toString());
    }

    @Override
    public String getEvaluateOne(int userId) {
        String str=userMapper.selectEvaluateOne(userId);
        return str;
    }

    @Override
    public String getEvaluateTwo(int userId) {
        String str=userMapper.selectEvaluateTwo(userId);
        return str;
    }

    @Override
    public String getEvaluateThree(int userId) {
        String str=userMapper.selectEvaluateThree(userId);
        return str;
    }
}
