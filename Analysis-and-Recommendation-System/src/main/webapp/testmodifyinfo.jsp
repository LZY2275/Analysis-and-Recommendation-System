<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-15
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>用户注册</h1>

<form action="/modifyuserinfo" method="post" enctype="multipart/form-data">
    <label for="avatar">头像:</label>
    <img id="avatarPreview" src="${user.userimgurl}" /><br><br>
    <input type="file" id="avatar" name="avatar" accept="image/*" onchange="previewAvatar(event)" /><br><br>

    <label for="birthday">生日日期:</label>
    <input type="date" id="birthday" name="birthday" value="${user.birthday}" /><br><br>

    <label for="gender">性别:</label>
    <select id="gender" name="gender">
        <c:if test="${user.sex == '男'}">
            <option value="male" selected>男</option>
            <option value="female">女</option>
        </c:if>
        <c:if test="${user.sex == '女'}">
            <option value="male">男</option>
            <option value="female" selected>女</option>
        </c:if>
    </select><br><br>

    <label for="password">密码:</label>
    <input type="text" id="password" name="password" value="${user.password}" /><br><br>

    <input type="submit" value="提交" />
</form>

<script>
    function previewAvatar(event) {
        var input = event.target;
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById("avatarPreview").src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
</body>
</html>
