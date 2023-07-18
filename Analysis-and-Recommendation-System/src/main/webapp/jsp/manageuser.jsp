<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-18
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>管理用户</title>
  <link rel="stylesheet" href="../css/manages.css">
</head>
<body>
<button class="btn" style="background-color: #3c8dd8;    width: 60px;
    float: right;"><a href="/jsp/addnewuser.jsp" style="text-decoration: none;color: white">添加</a></button>
<div style="width:100%;">
  <table>
    <thead>
    <tr>
      <th style="width:50px;">头像</th>
      <th>用户昵称</th>
      <th>用户密码</th>
      <th>用户性别</th>
      <th>用户生日</th>
      <th style="width:50px;">操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${userList}" var="item">
      <tr>
        <td><img src="${item.userimgurl}" width="50px" height="50px"></td>
        <td>${item.username}</td>
        <td>${item.password}</td>
        <td>${item.sex}</td>
        <td>${item.birthday}</td>
        <td>
          <button class="btn" style="background-color: #45a049"><a href="/getuserinfo?username=${item.username}" style="text-decoration: none; color: white;">编辑</a></button>
          <button class="btn" style="background-color: red"><a href="/deleteuser?username=${item.username}" style="text-decoration: none; color: white;">注销</a></button>
        </td>
      </tr>
    </c:forEach>

    </tbody>
  </table>
</div>
</body>
</html>
