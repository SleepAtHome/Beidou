<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%@include file="../templete/user_head.jsp" %>

    <style type="text/css">
        body {
            font-family: "微软雅黑";
            font-size: 14px;
        }

        #bdxnav li a {
            font-weight: bold;
        }

        .box {
            position: relative;
        }

        #mymodal {
            position: absolute;
            left: 750px;
            top: 160px;
            width: 350px;
            height: 400px;
        }

        .artlist { /*margin: 0 auto;*/
            background: #eaeaea;
            border-radius: 25px;
            margin-bottom: 20px;
            margin-left: 0px;
        }

        .artlist:hover .icontit {
            background: white;
            color: orangered;
        }

        .artlist h4 {
            font-weight: bold;
            margin-left: 10px;
        }

        .artlist p {
            padding: 0;
            margin-left: 28px;
            list-style-type: binary;
        }

        .artlist .icontit {
            margin-left: 5px;
            border: 1px orangered solid;
            margin-top: 10px;
            vertical-align: top;
            font-size: 26px;
            color: white;
            padding: 0 10px;
            text-align: center;
            line-height: 50px;
            background: orangered;
            display: inline-block;
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
<header>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-6 col-md-3">
                <img src="${pageContext.request.contextPath}/img/bdxlogo.png" style="margin:20px; "
                     class="img-responsive"/>
            </div>
            <div class="col-xs-6 col-md-9">
                <div class="collapse navbar-collapse" style="margin-top:30px;">
                    <ul id="bdxnav" class="nav nav-pills navbar-right">
                        <li role="presentation"><a href="#">首页</a></li>
                        <li role="presentation" class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                               aria-haspopup="true" aria-expanded="false">
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
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                               aria-haspopup="true" aria-expanded="false">
                                学习提升
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><span class="glyphicon glyphicon-download-alt"></span>&nbsp;学习资料下载</a>
                                </li>
                            </ul>
                        </li>
                        <li role="presentation" class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                               aria-haspopup="true" aria-expanded="false">
                                志愿填报
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><span class="glyphicon glyphicon-check"></span>&nbsp;志愿智能模拟</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-list"></span>&nbsp;我的志愿表</a></li>
                            </ul>
                        </li>
                        <li role="presentation" class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                               aria-haspopup="true" aria-expanded="false">
                                数据查询
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><span class="glyphicon glyphicon-signal"></span>&nbsp;院校数据查询</a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-grain"></span>&nbsp;专业数据查询</a></li>
                                <li><a href="#"><span
                                        class="glyphicon glyphicon-object-align-top"></span>&nbsp;招生计划查询</a></li>
                            </ul>
                        </li>
                        <li role="presentation" class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                               aria-haspopup="true" aria-expanded="false">
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
    </div>
</header>
<!--图片轮播-->
<div id="box">
    <div class="container-fluid" style=" margin-top: 0;float: inherit;">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="${pageContext.request.contextPath}/img/xk1.jpg" style="width:1250px; height: 400px;">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/img/xk2.jpg" style="width: 1250px; height:400px;">
                    <div class="carousel-caption">

                    </div>
                </div>
                <div class="item">
                    <img src="${pageContext.request.contextPath}/img/xk3.jpg" style="width: 1250px; height: 400px;">
                    <div class="carousel-caption">

                    </div>
                </div>

            </div>
        </div>

    </div>
    <!--
        作者：offline
        时间：2017-04-15
        描述：轮播结束
    -->
    <div class="modal" id="mymodal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">中学生前程规划系统</h4>
                </div>
                <div class="modal-body">
                    <form action="${pageContext.request.contextPath}/user/user_login" method="post">
                        <div class="form-group  has-feedback">
                            <input type="email" required name="userEmail" id="email" placeholder="请输入用户名"/>
                            <span class="glyphicon glyphicon-user"></span>
                        </div>
                        <div class="form-group has-feedback">
                            <input type="password" required name="userPassword" id="password" placeholder="请输入密码"/>
                            <span class="glyphicon glyphicon-lock form-feedback"></span>
                        </div>
                        <div class="form-group">
                            <input type="text" class="col-xs-2 form-control" style="width: 120px;" name="randimg"
                                   id="randimg" placeholder="验证码"/>
                            <img src="${pageContext.request.contextPath}/kaptcha/Kaptcha.jpg" class="col-xs-3"
                                 style="width: 120px;height: 34px;consor:pointer;"
                                 onclick="this.src='${pageContext.request.contextPath}/kaptcha/Kaptcha.jpg?aa='+Math.random();"/>
                            <p class="help-block" class="col-xs-4"
                               style="font-size:10px;line-height:34px;vertical-align:baseline;">看不清，换一张</p>
                        </div>
                        <div class="form-group has-feedback">
                            <button type="submit" class="btn btn-default btn-md">登录</button>
                            <a href="${pageContext.request.contextPath}/jump/Jump2user_regist"
                               class="btn btn-default btn-md">注册</a>
                        </div>
                    </form>
                </div>

            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>
<div class="container-fluid">
    <div class="row" id="channelList">
        <div class="col-md-10 col-md-offset-1">
            <div class="col-sm-6 col-md-4">
                <div class="artlist">
                    <div class="glyphicon glyphicon-leaf icontit">
                    </div>
                    <div class="artlist" style="display:inline-block; vertical-align: top;">
                        <h4>自我评估</h4>
                        <p>
                            个人性格，风格，职业，360度剖析<br/>
                            量身定制个性化评估报告<br/>
                        </p>
                        <p><a href="#" class="btn btn-xs btn-info pull-right">more>></a></p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-4">
                <div class="artlist">
										 <span class="glyphicon glyphicon-tasks icontit">
								  	       </span>
                    <div class="artlist" style="display:inline-block;">
                        <h4>学生论坛</h4>
                        <p>
                            考生论坛交流<br/>
                            专业客服答疑<br/>
                        </p>
                        <p><a href="#" class="btn btn-xs btn-info pull-right">more>></a></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="artlist">
										 <span class="glyphicon glyphicon-tree-deciduous icontit">
								  	       </span>
                    <div class="artlist" style="display:inline-block;">
                        <h4>数据查询</h4>
                        <p>
                            数据丰富<br/>
                            使用周期长，实景模拟<br/>
                        </p>
                        <p><a href="#" class="btn btn-xs btn-info pull-right">more>></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
