<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="ChartDirector.*" %>

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

        * {
            margin: 0 auto;
            padding: 0
        }
    </style>
    <title>北斗星报考网</title>
    <script src="/tttest/js/echarts.min.js"></script>
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
                    <li><a href="#">栏目</a></li>
                    <li class="active">内容</li>
                </ol>
            </div>


            <!-- 第一套题的图表 -->
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">个人风格测试结果</h3>
                </div>
                <div class="panel-body">

                    <hr color="#000080">
                    <div id="picture1" style="width: 500px; height: 380px; background: blue; overflow-y: hidden;"></div>
                    <script>

                        // 基于准备好的dom，初始化echarts实例
                        var myChart = echarts.init(document.getElementById('picture1'));

                        var outcomeJSON1 = '${outcome1JSON}';
                        var outcomeArr1 = JSON.parse(outcomeJSON1);
                        /*for(var i=0;i<outcomeArr1.outcome1JSON.length;i++){
                            alert(outcomeArr1.outcome1JSON[i]);
                        }*/
                        // 指定图表的配置项和数据
                        var option = {
                            title: {
                                text: 'ECharts 入门示例'
                            },
                            tooltip: {},
                            legend: {
                                data: ['销量']
                            },
                            xAxis: {
                                data: ["外向", "内向", "感觉", "直觉", "思考", "情感", "判断", "知觉"]
                            },
                            yAxis: {},
                            series: [{
                                name: ["外向", "内向", "感觉", "直觉", "思考", "情感", "判断", "知觉"],
                                type: 'bar',
                                data: [outcomeArr1.outcome1JSON[0], outcomeArr1.outcome1JSON[1],
                                    outcomeArr1.outcome1JSON[2], outcomeArr1.outcome1JSON[3],
                                    outcomeArr1.outcome1JSON[4], outcomeArr1.outcome1JSON[5],
                                    outcomeArr1.outcome1JSON[6], outcomeArr1.outcome1JSON[7]]
                            }]
                        };

                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(option);
                    </script>

                    <div class="panel-footer" style="background-color: white">
                        1、最可靠的人<br> 2、会不屈不挠的完成任务<br> 3、会爱护家庭和学校<br>
                        4、可能与不负责任者结婚<br> 5、衣着不会有很多变化<br> 6、爱惜公司的资源<br>
                        7、喜欢做会计工作<br> 8、不喜欢被批评<br> 9、责任感很重<br>
                    </div>

                </div>
            </div>
            <!-- 第二套题的图表 -->
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">个人性格测试结果</h3>
                </div>

                <div class="panel-body">

                    <hr color="#000080">
                    <div id="picture2" style="width: 500px; height: 380px; background: blue; overflow-y: hidden;"></div>
                    <script>
                        // 基于准备好的dom，初始化echarts实例
                        var myChart = echarts.init(document.getElementById('picture2'));
                        var outcomeJSON2 = '${outcome2JSON}';
                        var outcomeArr2 = JSON.parse(outcomeJSON2);

                        // 指定图表的配置项和数据
                        var option = {
                            title: {
                                text: 'MBTI'
                            },
                            tooltip: {},
                            legend: {
                                data: ['销量']
                            },
                            xAxis: {
                                data: ["外向", "内向", "感觉", "直觉", "思考", "情感", "判断", "知觉"]
                            },
                            yAxis: {},
                            series: [{
                                name: ["外向", "内向", "感觉", "直觉", "思考", "情感", "判断", "知觉"],
                                type: 'bar',
                                data: [outcomeArr2.outcome2JSON[0], outcomeArr2.outcome2JSON[1],
                                    outcomeArr2.outcome2JSON[2], outcomeArr2.outcome2JSON[3],
                                    outcomeArr2.outcome2JSON[4], outcomeArr2.outcome2JSON[5],
                                    outcomeArr2.outcome2JSON[6], outcomeArr2.outcome2JSON[7]]
                            }]
                        };

                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(option);
                    </script>
                </div>
            </div>

            <div class="panel-footer" style="background-color: white">
                1、最可靠的人<br> 2、会不屈不挠的完成任务<br> 3、会爱护家庭和学校<br>
                4、可能与不负责任者结婚<br> 5、衣着不会有很多变化<br> 6、爱惜公司的资源<br>
                7、喜欢做会计工作<br> 8、不喜欢被批评<br> 9、责任感很重<br>
            </div>

            <!-- 第三套题的图表 -->
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">职业倾向结果</h3>
                </div>

                <div class="panel-body">

                    <hr color="#000080">
                    <div id="picture3" style="width: 500px; height: 380px; background: blue; overflow-y: hidden;"></div>
                    <script>
                        // 基于准备好的dom，初始化echarts实例
                        var myChart = echarts.init(document.getElementById('picture3'));
                        var outcomeJSON3 = '${outcome3JSON}';
                        var outcomeArr3 = JSON.parse(outcomeJSON3);
                        for (var i = 0; i < outcomeArr3.outcome3JSON.length; i++) {
                            //alert(outcomeArr3.outcome3JSON[i]);
                        }
                        // 指定图表的配置项和数据
                        var option = {
                            title: {
                                text: '职业类型图'
                            },
                            tooltip: {},
                            legend: {
                                data: ['职业类型']
                            },
                            radar: {
                                // shape: 'circle',
                                name: {
                                    textStyle: {
                                        color: '#fff',
                                        backgroundColor: '#999',
                                        borderRadius: 3,
                                        padding: [3, 5]
                                    }
                                },
                                indicator: [
                                    {name: '技能型Realistic', max: 100},
                                    {name: '研究型Investigative', max: 100},
                                    {name: '艺术型artistic', max: 100},
                                    {name: '社交型social', max: 100},
                                    {name: '经营型enterprising', max: 100},
                                    {name: '事务型conventional', max: 100}
                                ]
                            },
                            series: [{
                                name: '预算Budget',
                                type: 'radar',
                                // areaStyle: {normal: {}},
                                data: [
                                    {
                                        value: [outcomeArr3.outcome3JSON[0], outcomeArr3.outcome3JSON[1],
                                            outcomeArr3.outcome3JSON[2], outcomeArr3.outcome3JSON[3],
                                            outcomeArr3.outcome3JSON[4], outcomeArr3.outcome3JSON[5]],
                                        name: '预算分配（Allocated Budget）'
                                    }

                                ]
                            }]
                        };

                        /*var option = {
                            title: {
                                text: '基础雷达图'
                            },
                            tooltip: {},
                            legend: {
                                data: ['预算分配（Allocated Budget）']
                            },
                            radar: {
                                // shape: 'circle',
                                name: {
                                    textStyle: {
                                        color: '#fff',
                                        backgroundColor: '#999',
                                        borderRadius: 3,
                                        padding: [3, 5]
                                    }
                                },
                                indicator: [
                                    { name: '销售（sales）', max: 6500},
                                    { name: '管理（Administration）', max: 16000},
                                    { name: '信息技术（Information Techology）', max: 30000},
                                    { name: '客服（Customer Support）', max: 38000},
                                    { name: '研发（Development）', max: 52000},
                                    { name: '市场（Marketing）', max: 25000}
                                ]
                            },
                            series: [{
                                name: '预算Budget',
                                type: 'radar',
                                // areaStyle: {normal: {}},
                                data : [
                                    {
                                        value : [4300, 10000, 28000, 35000, 50000, 19000],
                                        name : '预算分配（Allocated Budget）'
                                    }

                                ]
                            }]
                        };*/

                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(option);
                    </script>
                </div>
            </div>

            <div class="panel-footer" style="background-color: white">
                1、最可靠的人<br> 2、会不屈不挠的完成任务<br> 3、会爱护家庭和学校<br>
                4、可能与不负责任者结婚<br> 5、衣着不会有很多变化<br> 6、爱惜公司的资源<br>
                7、喜欢做会计工作<br> 8、不喜欢被批评<br> 9、责任感很重<br>

            </div>
        </div>
    </div>


</div>

</div>

</div>

<footer class="container">
    <hr/>
    <p align="center">
        北斗星报考网&nbsp;&nbsp;<b>联系我们:9703239</b>
    </p>
</footer>
</body>
</html>
