<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-17
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑招生信息</title>
  <link href="../css/edit.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="form-container" >
  <h1 style="color: white;margin-top: 10px;margin-bottom: 10px;margin-left: 10px" >编辑招生信息</h1>
  <form action="/updateenroll" method="post">
    <table>
      <tr>
        <th style="color: white"><label for="name">学校名称:</label></th>
        <td><input type="text" id="name" name="name" required value="${enrollInfo.name}" readonly></td>
      </tr>
      <tr>
        <th style="color: white"><label for="province">招生省份:</label></th>
        <td><input type="text" id="province" name="province"  required value="${enrollInfo.province}" readonly></td>
      </tr>
      <tr>
        <th style="color: white"><label for="score2020">2020分数线:</label></th>
        <td><input type="number" id="score2020" name="score2020"  required value="${enrollInfo.score2020}" ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="score2021">2021分数线:</label></th>
        <td><input type="number" id="score2021" name="score2021"  required value="${enrollInfo.score2021}" ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="score2022">2022分数线:</label></th>
        <td><input type="number" id="score2022" name="score2022"  required value="${enrollInfo.score2022}" ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="enrollmentNumber2020">2020招生人数:</label></th>
        <td><input type="number" id="enrollmentNumber2020" name="enrollmentNumber2020"  required value="${enrollInfo.enrollmentNumber2020}" ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="enrollmentNumber2021">2021招生人数:</label></th>
        <td><input type="number" id="enrollmentNumber2021" name="enrollmentNumber2021"  required value="${enrollInfo.enrollmentNumber2021}" ></td>
      </tr>
      <tr>
        <th style="color: white"><label for="enrollmentNumber2022">2022招生人数:</label></th>
        <td><input type="number" id="enrollmentNumber2022" name="enrollmentNumber2022"  required value="${enrollInfo.enrollmentNumber2022}" ></td>
      </tr>
    </table>
    <div class="center-div">
      <button type="submit" class="submit-button">提交</button>
    </div>
  </form>
</div>
</body>
</html>
