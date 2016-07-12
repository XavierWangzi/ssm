<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>收款明细</title>
<link href=" <%=basePath %>css/public.css" rel="stylesheet" type="text/css">
	<link href=" <%=basePath %>css/add_stu.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/global.js"></script>
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
	<input type="hidden" id="pagecount" value="${pages }">
	<input type="hidden" id="part" value="${loginper.pPart }">
	<div id="dcMain">
	<div id="urHere">长沙ETC客户关系管理中心<b>></b><strong>公司管理</strong></div>   
		<div class="mainBox" style="height:auto!important;height:6px;min-height:550px;">
	    	<h3>其他管理</h3>
		    <script type="text/javascript">
		     	$(function(){ $(".idTabs").idTabs(); });
		    </script>
			<div class="idTabs">
				<ul class="tab">
					<li>
						<a href="#customer_info">员工信息</a>
					</li>
					<li>
						<a href="#customer_status">部门信息</a>
					</li>
				</ul>
			</div>
	<div class="#customer_info">		
			<div id="customer_info">
			<form action="" method="post">
				<table width="100%" border="0" cellpadding="8" cellspacing="0"
					class="tableBasic">				
					<tbody>
							<tr>
										<th>员工编号</th>
										<th>员工姓名</th>
										<th>员工部门</th>					
										<th>员工职业</th>
										<th>员工手机</th>
										<th>员工邮箱</th>
										<th>员工操作</th>
							</tr>
								<tr>
									<c:if test="${!empty listAll}">
										<c:forEach items="${listAll}" var="Pers" varStatus="status">
											<c:choose>
												<c:when test="${loginper.pPart eq '0' || loginper.pPart eq '2' }">
													<tr>
														<td>${Pers.pid }</td>
														<td>${Pers.pName }</td>
														<td>${Pers.did }</td>
														<td>${Pers.pEducation}</td>
														<td>${Pers.pTel }</td>
														<td>${Pers.pPos }</td>	
														<td>没有操作权限</td>	
													</tr>
													</c:when> 
												
										<c:otherwise>   
										  <c:if test="${loginper.pid eq Pers.pid }">	
										  		<tr>
														<td>${Pers.pid }</td>
														<td>${Pers.pName }</td>
														<td>${Pers.pDepartment }</td>
														<td>${Pers.pEducation}</td>
														<td>${Pers.pTel }</td>
														<td>${Pers.pPos }</td>																	
														<td>	
															<a href="<%=basePath%>sale/selectByid.do?id=${Pers.pid}">编辑</a>|
															<a href="<%=basePath%>sale/delUser.do?id=${Pers.pid}">删除</a>
														</td>
												</tr>
												</c:if>
											</c:otherwise>
											</c:choose>	
										</c:forEach>
									</c:if>
								</tr>
						</tbody>
				</table>
		</form>
</div>
<div id="pageGro" class="cb">
				<div class="pageUp">上一页</div>
				    <div class="pageList">
				        <ul>
				            <li>1</li>
				            <li>2</li>
				            <li>3</li>
				            <li>4</li>
				            <li>5</li>
				        </ul>
				    </div>
			    <div class="pageDown">下一页</div>
<script type="text/javascript" src="<%=basePath%>Myjs/pageGroup.js"></script>
</div>
	<form action="" method="post">
			<div id="customer_status" >
				<table align="center"  width="100%" border="0" cellpadding="8" cellspacing="0"
					class="tableBasic">
					<tr>
						<th>部门编号</th>
						<th>部门名称</th>
						<th>部门描述</th>
						<th>操作</th>
					</tr>
							<tr>
								<c:if test="${!empty list }">
										<c:forEach items="${list}" var="Dep">
											<tr>
												<td>${Dep.did }</td>
												<td>${Dep.dName }</td>
												<td>${Dep.dRemark}</td>									
												<td><a href="<%=basePath%>/dept/selectByid.do?id=${Dep.did}">编辑</a>|
													<a href="<%=basePath%>/dept/delete.do?id=${Dep.did}">删除</a>
												</td>
											</tr>
										</c:forEach>
								</c:if>
						</tr>
				</table>
			</div>		
		</form>
	</div>	
</div>
</div>
</body>
</html>
