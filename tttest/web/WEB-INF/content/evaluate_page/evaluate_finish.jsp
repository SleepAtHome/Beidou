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
	     <script type="text/javascript">
	    	$(function(){
	    		$('#mymodal').modal({
	    			backdrop:false,
	    			keyboard:false,
	    			show:true
	    		});
	    		});
	  	</script>
	    <title>北斗星报考网</title>
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
							  <li class="active">自我评估</li>
							</ol>
					</div>
				 	 <div><!-- 内容区 -->
						 <h1>恭喜您，测评已经全部完成！</h1>
						 <a href="${pageContext.request.contextPath}/evaluate/evaluate_answer">查看测评结果</a>
      			</div>	
		  </div>
		</div>
			<!--model结束-->				

  </div><!-- 内容区结束 -->  	
				 	
                    
				 </div>
				
			</div>
			
		</div>
		
		<footer class="container">
			<hr />
			<p align="center">北斗星报考网&nbsp;&nbsp;<b>联系我们:9703239</b></p>
		</footer>
	</body>
</html>
