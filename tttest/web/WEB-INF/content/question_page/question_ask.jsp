 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.xaufe.util.*,java.util.*,com.xaufe.entity.*" %>
 <%@ page import="java.text.SimpleDateFormat" %>
 <!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<%@include file="../templete/user_head.jsp"%>
		<title>北斗星报考网</title>
		
		 <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
		<script charset="utf-8" src="../kindeditor/kindeditor-min.js"></script>
 <script charset="utf-8" src="../kindeditor/lang/zh-CN.js"></script>  

<script type="text/javascript">
        KindEditor.ready(function(K) {
        	   //初始化编辑器
                
        	 window.editor = K.create('#txt',{
                 uploadJson : 'upload_pic',
                 //fileManagerJson : '../asp/file_manager_json.asp',
                 allowFileManager : false
         });
                
                
               
                             
        });
        
     
</script>
		
		
			
		 	<script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script> 
	</head>
	<body>
	<header>
		<%@include file="../templete/question_top.jsp"%>
		  </header>
		  <div class="panel panel-info">
					  <div class="panel-heading">
					  
					  </div>
					  <div class="panel-body">
					   <div class="container">
								
			
			<div>
			<div style="height: 40px;"></div>
	
			<form class="form-horizontal" action="${pageContext.request.contextPath}/questions/question_add" method="post">
				<%User onlineUser=(User) session.getAttribute("OnlineUser");%>
				<input type="hidden" value="<%=onlineUser.getUserId()%>" name="userId"/>
					<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;问题标题：</label>
						    <div class="col-sm-5">
							    <input type="text" class="form-control " required="required" placeholder="请输入问题简述" name="questionTitle">
							</div>
					     <span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
					</div>

				<div class="form-group ">
					<label class="col-sm-3 control-label">&lowast;问题分值：</label>
					<div class="col-sm-5">
						<input type="text" class="form-control " required="required" placeholder="请输入问题分值" name="questionInter">
					</div>
					<span class="help-block" class="col-sm-4" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				</div>
				    	
				    	<div class="form-group ">
						    <label class="col-sm-3 control-label">&lowast;问题说明：</label>
						    <div class="col-sm-7">
						    <textarea name="questionContents" id="txt"  style="width:100%;height:300px;"></textarea>
						    
				<!-- <textarea rows="5" cols="30" id="txt" style="width: 100%;" name="contents" required=""></textarea>  -->
						    	
							    
							</div>
					     <span class="help-block" class="col-sm-2" style="font-size:14px;line-height:34px;vertical-align:baseline;"></span>
				    	</div>
				    	<div class="form-group form-inline">
						    <label class="col-sm-3 control-label"></label>
						    <div class="col-sm-5 checkbox">
								<label>
							      <input type="checkbox" value="">&nbsp;&nbsp;&nbsp;匿名
							    </label>
							</div>
							<div class="col-sm-4"></div>
							
							<a type="button" class="btn btn-link" href="${pageContext.request.contextPath}/questions/user_questionList">取消</a>
					     	<button type="submit" class="btn btn-primary">发布</button>
				    	</div>
				    </form>
				  </div>
				
			
			</div>
			
					<%
		String msg=(String)request.getAttribute("msg");
		if(null!=msg)
		{
		
		%>

<div class="modal fade " id="showmod">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">温馨提示</h4>
      </div>
      <div class="modal-body">
        <p><%=msg %></p>
      </div>
      
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script type="text/javascript">
$(function(){
	$('#showmod').modal('show')
});
</script>
		<%
		}
		%>
					   
					   
					 
					  </div>
					</div>
			
	</body>
</html>
