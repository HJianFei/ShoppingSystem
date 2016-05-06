<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="banner" >
	<div class="bgh">
		<div class="page">
			<div id="logo">
				<a href="Index.aspx.html"> <img
					src="${pageContext.request.contextPath}/Images/Student/logo.gif"
					alt="" width="165" height="48" />
				</a>
			</div>
			<div class="topxx">
				会员：${sessionScope.name}，欢迎您！ <a
					href="${pageContext.request.contextPath}/user!tochange_user?user_id=${sessionScope.user_id}&flag=info">我的信息</a>
				<a onclick="loginOut()" href="javascript:">安全退出</a>
			</div>
		</div>
	</div>
</div>