<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="navbar-default navbar-collapse" id="slider_sub">
	<ul class="nav">
		<li>
			<a href="${pageContext.request.contextPath}/jump/Jump2user_index" class="sub">系统首页<span class="glyphicon glyphicon-home pull-right"></span></a>

		</li>
		<li>
			<a href="#sub1"  data-toggle="collapse" class="sub">生涯规划<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				<ul id="sub1" class="nav collapse">
										<li><a href="${pageContext.request.contextPath}/jump/Jump2user_evaluate"><span class="glyphicon glyphicon-globe"></span>&nbsp;自我评估</a></li>
										<li><a href="${pageContext.request.contextPath}/evaluate/evaluate_answer"><span class="glyphicon glyphicon-globe"></span>&nbsp;查看评估结果</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-transfer"></span>&nbsp;文理分科</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-filter"></span>&nbsp;了解专业</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;未来职业</a></li>
										<li><a href="${pageContext.request.contextPath}/jump/Jump2test"></span>&nbsp;TestChart</a></li>
				</ul>
				      	   	   	  
		</li>
				      	   	   	   
				 	              <li>
				      	   	   	  	 <a href="#sub2"  data-toggle="collapse" class="sub">学习提升<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	     <ul id="sub2" class="nav collapse">
										<li><a href="#"><span class="glyphicon glyphicon-download-alt"></span>&nbsp;学习资料下载</a></li>
				      	   	   	     </ul>
				      	   	   	  
				      	   	   	  </li>
				      	   	   	    <li>
				      	   	   	  	 <a href="#sub3"  data-toggle="collapse" class="sub">考生论坛<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	     <ul id="sub3" class="nav collapse">
				      	   	   	     <li><a href="${pageContext.request.contextPath}/questions/user_questionList"><span class="glyphicon glyphicon-signal"></span>&nbsp;进入考生论坛</a></li>
	
				      	   	   	     </ul>
				      	   	   	  
				      	   	   	  </li>
				      	   	   	  
				      	   	   	  <li>
				      	   	   	  	 <a href="#sub4"  data-toggle="collapse" class="sub">院校查询<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	     <ul id="sub4" class="nav collapse">
										<li><a href="#"><span class="glyphicon glyphicon-signal"></span>&nbsp;院校数据查询</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-grain"></span>&nbsp;专业数据查询</a></li>
										<li><a href="#"><span class="glyphicon glyphicon-object-align-top"></span>&nbsp;招生计划查询</a></li>
										
				      	   	   	     </ul>
				      	   	   	  
				      	   	   	  </li>
				      	   	   	  <li>
				      	   	   	  	 <a href="#sub5"  data-toggle="collapse" class="sub">用户中心<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
				      	   	   	     <ul id="sub5" class="nav collapse">
										<li><a href="${pageContext.request.contextPath}/jump/Jump2user_info"><span class="glyphicon glyphicon-user"></span>&nbsp;个人资料</a></li>
										<li><a href="${pageContext.request.contextPath}/jump/Jump2user_info_modify"><span class="glyphicon glyphicon-edit"></span>&nbsp;修改个人资料</a></li>
										<li><a href="${pageContext.request.contextPath}/jump/Jump2user_xinde"><span class="glyphicon glyphicon-list"></span>&nbsp;填报心得</a></li>
										
										
				      	   	   	     </ul>
				      	   	   	  
				      	   	   	  </li>
	 </ul>
</div>