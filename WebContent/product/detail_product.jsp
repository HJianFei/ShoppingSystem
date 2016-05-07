<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
					<table width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td align="right" width="auto">商品编号：</td>
							<td>${request.detail.product_number }</td>
							<td rowspan="7"><div align="center">
									<img src="${pageContext.request.contextPath}/Images/photo.jpg" alt="" />
								</div>&nbsp;</td>
						</tr>
						<tr>
							<td align="right" width="90">商品名称：</td>
							<td>${request.detail.product_name }</td>
						</tr>
						<tr>
							<td align="right">商品类别：</td>
							<td><a
								href="${pageContext.request.contextPath}/product!findWithType?product.product_type=${request.detail.product_type }">${request.detail.product_type }</a></td>
						</tr>
						<tr>
							<td align="right">商品数量：</td>
							<td>${request.detail.product_amount }</td>
						</tr>
						<tr>
							<td align="right">商品价格：</td>
							<td>${request.detail.product_price }</td>
						</tr>
						<tr>
							<td align="right">商品简介：</td>
							<td >${request.detail.product_remark }</td>
						</tr>
						<tr style="height: 28px" class="tdbg" align="center">
							<td colspan="2" align="right"><a
								href="${pageContext.request.contextPath }/product!addToCart?product_id=${request.detail.product_id}">
									<input type="button" id="button2" value="加入购物车" class="input2" />
							</a></td>
						</tr>
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