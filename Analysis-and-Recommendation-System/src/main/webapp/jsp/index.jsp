<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <title>智慧高校大数据</title>
</head>
<body style="background-color: #000000">

<div>
  <iframe name="topFrame" src="/jsp/top.jsp" borders="NO" width=100% height="110px" style="border: medium none;"></iframe>
</div>
<div style="overflow:hidden;">
<div style="float: left; width: 175px; height: calc(100% - 110px)">
  <iframe name="leftFrame" src="/jsp/left.jsp" onresize borders="NO" height=100% style="border: medium none;"></iframe>
</div>
<div style="float: left; width: calc(100% - 175px)">
  <iframe name="mainFrame" src="/jsp/main.jsp" onresize borders="NO" width=100% height="590" ></iframe>
</div>
</div>


</body>

<style>
  *{           /*清除所有标签的初始内外边距*/
    padding:0;
    margin:0;
  }
</style>

<script>
  
</script>

</html>