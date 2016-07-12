<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- 引入 ECharts 文件 -->
	<script type="text/javascript" src="<%=basePath%>/js/echarts.js" ></script>
  </head>
  
  <body>
   	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="width:600px;heigth:400px;"></div>
    <script type="text/javascript">
    	//基于准备好的dom初始化echarts实例
    	var myChart = echarts.init(document.getElementById('main'));
    	//指定图表的配置项和数据
    	var option = {
    		title:{
    			text:"报表入门示例"
    		},
    		tooltip:{},
    		legend:{
    			data:["销量"]
    		},
    		xAxis:{
    			data:["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
    		},
    		yAxis:{},
    		Series:[{
    			name:"销量",
    			type:"bar",
    			data:[5,20,36,10,10,20]
    		}]
    	}
    	
    	myChart.setOption(option);
    </script>
    
  </body>
</html>
