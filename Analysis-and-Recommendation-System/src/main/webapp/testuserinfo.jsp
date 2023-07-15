<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-15
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>欢迎回来：${user.username}</p>
<button><a href="testmodifyinfo.jsp">修改信息</a></button>
<div>
    <span>头像：</span>
<%--    <img src="upload/77bcb802-67eb-4c8a-b9c7-6b2a5280c1c2-logo.png">--%>
    <img src="${user.userimgurl}">
</div>
<div>
    <span>birthday:</span>
    <span>${user.birthday}</span>
</div>
<div>
    <span>sex:</span>
    <span>${user.sex}</span>
</div>
</body>
</html>
