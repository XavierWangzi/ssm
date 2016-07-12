<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'customer_management.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="<%=basePath %>css/public.css" rel="stylesheet" type="text/css">
<link href=" <%=basePath %>css/add_stu.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/global.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.autotextarea.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.tab.js"></script>
<script type="text/javascript" src="<%=basePath %>js/add_stu.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#back").hide();
		$("#add_stu").hide();
		
	})
</script>
</head>
<body>
	<div id="dcMain">
   	<!-- 当前位置 -->
		<div id="urHere">长沙ETC客户关系管理中心<b>></b><strong>业务管理</strong></div>   
		<div class="mainBox" style="height:auto!important;height:550px;min-height:550px;">
	    	<h3>业务管理</h3>
		    <script type="text/javascript">
		     	$(function(){ $(".idTabs").idTabs(); });
		    </script>
			<div class="idTabs">
				<ul class="tab">
					<li>
						<a href="#customer_info">签单收款</a>
					</li>
					
				</ul>
				<div class="#customer_info">
					<form action="/business_code.do" method="post"
						enctype="multipart/form-data">
						<div id="customer_info">
							<table width="100%" id="dg" cellpadding="8" class="tableBasic"  
								url="${pageContext.request.contextPath}/codes/list.do"
							 fitColumns="true" pagination="true" rownumbers="true"  fit="true">
							<thead>
								<tr>
									<th  field ="cid">签单编号</th>
									<th  field ="cstime">签单时间</th>
									<th  field ="cusers">被签单人</th>
									<th  field ="cdepartment">签单部门</th>
									<th  field ="ctype">签单类型</th>
									<th  field ="cpay">签单缴费</th>
									<th  field ="chostel">住&nbsp;宿&nbsp;费</th>
									<th  field ="carea">签单区域</th>
									<th align="center">编辑</th>
								</tr>							
								<tr>
									<c:if test="${!empty codes }">
										<c:forEach items="${codes}" var="codes">
											<tr>
												<td>${codes.cid }</td>
												<td>${codes.cstime }</td>
												<td>${codes.cusers }</td>
												<td>${codes.cdepartment}</td>
												<td>${codes.ctype}</td>
												<td>${codes.cpay }</td>	
												<td>${codes.chostel }</td>	
												<td>${codes.carea }</td>						
												<td align="center" >
													<a href="<%=basePath%>/code/selectByPrimaryKey.do?id=${codes.cid}">编辑</a>
													<a href="<%=basePath%>/code/deletebyid.do?id=${codes.cid}">删除</a>
												</td>
											</tr>
										</c:forEach>
									</c:if>							
								</tr>
							</thead>							
							</table>
						</div>
					</form>
			</div>
	</body>
</html>
