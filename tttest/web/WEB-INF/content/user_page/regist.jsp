<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/20
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Regist</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/regist" method="post">
    用户姓名：<input type="text" name="userName"><hr>
    用户邮箱：<input type="text" name="userEmail"><hr>
    <input type="submit" value="提交">
</form>
</body>
</html>
