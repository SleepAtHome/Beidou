<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@include file="../templete/user_head.jsp" %>
	<style type="text/css">
		    body{font-family: "微软雅黑"}
	    	.sub{ font-family: "微软雅黑" ;font-weight: bold; font-size: 16px; }
	       
	    </style>
	    <title>北斗星报考网</title>
	</head>
	<body >
		<!--
        	作者：jyk@163.com
        	时间：2016-04-09
        	描述：最上面的部分
        -->

		<%@include file="../templete/user_top.jsp" %>
		<!--中间区域-->
		
		<div class="container" >
			<div class="row">
				 <div class="col-xs-12 col-sm-3">
				 	 	   	<!--   侧边功能栏-->
					 <%@include file="../templete/user_left.jsp" %>
				 </div>
				 <div class="col-sm-9">
				 	 <!--路径导航-->
				 	 <div class="nav">
						  <ol class="breadcrumb" id="aaa">
							  <li><a href="#">首页</a></li>
							  <li><a href="#">栏目</a></li>
							  <li class="active">内容</li>
							</ol>
					</div>
					 <div class="jumbotron">
						 <h3>${sessionScope.OnlineUser.userName},Welcome to</h3>
						 <h1>北斗星报考网</h1>
						 <p>1.通过性格、心理的测试为考生量身定制出适合自己的学习计划，专业，学校<br>
						 2.通过测试更加深入了解自己，从而选择最适合自己的学校和专业</p>
						 <p><a class="btn btn-primary btn-lg" href="#" role="button">查看更多</a></p>
					 </div>

					 <div class="row">
						 <div class="col-sm-6 col-md-4">
							 <div class="thumbnail">
								 <img src="${pageContext.request.contextPath}/img/sygh1.jpg" alt="...">
								 <div class="caption">
									 <h3>生涯规划</h3>
									 <p>用户可以在这里进行个人的风格测评、职业倾向测评、我们会给出专业的测评答案。</p>
									</div>
							 </div>
						 </div>
						 <div class="col-sm-6 col-md-4">
							 <div class="thumbnail">
								 <img src="${pageContext.request.contextPath}/img/kslt.jpg" alt="...">
								 <div class="caption">
									 <h3>考生论坛</h3>
									 <p>用户可以在这里进行个人的风格测评、职业倾向测评、我们会给出专业的测评答案。</p>
								 </div>
							 </div>
						 </div>
						 <div class="col-sm-6 col-md-4">
							 <div class="thumbnail">
								 <img src="${pageContext.request.contextPath}/img/grzl.jpg" alt="...">
								 <div class="caption">
									 <h3>个人资料</h3>
									 <p>用户可以在这里进行个人信息的查看和修改。</p>
								 </div>
							 </div>
						 </div>
					 </div>
				 </div>
				
			</div>
			
		</div>
		
		<footer class="container">
			<hr />
			<p align="center">北斗星报考网(page)&nbsp;&nbsp;<b>联系我们:9703239</b></p>
		</footer>
	</body>
</html>
    