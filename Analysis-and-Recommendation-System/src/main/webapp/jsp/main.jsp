<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2023/7/15
  Time: 9:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link href="../css/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div style="color:white;">
    <h1 style="margin-top: 10px;margin-left: 10px;">广告</h1>
    <div style="width: 100%">
        <!--<div class="search-container" style="width: 170px;float: right;">
            <input type="search" name="keyword" id="keyword" class="search-input">
            <button onclick="searchByName()" class="searchbtn">搜索</button>
        </div>-->
    <table style="margin-top: 10px">
        <tr>
            <th class="school-col">学校</th>
            <th class="title-col">标题</th>
            <th class="content-col">内容</th>
            <th class="action-col">操作</th>
        </tr>
        <c:forEach items="${advertisementList}" var="aditem">
            <tr>
                <td class="school-col">${aditem.name}</td>
                <td class="title-col">${aditem.title}</td>
                <td class="content-col">${aditem.contenttext}</td>
                <td class="action-col">
                    <c:if test="${isadmin}">
                        <button class="edit-button"><a href="/getadinfo?title=${aditem.title}" style="text-decoration: none; color: white;">编辑</a></button>
                        <button class="delete-button"><a href="/deleteadinfo?title=${aditem.title}&name=${aditem.name}" style="text-decoration: none; color: white;">删除</a></button>
                    </c:if>
                    <c:if test="${!isadmin}">
                        无权限操作！
                    </c:if>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</div>
</body>
<script>

</script>
</html>
