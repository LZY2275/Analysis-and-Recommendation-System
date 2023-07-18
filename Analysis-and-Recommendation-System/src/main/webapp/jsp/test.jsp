<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2023/7/17
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
<%--    <!-- 引入 ECharts 文件 -->--%>
<%--    <script src='/resource/js/echarts.js'></script>--%>
<%--    <script type="text/javascript" src='/resource/js/jquery-3.2.1.js'></script>--%>

</head>
<body>
<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
<div id="demo" style="width: 500px; height: 200px;"></div>
<script type="text/javascript">
    import echarts from "echarts";

    let demo= echarts.init(document.getElementById('demo'));
    let option = {
        title: {
            text: 'Referer of a Website',
            subtext: 'Fake Data',
            left: 'center'
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            left: 'left'
        },
        series: [
            {
                name: 'Access From',
                type: 'pie',
                radius: '50%',
                data: [
                    { value: 1048, name: 'Search Engine' },
                    { value: 735, name: 'Direct' },
                    { value: 580, name: 'Email' },
                    { value: 484, name: 'Union Ads' },
                    { value: 300, name: 'Video Ads' }
                ],
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    demo.setOption(option);
</script>

</body>
</html>
