<%--
  Created by IntelliJ IDEA.
  User: mashuo
  Date: 2023/7/15
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>找回密码界面</title>
    <link rel="stylesheet" href="../css/authentication.css">
    <style>
        body {
            background-image: url('../images/数据大屏背景/bg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    </style>
    <script>
        function validateForm() {
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;

            if (password !== confirmPassword) {
                alert("密码和确认密码不一致，请重新输入。");
                return false;
            }
            return true;
        }
    </script>
</head>
</html>
