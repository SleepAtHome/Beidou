<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.xaufe.entity.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <%@include file="../templete/user_head.jsp" %>
    <title>北斗星报考网</title>

    <%@include file="../templete/link_kindeditor.jsp" %>
    <script type="text/javascript">


        KindEditor.ready(function (K) {
            //初始化编辑器

            window.editor = K.create('#txt', {
                resizeType: 1,
                allowPreviewEmoticons: false,
                allowImageUpload: false,
                items: [
                    'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
                    'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
                    'insertunorderedlist', '|', 'emoticons', 'image', 'link']
            });


        });


    </script>


    <script type="text/javascript">
        $(function () {
            $('#mymodal').modal({
                backdrop: false,
                keyboard: false,
                show: true
            });


            /* 	$("#savechan").click(function(){

                    alert(document.getElementById("txt").value);
                //	$("#savechanform").submit();


                }); */
        });
    </script>

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


            <div>
                <div style="height: 40px;"></div>
                <h1>
                    <%

                        List<Answer> anList = (List<Answer>) request.getAttribute("answerList");
                        Questions q = (Questions) request.getAttribute("question");
                        out.println(q.getQuestionTitle());

                    %>

                </h1>
                <hr/>
                <p class="text-muted"><%=q.getQuestionContents() %>
                </p>

                <hr/>
                <div class="form-group form-inline">
                    <!-- <label class="col-sm-3 control-label">&lowast;问题标题：</label> -->

                    <span class="glyphicon glyphicon-tags pull-left text-info">
					     <%=null != anList ? anList.size() : "0" %>条回答
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="glyphicon glyphicon-share text-info">
					    <a href="#">分享</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="glyphicon glyphicon-edit text-info ">
					     <a href="#">邀请回答</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="glyphicon glyphicon-flag text-info ">
					    <a href="#">举报</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="glyphicon glyphicon-th-list text-info ">
					   
					     </span>

                </div>
                <div style="height: 40px;"></div>
                <div class="panel panel-default ">
                    <div class="panel-body ">

                        <img src="../img/log1.jpg" alt="Responsive image" style="width: 60px;height: 50px;"/>&nbsp;&nbsp;&nbsp;&nbsp;
                        <span>匿名用户</span>
                        <hr/>

                        <%
                            if (null != anList && anList.size() > 0) {
                                for (Answer an : anList) {
                        %>
                        <p class=""><%=an.getAnswerContents() %>
                        </p>
                        <%
                                }
                            }
                        %>
                    </div>
                    <div class="panel-footer" style="background-color: white;">
                        <div class="form-group form-inline">
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-default">1</button>
                                <button type="button" class="btn btn-default">2</button>

                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                        Dropdown
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Dropdown link</a></li>
                                        <li><a href="#">Dropdown link</a></li>
                                    </ul>
                                </div>
                            </div> &nbsp;&nbsp;&nbsp;
                            <span class="glyphicon glyphicon-text-height  text-info">
					     <a href="#" data-toggle="modal" data-target="#myModal">添加评论</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="glyphicon glyphicon-share text-info">
					    <a href="#">分享</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="glyphicon glyphicon-sunglasses text-info ">
					     <a href="#">收藏</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="glyphicon glyphicon-heart text-info ">
					    <a href="#">感谢</a>
					     </span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <span class="glyphicon glyphicon-th-list text-info ">
					     </span>
                        </div>
                    </div>
                </div>

                <!--model开始-->
                <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog"
                     aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title  text-info" id="myModalLabel">添加评论</h4>
                            </div>

                            <form id="savechanform" class="form-horizontal" action="${pageContext.request.contextPath}/answer/addAnswer" method="post">
                                <input type="hidden" name="questionId" value="<%=q.getQuestionId()%>"/>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <!--  <input type="hidden" name="contents" id="ttt"/> -->
                                        <textarea name="answerContents" id="txt" style="width:100%;height:300px;"></textarea>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data -dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary" id="savechan">Save changes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- container结束 -->
    </div><!-- panel-body结束 -->
</div>

</body>
</html>
