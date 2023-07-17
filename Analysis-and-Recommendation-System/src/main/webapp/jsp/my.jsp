<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2023/7/15
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
    <link rel="stylesheet" href="../css/my.css">
    <style>
        body {
            background-image: url('../images/数据大屏背景/bg.jpg'); /* 设置背景图片 */
            background-size: cover; /* 背景图片大小自适应屏幕 */
            background-repeat: no-repeat; /* 背景图片不重复 */
            height: 100vh; /* 设置body高度为屏幕高度 */
            display: flex; /* 使用弹性布局 */
            align-items: center; /* 垂直居中对齐 */
            justify-content: center; /* 水平居中对齐 */
        }
    </style>
</head>
<body>
<div class="container">

<%--    顶端装饰图片--%>
    <div style="width: 100%">
        <img src="../images/数据大屏头部切图/titlebg8.png" style="width: 100%;object-fit: contain;">
    </div>

<%--    实际内容--%>
    <div class="content">

        <div class="info-item">
            <label>头像</label>
            <%-- 装头像图片的容器，使图片显示为圆形 --%>
            <div id="avatarImageDiv" style="margin-left: auto; margin-right: 10px; border-radius: 50%; width: 50px; height: 50px; overflow: hidden; border-radius: 50%;">
                <%-- 后端提供给图片或者图片的url --%>
                <img id="avatarImage" src="../images/头像%20男孩.svg" style="width: 100%; height: 100%;">
            </div>
            <%-- 装头像图片的容器，使图片显示为圆形 --%>
            <div id="avatarImageInputDiv" style="display: none; margin-left: auto; margin-right: 10px; border-radius: 50%; width: 50px; height: 50px; overflow: hidden; border-radius: 50%;">
                <%-- 显示从本地选择的图片 --%>
                <img id="avatarImageInput" style="width: 100%; height: 100%;">
            </div>
            <div style="height: 60%; width:10%;">
                <button id="confirmButtonAvatar" onclick="saveAvatar()" style="display: none; background-color: rgba(255, 255, 255, 0.5); color: white">确认</button>
                <button id="cancelButtonAvatar" onclick="cancelEditAvatar()" style="display: none; background-color: rgba(255, 255, 255, 0.5); color: white">取消</button>
                <img src="../images/箭头 右.svg" id="editButtonAvatar" onclick="selectAvatar()" style="height: 100%; width: 100%">
            </div>
        </div>

        <div class="info-item">
            <%-- 昵称不能被修改 --%>
            <label>昵称</label>
            <%-- 后端需要将用户名显示在id="nickName"的label上 --%>
            <label id="nickName" class="special-label">马硕</label>
            <div style="height: 60%; width: 10%;">
                <!-- 使用onclick事件来调用JavaScript函数显示提示框 -->
                <img src="../images/箭头 右.svg" style="height: 100%; width: 100%" onclick="showTooltip()">
            </div>
        </div>

        <div class="info-item">
            <label>性别</label>
            <%-- 后端需要将用户名显示在id="genderInput"的label上--%>
            <label id="gender" class="special-label" >男</label>
            <select id="genderSelect" name="genderSelect" required style=" display: none;">
                <option value="男" style="color: #bfbfbf;">男</option>
                <option value="女" style="color: #bfbfbf;">女</option>
            </select>
            <div style="height: 60%; width:10%;">
                <button id="confirmButtonGender" onclick="saveGender()" style=" display: none; background-color: rgba(255, 255, 255, 0.5); color: white">确认</button>
                <button id="cancelButtonGender" onclick="cancelEditGender()" style=" display: none; background-color: rgba(255, 255, 255, 0.5); color: white">取消</button>
                <img src="../images/箭头 右.svg" id="editButtonGender" onclick="enableEditGender()" style="height: 100%; width: 100%">
            </div>
        </div>


        <div class="info-item">
            <label>生日</label>
            <%-- 后端需要将生日显示在id="genderInput"的label上--%>
            <label id="birthday" class="special-label" >2002-12-11</label>
            <input type="text" id="birthdayInput" name="birthdayInput" style="display: none">
            <div style="height: 60%; width:10%;">
                <button id="confirmButtonBirthday" onclick="saveBirthday()" style="display: none; background-color: rgba(255, 255, 255, 0.5); color: white">确认</button>
                <button id="cancelButtonBirthday" onclick="cancelEditBirthday()" style="display: none; background-color: rgba(255, 255, 255, 0.5); color: white">取消</button>
                <img src="../images/箭头 右.svg" id="editButtonBirthday" onclick="enableEditBirthday()" style="height: 100%; width: 100%">
            </div>
        </div>

        <div class="info-item">
            <label>修改密码</label>
            <img src="../images/箭头 右.svg" onclick="redirectToChangePasswordPage()" style="cursor: pointer;">
        </div>

    </div>

</div>
<script>
    function selectAvatar() {
        const avatarImageDiv = document.getElementById('avatarImageDiv');
        const avatarImage = document.getElementById('avatarImage');
        const avatarImageInputDiv = document.getElementById('avatarImageInputDiv');
        const avatarImageInput = document.getElementById('avatarImageInput');
        const confirmButtonAvatar = document.getElementById('confirmButtonAvatar');
        const cancelButtonAvatar = document.getElementById('cancelButtonAvatar');
        const editButtonAvatar = document.getElementById('editButtonAvatar');

        avatarImageDiv.style.display = 'none';
        avatarImageInputDiv.style.display = 'inline-block';
        avatarImageInput.src = avatarImage.src;
        editButtonAvatar.style.display = 'none'; // 隐藏箭头
        confirmButtonAvatar.style.display = 'inline-block'; // 显示确认按钮
        cancelButtonAvatar.style.display = 'inline-block'; // 显示取消按钮

        //借助file类型的input自带的文件选择框，用完即删 隐藏起来
        const input = document.createElement('input');
        input.type = 'file';
        input.accept = 'image/*';
        input.style.display = 'none';

        // 监听文件选择事件
        input.addEventListener('change', handleAvatarChange);

        // 将input元素添加到页面
        document.body.appendChild(input);

        // 触发文件选择对话框
        input.click();

        // 删除添加的input元素，避免页面上多余的元素
        input.remove();
    }

    function handleAvatarChange(event) {
        const avatarImageInput = document.getElementById('avatarImageInput');
        const file = event.target.files[0]; // 获取用户选择的文件
        const reader = new FileReader(); // 创建FileReader对象

        // 当文件读取完成时触发的事件
        reader.onload = function (e) {
            avatarImageInput.src = e.target.result; // 将读取的文件内容作为数据URL分配给头像图片的src属性
        }

        reader.readAsDataURL(file); // 将文件内容读取为数据URL
    }

    function saveAvatar(){
        const avatarImageDiv = document.getElementById('avatarImageDiv');
        const avatarImage = document.getElementById('avatarImage');
        const avatarImageInputDiv = document.getElementById('avatarImageInputDiv');
        const avatarImageInput = document.getElementById('avatarImageInput');
        const confirmButtonAvatar = document.getElementById('confirmButtonAvatar');
        const cancelButtonAvatar = document.getElementById('cancelButtonAvatar');
        const editButtonAvatar = document.getElementById('editButtonAvatar');

        avatarImageDiv.style.display = 'inline-block';
        avatarImageInputDiv.style.display = 'none';
        avatarImage.src=avatarImageInput.src;
        editButtonAvatar.style.display = 'inline-block'; // 显示箭头
        confirmButtonAvatar.style.display = 'none'; // 隐藏确认按钮
        cancelButtonAvatar.style.display = 'none'; // 隐藏取消按钮
    }
    function cancelEditAvatar(){
        const avatarImageDiv = document.getElementById('avatarImageDiv');
        const avatarImageInputDiv = document.getElementById('avatarImageInputDiv');
        const confirmButtonAvatar = document.getElementById('confirmButtonAvatar');
        const cancelButtonAvatar = document.getElementById('cancelButtonAvatar');
        const editButtonAvatar = document.getElementById('editButtonAvatar');

        avatarImageDiv.style.display = 'inline-block';
        avatarImageInputDiv.style.display = 'none';
        editButtonAvatar.style.display = 'inline-block'; // 显示箭头
        confirmButtonAvatar.style.display = 'none'; // 隐藏确认按钮
        cancelButtonAvatar.style.display = 'none'; // 隐藏取消按钮
    }

</script>
<script>
    function showTooltip() {
        alert("昵称不能被修改！");
    }
</script>
<script>
    // 启用性别编辑
    function enableEditGender() {
        const gender = document.getElementById('gender');
        const genderSelect = document.getElementById('genderSelect');
        const confirmButtonGender = document.getElementById('confirmButtonGender');
        const cancelButtonGender = document.getElementById('cancelButtonGender');
        const editButtonGender = document.getElementById('editButtonGender');

        genderSelect.value=gender.textContent;
        gender.style.display = 'none';
        genderSelect.style.display = 'block';
        editButtonGender.style.display = 'none'; // 隐藏箭头
        confirmButtonGender.style.display = 'inline-block'; // 显示确认按钮
        cancelButtonGender.style.display = 'inline-block'; // 显示取消按钮
    }

    // 保存性别
    function saveGender() {
        const gender = document.getElementById('gender');
        const genderSelect = document.getElementById('genderSelect');
        const confirmButtonGender = document.getElementById('confirmButtonGender');
        const cancelButtonGender = document.getElementById('cancelButtonGender');
        const editButtonGender = document.getElementById('editButtonGender');

        gender.textContent=genderSelect.value; // 将选中的值设置为input的value
        gender.style.display = 'block';
        genderSelect.style.display = 'none';
        confirmButtonGender.style.display = 'none'; // 隐藏确认按钮
        cancelButtonGender.style.display = 'none'; // 隐藏取消按钮
        editButtonGender.style.display = 'inline-block'; // 显示箭头
    }

    // 取消编辑性别
    function cancelEditGender() {
        const gender = document.getElementById('gender');
        const genderSelect = document.getElementById('genderSelect');
        const confirmButtonGender = document.getElementById('confirmButtonGender');
        const cancelButtonGender = document.getElementById('cancelButtonGender');
        const editButtonGender = document.getElementById('editButtonGender');

        gender.style.display = 'block';
        genderSelect.style.display = 'none';
        confirmButtonGender.style.display = 'none'; // 隐藏确认按钮
        cancelButtonGender.style.display = 'none'; // 隐藏取消按钮
        editButtonGender.style.display = 'inline-block'; // 显示编辑按钮
    }
</script>
<!-- 引入jQuery和jQuery UI库 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"></script>

<!-- 引入jQuery UI CSS（用于样式） -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/smoothness/jquery-ui.css">

<script>
    $(document).ready(function () {
        // 初始化日期选择框
        $('#birthdayInput').datepicker({
            dateFormat: 'yy-mm-dd',
            maxDate: '0',
            changeYear: true,
            changeMonth: true,
            language: 'zh-CN' // 设置语言为中文，确保正确的语言文件被加载
        });
    });
</script>
<script>
    // 启用生日编辑
    function enableEditBirthday() {
        const birthday = document.getElementById('birthday');
        const birthdayInput = document.getElementById('birthdayInput');
        const confirmButtonBirthday = document.getElementById('confirmButtonBirthday');
        const cancelButtonBirthday = document.getElementById('cancelButtonBirthday');
        const editButtonBirthday = document.getElementById('editButtonBirthday');

        birthday.style.display = 'none';
        birthdayInput.style.display = 'inline-block';
        birthdayInput.value=birthday.textContent;
        birthdayInput.focus();
        editButtonBirthday.style.display = 'none';
        confirmButtonBirthday.style.display = 'inline-block';
        cancelButtonBirthday.style.display = 'inline-block';
    }

    // 保存生日
    function saveBirthday() {
        const birthday = document.getElementById('birthday');
        const birthdayInput = document.getElementById('birthdayInput');
        const confirmButtonBirthday = document.getElementById('confirmButtonBirthday');
        const cancelButtonBirthday = document.getElementById('cancelButtonBirthday');
        const editButtonBirthday = document.getElementById('editButtonBirthday');

        birthday.style.display = 'inline-block';
        birthdayInput.style.display = 'none';
        birthday.textContent = birthdayInput.value;
        confirmButtonBirthday.style.display = 'none';
        cancelButtonBirthday.style.display = 'none';
        editButtonBirthday.style.display = 'inline-block';
    }

    // 取消编辑生日
    function cancelEditBirthday() {
        const birthday = document.getElementById('birthday');
        const birthdayInput = document.getElementById('birthdayInput');
        const confirmButtonBirthday = document.getElementById('confirmButtonBirthday');
        const cancelButtonBirthday = document.getElementById('cancelButtonBirthday');
        const editButtonBirthday = document.getElementById('editButtonBirthday');

        birthday.style.display = 'inline-block';
        birthdayInput.style.display = 'none';
        confirmButtonBirthday.style.display = 'none';
        cancelButtonBirthday.style.display = 'none';
        editButtonBirthday.style.display = 'inline-block';
    }
</script>
<script>
    function redirectToChangePasswordPage() {
        window.location.href = "./changPassword.jsp"; // 替换为目标页面的URL
    }
</script>
</body>
</html>