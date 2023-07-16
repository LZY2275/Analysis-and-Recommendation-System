<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-15
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>学校名称</th>
        <th>广告标题</th>
        <th>广告内容</th>
    </tr>
    <c:forEach items="${advertisementList}" var="ad">
        <tr>
            <td>${ad.name}</td>
            <td>${ad.title}</td>
            <td>${ad.contenttext}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
