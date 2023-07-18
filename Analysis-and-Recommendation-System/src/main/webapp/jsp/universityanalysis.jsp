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
    <title>对比分析</title>
    <link href="../css/universityright.css" type="text/css" rel="stylesheet" />
    <link href="../css/universityanalysis.css" type="text/css" rel="stylesheet" />
</head>
<style>
  .container{
    padding: 15px;
  }
</style>
<body>
<div style="display: flex;" class="all">
  <script type="text/javascript" src="../js/echarts.js"></script>
  <script type="text/javascript" src="../js/echarts-wordcloud.js"></script>

<%--  词云图--%>
<div class="main">
  <div id="screen" class="center"></div>
  <script>
    let myEcharts = echarts.init(document.getElementById('screen'));
    var option  = {
      backgroundColor: 'transparent',
      tooltip: {
        show: true
      },
      series: [{
        type: 'wordCloud',
        shape: 'circle',
        keepAspect: false,
        //maskImage: maskImage,
        left: 'center',
        top: 'center',
        width: '70%',
        height: '80%',
        right: null,
        bottom: null,
        size: ['100%', '100%'],
        width: '100%',
        height: '100%',
        sizeRange: [20, 50],
        autoSize: {
          enable: true,
          minSize: 20
        },
        rotationRange: [-90, 90],
        rotationStep: 45,
        gridSize: 50,
        drawOutOfBound: false,
        layoutAnimation: true,
        textStyle: {
          fontFamily: 'jixiangsongti',
          fontWeight: 'normal',
          color: function () {
            return 'rgb(' + [
              Math.round(Math.random() * 160),
              Math.round(Math.random() * 160),
              Math.round(Math.random() * 160)
            ].join(',') + ')';
          }
        },
        emphasis: {
          focus: 'self',
          textStyle: {
            textShadowBlur: 3,
            textShadowColor: '#FFFFFF'
          }
        },
        //data属性中的value值却大，权重就却大，展示字体就却大
        data: [
          {name: 'Farrah',value: 366},
          {name: "汽车",value: 900},
          {name: "视频",value: 206},
          {name: "1",value: 500},
          {name: "2",value: 333},
          {name: "3",value: 306},
          {name: "4",value: 406},
          {name: "5",value: 6106},
          {name: "6",value: 5006},
          {name: "7",value: 706},
          {name: "8",value: 906},
          {name: "9",value: 806},
          {name: "10",value: 6086},
          {name: "11",value: 1606},
          {name: "12",value: 6076},
          {name: "13",value: 7606},
          {name: "14",value: 3606},
          {name: "15",value: 1606},
          {name: "16",value: 4606},
          {name: "17",value: 5606},
          {name: "18",value: 6606},
          {name: "19",value: 7606},
          {name: "20",value: 8606},
          {name: "21",value: 9606},
        ]
      }]

    }
    myEcharts.setOption(option);

    //屏幕自适应
    window.addEventListener('resize', function (){
      myEcharts.resize();
    });
  </script>

<%--  就业率图表--%>
  <div class="left1" id="left1"></div>
  <script>
    var chartDom = document.getElementById('left1');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      title: {
        text: '四川大学就业数据',
        left: 'center',
        textStyle: {
          color: '#000000',
          fontFamily: 'taiekaishu'
        }
      },
      tooltip: {
        trigger: 'item'
      },
      legend: {
        top: 'bottom',
        left: 'center'
      },
      series: [
        {
          // name: '四川大学就业指标',
          type: 'pie',
          radius: ['40%', '70%'],
          avoidLabelOverlap: false,
          itemStyle: {
            borderRadius: 10,
            borderColor: '#fff',
            borderWidth: 1
          },
          label: {
            show: false,
            position: 'center'
          },
          emphasis: {
            label: {
              show: true,
              fontSize: 20,
              fontWeight: 'bold'
            },
            itemStyle: {
              shadowBlur: 10,
              shadowOffsetX: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          },
          labelLine: {
            show: false
          },
          data: [
            { value: 70, name: '就业率' },
            { value: 30, name: '未就业率' }
          ]
        }
      ]
    };

    myChart.setOption(option);

    //屏幕自适应
    window.addEventListener('resize', function (){
      myEcharts.resize();
    });
  </script>

<%--  升学率图表--%>
  <div class="left2" id="left2"></div>
  <script>
    var chartDom = document.getElementById('left2');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      title: {
        text: '四川大学升学数据',
        left: 'center',
        textStyle: {
          color: '#000000',
          fontFamily: 'taiekaishu'
        }
      },
      tooltip: {
        trigger: 'item'
      },
      legend: {
        top: 'bottom',
        left: 'center'
      },
      series: [
        {
          // name: '四川大学升学指标',
          type: 'pie',
          radius: ['40%', '70%'],
          avoidLabelOverlap: false,
          itemStyle: {
            borderRadius: 10,
            borderColor: '#fff',
            borderWidth: 1
          },
          label: {
            show: false,
            position: 'center'
          },
          emphasis: {
            label: {
              show: true,
              fontSize: 20,
              fontWeight: 'bold'
            },
            itemStyle: {
              shadowBlur: 10,
              shadowOffsetX: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          },
          labelLine: {
            show: false
          },
          data: [
            { value: 70, name: '升学率' },
            { value: 30, name: '未升学率' }
          ]
        }
      ]
    };

    myChart.setOption(option);

    //屏幕自适应
    window.addEventListener('resize', function (){
      myEcharts.resize();
    });
  </script>

<%--  出国率图表--%>
  <div class="right1" id="right1"></div>
  <script>
    var chartDom = document.getElementById('right1');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      title: {
        text: '四川大学出国数据',
        left: 'center',
        textStyle: {
          color: '#000000',
          fontFamily: 'taiekaishu'
        }
      },
      tooltip: {
        trigger: 'item'
      },
      legend: {
        top: 'bottom',
        left: 'center'
      },
      series: [
        {
          // name: '四川大学出国指标',
          type: 'pie',
          radius: ['40%', '70%'],
          avoidLabelOverlap: false,
          itemStyle: {
            borderRadius: 10,
            borderColor: '#fff',
            borderWidth: 1
          },
          label: {
            show: false,
            position: 'center'
          },
          emphasis: {
            label: {
              show: true,
              fontSize: 20,
              fontWeight: 'bold'
            },
            itemStyle: {
              shadowBlur: 10,
              shadowOffsetX: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          },
          labelLine: {
            show: false
          },
          data: [
            { value: 70, name: '出国率' },
            { value: 30, name: '未出国率' }
          ]
        }
      ]
    };

    myChart.setOption(option);

    //屏幕自适应
    window.addEventListener('resize', function (){
      myEcharts.resize();
    });
  </script>

<%--  男女比例图标--%>
  <div class="right2" id="right2"></div>
  <script>
    var chartDom = document.getElementById('right2');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
      title: {
        text: '四川大学男女比例',
        left: 'center',
        textStyle: {
          color: '#000000',
          fontFamily: 'taiekaishu'
        }
      },
      tooltip: {
        trigger: 'item'
      },
      legend: {
        top: 'bottom',
        left: 'center'
      },
      series: [
        {
          type: 'pie',
          radius: '50%',
          itemStyle: {
            borderColor: '#fff',
            borderWidth: 1
          },
          data: [
            { value: 1, name: '男' },
            { value: 0.7, name: '女' }
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

    myChart.setOption(option);

    //屏幕自适应
    window.addEventListener('resize', function (){
      myEcharts.resize();
    });
  </script>

</div>

  <div style="overflow:hidden;display: flex">
    <div style="width: calc(100% - 30px)" id="infocontainer">
      <div class="container"></div>
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
