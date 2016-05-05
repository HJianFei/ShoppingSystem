<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="leftbox">
	<div class="l_nav2">
		<div class="ta1">
			<strong>商品信息</strong>
			<div class="leftbgbt"></div>
		</div>
		<div class="cdlist">
			<div>
				<a
					href="${pageContext.request.contextPath}/product!allProduct">商品列表</a>
			</div>
			<div>
				<a
					href="${pageContext.request.contextPath}/type!allType">商品分类
				</a>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/product!getType">商品添加</a>
			</div>
			<div>
				<a
					href="#">商品属性</a>
			</div>
			<div>
				<a href="#">品牌管理</a>
			</div>

		</div>
		<div class="ta1">
			<strong>订单信息</strong>
			<div class="leftbgbt2"></div>
		</div>
		<div class="cdlist">
			<div>
				<a href="${pageContext.request.contextPath}/orders!AllOrders?orders_handler=2">所有订单</a>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/orders!AllOrders?orders_handler=1">已处理订单</a>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/orders!AllOrders?orders_handler=0">未处理订单</a>
			</div>
		</div>
		<div class="ta1">
			<strong>会员管理</strong>
			<div class="leftbgbt2"></div>
		</div>
		<div class="cdlist">
			<div>
				<a href="${pageContext.request.contextPath}/user!allUser">会员列表</a>
			</div>
			<div>
				<a href="${pageContext.request.contextPath}/user/user_add.jsp">添加会员</a>
			</div>
			<div>
				<a href="#">会员等级</a>
			</div>
		</div>

		<div class="ta1">
			<strong>营销管理</strong>
			<div class="leftbgbt2"></div>
		</div>
		<div class="cdlist">
			<div>
				<a href="#">订阅列表</a>
			</div>
			<div>
				<a href="#">邮件群发</a>
			</div>
			<div>
				<a href="#">优惠打折</a>
			</div>
		</div>
		<div class="ta1">
			<strong>配送与支付设置</strong>
			<div class="leftbgbt2"></div>
		</div>
		<div class="cdlist">
			<div>
				<a href="#">配送方式</a>
			</div>
			<div>
				<a href="#">支付方式</a>
			</div>
		</div>
		<div class="ta1">
			<strong>在线统计</strong>
			<div class="leftbgbt2"></div>
		</div>
		<div class="cdlist">
			<div>
				<a href="#">流量统计</a>
			</div>
			<div>
				<a href="#">销售额统计</a>
			</div>
		</div>
		<div class="ta1">
			<a href="${pageContext.request.contextPath}/product!allProduct"><strong>首页</strong></a>
			<div class="leftbgbt2"></div>
		</div>
	</div>
</div>