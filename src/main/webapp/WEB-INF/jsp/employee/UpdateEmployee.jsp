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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改员工信息</title>
<link href=" <%=basePath%>css/public.css" rel="stylesheet"
	type="text/css">
<link href=" <%=basePath%>css/add_stu.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/global.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.tab.js"></script>
<script type="text/javascript" src="<%=basePath%>js/add_stu.js"></script>
</head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#back").hide();
		$("#add_stu").hide();
		
	})
</script>
<body>
<div id="dcMain">
	<div id="urHere">长沙ETC客户关系管理中心<b>></b><strong>公司管理</strong></div>   
		<div class="mainBox" style="height:auto!important;height:6px;min-height:550px;">
	    	<h3>修改员工信息</h3>
		    <script type="text/javascript">
		     	$(function(){ $(".idTabs").idTabs(); });
		    </script>
			<div class="idTabs">
				<ul class="tab">
					<li>
						<a href="#customer_info">修改信息</a>
					</li>
				</ul>
			</div>
	 <div style="text-align: right; cursor: default; height: 40px;"></div>
		<form action="updateUser.do"  method="post">
			<input type="hidden" name="id" value="${Pers.pid }">
 			<table width="60%" border="0" cellpadding="8" cellspacing="0"
								class="tableBasic" align="center">
 				<tr>
 					<td align="center">员工姓名:</td>
 					<td><input type="text" name="p_name" value="${Pers.pName}" /></td>
 				</tr>
 				<tr>
 					<td align="center">员工部门:</td>
 					<td><input type="text" name="p_department" value="${Pers.pDepartment }" /></td>
 				</tr>
 				<tr>
 					<td align="center">员工职业:</td>
 					<td><input type="text" name="P_educationr"  value="${Pers.pEducation}"/></td>
 				</tr>
 				<tr>
 					<td align="center">员工手机:</td>
 					<td><input type="text" name="P_tel"  value="${Pers.pTel}"/></td>
 				</tr>
 				<tr>
 					<td align="center">员工邮箱:</td>
 					<td><input type="text" name="P_pos"   value="${Pers.pPos}" /></td>
 				</tr>
 				<tr>
 					<td colspan="2" align="center">
						<input type="submit" class="btn" value="确定">
					</td>
 				</tr>
 		</table>
 	</form>	
	</div>
</div>

</body>
</html>