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
    <title>登录界面</title> <!-- 设置页面标题为"登录界面" -->
    <style>
        /* 设置页面背景样式 */
        body {
            background-image: url('./images/数据大屏背景/bg.jpg'); /* 设置背景图片 */
            background-size: cover; /* 背景图片大小自适应屏幕 */
            background-repeat: no-repeat; /* 背景图片不重复 */
            height: 100vh; /* 设置body高度为屏幕高度 */
            display: flex; /* 使用弹性布局 */
            align-items: center; /* 垂直居中对齐 */
            justify-content: center; /* 水平居中对齐 */
        }

        /* 设置登录容器样式 */
        .container {
            width: 250px; /* 宽度为250像素 */
            padding: 20px; /* 内边距为20像素 */
            background-color: rgba(255, 255, 255, 0); /* 背景颜色为透明 */
            border-radius: 5px; /* 边框圆角为5像素 */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0); /* 添加阴影效果 */
            position: relative; /* 相对定位 */
            align-items: center; /* 垂直居中对齐 */
        }

        /* 设置动画容器样式 */
        .animation-container {
            position: absolute; /* 绝对定位 */
            top: -80px; /* 与顶部距离为80像素 */
            left: 50%; /* 与左侧距离为页面宽度的一半 */
            transform: translateX(-50%); /* 水平居中对齐 */
            width: 80px; /* 宽度为80像素 */
            height: 80px; /* 高度为80像素 */
        }

        /* 设置动画图片样式 */
        .animated-image {
            position: relative; /* 相对定位 */
            width: 100%; /* 宽度100% */
            height: 100%; /* 高度100% */
            animation: bounce 0.7s ease-in-out infinite; /* 应用名为"bounce"的动画效果 */
            transform-origin: center bottom; /* 变换原点为中心底部 */
            animation-iteration-count: 1; /* 动画播放一次 */
        }

        /* 定义动画关键帧 */
        @keyframes bounce {
            0% {
                transform: translateY(0) scaleX(1) scaleY(1); /* 初始状态 */
            }
            25% {
                transform: translateY(-20px) scaleX(1.2) scaleY(0.8); /* 第一个关键帧 */
            }
            50% {
                transform: translateY(0) scaleX(0.8) scaleY(1.2); /* 第二个关键帧 */
            }
            75% {
                transform: translateY(-10px) scaleX(1.1) scaleY(0.9); /* 第三个关键帧 */
            }
            100% {
                transform: translateY(0) scaleX(1) scaleY(1); /* 最终状态 */
            }
        }

        /* 设置表单组样式 */
        .form-group {
            display: flex; /* 使用弹性布局 */
            align-items: center; /* 垂直居中对齐 */
            margin-bottom: 10px; /* 底部外边距为10像素 */
            border-radius: 20px; /* 边框圆角为20像素 */
            background-color: rgba(255, 255, 255, 0); /* 背景颜色为透明 */
        }

        /* 设置表单组标签样式 */
        .form-group label {
            display: block; /* 块级元素显示 */
            font-weight: bold; /* 字体加粗 */
            margin-right: 10px; /* 右侧外边距为10像素 */
        }

        /* 设置输入框样式 */
        .form-group input[type="text"],
        .form-group input[type="password"] {
            flex-grow: 1; /* 自动扩展宽度 */
            padding: 8px; /* 内边距为8像素 */
            border: none; /* 无边框 */
            border-radius: 20px; /* 边框圆角为20像素 */
            background-color: rgba(255, 255, 255, 0); /* 背景颜色为透明 */
            color: white; /* 字体颜色为白色 */
            outline: none; /* 无外边框 */
        }

        /* 设置输入框占位符样式 */
        .form-group input[type="text"]::placeholder,
        .form-group input[type="password"]::placeholder {
            color: white; /* 字体颜色为白色 */
            opacity: 0.7; /* 不透明度为0.7 */
        }

        /* 设置按钮样式 */
        .form-group .btn {
            width: 100%; /* 宽度为100% */
            padding: 8px; /* 内边距为8像素 */
            background-color: #3c8dd8; /* 背景颜色为#3c8dd8 */
            color: white; /* 字体颜色为白色 */
            border: none; /* 无边框 */
            border-radius: 20px; /* 边框圆角为20像素 */
            cursor: pointer; /* 鼠标指针样式为手型 */
        }

        /* 设置按钮悬停样式 */
        .form-group .btn:hover {
            background-color: #45a049; /* 背景颜色为#45a049 */
        }

        /*下面其实就是将复选框隐蔽起来，通过点击滑块（监听）来进行勾选和进行更改*/
        /* 设置帮助链接样式 */
        .help-links {
            display: flex; /* 使用弹性布局 */
            align-items: center; /* 垂直居中对齐 */
            justify-content: space-between; /* 两端对齐 */
            margin-top: 10px; /* 顶部外边距为10像素 */
            color: white; /* 字体颜色为白色 */
            font-size: 0.9em; /* 字体大小为0.9em */
        }

        /* 设置帮助链接标签样式 */
        .help-links label {
            display: flex; /* 使用弹性布局 */
            align-items: flex-start; /* 垂直居上对齐 */
        }

        /* 设置切换开关样式 */
        .help-links .toggle-switch {
            position: relative; /* 相对定位 */
            display: inline-block; /* 行内块级元素 */
            width: 40px; /* 宽度为40像素 */
            height: 20px; /* 高度为20像素 */
        }

        /* 设置复选框样式 */
        .help-links .toggle-switch input[type="checkbox"] {
            opacity: 0; /* 不透明度为0，隐藏复选框 */
            width: 0; /* 宽度为0，隐藏复选框 */
            height: 0; /* 高度为0，隐藏复选框 */
        }

        /* 设置切换滑块样式 */
        .help-links .toggle-switch .toggle-slider {
            position: absolute; /* 绝对定位 */
            top: 0; /* 与顶部距离为0 */
            left: 0; /* 与左侧距离为0 */
            right: 0; /* 与右侧距离为0 */
            bottom: 0; /* 与底部距离为0 */
            background-color: #ccc; /* 背景颜色为#ccc */
            border-radius: 24px; /* 边框圆角为24像素 */
            transition: background-color 0.3s; /* 过渡效果，背景颜色变化时间为0.3秒 */
        }

        /* 设置切换滑块选中状态样式 */
        .help-links .toggle-switch input[type="checkbox"]:checked + .toggle-slider {
            background-color: #3c8dd8; /* 背景颜色为#3c8dd8 */
        }

        /* 设置切换滑块前置元素样式 */
        .help-links .toggle-switch .toggle-slider:before {
            content: ""; /* 内容为空 */
            position: absolute; /* 绝对定位 */
            top: 2px; /* 与顶部距离为2像素 */
            left: 2px; /* 与左侧距离为2像素 */
            width: 15px; /* 宽度为15像素 */
            height: 15px; /* 高度为15像素 */
            background-color: #fff; /* 背景颜色为白色 */
            border-radius: 50%; /* 边框圆角为50% */
            transition: transform 0.3s; /* 过渡效果，变换时间为0.3秒 */
        }

        /* 设置切换滑块前置元素选中状态样式 */
        .help-links .toggle-switch input[type="checkbox"]:checked + .toggle-slider:before {
            transform: translateX(20px); /* X轴方向平移18像素 */
        }
    </style>
</head>
<body>
<div class="container">
    <div class="animation-container">
        <img src="./images/图片 MO8v82f.svg" class="animated-image" style="width: 80px; height: 80px;">
    </div>
    <form action="/login" method="post">
        <div class="form-group" style="padding: 0 10px; background-color: rgba(255, 255, 255, 0.5);"> <!-- 设置输入框背景样式 -->
            <label for="username"><img src="./images/用户.svg" style="width: 15px; height: 15px;"></label> <!-- 设置输入框前置图标样式 -->
            <input type="text" id="username" name="username" required placeholder="用户名"> <!-- 设置输入框样式 -->
        </div>
        <div class="form-group" style="padding: 0 10px; background-color: rgba(255, 255, 255, 0.5);"> <!-- 设置输入框背景样式 -->
            <label for="password"><img src="./images/密码.svg" style="width: 15px; height: 15px;"></label> <!-- 设置输入框前置图标样式 -->
            <input type="password" id="password" name="password" required placeholder="密码"> <!-- 设置输入框样式 -->
        </div>
        <div class="form-group">
            <input type="submit" value="登录" class="btn"> <!-- 设置按钮样式 -->
        </div>
        <div class="help-links">
            <div class="toggle-switch" style="width: 40px"> <!-- 设置切换开关样式 -->
                <input type="checkbox" id="remember" name="remember"> <!-- 设置复选框样式 -->
                <span class="toggle-slider"></span> <!-- 设置切换滑块样式 -->
            </div>
            <label style="display: flex; align-items: center; margin-left: 0px;">记住密码</label> <!-- 设置标签样式 -->
            <a href="#" style="color: white; text-decoration: none; margin-left: 10px;">忘记密码</a> <!-- 设置链接样式 -->
        </div>

        <div class="help-links">
            <a href="#" style="color: white; text-decoration: none;">创建账号</a> <!-- 设置链接样式 -->
            <a href="#" style="color: white; text-decoration: none;">其他帮助</a> <!-- 设置链接样式 -->
        </div>
    </form>
</div>
<script>
    const toggleSwitch = document.querySelector('.toggle-switch'); // 获取切换开关元素
    const checkbox = document.getElementById('remember'); // 获取复选框元素
    //给滑块添加监听，当点击滑块时切换复选框状态（复选框已经隐藏） 复选框状态决定滑块的长相 在css里面有定义
    toggleSwitch.addEventListener('click', function() {
        checkbox.checked = !checkbox.checked; // 切换复选框的选中状态
    });
</script>

</body>
</html>
