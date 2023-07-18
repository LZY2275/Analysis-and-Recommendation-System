
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2023/7/16
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>选择大学</title>
    <link href="../css/education.css" type="text/css" rel="stylesheet" />
</head>

<body>
<div class="choose" id="top">
    <div class="top">
        <img src="../images/top.png" style="width: 100%; object-fit: contain">
    </div>
    <form class="form-inline" action="/getschollform" method="post">
        <div class="form-group">
            <label>就读地区:</label>
            <select name="province" class="form-control">
                <option selected>请选择</option>
                <option>北京</option>
                <option>天津</option>
                <option>上海</option>
                <option>重庆</option>
                <option>河北</option>
                <option>山西</option>
                <option>辽宁</option>
                <option>吉林</option>
                <option>黑龙江</option>
                <option>四川</option>
                <option>江苏</option>
                <option>浙江</option>
                <option>安徽</option>
                <option>福建</option>
                <option>江西</option>
                <option>山东</option>
                <option>河南</option>
                <option>湖北</option>
                <option>湖南</option>
                <option>广东</option>
                <option>广西</option>
                <option>海南</option>
                <option>贵州</option>
                <option>云南</option>
                <option>陕西</option>
                <option>甘肃</option>
                <option>青海</option>
                <option>内蒙古</option>
                <option>西藏</option>
                <option>宁夏</option>
                <option>新疆</option>
            </select>
        </div>
        <div class="form-group">
            <label>大学类型:</label>
            <select name="type" class="form-control">
                <option selected>请选择</option>
                <option>综合类</option>
                <option>语言类</option>
                <option>财经类</option>
                <option>农林类</option>
                <option>理工类</option>
                <option>师范类</option>
                <option>军事类</option>
                <option>政法类</option>
                <option>医药类</option>
                <option>民族类</option>
                <option>艺术类</option>
                <option>体育类</option>
            </select>
        </div>
        <div class="form-group">
            <label for="input">成绩:</label>
            <input type="text" class="form-control" id="input" placeholder="请输入高考成绩" name="score">
        </div>
        <input type="submit" class="btn1" value="获取"/>
    </form>

    <form class="form-inline" action="bookListByType" method="post">
        <div class="form-group2">
            <label for="input2">选择大学:</label>
            <input type="search" class="form-control" id="input2" placeholder="请输入大学" name="school">
            <input type="submit" class="btn2" value="搜索"/>
        </div>
    </form>

</div>

<%--<script>--%>
<%--    window.onload=function(){--%>
<%--        var a = document.getElementById("top");//获取div块对象--%>
<%--        var Width=document.documentElement.clientWidth;//取得浏览器页面可视区域的宽度--%>
<%--        var gao2 = a.offsetWidth;//获取div块的宽度值--%>
<%--        var Sgao2= (Width - gao2)/2+"px";--%>
<%--        a.style.left=Sgao2;--%>
<%--    }--%>
<%--</script>--%>

<table class="table" rules="rows">
    <tr>
        <th>招生学校</th>
        <th>类型</th>
        <th>地区</th>
        <th>历年</th>
        <th>2022</th>
        <th>2021</th>
        <th>2020</th>
        <th>操作</th>
    </tr>

    <table>
        <tr>
            <c:forEach var="sch" items="${applicationitem}">
                <td>${sch.logo}${sch.name}</td>
                <td>${sch.type}</td>
                <td>${sch.location}</td>
                <td>分数线<br>招生人数</td>
                <td>${sch.score2022}<br>${enroll.enrollmentNumber2022}</td>
                <td>${sch.score2021}<br>${enroll.enrollmentNumber2021}</td>
                <td>${sch.score2020}<br>${enroll.enrollmentNumber2020}</td>
                <td><button class="btn3"><a href="../jsp/choose.jsp" target="mainframe">查看院校</a></button></td>
            </c:forEach>
        </tr>

        <tr>
            <c:forEach var="sch" items="${applicationitem}">
                <td>${sch.logo}${sch.name}</td>
                <td>${sch.type}</td>
                <td>${sch.location}</td>
                <td>分数线<br>招生人数</td>
                <td>${sch.score2022}<br>${enroll.enrollmentNumber2022}</td>
                <td>${sch.score2021}<br>${enroll.enrollmentNumber2021}</td>
                <td>${sch.score2020}<br>${enroll.enrollmentNumber2020}</td>
                <td><button class="btn3"><a href="../jsp/choose.jsp" target="mainframe">查看院校</a></button></td>
            </c:forEach>
        </tr>
    </table>
</table>

</body>
</html>
