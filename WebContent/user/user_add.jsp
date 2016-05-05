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
<title>学生信息管理平台</title>
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

				<h2 class="mbx">会员信息 &gt; 添加会员 &nbsp;&nbsp;&nbsp;</h2>
				<div class="cztable">
					<form action="${pageContext.request.contextPath}/user!save"
						method="post">
						<table align="center" width="auto" cellpadding="0" cellspacing="0">
							<tr>
								<td align="right" width="auto">会员名称：</td>
								<td><input type="text" name="user.user_name" /></td>
							</tr>
							<tr>
								<td align="right" width="90">会员密码：</td>
								<td><input type="text" name="user.user_pass" /></td>
							</tr>
							<tr>
								<td align="right">会员昵称：</td>
								<td><input type="text" name="user.user_nickname" /></td>
							</tr>
							<tr>
								<td align="right">会员性别：</td>
								<td><input type="radio" name="user.user_sex" value="男" />男<input
									type="radio" name="user.user_sex" value="女"/>女</td>
							</tr>
							<tr>
								<td align="right">联系方式：</td>
								<td><input type="text" name="user.user_phone" /></td>
							</tr>
							<tr>
								<td align="right">会员邮箱：</td>
								<td><input type="text" name="user.user_email" /></td>
							</tr>
							<tr>
								<td align="right">会员地址：</td>
								<td colspan="2"><input type="text" name="user.user_address" /></td>
							</tr>
							<tr>
								<td align="right">备注：</td>
								<td colspan="2"><input type="text" name="user.user_remark" /></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									value="提交" /><input type="reset" value="重置" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
		<div class="footer">
			<p>&copy;copyright 2012 广博教育 csgb.net 版权所有 站长统计</p>
		</div>
	</div>
</body>
</html>
