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
						 <h1>欢迎来到辅导课程 <small>参加那个老师的辅导课程？</small></h1>
					 </div>
					 <div class="row">
						 <div class="col-sm-6 col-md-4">
							 <div class="thumbnail">
								 <img src="${pageContext.request.contextPath}/img/z.jpg" alt="...">
								 <div class="caption">
									 <h3>景老师</h3>
									 <p>特点：严谨、认真</p>
									 <p><a href="#" class="btn btn-primary" role="button">选择他！</a> <a href="#" class="btn btn-default" role="button">查看详细介绍</a></p>
								 </div>
							 </div>
						 </div>

						 <div class="col-sm-6 col-md-4">
							 <div class="thumbnail">
								 <img src="${pageContext.request.contextPath}/img/l.jpg" alt="...">
								 <div class="caption">
									 <h3>元老师</h3>
									 <p>特点：生动、活泼</p>
									 <p><a href="#" class="btn btn-primary" role="button">选择他！</a> <a href="#" class="btn btn-default" role="button">查看详细介绍</a></p>
								 </div>
							 </div>
						 </div>

						 <div class="col-sm-6 col-md-4">
							 <div class="thumbnail">
								 <img src="${pageContext.request.contextPath}/img/x.jpg" alt="...">
								 <div class="caption">
									 <h3>奎老师</h3>
									 <p>特点：细致、关切</p>
									 <p><a href="#" class="btn btn-primary" role="button">选择他！</a> <a href="#" class="btn btn-default" role="button">查看详细介绍</a></p>
								 </div>
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
    