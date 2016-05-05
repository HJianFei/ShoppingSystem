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
<title>网上购物后台管理平台</title>
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

	<jsp:include page="../banner.jsp" />
	<div class="page">
		<div class="box mtop">
			<jsp:include page="../left.jsp" />
			<div class="rightbox">
				<h2 class="mbx">商品信息 &gt; 商品详情 &nbsp;&nbsp;&nbsp;</h2>
				<div class="cztable">
					<table width="500xp" cellpadding="0" cellspacing="0">
						<tr>
							<td align="right" width="auto">商品编号：</td>
							<td>${request.detail.product_number }</td>
							<td rowspan="5"><div align="center">
									<img id="pic_face" height="160" width="120"
										src="${pageContext.request.contextPath}/Images/Student/photo.jpg"
										style="padding: 2px 2px 5px; border: 1px #ddd solid;" />
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
							<td colspan="2">${request.detail.product_remark }</td>
						</tr>
						<tr style="height: 28px" class="tdbg" align="center">
							<td colspan="4" align="right"><a
								href="${pageContext.request.contextPath }/product!tochange_product?product.product_id=${request.detail.product_id}">
									<input type="button" id="button2" value="修改" class="input2" />
							</a></td>
						</tr>
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
