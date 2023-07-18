<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-17
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>招生信息库</title>
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
    float: right;"><a href="/jsp/addnewenroll.jsp" style="text-decoration: none;color: white">添加</a></button>
<div style="width:100%;">
    <table>
        <thead>
        <tr>
            <th style="width:150px;">学校名称</th>
            <th>省份</th>
            <th>2020分数线</th>
            <th>2021分数线</th>
            <th>2022分数线</th>
            <th>2020招生人数</th>
            <th>2021招生人数</th>
            <th>2022招生人数</th>
            <th style="width:50px;">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${enrollList}" var="item">
            <tr>
                <td>${item.name}</td>
                <td>${item.province}</td>
                <td>${item.score2020}</td>
                <td>${item.score2021}</td>
                <td>${item.score2022}</td>
                <td>${item.enrollmentNumber2020}</td>
                <td>${item.enrollmentNumber2021}</td>
                <td>${item.enrollmentNumber2022}</td>
                <td>
                    <button class="btn" style="background-color: #45a049"><a href="/getenrollinfo?name=${item.name}&province=${item.province}" style="text-decoration: none; color: white;">编辑</a></button>
                    <button class="btn" style="background-color: red"><a href="/deleteenroll?name=${item.name}&province=${item.province}" style="text-decoration: none; color: white;">删除</a></button>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>

</body>
</html>
