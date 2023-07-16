<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-15
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>搜索测试</h1>

<form action="/searchBySchoolName" method="get">
  <label>
    关键字:
    <input type="search" name="keyword">
  </label>
  <br>
  <input type="submit" value="搜索">
</form>
<c:forEach items="${searchSchoolList}" var="list">
  <div>${list}</div>
</c:forEach>

<a href="/search985">985</a>
<a href="/search211">211</a>

<p>985大学</p>
<c:forEach items="${list985}" var="item985">
  <div>${item985}</div>
</c:forEach>

<p>211大学</p>
<c:forEach items="${list211}" var="item211">
  <div>${item211}</div>
</c:forEach>

</body>

</html>
