<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<div class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		<li ><a href="<%=basePath %>emp/adminindex.do">管理首页<span class="sr-only">(current)</span></a></li>
		<li><a href="<%=basePath %>customer/manager.do">客户管理</a></li>
		<li><a href="<%=basePath %>student/management.do">学员管理</a></li>
		<li><a href="<%=basePath %>etcclass/management.do">班级管理</a></li>
		<li><a href="<%=basePath %>empinfo/empmanagement.do">员工管理</a></li>
		<li><a href="<%=basePath %>paycode/Codes.do">业务管理</a></li> 
		<li><a href="<%=basePath %>paycode/reports.do">数据统计</a></li>
	</ul>
	<ul class="nav nav-sidebar">
		<li><a href="<%=basePath %>empinfo/showMe.do"><i class="manager"></i>个人中心</a></li>
		<c:if test="${tempuser.rid==1 }">
		<li class="active"><a href="<%=basePath %>user/haveuserinfo.do"><i class="manager"></i>用户管理</a></li>
		</c:if>
		<!-- <li><a href="">中文</a></li> -->
	</ul>
</div>
