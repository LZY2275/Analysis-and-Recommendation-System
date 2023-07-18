
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
    <form class="form-inline" action="bookListByType" method="post">
        <div class="form-group">
            <label>就读地区:</label>
            <select name="location" class="form-control">
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
            <select name="school_type" class="form-control">
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
            <input type="text" class="form-control" id="input" placeholder="请输入高考成绩" name="grades">
        </div>

    </form>
    <input type="submit" class="btn1" value="获取"/>

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

<table class="table table-hover">
    <tr align="center">
        <td>招生学校</td>
        <td>历年</td>
        <td>2022</td>
        <td>2021</td>
        <td>2020</td>
        <td>2023招生计划</td>
        <td>操作</td>
    </tr>
    <c:forEach var="item" items="${schoolInfos}">
        <tr align="center">
            <td>${item.school_name}</td>
            <td>${item.preyear}</td>
            <td>${item.year2022}</td>
            <td>${item.year2021}</td>
            <td>${item.year2020}</td>
            <td>${item.year2023}</td>
<%--            <td>--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${item.is_borrow==1}">已借</c:when>--%>
<%--                    <c:when test="${item.is_borrow==0}">未借</c:when>--%>
<%--                </c:choose>--%>
<%--            </td>--%>
            <td><a href="choose.jsp" target="mainframe">查看院校</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
