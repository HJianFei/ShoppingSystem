<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>首页</title>
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
				<c:if test="${request.productlist!=null }">
					<c:forEach items="${productlist}" var="s">
						<div class="product-box">
							<div class="inner-info">
								<div>
									<span class="line-f40">|</span> <span class="text-title">${s.product_name}</span>
								</div>
								<div class="inner-left">
									<a
										href="${pageContext.request.contextPath}/product!detail_product?product.product_id=${s.product_id}&flag=info"><img
										src="img/show1.png" />
										<h1>${s.product_name}</h1> </a>
								</div>
								<div class="inner-right">
									<div>
										<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价格:&nbsp;
										${s.product_price }&nbsp; 元 <br /> <br /> 类型:&nbsp;<a
											href="${pageContext.request.contextPath}/product!findWithType?product_type=${s.product_type}&flag=info">${s.product_type }</a>
									</div>
									<table class="tab-inner">
										<tr>
											<td>简介:&nbsp;${s.product_remark }</td>
										</tr>

									</table>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>

				<div align="center">
					<c:if test="${request.index!= null }">
						<c:if test="${request.productlist!= null }">
							<form
								action="${pageContext.request.contextPath }/product!allProduct?flag=info"
								method="post">
								共${request.pagecount }页，当前第${request.pagenow }页<a
									href="${pageContext.request.contextPath }/product!allProduct?flag=info&pagenow=1">
									第一页</a>&nbsp;<a
									href="${pageContext.request.contextPath }/product!allProduct?flag=info&pagenow=${pagenow - 1}">上一页</a>&nbsp;
								<a
									href="${pageContext.request.contextPath }/product!allProduct?flag=info&pagenow=${pagenow + 1}">下一页</a>&nbsp;
								<a
									href="${pageContext.request.contextPath }/product!allProduct?flag=info&pagenow=${pagecount}">最后一页</a>转跳到
								<input type="text" maxlength="3" size="3" name="pagenow" />页<input
									style="height: 25px; width: auto; cursor: pointer"
									type="submit" value="转跳" />
							</form>
						</c:if>
					</c:if>
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