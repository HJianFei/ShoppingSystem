<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/demo.js"></script>
<SCRIPT type="text/javascript">
	function addOrders(){
		if(confirm("确定要购买吗？")){
			location.href = "${pageContext.request.contextPath}/orders!addOrders";
		}
	}
</SCRIPT>
</head>
<body>
	<table id="cartTable">
		<thead>
			<tr>
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
						<td class="checkbox"><input class="check-one check"
							type="checkbox" /></td>
						<td class="goods"><img
							src="${pageContext.request.contextPath}/Images/photo.jpg" alt="" /><br />
							<span><s:property value="product_name"/></span></td>

						<td class="price"><s:property value="product_price"/></td>
						<td class="count"><input readonly="readonly"
							class="count-input" type="text" value="<s:property value="product_amount"/>" /></td>
						<td class="subtotal"><s:property value="product_price"/></td>
						<td class="operation"><a href="${pageContext.request.contextPath}/product!removeCart?index_id=<s:property value="#st.getIndex()"/>">删除</a></td>
					</tr>
				</s:iterator>
			</s:if>
		</tbody>
	</table>
	<div class="foot" id="foot">
		<label class="fl select-all"><input type="checkbox"
			class="check-all check" />&nbsp;全选</label> <a class="fl delete"
			id="deleteAll" href="javascript:;">删除</a>
		<div class="fr closing"><input type="button" value="结算" onclick="addOrders()"></div>
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
</body>
</html>