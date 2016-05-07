<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
	<!--scroll-head-->
	<div class="scroll-head"></div>
	<!--top-->
	<jsp:include page="../base/top.jsp" />
	<!--top-main-->
	<jsp:include page="../base/top_main.jsp" />
	<!--content-top-->
	<div class="content-top">
		<!--sidebar-->
		<jsp:include page="../base/slidbar.jsp" />
		<jsp:include page="../base/nav.jsp" />
		<!--main-->
		<div class="main">
			<div class="main-left">
				<div class="cztable">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<th style="text-align: center;">序号</th>
							<th style="text-align: center;">订单编号</th>
							<th style="text-align: center;">订单日期</th>
							<th style="text-align: center;">订单用户</th>
							<th style="text-align: center;">处理情况</th>
						</tr>
						<!-- 显示查询信息 -->
						<c:if test="${request.orderslist==null}">
							<tr style="height: 28px" class="tdbg" align="center">
								<td>暂无信息!</td>
								<td>暂无信息!</td>
								<td>暂无信息!</td>
								<td>暂无信息!</td>
								<td>暂无信息!</td>
							</tr>
						</c:if>
						<c:if test="${request.orderslist!=null}">
							<c:forEach items="${orderslist}" var="s">
								<tr align="center">
									<td>${s.orders_id}</td>
									<td>${s.orders_number}</td>
									<td>${s.orders_time}</td>
									<td>${s.user_name}</td>
									<c:if test='${s.orders_handler==0}'>
										<td>未处理</td>
									</c:if>
									<c:if test='${s.orders_handler!=0}'>
										<td>已处理</td>
									</c:if>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
			</div>
			<jsp:include page="../base/mian_right.jsp" />
		</div>
	</div>
	<!--footer-->
	<div class="footer"></div>

	<!--backtoTop1-->
	<!--兼容所有现代浏览器同时包括 ie6/7/8/9 （ie6会有一点点抖动）-->
	<div class="backtoTop" id="backToTop1">
		<div id="backToTop-up" class="up-back">
			<i class="fa fa-angle-up"></i>
		</div>
		<div id="backToTop-down" class="down-back">
			<i class="fa fa-angle-down"></i>
		</div>
	</div>
	<script src="js/jquery_1.9.js"></script>
	<script src="js/main.js"></script>
	<script src="js/img-show.js"></script>
</body>
</html>