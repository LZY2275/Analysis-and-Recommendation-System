<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-17
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>专业信息库</title>
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
    float: right;"><a href="" style="text-decoration: none;color: white">添加</a></button>
<div style="width:100%;">
    <table>
        <thead>
        <tr>
            <th>专业名称</th>
            <th style="width:50px;">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>专业1</td>
            <td>
                <button class="btn" style="background-color: #45a049"><a href="" style="text-decoration: none; color: white;">编辑</a></button>
                <button class="btn" style="background-color: red"><a href="" style="text-decoration: none; color: white;">删除</a></button>
            </td>
        </tr>
        </tbody>
    </table>
</div>

</body>
</html>
