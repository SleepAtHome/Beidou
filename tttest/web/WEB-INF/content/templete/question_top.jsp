<%--
  Created by IntelliJ IDEA.
  User: JYK
  Date: 2017/12/24
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div class="container-fluid">
    <div class="row">
        <div class="col-xs-6 col-md-3">
            <img src="../img/bdxlogo.png" style="margin:20px;" class="img-responsive" />
        </div>
        <div class="col-xs-6 col-md-9">
            <div class="collapse navbar-collapse" style="margin-top:30px;">
                <ul id="bdxnav" class="nav nav-pills navbar-right">
                    <li role="presentation"><a href="${pageContext.request.contextPath}/jump/Jump2user_index">首页</a></li>
                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            生涯规划
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="jump?action=jump2question_list1"><span class="glyphicon glyphicon-globe"></span>&nbsp;自我评估</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-transfer"></span>&nbsp;文理分科</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-filter"></span>&nbsp;了解专业</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;未来职业</a></li>
                        </ul>
                    </li>
                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            学习提升
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-download-alt"></span>&nbsp;学习资料下载</a></li>
                        </ul>
                    </li>
                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            考生论坛
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/questions/user_questionList"><span class="glyphicon glyphicon-check"></span>&nbsp;进入考生论坛</a></li>
                            <li><a href="${pageContext.request.contextPath}/questions/user_myquestionList"><span class="glyphicon glyphicon-check"></span>&nbsp;查看我提的问题</a></li>
                        </ul>
                    </li>
                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            数据查询
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-signal"></span>&nbsp;院校数据查询</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-grain"></span>&nbsp;专业数据查询</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-object-align-top"></span>&nbsp;招生计划查询</a></li>
                        </ul>
                    </li>
                    <li role="presentation" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                            用户中心
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/jump/Jump2user_info"><span class="glyphicon glyphicon-user"></span>&nbsp;个人资料</a></li>
                            <li><a href="${pageContext.request.contextPath}/jump/Jump2user_info_modify"><span class="glyphicon glyphicon-edit"></span>&nbsp;修改个人资料</a></li>
                            <li><a href="${pageContext.request.contextPath}/jump/Jump2user_xinde"><span class="glyphicon glyphicon-user"></span>&nbsp;填报心得</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
