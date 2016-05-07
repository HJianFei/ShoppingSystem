<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="top-main">
	<img src="img/logo.gif" />
	<div class="search-wrapper">
		<form
			action="${pageContext.request.contextPath}/product!findWithType?flag=info">
			<div class="search-box">
				<div data-toggle="arrowdown" id="arrow8" class="search-toggle">
					宝贝<span class="down-icon"></span>
				</div>
				<input class="search-in" name="product_name" type="text" placeholder="     输入搜索">
				<input type="hidden" name="flag" value="info">
				<input type="submit" class="search-but" value="搜索">
			</div>
		</form>
		<!--other-search-->
		<div class="other-search">
			<a href="#">智能手机</a> <a href="#">体育用品</a> <a href="#">滑雪工具</a> <a
				href="#">风衣</a> <a href="#">童装</a> <a href="#">运动套装</a> <a href="#">蚊帐</a>
			<a href="#" class="more-other">更多<i class="fa fa-angle-right"></i></a>
		</div>
	</div>
	<!--two-code-->
	<div class="two-code">
		<h3>关注我们</h3>
		<img src="img/mywx.png" />
		<div class="close-code">
			<i class="fa fa-times"></i>
		</div>
	</div>
</div>