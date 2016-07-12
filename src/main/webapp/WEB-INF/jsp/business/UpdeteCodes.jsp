<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<%=basePath %>css/public.css" rel="stylesheet" type="text/css">
<link href=" <%=basePath %>css/add_stu.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="<%=basePath %>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/global.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.autotextarea.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.tab.js"></script>
<script type="text/javascript" src="<%=basePath %>js/add_stu.js"></script>
<title>Insert title here</title>
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
	    	<h3>修改收款信息</h3>
		    <script type="text/javascript">
		     	$(function(){ $(".idTabs").idTabs(); });
		    </script>
			<div class="idTabs">
				<ul class="tab">
					<li>
						<a href="#customer_info">修改收款信息</a>
					</li>
				</ul>
			</div>
	<div style="text-align: right; cursor: default; height: 20px;"></div>	
			<form  action="updatebyid.do" method="post" id="fm"> 
					<input type="hidden" name="cid" value="${code.cid }">
					<table width="60%" border="0" cellpadding="8" cellspacing="0"
								class="tableBasic" align="center">								
							<tr>
									<td  align="center">签单时间</td>
									<td>
										<input type="text" maxlength="30"  name="cstime" id="cstime" value="${code.cstime}" >
									</td>
								</tr>
								<tr>
									<td  align="center">被签单人</td>
									<td>
										<input type="text" name="cusers" id="cusers" value="${code.cusers}" >
									</td>
								</tr>
								<tr>
									<td  align="center">签单部门</td>
									<td>
										<input type="text" name="cdepartment" id="cdepartment"  value="${code.cdepartment}">
									</td>
								</tr>
								<tr>
									<td  align="center">签单类型</td>
									<td>
										<input type="text" name="ctype" id="ctype" value="${code.ctype}">
									</td>
								</tr>
								<tr>
									<td align="center">签单缴费</td>
									<td>
										<input type="text" name="cpay" id="cpay" value="${code.cpay}" >
									</td>
								</tr>
								<tr>
									<td  align="center">住&nbsp;宿&nbsp;费</td>
									<td>
										<input type="text" name="chostel" id="chostel" value="${code.chostel}" >
									</td>
								</tr>
								<tr>
									<td  align="center">签单区域</td>
									<td>
										<input type="text" name="carea" id="carea" value="${code.carea}">
									</td>
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
	</div>
</body>
</html>