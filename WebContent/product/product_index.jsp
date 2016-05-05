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
				<h2 class="mbx">商品信息 &gt; 商品列表 &nbsp;&nbsp;&nbsp;</h2>
				<div class="cztable">
					<table id="cartTable">
						<thead>
							<tr>
								<th>商品名称</th>
								<th>商品编号</th>
								<th>商品类别</th>
								<th>商品价格</th>
								<th>商品数量</th>
								<th>商品简介</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${request.productlist!=null }">
								<c:forEach items="${productlist}" var="s">
									<tr>
										<td class="goods"><img
											src="${pageContext.request.contextPath}/Images/photo.jpg"
											alt="" /><br /> <span>${s.product_name}</span></td>
										<td class="subtotal">${s.product_number }</td>
										<td class="count">${s.product_type }</td>
										<td class="subtotal">${s.product_price }元</td>
										<td class="subtotal">${s.product_amount }</td>
										<td class="price">${s.product_remark }</td>
										<td colspan="4" align="right"><a
											onclick="if(confirm('确定删除?')) window.location='${pageContext.request.contextPath }/product!delete?product.product_id=${s.product_id}';"
											style="cursor: pointer"><input type="button" id="button2"
												value="删除" class="input2" /></a></td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
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
