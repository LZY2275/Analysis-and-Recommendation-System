<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-17
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>编辑学校信息</title>
  <link href="../css/edit.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="form-container" >
  <h1 style="color: white;margin-top: 10px;margin-bottom: 10px;margin-left: 10px" >编辑学校信息</h1>
  <form action="/insertschool" method="post">
    <table>
      <tr>
        <th style="color: white"><label for="name">学校名称:</label></th>
        <td><input type="text" id="name" name="name" required ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="rank">学校级别:</label></th>
        <td><input type="text" id="rank" name="rank" required></td>
      </tr>
      <tr>
        <th style="color: white"><label for="type">学校类型:</label></th>
        <td><input type="text" id="type" name="type" required></td>
      </tr>
      <tr>
        <th style="color: white"><label for="heat">学校热度:</label></th>
        <td><input type="text" id="heat" name="heat"  ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="telephone">学校电话:</label></th>
        <td><input type="text" id="telephone" name="telephone" required ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="introduction">学校介绍:</label></th>
        <td><textarea id="introduction" name="introduction" rows="5"  style="height: 300px;" required></textarea></td>
      </tr>
      <tr>
        <th style="color: white"><label for="employmentRatio">学校就业率:</label></th>
        <td><input type="text" id="employmentRatio" name="employmentRatio"  ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="enrollmentRatio">学校升学率:</label></th>
        <td><input type="text" id="enrollmentRatio" name="enrollmentRatio"   ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="goAbroadRatio">学校出国率:</label></th>
        <td><input type="text" id="goAbroadRatio" name="goAbroadRatio"   ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="sexRatio">男女比率:</label></th>
        <td><input type="text" id="sexRatio" name="sexRatio"   ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="location">学校所在地:</label></th>
        <td><input type="text" id="location" name="location" ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="logo">学校logo:</label></th>
        <td><input type="text" id="logo" name="logo"  ></td>
      </tr>
    </table>
    <div class="center-div">
      <button type="submit" class="submit-button">提交</button>
    </div>
  </form>
</div>
</body>
</html>
