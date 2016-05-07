<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/demo.js"></script>
<script type="text/javascript">
	function addOrders() {
		if (confirm("确定要购买吗？")) {
			location.href = "${pageContext.request.contextPath}/orders!addOrders";
		}
	}
</script>
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
				<s:if test="%{#session.shoppingorder != null}">
					<table id="cartTable">
						<thead>
							<tr align="center">
								<th><label><input class="check-all check"
										type="checkbox" />&nbsp;全选</label></th>
								<th>商品</th>
								<th>单价</th>
								<th>数量</th>
								<th>小计</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<s:if test="%{#session.shoppingorder != null}">
								<s:iterator value="#session.shoppingorder" status="st">
									<tr>
										<td class="checkbox"
											style="display: table-cell; vertical-align: middle"><input
											class="check-one check" type="checkbox" /></td>
										<td class="goods"
											style="display: table-cell; vertical-align: middle"><img
											src="${pageContext.request.contextPath}/Images/photo.jpg"
											alt="" /><br /> <span><s:property
													value="product_name" /></span></td>

										<td class="price"
											style="display: table-cell; vertical-align: middle"><s:property
												value="product_price" /></td>
										<td class="count"
											style="display: table-cell; vertical-align: middle"><input
											readonly="readonly" class="count-input" type="text"
											value="<s:property value="product_amount"/>" /></td>
										<td class="subtotal"
											style="display: table-cell; vertical-align: middle"><s:property
												value="product_price" /></td>
										<td class="operation"
											style="display: table-cell; vertical-align: middle"><a
											href="${pageContext.request.contextPath}/product!removeCart?index_id=<s:property value="#st.getIndex()"/>">删除</a></td>
									</tr>
								</s:iterator>
							</s:if>
						</tbody>
					</table>
					<div class="foot" id="foot">
						<label class="fl select-all"><input type="checkbox"
							class="check-all check" />&nbsp;全选</label> <a class="fl delete"
							id="deleteAll" href="javascript:;">删除</a>
						<div class="fr closing">
							<input type="button" value="结算" onclick="addOrders()">
						</div>
						<div class="fr total">
							合计：￥<span id="priceTotal">0.00</span>
						</div>
						<div class="fr selected" id="selected">
							已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span
								class="arrow down">︾</span>
						</div>
						<div class="selected-view">
							<div id="selectedViewList" class="clearfix">
								<div>
									<img src="images/1.jpg"><span>取消选择</span>
								</div>
							</div>
							<span class="arrow">◆<span>◆</span></span>
						</div>
					</div>
				</s:if>
				<s:if test="%{#session.shoppingorder == null}">
					<table id="cartTable">
						<tbody>
							<tr>
								<td>你的购物车为空！</td>
							</tr>
							<tr><td><a href="${pageContext.request.contextPath}/firstPage.jsp">返回购物</a></td></tr>
						</tbody>
					</table>
				</s:if>
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