<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>智慧高校大数据</title>
</head>
<body style="background-color: #000000">

<div>
  <iframe name="topFrame" src="top.jsp" borders="NO" width=100% height="110px" style="border: medium none;"></iframe>
</div>
<div>
  <iframe name="leftFrame" src="left.jsp" onresize borders="NO" width="175" height="590" style="border: medium none;"></iframe>
  <iframe name="mainFrame" src="main.jsp" onresize borders="NO" width="1298" height="590" ></iframe>
</div>

</body>

<style>
  *{           /*清除所有标签的初始内外边距*/
    padding:0;
    margin:0;
  }
</style>

</html>