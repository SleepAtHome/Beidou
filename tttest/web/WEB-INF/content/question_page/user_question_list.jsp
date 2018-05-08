 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.xaufe.util.*,java.util.*,com.xaufe.entity.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<%@include file="../templete/user_head.jsp" %>
		<title>北斗星报考网</title>
		<style type="text/css">
			/* body{ font-family:"微软雅黑"; background: #eee;}

			.mytop{  background:green; line-height: 33px; color: white; margin-bottom: 20px;}
			.mytop a{ text-decoration: none; color: white; font-weight: bold;}
			.mytop a:hover{ text-decoration: underline;}


			.mymain{background: white; margin: 20px 30px;}
			.mymain form{  padding: 30px;} */
		</style>

		 	<!-- <script type="text/javascript" src="../js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" src="../js/bootstrap.min.js"></script> -->
	</head>
	<body>
	<header>
		<%@include file="../templete/question_top.jsp" %>
	</header>
		  <div class="panel panel-info">
					  <div class="panel-heading">
					  </div>
					  <div class="panel-body">
					   <div class="container">
			
									<nav class="navbar navbar-default">
						  <div class="container-fluid">
						    <div class="navbar-header">
						      <img src="../img/log1.jpg" class="img-responsive" alt="Responsive image" style="width: 60px;height: 50px;" />
						    </div>
						    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
						      <ul class="nav navbar-nav">
						        <li><a href="${pageContext.request.contextPath}/jump/Jump2question_ask" ><span class="glyphicon glyphicon-question-sign"></span>&nbsp;&nbsp;&nbsp;提问</a></li>
						      </ul>
						       <ul class="nav navbar-nav">
						        <li><a href="#"><span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;&nbsp;写文章</a></li>
						      </ul>
						      <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/questions/condition_search" method="post" role="search" name="conditionSearch">
						        <div class="form-group">
						          <input type="text" class="form-control" placeholder="输入要检索的问题">
						        </div>
						        <button type="submit" class="btn  btn-info">搜索问题</button>
						      </form>
								<a href="${pageContext.request.contextPath}/questions/user_myquestionList"><button type="button" class="btn  btn-info">搜索问题</button></a>
						      <ul class="nav navbar-nav navbar-right">
						        <li><a href="#">草稿(page)</a></li> 
						      </ul>
						    </div><!-- /.navbar-collapse -->
						  </div><!-- /.container-fluid -->
						</nav>
			
			<div>
			<ul class="list-group">
				
	<%
		List<Questions> list= (List<Questions>) request.getAttribute("user_questionList");
	  if(null!=list)
	  {
		  for(Questions q:list)
		  {
		  %>
		  <li class="list-group-item">

  	<span class="badge" style="background-color: #5bc0de; border-radius: 6x;"><a href="${pageContext.request.contextPath}/questions/question_deleteOnequestion?id=<%=q.getQuestionId()%>"><button type="button" class="btn  btn-info">删除</button></a></span>
  	<a href="${pageContext.request.contextPath}/questions/question_getOnequestion?action=getOnequestion&id=<%=q.getQuestionId()%>"><%=q.getQuestionTitle() %></a></li>
		  <%
		  }
	  }
	%>
  
  <li class="list-group-item">
  	
  	
  	
  	
<%--   	<nav>
  <ul class="pagination">
    <li>
      <a href="question?pageNo=<%=pd.getPageNo()-1>0?pd.getPageNo()-1:1 %>" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <%
    for(int i=pd.getStart();i<=pd.getEnd();i++)
    {
    %>
    <li><a href="question?pageNo=<%=i%>"><%=i%></a></li>
    <%
    }
    %>
   
    <li>
    <% 
      int nexpage=(pd.getPageNo()+1)>pd.getTotalPage()?pd.getTotalPage():(pd.getPageNo()+1);
    %>
      <a href="question?pageNo=<%=nexpage%>" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    <li>
    当前<%=pd.getPageNo()%>/<%=pd.getTotalPage()%>&nbsp;&nbsp;总共<%=pd.getTotalCount()%>条
    </li>
  </ul>
</nav> --%>
  </li>
</ul>

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
