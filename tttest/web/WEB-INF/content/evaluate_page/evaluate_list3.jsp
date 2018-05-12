<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <%@include file="../templete/user_head.jsp" %>
    <style type="text/css">
        body {
            font-family: "微软雅黑"
        }

        .sub {
            font-family: "微软雅黑";
            font-weight: bold;
            font-size: 16px;
        }

    </style>
    <script type="text/javascript">
        $(function () {
            $('#mymodal').modal({
                backdrop: false,
                keyboard: false,
                show: true
            });
        });
    </script>
    <title>北斗星报考网</title>
</head>
<body>
<!--
    作者：langyamoren@163.com
    时间：2016-04-09
    描述：最上面的部分
-->

<%@include file="../templete/user_top.jsp" %>
<!--中间区域-->

<div class="container">
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
                    <li><a href="#">生涯规划</a></li>
                    <li class="active">自我评估</li>
                </ol>
            </div>
            <div><!-- 内容区 -->

                <!-- 增加模型的Panel -->
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">个人风格问卷</h3>
                    </div>
                    <div class="panel-body">
                        正如每个人有不同的指纹，每个人的人格也不一样，指纹无所谓好坏，性格也无所谓对错，这份试卷的目的是帮助你了解自己的性格类型，并找出与他人相异的地方，而与心理健康或心理困惑无关。下列每个问题都是以成对（A与B）的成对方式出现，A与B各自代表你所具或不具的一种特指，请根据你的实际情况来确定你的偏好程度，即给予每题的A与B各评定0到5分的分数。0表示你从未有这种情形（也就是另一项总是发生），5表示你总是有这样的情形（也就是另一项不发生）。
                        <p><a href="#" class="btn btn-xs btn-info pull-right" disabled="true" data-toggle="modal"
                              data-target="#myModal">进入答题环节>></a></p>
                    </div>
                </div>
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title">个人性格问卷</h3>
                    </div>
                    <div class="panel-body">
                        正如每个人有不同的指纹，每个人的人格也不一样，指纹无所谓好坏，性格也无所谓对错，这份试卷的目的是帮助你了解自己的性格类型，并找出与他人相异的地方，而与心理健康或心理困惑无关。下列每个问题都是以成对（A与B）的成对方式出现，A与B各自代表你所具或不具的一种特指，请根据你的实际情况来确定你的偏好程度，即给予每题的A与B各评定0到5分的分数。0表示你从未有这种情形（也就是另一项总是发生），5表示你总是有这样的情形（也就是另一项不发生）。
                        <p><a href="#" class="btn btn-xs btn-warning pull-right" disabled="true" data-toggle="modal"
                              data-target="#myModal">进入答题环节>></a></p>
                    </div>
                </div>
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">职业倾向问卷</h3>
                    </div>
                    <div class="panel-body">
                        正如每个人有不同的指纹，每个人的人格也不一样，指纹无所谓好坏，性格也无所谓对错，这份试卷的目的是帮助你了解自己的性格类型，并找出与他人相异的地方，而与心理健康或心理困惑无关。下列每个问题都是以成对（A与B）的成对方式出现，A与B各自代表你所具或不具的一种特指，请根据你的实际情况来确定你的偏好程度，即给予每题的A与B各评定0到5分的分数。0表示你从未有这种情形（也就是另一项总是发生），5表示你总是有这样的情形（也就是另一项不发生）。
                        <p><a href="#" class="btn btn-xs btn-success pull-right" data-toggle="modal"
                              data-target="#myModal">进入答题环节>></a></p>
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
                                <h4 class="modal-title" id="myModalLabel">请注意：以下均默认为A选项打分</h4>
                            </div>
                            <form action="${pageContext.request.contextPath}/evaluate/evaluate3" method="post">
                                <div class="modal-body">
                                    <%@include file="question3.jsp" %>
                                </div>
                                <div class="modal-footer">

                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!--model结束-->

            </div><!-- 内容区结束 -->


        </div>

    </div>

</div>

<footer class="container">
    <hr/>
    <p align="center">北斗星报考网&nbsp;&nbsp;<b>联系我们:9703239</b></p>
</footer>
</body>
</html>
