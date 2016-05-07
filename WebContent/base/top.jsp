<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="top-wrapper">
	<div class="top-info">
		<div class="top-left">
			<div data-toggle="arrowdown" id="arrow1" class="user-name">
				<a href="#">我的信息</a> <span class="down-icon"></span>
			</div>
			<div data-toggle="arrowdown" id="arrow2" class="msg-info">
				<i class="fa fa-envelope fa-gray"></i> <a href="#">消息</a> <span
					class="down-icon"></span>
			</div>
			<a class="a-float-left" href="#">手机淘宝</a> <img height="34px"
				a-float-left src="img/qqq.gif" />
			<!--hidden-box-->
			<div data-toggle="hidden-box" id="nav-box1" class="user-box">
				<img class="my-head"
					src="${pageContext.request.contextPath}/img/user-head.jpg" />
				<div class="my-grow">
					<h1>
						<a
							href="${pageContext.request.contextPath}/user!tochange_user?user_id=${sessionScope.user_id}&flag=info">账号管理</a>&nbsp;|&nbsp;<a
							href="${pageContext.request.contextPath}/user/user_remove_session.jsp">退出</a>
					</h1>
				</div>

			</div>
			<div data-toggle="hidden-box" id="nav-box2" class="msg-box"></div>
		</div>
		<!--top-right-->
		<div class="top-right">
			<div data-toggle="arrowdown" id="arrow3" class="user-name">
				<a
					href="${pageContext.request.contextPath}/orders!MyOrders?orders.users_id=${sessionScope.user_id}">我的订单</a>
				<span class="down-icon"></span>
			</div>
			<div data-toggle="arrowdown" id="arrow4" class="user-name">
				<i class="fa fa-shopping-cart fa-orange"></i> <a
					href="${pageContext.request.contextPath}/product!goToCart">购物车</a>
				<span class="down-icon"></span>
			</div>
		</div>
	</div>
	<!--scroll-top-->
	<div class="scroll-search">
		<div class="search-litter">
			<img class="scroll-logo" src="img/logo.png" />
			<!--scroll-search-->
			<form
				action="${pageContext.request.contextPath}/product!findWithType?flag=info">
				<div class="search-wrapper-scroll">
					<div class="search-box-scroll">
						<div data-toggle="arrowdown" id="arrow9"
							class="search-toggle-scroll">
							宝贝<span class="down-icon"></span>
						</div>
						<input class="search-in-scroll" name="product_name" type="text" placeholder="    输入搜索" />
						<input type="hidden" name="flag" value="info"/>
						<input type="submit" class="search-but-scroll" value="搜索">
					</div>
				</div>
			</form>
		</div>
	</div>
</div>