<%--
  Created by IntelliJ IDEA.
  User: 22751
  Date: 2023-07-18
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="../css/universityright.css" type="text/css" rel="stylesheet" />
</head>
<style>
  .container{
    padding: 15px;
  }
</style>
<body>
<div style="overflow:hidden;display: flex">
  <div style="width: calc(100% - 30px)" id="infocontainer">
    <div class="container">



    </div>
  </div>
  <div style="float:right;width: 30px;    position: fixed;right: 0;" id="tabs">
    <div style="width: 30px;height: 100%">
      <%--导航栏主体--%>
      <a style="text-decoration: none" href="universityinfo.jsp"><div class="vertical-text flex3 tabs" >
        <span>基本信息</span>
      </div></a>
      <a style="text-decoration: none" href=""><div class="vertical-text flex3 tabs" style="margin-top: 0.3vh">
        <span>招生信息</span>
      </div></a>
      <a style="text-decoration: none" href=""><div class="vertical-text flex3 tabs" style="margin-top: 0.3vh">
        <span>对比分析</span>
      </div></a>
    </div>
  </div>
</div>
</body>
<script>
  // 获取当前页面的高度
  var pageHeight = document.documentElement.clientHeight;

  // 获取要设置高度的div元素
  var tabElement = document.getElementById("tabs");
  var infoElement = document.getElementById("infocontainer");

  // 设置初始高度
  tabElement.style.height = pageHeight+ "px";
  infoElement.style.height = pageHeight+ "px";

  // 监听窗口大小变化事件
  window.addEventListener("resize", function() {
    // 获取更新后的页面高度
    var updatedPageHeight = document.documentElement.clientHeight;

    // 更新div的高度
    tabElement.style.height = updatedPageHeight+ "px";
    infoElement.style.height = updatedPageHeight+ "px";
  });
</script>
</html>
