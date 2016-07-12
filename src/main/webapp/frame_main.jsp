<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'frame_main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<!-- 引入 ECharts 文件 -->
	<script type="text/javascript" src="js/echarts.js" ></script>
	<script type="text/javascript">
// 	$(document).ready(function(){
// 	alert(1233444);
// 		$.ajax({
// 			type : 'POST',
// 			url : 'customer/saleRanking.do',
// 			dataType :'json',
// 			data : { "cusName" : cusName },
// 			success : function(data) {
// 			}
// 		});
// 	})
	
	function saleRanking(){
	//alert("11111");
		$.ajax({
			type : 'POST',
			url : 'customer/saleRanking.do',
			dataType :'json',
			data : { "cusName" : "asasa" },
			async:false,
			success : function(data) {
			alert(data);
			}
		});
	}
	
	</script>

  </head>
  
  <body>
  	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <input type="button" value="ssss" onclick="saleRanking()">
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '销售签单收款排名'
            },
            tooltip: {
            	 trigger: 'axis'},
            legend: {
                data:['系列一','系列二']
            },
            toolbox:{
            	show:true,
            	feature:{
            		mark:{show:true},//标记
            		dataView:{show:true,readOnly:false},//数据视图
            		magicType:{show:true,type:['line','bar']},//魔法型线条
            		restore:{show:true},//还原
            		saveAsImage:{show:true}//保存为图像
            	}
            },
            calculable:true,//能预算的
            xAxis: {
            	type:'category',//连续型
            	boundaryGap:false,//间隙
                data: ["熊德美","沈洁","杨晓红","钟方明","谭玉芝","何炎","周喆","胡礼","田紫云","王士林","其他"]
            },
            yAxis: [{
            	type:'value',
            	axisLabel:{
            		formatter:'{value}￥'
            	}
            }],
            series: [{
                name: '系列二',
                type: 'line',
                data: [0, 0, 12800.00 ,39400.00, 0, 0 ,0 ,11200.00,2000.00,0,0]
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
  </body>
</html>
