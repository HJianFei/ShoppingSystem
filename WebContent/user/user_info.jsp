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
<title>我的信息</title>
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
					<form
						action="${pageContext.request.contextPath}/user!update?flag=info"
						method="post">
						<table align="center" width="100%" cellpadding="1" cellspacing="1">
							<c:if test="${request.user!=null}">
								<tr>
									<td>会员编号：</td>
									<td><input type="text" name="user.user_id"
										value="${request.user.user_id}" readonly="readonly" /></td>
								</tr>
								<tr>
									<td>会员名称：</td>
									<td><input type="text" name="user.user_name"
										value="${request.user.user_name }" /></td>
								</tr>
								<tr>
									<td>会员密码：</td>
									<td><input type="text" name="user.user_pass"
										value="${request.user.user_pass }" /></td>
								</tr>
								<tr>
									<td>会员昵称：</td>
									<td><input type="text" name="user.user_nickname"
										value="${request.user.user_nickname}" /></td>
								</tr>
								<tr>
									<td>会员性别：</td>
									<td><input type="radio" name="user.user_sex" value="男"
										checked="checked" />男<input type="radio" name="user.user_sex"
										value="女" />女</td>
								</tr>
								<tr>
									<td>联系方式：</td>
									<td><input type="text" name="user.user_phone"
										value="${request.user.user_phone }" /></td>
								</tr>
								<tr>
									<td>会员邮箱：</td>
									<td><input type="text" name="user.user_email"
										value="${request.user.user_email }" /></td>
								</tr>
								<tr>
									<td>会员地址：</td>
									<td><input type="text" name="user.user_address"
										value="${request.user.user_address }" /></td>
								</tr>
								<tr>
									<td>备注：</td>
									<td><input type="text" name="user.user_remark"
										value="${request.user.user_remark }" /></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><input type="submit"
										value="提交" /><input type="reset" value="重置" /></td>
								</tr>
							</c:if>
						</table>
					</form>
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