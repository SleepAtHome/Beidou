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
	       
	    </style>
	    
	    <title>北斗星报考网</title>
		<%@include file="../templete/link_kindeditor.jsp" %>
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
        	作者：langyamoren@163.com
        	时间：2016-04-09
        	描述：最上面的部分
        -->

		<%@include file="../templete/user_top.jsp" %>
		<!--中间区域-->
		<%User user= (User) session.getAttribute("OnlineUser");%>
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
					<form class="form-horizontal" action="" method="post" onsubmit="return check();">
					  <input type="hidden" name="action" value="regist"/>
						<div class="form-group ">	
					    <label class="control-label col-sm-2"></label>&nbsp;&nbsp;&nbsp;&nbsp;
						     <div class="col-sm-4">
						    <input type="hidden" id="inpic1" name="pic1">
						    <img alt="点击，上传图片" id="pic1"  class="img-circle" width="100" height="100" src="./img/pic03.jpg"  style="cursor:pointer"/>&nbsp;&nbsp;&nbsp;&nbsp;
						    
						    <a href="#" class="">修改头像</a>
						     </div> 
						      <span class="help-block" class="col-sm-6" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
						</div>
						<div style="height: 40px;"></div>
						</form>
				</div>
				<div style="text-align: center;">
					<form class="form-horizontal" action="" method="post" onsubmit="return check();">
					  <input type="hidden" name="action" value="regist"/>
						<div class="form-group " >
							
				    <label class="col-sm-3 control-label">&lowast;所在省市：</label>
					     <div class="col-sm-6 form-inline " disabled>
					    <select id="pro" class="form-control " required="required"  >
   						<option>请输入省份</option>
						   </select>&nbsp;&nbsp;
						  <select id="city" class="form-control " required="required"  >
						   <option>请输入城市</option>
						   </select>&nbsp;&nbsp;
						    <select id="area" class="form-control " required="required"  >
						   <option>请输入区/县</option>
						   </select>
					     </div>
					   
					   </div>
					   <div class="form-group ">
					    <label class="col-sm-3 control-label">&lowast;考生姓名：</label>
					    <div class="col-sm-3">
						    <input type="text" class="form-control " required="required" placeholder=<%out.println(user.getUserRealname()); %> name="name"  disabled>
						     </div>
						    
					    </div>
					    <div class="form-group ">
				    <label class="col-sm-3 control-label">&lowast;考生性别：</label>
					    <div class="col-sm-3 radio form-inline">
					    	<label>
							    <input type="radio" name="sex"  value="M" checked>男   
							</label>&nbsp;&nbsp;
							<label>
							    <input type="radio" name="sex"  value="F">女  
							</label>
					     </div>
					     <span class="help-block" class="col-sm-6" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    </div>
				     <div class="form-group ">
				    <label class="col-sm-3 control-label">&lowast;考生类型：</label>
					    <div class="col-sm-4 radio form-inline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					    	<label>
							    <input type="radio" name="subject"  value="wen" checked>文科   
							</label>&nbsp;&nbsp;
							<label>
							    <input type="radio" name="subject"  value="li" >理科 
							</label>&nbsp;&nbsp;
							<label>
							    <input type="radio" name="subject"  value="wl" >文理不分科 
							</label>
					     </div>
					     <span class="help-block" class="col-sm-5" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    </div>
				    <div class="form-group ">
				    <label class="col-sm-3 control-label">&lowast;高考年份：</label>
					     <div class="col-sm-3 form-inline " >
					    <select  class="form-control " required="required"  disabled>
   						<option>选择年份</option>
   						<option>2017</option>
   						<option>2016</option>
   						<option>2015</option>
   						</select>
   					</div>
   					 <span class="help-block" class="col-sm-6" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
   					</div>
   					
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;修改成绩：</label>
						    <div class="col-sm-5">
							    <input type="password" class="form-control " required="required" placeholder="" name="negrade">
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;修改位次：</label>
						    <div class="col-sm-5">
							    <input type="password" class="form-control " required="required" placeholder="" name="neranking">
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	
   					<div class="form-group ">
				   		<button type="submit" class="btn btn-primary" style="text-align: center;">保存个人资料</button>
   					 <span class="help-block" class="col-sm-6" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
   					</div>
   					
					</form>
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
    