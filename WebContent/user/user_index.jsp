<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生信息管理平台</title>
<link href="${pageContext.request.contextPath}/Style/StudentStyle.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/Script/jBox/Skins/Blue/jbox.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/Style/ks.css"
	rel="stylesheet" type="text/css" />
<script
	src="${pageContext.request.contextPath}/Script/jBox/jquery-1.4.2.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/Script/jBox/jquery.jBox-2.3.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/Script/jBox/i18n/jquery.jBox-zh-CN.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Script/Common.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/Script/Data.js"
	type="text/javascript"></script>
</head>
<body>

	<jsp:include page="../base/banner.jsp" />
	<div class="page">
		<div class="box mtop">
			<jsp:include page="../base/left.jsp" />
			<div class="rightbox">

				<h2 class="mbx">商品信息 &gt; 商品分类</h2>
				<div class="cztable">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<th style="text-align: center;">序号</th>
							<th style="text-align: center;">用户名</th>
							<th style="text-align: center;">昵称</th>
							<th style="text-align: center;">性别</th>
							<th style="text-align: center;">密码</th>
							<th style="text-align: center;">联系方式</th>
							<th style="text-align: center;">地址</th>
							<th style="text-align: center;">备注</th>
							<th style="text-align: center;" colspan="2">操作</th>
						</tr>
						<c:if test="${request.userlist!=null}">
						<c:forEach items="${userlist}" var="s">
						<tr align="center">
							<td>${s.user_id}</td>
							<td>${s.user_name}</td>
							<td>${s.user_nickname}</td>
							<td>${s.user_sex}</td>
							<td>${s.user_pass}</td>
							<td>${s.user_phone}</td>
							<td>${s.user_address}</td>
							<td>${s.user_remark}</td>
							<td><a href="${pageContext.request.contextPath}/user!tochange_user?user.user_id=${s.user_id}" style="cursor: pointer">修改</a></td>
							<td><a
								onclick="if(confirm('确定删除?')) window.location=' ${pageContext.request.contextPath }/user!delete?user.user_id=${s.user_id}';"
								style="cursor: pointer">删除</a></td>
						</tr>
					</c:forEach></c:if>
					</table>
				</div>
			</div>
		</div>
		<div class="footer">
			<p>&copy;copyright 2012 广博教育 csgb.net 版权所有 站长统计</p>
		</div>
	</div>
</body>
</html>
