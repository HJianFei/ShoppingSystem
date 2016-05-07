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
<title>会员登陆</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/user!login"
		method="post">
		<table>
			<tbody>
				<tr>
					<td>用户邮箱：</td>
					<td><input type="text" name="user.user_email" /></td>
				</tr>
				<tr>
					<td>用户密码：</td>
					<td><input type="password" name="user.user_pass" /></td>
				</tr>
				<tr>
					<td align="center"><input type="submit" value="登录" /></td>
					<td  align="center"><a href="${pageContext.request.contextPath}/user/user_register.jsp"><input type="button" value="注册" /></a></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>
