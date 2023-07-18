<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-17
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>热词信息库</title>
</head>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
        font-size: 16px;
        color: white;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: rgba(255,255,255,0.2);
    }
    button {
        border: none;
        border-radius: 5px;
        padding: 5px 10px;
        margin: 3px 0;
        color: white;
        font-weight: bold;
        width: 100%;
        text-align: center;
        vertical-align: middle;
    }
</style>
<body>
<button class="btn" style="background-color: #3c8dd8;    width: 60px;
    float: right;"><a href="/jsp/addnewhotspot.jsp" style="text-decoration: none;color: white">添加</a></button>
<div style="width:100%;">
    <table>
        <thead>
        <tr>
            <th style="width:150px;">学校名称</th>
            <th>热词</th>
            <th>出现比例</th>
            <th style="width: 50px">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${hotspotList}" var="item">
            <tr>
                <td>${item.name}</td>
                <td>${item.word}</td>
                <td>${item.heatRatio}</td>
                <td>
                    <button class="btn" style="background-color: #45a049"><a href="/gethotspotinfo?name=${item.name}&word=${item.word}" style="text-decoration: none; color: white;">编辑</a></button>
                    <button class="btn" style="background-color: red"><a href="/deletehotspot?name=${item.name}&word=${item.word}" style="text-decoration: none; color: white;">删除</a></button>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>
