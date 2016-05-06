<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网上购物平台管理</title>
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

	<jsp:include page="../base/banner.jsp" />
	<div class="page">
		<div class="box mtop">
			<jsp:include page="../base/left.jsp" />
			<div class="rightbox">

				<h2 class="mbx">订单信息 &gt; 所有订单</h2>
				<div class="cztable">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<th style="text-align: center;">序号</th>
							<th style="text-align: center;">订单编号</th>
							<th style="text-align: center;">订单日期</th>
							<th style="text-align: center;">订单用户</th>
							<th style="text-align: center;">订单处理</th>
						</tr>
						<!-- 显示查询信息 -->
						<c:if test="${request.orderslist==null}">
							<tr style="height: 28px" class="tdbg" align="center">
								<td>暂无信息!</td>
								<td>暂无信息!</td>
								<td>暂无信息!</td>
								<td>暂无信息!</td>
								<td>暂无信息!</td>
							</tr>
						</c:if>
						<c:if test="${request.orderslist!=null}">
							<c:forEach items="${orderslist}" var="s">
								<tr align="center">
									<td>${s.orders_id}</td>
									<td>${s.orders_number}</td>
									<td>${s.orders_time}</td>
									<td>${s.user_name}</td>
									<c:if test='${s.orders_handler==0}'>
										<td><a class="aboutBook" href='#'>处理订单</a></td>
									</c:if>
									<c:if test='${s.orders_handler!=0}'>
										<td>----</td>
									</c:if>
								</tr>
							</c:forEach>
						</c:if>
						<tr>
							<td colspan="11" align="center"><c:if
									test="${request.orderslist != null }">
									<form
										action="${pageContext.request.contextPath }/orders!AllOrders"
										method="post">
										共${request.pagecount }页，当前第${request.pagenow }页<a
											href="${pageContext.request.contextPath }/orders!AllOrders?pagenow=1">
											第一页</a>&nbsp;<a
											href="${pageContext.request.contextPath }/orders!AllOrders?pagenow=${pagenow - 1}">上一页</a>&nbsp;
										<a
											href="${pageContext.request.contextPath }/orders!AllOrders?pagenow=${pagenow + 1}">下一页</a>&nbsp;
										<a
											href="${pageContext.request.contextPath }/orders!AllOrders?pagenow=${pagecount}">最后一页</a>转跳到
										<input type="text" maxlength="3" size="3" name="pagenow" />页<input
											style="height: 25px; width: auto; cursor: pointer"
											type="submit" value="转跳" />
									</form>
								</c:if></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="footer">
			<p>&copy;copyright 2012 广博教育 csgb.net 版权所有 站长统计</p>
		</div>
	</div>
</body>
</html>
