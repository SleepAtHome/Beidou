<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.xaufe.entity.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<%@include file="user_header.jsp" %>
	<style type="text/css">
		    body{font-family: "微软雅黑"}
	    	.sub{ font-family: "微软雅黑" ;font-weight: bold; font-size: 16px; }
	    	.userInfo{width:320px;height:385px;background-color:#fff;border-radius:3px;padding-top:40px;padding-left:30px;padding-right:30px}
	   		 .userInfo dl{line-height:0px;padding:0 0}
	   		 .userInfo dl dt{width:40%;float:left;padding:5px 5% 5px 0;text-align:right}
	   		 .userInfo dl dd{overflow:hidden;color:#333;padding:5px 0}
	   		 .userInfo dl dd span.name{font-size:18px;color:#333}
	   		  .userInfo dl dd span.rank{color:#f70}
	       
	    </style>
	    
	    <title>北斗星报考网</title>
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/kindeditor/themes/default/default.css" />
		<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8" src="${pageContext.request.contextPath}/kindeditor/lang/zh-CN.js"></script>
<script type="text/javascript">

KindEditor.ready(function(K) {
	   //初始化编辑器
       var editor = K.editor({
					allowFileManager : true
				});
        
        
        K('#pic1').click(function() {
			editor.loadPlugin('image', function() {
				editor.plugin.imageDialog({
					imageUrl : K('#url1').val(),
					clickFn : function(url, title, width, height, border, align) 
					{
						K('#inpic1').val(url);
					    K('#pic1').attr("src",url);
						editor.hideDialog();
					}
				});
			});
		});
        
       
        
});


</script>
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
							  <li><a href="#">用户中心</a></li>
							  <li class="active">更新信息</li>
							</ol>
					</div>
				 	  	
				 	
                     <ul class="nav nav-pills nav-tabs">
						  <li role="presentation" class="active"><a href="#">个人资料</a></li>
						  <li role="presentation"><a href="#">更新信息</a></li>
						  <li role="presentation"><a href="#">修改密码</a></li>
					</ul>
					<div style="height: 40px;"></div>

				<div style="text-align: center;">
				<%User user= (User) session.getAttribute("OnlineUser");
				
				%>
					<table class="table table-bordered table-hover">
						<tr><th width="150px">用户昵称：</th><td><%out.println(user.getUserName()); %></td></tr>
						<tr><th>邮箱：</th><td><%out.println(user.getUserEmail()); %></td></tr>
						<tr><th>考生真实姓名：</th><td><%out.println(user.getUserRealname()); %></td></tr>
						<tr><th>邮箱：</th><td><%out.println(user.getUserEmail()); %></td></tr>
						<tr><th>考生电话：</th><td><%out.println(user.getUserTel()); %></td></tr>
						<tr><th>考生QQ：</th><td><%out.println(user.getUserQq()); %></td></tr>
						<tr><th>学生类别：</th><td><%String subject=user.getUserSubjectType();
							if (subject.equals("li")){
								out.println("理科");
							}else if (subject.equals("wen")){
								out.println("文科");
							}else {
								out.println("文理不分科");
							}
						%></td></tr>
						<tr><th>高考年份：</th><td><%out.println(user.getUserYear()); %></td></tr>
						<tr><th>账户创建时间：</th><td><%out.println(user.getUserCreatetime()); %></td></tr>
						<tr><th>考生录取学校：</th><td><%out.println(user.getUserUniversity()); %></td></tr>
						<tr><th>考生录取专业：</th><td><%out.println(user.getUserDepartment()); %></td></tr>
						<tr><th>考生录取专业：</th><td><%out.println(user.getUserDepartment()); %></td></tr>
						<tr><th>填报心得：</th><td><%out.println(user.getUserXinde()); %></td></tr>
					</table>
				</div>
				 </div>
				
			</div>
			
		</div>
		
		<footer class="container">
			<hr />
			<p align="center">北斗星报考网&nbsp;&nbsp;<b>联系我们:9703239</b></p>
		</footer>
	</body>
</html>
    