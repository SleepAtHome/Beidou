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
							</ol>
					</div>
					 <div class="page-header">
						 <h1>欢迎来到学习资料下载 <small>选择你需要的资料下载吧！</small></h1>
					 </div>
					 <table class="table table-striped table-hover">
						 <tr><th>编号</th><th>资料名称</th><th>下载链接</th></tr>
						 <tr><td>1</td><td>2014年各省分数线</td><td><button type="button" class="btn btn-primary btn-xs">下载</button></td></tr>
						 <tr><td>2</td><td>西安财经学院概况</td><td><button type="button" class="btn btn-primary btn-xs">下载</button></td></tr>
						 <tr><td>3</td><td>文科复习资料</td><td><button type="button" class="btn btn-primary btn-xs">下载</button></td></tr>
						 <tr><td>4</td><td>理科复习资料</td><td><button type="button" class="btn btn-primary btn-xs">下载</button></td></tr>
					 </table>
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
    