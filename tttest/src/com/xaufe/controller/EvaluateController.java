package com.xaufe.controller;

import com.alibaba.fastjson.JSONObject;
import com.xaufe.entity.User;
import com.xaufe.model.service.EvaluateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2018/2/27.
 */
@Controller
@RequestMapping("evaluate")
public class EvaluateController {
    @Autowired
    EvaluateService evaluateService;


    @RequestMapping("evaluate1")
    public String registUser(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Integer E=0;//外向
        Integer I=0;//内向
        Integer S=0;//感觉
        Integer N=0;//直觉
        Integer T=0;//思考
        Integer F=0;//情感
        Integer J=0;//判断
        Integer P=0;//知觉
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();

        HttpSession session = req.getSession();

        for (int i = 1; i <= 32; i++) {
            String str = ((Integer) (i)).toString();
            String it = req.getParameter(str);
            int num = Integer.parseInt(it);

            switch (i) {
                case 1:case 5:case 9:case 13:case 17:case 21:case 25:case 29:
                    E = E + num;
                    I = I + 5 - num;
                    break;

                case 2:case 6:case 10:case 14:case 18:case 22:case 26:case 30:
                    S = S + num;
                    N = N + 5 - num;
                    break;

                case 3:case 7:case 11:case 15:case 19:case 23:case 27:case 31:
                    T = T + num;
                    F = F + 5 - num;
                    break;

                case 4:case 8:case 12:case 16:case 20:case 24:case 28:case 32:
                    J = J + num;
                    P = P + 5 - num;
                    break;

            }
        }

        double[] evaluate1Outcome = {E, I, S, N, T, F, J, P};


        String[] strESTJ = {"E", "S", "T", "J"};
        String[] strINFP = {"I", "N", "F", "P"};
        String str = "";
        //取得当前分数对应的字母类型
        double[] dataESTJ = {E, S, T, J};
        double[] dataINFP = {I, N, F, P};

        for (int i = 0; i < 4; i++) {
            str = str + (dataESTJ[i] > dataINFP[i] ? strESTJ[i] : strINFP[i]);
        }
        User olUser= (User) req.getSession().getAttribute("OnlineUser");
        int olUserId=olUser.getUserId();
        evaluateService.updateUserGradeOne(olUserId,evaluate1Outcome);

        session.setAttribute("type1", str);

        return "evaluate_page/evaluate_list2";
    }

    @RequestMapping("evaluate2")
    public String evaluate2(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer E=0;//外向
        Integer I=0;//内向
        Integer S=0;//感觉
        Integer N=0;//直觉
        Integer T=0;//思考
        Integer F=0;//情感
        Integer J=0;//判断
        Integer P=0;//知觉
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out=resp.getWriter();

        HttpSession session=req.getSession();

        for(int i=1;i<=48;i++)
        {
            String str=((Integer)(i)).toString();
            String it=req.getParameter(str);
            int num=Integer.parseInt(it);

            switch(i){
                case 1 :case 5 :case 9 :case 13 :case 17 :case 21 :case 25 :case 29 :
                case 33 :case 37 :case 41 :case 45 :
                    E=E+num;
                    I=I+5-num;

                    break;
                case 2 :case 6 :case 10 :case 14 :case 18 :case 22 :case 26 :case 30 :
                case 34 :case 38 :case 42 :case 46 :
                    S=S+num;
                    N=N+5-num;

                    break;
                case 3 :case 7 :case 11 :case 15 :case 19 :case 23 :case 27 :case 31 :
                case 35:case 39 :case 43 :case 47 :
                    T=T+num;
                    F=F+5-num;

                    break;
                case 4 :case 8 :case 12 :case 16 :case 20 :case 24 :case 28 :case 32 :
                case 36 :case 40 :case 44 :case 48 :
                    J=J+num;
                    P=P+5-num;

                    break;

            }
        }


        double[] evaluate2Outcome={E,I,S,N,T,F,J,P};

        String[] strESTJ2={"E","S","T","J"};
        String[] strINFP2={"I","N","F","P"};
        String str="";
        //取得当前分数对应的字母类型
        double[] dataESTJ2 = {E,S,T,J};
        double[] dataINFP2 = {I,N,F,P};

        for(int i=0;i<4;i++)
        {
            str=str+(dataESTJ2[i]>dataINFP2[i]?strESTJ2[i]:strINFP2[i]);
        }
        User olUser= (User) req.getSession().getAttribute("OnlineUser");
        int olUserId=olUser.getUserId();

        evaluateService.updateUserGradeTwo(olUserId,evaluate2Outcome);

        session.setAttribute("type2", str);

        return "evaluate_page/evaluate_list3";
    }

    @RequestMapping("evaluate3")
    public String evaluate3(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        int Realistic=0;//技能型
        int Investigative=0;//研究型
        int Artistic=0;//艺术型
        int Social=0;//社交型
        int Enterprising=0;//经营型
        int Conventional=0;//事务型

        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out=resp.getWriter();

        HttpSession session=req.getSession();

        for(int i=1;i<=90;i=i+6)
        {
            Realistic=getvalueById(i  , req, Realistic);
            Investigative=getvalueById(i+1, req, Investigative);
            Artistic=getvalueById(i+2, req, Artistic);
            Social=getvalueById(i+3, req, Social);
            Enterprising=getvalueById(i+4, req, Enterprising);
            Conventional=getvalueById(i+5, req, Conventional);


        }

        double evaluate3Outcome[]={Realistic*5,Investigative*5,Artistic*5,Social*5,Enterprising*5,Conventional*5};
        User olUser= (User) req.getSession().getAttribute("OnlineUser");
        int olUserId=olUser.getUserId();
        evaluateService.updateUserGradeThree(olUserId,evaluate3Outcome);

        session.setAttribute("type3", evaluate3Outcome);


        //req.getRequestDispatcher("question_answer.jsp").forward(req, resp);
        //this.forward(req, resp, "page/question_answer.jsp");
        return "evaluate_page/evaluate_finish";
    }

    @RequestMapping("evaluate_answer")
    public ModelAndView evaluate_answer(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String viewName="evaluate_page/evaluate_answer";
        ModelAndView modelAndView=new ModelAndView(viewName);

        User olUser= (User) req.getSession().getAttribute("OnlineUser");
        int olUserId=olUser.getUserId();
        String type1=evaluateService.getEvaluateOne(olUserId);
        String type2=evaluateService.getEvaluateTwo(olUserId);
        String type3=evaluateService.getEvaluateThree(olUserId);

        if (null == type3) {
            modelAndView.setViewName("evaluate_page/evaluate_list1");
            return modelAndView;
        }

        int[] outcome1=string2IntArr(type1);
        int[] outcome2=string2IntArr(type2);
        int[] outcome3=string2IntArr(type3);
        System.out.println();


        JSONObject jsonObject1=new JSONObject();
        jsonObject1.put("outcome1JSON",outcome1);
        JSONObject jsonObject2=new JSONObject();
        jsonObject2.put("outcome2JSON",outcome2);
        JSONObject jsonObject3=new JSONObject();
        jsonObject3.put("outcome3JSON",outcome3);
        modelAndView.addObject("outcome1JSON",jsonObject1);
        modelAndView.addObject("outcome2JSON",jsonObject2);
        modelAndView.addObject("outcome3JSON",jsonObject3);


        return modelAndView;
    }


    public int getvalueById (int i,HttpServletRequest req,int t)//得到每道题的value并统计分数
    {
        String str=((Integer)(i)).toString();
        String it=null!=req.getParameter(str)?req.getParameter(str):null;
        //System.out.println(it);
        if(it.equals("true"))
        {
            t++;
            //System.out.println("true-------题目="+i+"-------静态="+t);
        }
        return t;

    }

    public int[] string2IntArr(String str){
        String[] s=str.split(",");
        int[] ints=stringArrayToInt(s);
        return ints;

    }

    public int[] stringArrayToInt(String[] arrs){
        int[] ints = new int[arrs.length];
        for(int i=0;i<arrs.length;i++){
            ints[i] = (int) Float.parseFloat(arrs[i]);
        }
        return ints;
    }

}
