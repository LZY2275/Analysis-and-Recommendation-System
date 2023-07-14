<%--
  Created by IntelliJ IDEA.
  User: mashuo
  Date: 2023/7/14
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
    <style>
        /* 设置背景图片样式 */
        body {
            background-image: url('./images/数据大屏背景/bg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* 设置登录容器样式 */
        .container {
            width: 300px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0);
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            position: relative; /* 添加相对定位 */
        }

        /* 设置动画容器样式 */
        .animation-container {
            position: absolute; /* 绝对定位 */
            top: -80px; /* 负数值使其位于表单上方 */
            left: 50%; /* 居中对齐 */
            transform: translateX(-50%); /* 居中对齐 */
            width: 80px;
            height: 80px;
        }

        /* 设置动画样式 */
        .animated-image {
            animation: squash 1s linear infinite;
            animation-iteration-count: 1; /* 设置动画只执行一次 */
            width: 100%;
            height: 100%;
        }

        @keyframes squash {
            0% {
                transform: scaleY(1); /* 初始状态为正常大小 */
            }
            25% {
                transform: scaleY(0.5); /* 中间状态为压扁 */
            }
            50% {
                transform: scaleY(1); /* 最终状态为还原 */
            }
            75% {
                transform: scaleX(0.5); /* 初始状态为正常大小 */
            }
            100% {
                transform: scaleX(1); /* 最终状态为还原 */
            }
        }

        /* 设置表单组样式 */
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        /* 设置表单组标签样式 */
        .form-group label {
            display: block;
            font-weight: bold;
        }

        /* 设置输入框样式 */
        .form-group input[type="text"],
        .form-group input[type="password"] {
            flex-grow: 1;
            padding: 8px;
            border: none;
            border-radius: 20px;
            background-color: rgba(255, 255, 255, 0.5);
            color: white;
            outline: none;
        }

        /* 设置输入框聚焦时的样式 */
        .form-group input[type="text"]:focus,
        .form-group input[type="password"]:focus {
            background-color: rgba(255, 255, 255, 0.8);
        }

        /* 设置输入框提示语样式 */
        .form-group input[type="text"]::placeholder,
        .form-group input[type="password"]::placeholder {
            color: white;
            opacity: 0.7;
        }

        /* 设置登录按钮样式 */
        .form-group .btn {
            width: 100%;
            padding: 8px;
            background-color: #3c8dd8;
            color: white;
            border: none;
            border-radius: 20px;
            cursor: pointer;
        }

        .form-group .btn:hover {
            background-color: #45a049;
        }

        /* 设置帮助链接样式 */
        .help-links {
            margin-top: 10px;
            text-align: center;
        }

        .help-links a {
            margin-right: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <!-- 动画容器 -->
    <div class="animation-container">
        <!-- 动画图片 -->
        <img src="./images/图片 MO8v82f.svg" class="animated-image" style="width: 80px; height: 80px;">
    </div>

    <!-- 登录表单 -->
    <form action="/login" method="post">
        <!-- 用户名输入框 -->
        <div class="form-group">
            <label for="username"><img src="./images/用户.svg" style="width: 15px; height: 15px;"></label>
            <input type="text" id="username" name="username" required placeholder="用户名">
        </div>
        <!-- 密码输入框 -->
        <div class="form-group">
            <label for="password"><img src="./images/密码.svg" style="width: 15px; height: 15px;"></label>
            <input type="password" id="password" name="password" required placeholder="密码">
        </div>
        <!-- 记住密码复选框 -->
        <div class="form-group checkbox">
            <label><input type="checkbox" name="remember">记住密码</label>
        </div>
        <!-- 登录按钮 -->
        <div class="form-group">
            <input type="submit" value="登录" class="btn">
        </div>
    </form>
    <!-- 帮助链接 -->
    <div class="help-links">
        <a href="#">忘记密码</a>
        <a href="#">创建账号</a>
        <a href="#">其他帮助</a>
    </div>
</div>
</body>
</html>

