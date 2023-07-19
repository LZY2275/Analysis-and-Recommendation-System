<%--
  Created by IntelliJ IDEA.
  User: mashuo
  Date: 2023/7/18
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>已处理的用户反馈</title>
  <link rel="stylesheet" href="../css/manages.css">
</head>
<body>
<div style="width:100%;">
  <table>
    <thead>
    <tr>
      <th style="width: 10%; text-align: center;">用户昵称</th>
      <th style="width: 60%; text-align: center;">反馈内容</th>
      <th style="width: 20%; text-align: center;">处理方式</th>
    </tr>
    </thead>
    <tbody>
<%--    可以反注释下面的内容--%>
<%--    <c:forEach items="${feedbackList}" var="item">--%>
<%--      <tr>--%>
<%--        <td>${item.username}</td>--%>
<%--        <td>${item.feedback}</td>--%>
<%--        <td>${item.method}</td>--%>
<%--      </tr>--%>
<%--    </c:forEach>--%>

<%--    测试效果--%>
<tr>
  <td style="text-align: center;">马硕</td>
  <td style="text-align: center;">吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱吱在在在在在在在在在在在在在在在在在在在</td>
  <td style="text-align: center;">提交上级</td>
</tr>
    </tbody>
  </table>
</div>
</body>
</html>
