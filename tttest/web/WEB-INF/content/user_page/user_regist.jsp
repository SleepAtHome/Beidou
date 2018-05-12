<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://www.cms/tags" prefix="cms"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@include file="../templete/user_head.jsp" %>

	<title>北斗星报考网</title>
	<style type="text/css">

		body{font-family: "微软雅黑"}
		.sub{ font-family: "微软雅黑" ;font-weight: bold; font-size: 16px; }
	</style>
	<script>
		function check()
		{

			var pwd=document.getElementById("pwd").value;
			var repwd=document.getElementById("repwd");
			if(pwd==repwd.value)
			{
				return true;
			}else
			{
				repwd.setCustomValidity("两次密码不一样");
				return false;
			}

		}

	</script>
	<script type="text/javascript" src="./js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function(){
			//初始化省
			$.get("${pageContext.request.contextPath}/area/province",function(json)
			{

				for(var i=0;i<json.province.length;i++)
				{
					var onoption=$("<option value='"+json.province[i].id+"'>"+json.province[i].name+"</option>")
					$("#pro").append(onoption);
				}

			},"json");


			//初始化城市
			$("#pro").change(function(){
				var selecval=$(this).val();

				$("#city").empty();
				$.get("${pageContext.request.contextPath}/area/city",{parentId:selecval},function(json){

					for(var i=0;i<json.cities.length;i++)
					{
						var onoption=$("<option value='"+json.cities[i].id+"'>"+json.cities[i].name+"</option>")
						$("#city").append(onoption);
					}


				},"json");
			});
			//初始化区
			$("#city").change(function(){
				var selecval=$(this).val();

				$("#area").empty();
				$.get("${pageContext.request.contextPath}/area/district",{parentId:selecval},function(json){

					for(var i=0;i<json.district.length;i++)
					{
						var onoption=$("<option value='"+json.district[i].id+"'>"+json.district[i].name+"</option>")
						$("#area").append(onoption);
					}


				},"json");
			});

		});

		$(function(){
			$(":input[name='userEmail']").change(function(){
				var val=$(this).val();
				val=$.trim(val);

				if(val!=""){
					var url="${pageContext.request.contextPath }/user/check_UserName";
					var args={"cuserName":val,"time":new Date()};

					$.post(url,args,function(data){
						$("#message").html(data);
					});
				}
			});
		})

	</script>

</head>
<body>
<header>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-6 col-md-3">
				<img src="${pageContext.request.contextPath}/img/bdxlogo.png" style="margin:20px;" class="img-responsive" />
			</div>
			<div class="col-xs-6 col-md-9">
				<div class="collapse navbar-collapse" style="margin-top:30px;">
					<ul id="bdxnav" class="nav nav-pills navbar-right">
						<li role="presentation"><a href="#">首页</a></li>
						<li role="presentation" class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
								生涯规划
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#"><span class="glyphicon glyphicon-globe"></span>&nbsp;自我评估</a></li>
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
								志愿填报
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#"><span class="glyphicon glyphicon-check"></span>&nbsp;志愿智能模拟</a></li>
								<li><a href="#"><span class="glyphicon glyphicon-list"></span>&nbsp;我的志愿表</a></li>
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
								帮助中心
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;个人资料</a></li>
								<li><a href="#"><span class="glyphicon glyphicon-edit"></span>&nbsp;更改密码</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</header>
<div class="container">
	<h1 align="center">用户注册</h1>
	<div style="text-align: center;">
		<form class="form-horizontal" action="${pageContext.request.contextPath}/user/user_regist" method="post" onsubmit="return check();">
			<div class="form-group ">
				<label class="col-sm-3 control-label"><span class="glyphicon glyphicon-leaf" aria-hidden="true"></span> &nbsp;&nbsp;填写注册信息：</label>
				<div class="col-sm-6">
					<input type="email" class="form-control " required="required" placeholder="请输入Email地址" name="userEmail">
				</div>
				<span class="help-block" class="col-sm-3" style="font-size:14px;line-height:34px;vertical-align:baseline;">完成注册后，邮箱号即为您的登录名</span>
				<div id="message"></div>
			</div>
			<div class="form-group ">
				<label class="col-sm-3 control-label sr-only"></label>
				<div class="col-sm-6">
					<input type="password" class="form-control"  required="required"  placeholder="请输入密码" id="pwd" name="userPassword">
				</div>
				<span class="help-block" class="col-sm-3" style="font-size:14px;line-height:34px;vertical-align:baseline;">密码为6—16位数字,字母或者符号</span>
			</div>
			<div class="form-group ">
				<label class="col-sm-3 control-label sr-only"></label>
				<div class="col-sm-6">
					<input type="password" class="form-control"  required="required"  placeholder="确认密码" id="repwd" name="reuserPassword">
				</div>
				<label class="col-sm-3 control-label sr-only"></label>
			</div>

			<div class="form-group ">
				<label class="col-sm-3 control-label"> &nbsp;&nbsp;填写用户昵称：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control " required="required" placeholder="请输入用户昵称" name="userName">
				</div>
			</div>

			<div class="form-group ">
				<label class="col-sm-3 control-label"> &nbsp;&nbsp;填写手机号码：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control " required="required" placeholder="请输入手机号码" name="userTel">
				</div>
			</div>

			<div class="form-group ">
				<label class="col-sm-3 control-label"> &nbsp;&nbsp;填写QQ：</label>
				<div class="col-sm-6">
					<input type="text" class="form-control " required="required" placeholder="请输入QQ" name="userQq">
				</div>
			</div>


			<div class="form-group ">
				<label class="col-sm-3 control-label"><span class="glyphicon glyphicon-education" aria-hidden="true"></span> &nbsp;&nbsp;完善考生信息：</label>
				<div class="col-sm-4">
					<span class="help-block" class="" style="font-size:14px;line-height:34px;vertical-align:baseline;">为享受更优质的服务体验，请确保各项信息的真实性</span>
				</div>
				<label class="col-sm-5 control-label sr-only"></label>
			</div>
			<div class="form-group ">
				<label class="col-sm-3 control-label">&lowast;所在省市：</label>
				<div class="col-sm-6 form-inline ">
					<select id="pro"  required="required" name="userProvince" >
						<option>请输入省份</option>
					</select>&nbsp;&nbsp;
					<select id="city"  required="required" name="userCity" >
						<option>请输入城市</option>
					</select>&nbsp;&nbsp;
					<select id="area"  required="required" name="userArea"  >
						<option>请输入区/县</option>
					</select>
				</div>
				<span class="help-block" class="col-sm-3" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
			</div>
			<div class="form-group ">
				<label class="col-sm-3 control-label">&lowast;考生姓名：</label>
				<div class="col-sm-5">
					<input type="text" class="form-control " required="required" placeholder="" name="userRealname">
				</div>
				<span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;">请填写考生真实姓名，保存后不可修改</span>
			</div>
			<div class="form-group ">
				<label class="col-sm-3 control-label">&lowast;考生性别：</label>
				<div class="col-sm-3 radio form-inline">
					<label>
						<input type="radio" name="userSex"  value="M" checked>男
					</label>&nbsp;&nbsp;
					<label>
						<input type="radio" name="userSex"  value="F">女
					</label>
				</div>
				<span class="help-block" class="col-sm-6" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
			</div>
			<div class="form-group ">
				<label class="col-sm-3 control-label">&lowast;考生类型：</label>
				<div class="col-sm-4 radio form-inline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<label>
						<input type="radio" name="userSubjectType"  value="wen" checked>文科
					</label>&nbsp;&nbsp;
					<label>
						<input type="radio" name="userSubjectType"  value="li" >理科
					</label>&nbsp;&nbsp;
					<label>
						<input type="radio" name="userSubjectType"  value="wl" >文理不分科
					</label>
				</div>
				<span class="help-block" class="col-sm-5" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
			</div>
			<div class="form-group ">
				<label class="col-sm-3 control-label">&lowast;高考年份：</label>
				<div class="col-sm-3 form-inline ">
					<select  class="form-control " required="required" name="userYear" >
						<option>选择年份</option>
						<option>2017</option>
						<option>2016</option>
						<option>2015</option>
					</select>
				</div>
				<span class="help-block" class="col-sm-6" style="font-size:14px;line-height:34px;vertical-align:baseline;">有效期至2017-08-31</span>
			</div>
			<div class="form-group ">
				<button type="submit" class="btn btn-primary" style="text-align: center;">立即注册</button>
				<span class="help-block" class="col-sm-6" style="font-size:14px;line-height:34px;vertical-align:baseline;">点击“立即注册”，即表示您同意并愿意遵守<a href="#">《北斗星报考网服务条款》</a></span>
			</div>
		</form>
	</div>
</div><!--  container结束-->
<cms:modalDialogTag/>

</body>
</html>