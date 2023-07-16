<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2023/7/15
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>地理位置</title>
    <link href="location.css" type="text/css" rel="stylesheet" />
</head>
<body>
<div class="wrap">
    <div class="screen" ref="screen" id="screen"></div>
</div>

<script src="https://cdn.jsdelivr.net/npm/echarts@5.4.2/dist/echarts.min.js">
    import echarts from 'echarts'
    import 'echarts/map/js/china.js'
    import 'echarts/map/json/china.json'
    export default {
        name: 'default',
        data() {
            return {
                mapSelParam: null,    //选中的参数
                echarts: {
                    title: '中华人民共和国',   //选中的省份
                    zoom: 0.4
                }
            };
        },
        components: {
        },
        methods: {
            initEcharts(){
                //初始化echarts
                let echartsApp = echarts.init(document.getElementById('screen'));

                //设置配置项
                echartsApp.setOption(this.getEchartsOptions())

                //点击各省份事件处理
                let _this = this;
                echartsApp.on('click', param => {
                    //获取到的省份名
                    let temp = JSON.stringify(this.mapSelParam);
                    if(this.mapSelParam){
                        //取消选中前一次选中的省份
                        echartsApp.dispatchAction({
                            type: 'geoUnSelect',
                            seriesIndex: this.mapSelParam.seriesIndex,
                            seriesName: this.mapSelParam.seriesName,
                            dataIndex: this.mapSelParam.dataIndex,
                            name: this.mapSelParam.name
                        })
                    }

                    this.mapSelParam = {
                        seriesIndex: param.seriesIndex,
                        seriesName: param.seriesName,
                        dataIndex: param.dataIndex,
                        name: param.name
                    }

                    //*********************************
                    //***为选中的省份的参数赋值**********
                    //*********************************
                    this.$set(this.echarts, 'title', param.name);
s
                    echartsApp.setOption(this.getEchartsOptions());
                    //如果前一次选中与当前选中相同，则return，取消选中
                    if(temp === JSON.stringify(this.mapSelParam)){
                        this.$set(this.echarts, 'title', '中华人民共和国');
                        echartsApp.setOption(this.getEchartsOptions());
                        this.mapSelParam = {};
                        return;
                    }

                    //选中当前点击的省份
                    echartsApp.dispatchAction({
                        type: 'geoSelect',
                        seriesIndex: this.mapSelParam.seriesIndex,
                        seriesName: this.mapSelParam.seriesName,
                        dataIndex: this.mapSelParam.dataIndex,
                        name: this.mapSelParam.name
                    })
                })

                this.$nextTick(() => {
                    this.echarts.zoom = 1.1;
                    echartsApp.setOption(this.getEchartsOptions());
                })
            },
            getEchartsOptions(){
                return {
                    title: {
                        text: this.echarts.title,
                        textStyle: {
                            color: '#FFF',
                            fontSize: 24
                        },
                        top: 20,
                        left: 20
                    },
                    geo: {
                        //引入中国地图
                        map: 'china',
                        //是否可以缩放，拖拽
                        roam: true,
                        zoom: this.echarts.zoom,
                        //地名配置项
                        label: {
                            //默认情况下配置项
                            normal: {
                                show: true,
                                textStyle: {
                                    color: '#CCC'
                                }
                            },
                            //选中高亮情况下配置项
                            emphasis: {
                                textStyle: {
                                    color: '#FFF'
                                }
                            }
                        },
                        //各省样式
                        itemStyle: {
                            normal: {
                                areaColor: '#3034A0',
                                borderColor: '#3057D3',
                                borderWidth: 1,
                            },
                            emphasis: {
                                areaColor: '#4467CC',
                                borderColor: '#448aff',
                            }
                        },
                        scaleLimit: {
                            min: 0.7,
                            max: 10
                        }
                    },
                    //设置各省份根据值(value)显示不同颜色
                    visualMap: {
                        //最大最小值
                        min: 0,
                        max: 1000,
                        //最大最小值描述
                        text: ['High', 'Low'],
                        //文字颜色
                        textStyle: {
                            color: '#CCC'
                        },
                        //拖拽时，是否实时更新。
                        realtime: false,
                        //是否显示拖拽用的手柄
                        calculable: true,
                        //定义在选中范围中 的视觉元素
                        inRange: {
                            color: ['lightskyblue', 'yellow', 'orangered']
                        }
                    },
                    //系列配置
                    series: [{
                        name: '大数据',
                        type: 'map',
                        //【此参数必须配置，否则visualMap不起作用】
                        geoIndex: 0,
                        //此处可接收后端参数，当前数据仅为测试
                        data: [{
                            name: '湖南',
                            value: 1000
                        }]
                    }],
                    animationType: 'scale',
                    animationEasing: 'elasticOut',
                    animationDelay: 2000
                }
            }
        },
        mounted(){
            //代码入口
            this.initEcharts();
        }
    };
</script>
</body>
</html>
