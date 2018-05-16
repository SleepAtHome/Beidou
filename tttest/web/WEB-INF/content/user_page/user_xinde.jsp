<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
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

			window.editor2 = K.create('#userXinde',{
				resizeType : 1,
				allowPreviewEmoticons : false,
				allowImageUpload : false,
				items : [
					'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
					'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
					'insertunorderedlist', '|', 'emoticons', 'image', 'link']
			});
			var uploadbutton = K.uploadbutton({
				button : K('#uploadButton1')[0],
				fieldName : 'imgFile',
				url : '',
				afterUpload : function(data) {
					if (data.error === 0) {
						var url = K.formatUrl(data.url, 'absolute');
						K('#url').val(url);
					} else {
						alert(data.message);
					}
				}
			});
			var uploadbutton = K.uploadbutton({
				button : K('#uploadButton2')[0],
				fieldName : 'imgFile',
				url : '',
				afterUpload : function(data) {
					if (data.error === 0) {
						var url = K.formatUrl(data.url, 'absolute');
						K('#url').val(url);
					} else {
						alert(data.message);
					}
				}
			});
			var uploadbutton = K.uploadbutton({
				button : K('#uploadButton3')[0],
				fieldName : 'imgFile',
				url : '',
				afterUpload : function(data) {
					if (data.error === 0) {
						var url = K.formatUrl(data.url, 'absolute');
						K('#url').val(url);
					} else {
						alert(data.message);
					}
				}
			});

		});

	</script>

	<script>
		function check()
		{
				return true;
		}
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
			<%--<img src="${pageContext.request.contextPath}/img/ad02.png" class="img-responsive" alt="Responsive image">--%>
			<div style="height: 40px;"></div>
			<div style="text-align: center;">
				<form class="form-horizontal" action="${pageContext.request.contextPath}/user/user_update_xinde" method="post" onsubmit="return check();">
					<div class="form-group">
						<label class="col-sm-3 control-label">&lowast;录取院校：</label>
						<div class="col-sm-5">
							<input type="text" class="form-control " required="required" placeholder="" name="userUniversity">
						</div>
						<span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
					</div>
					<div class="form-group ">
						<label class="col-sm-3 control-label">&lowast;录取专业：</label>
						<div class="col-sm-5">
							<input type="text" class="form-control " required="required" placeholder="" name="userDepartment">
						</div>
						<span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
					</div>
					<div class="form-group ">
						<label class="col-sm-3 control-label">&lowast;填报心得：</label>
						<div class="col-sm-7">
							<textarea rows="5" cols="30" id="userXinde" style="width: 100%;" name="userXinde"></textarea>
						</div>

						<span class="help-block" class="col-sm-2" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary" style="text-align: center;">保存</button>
						<span class="help-block" class="col-sm-6" style="font-size:14px;line-height:34px;vertical-align:baseline;">点击“保存”，即表示您同意并愿意遵守<a href="#">《北斗星报考网肖像使用协议》</a></span>
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
    