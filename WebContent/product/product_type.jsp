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

	<jsp:include page="../base/banner.jsp" />
	<div class="page">
		<div class="box mtop">
			<jsp:include page="../base/left.jsp" />
			<div class="rightbox">

				<h2 class="mbx">商品信息 &gt; 商品分类</h2>
				<div class="cztable">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<th style="text-align: center;">序号</th>
							<th style="text-align: center;">类别</th>
							<th style="text-align: center;">操作</th>
						</tr>
						<!-- 显示查询信息 -->
						<c:if test="${request.typelist==null}">
							<tr style="height: 28px" class="tdbg" align="center">
								<td>暂无信息!</td>
								<td>暂无信息!</td>
								<td>暂无信息!</td>
							</tr>
						</c:if>
						<c:if test="${request.typelist!=null}">
							<c:forEach items="${typelist}" var="s">
								<tr align="center">
									<td>${s.type_id}</td>
									<td><a
										href="${pageContext.request.contextPath}/product!findWithType?product.product_type=${s.type_name}">${s.type_name}</a></td>
									<td><a
										onclick="if(confirm('确定删除?')) window.location='#<%-- ${pageContext.request.contextPath }/type!delete?type.type_id=${s.type_id} --%>';"
										style="cursor: pointer">删除</a></td>
								</tr>
							</c:forEach>
						</c:if>
						<tr style="height: 28px" class="tdbg" align="center">
							<td colspan="4" align="right"><a
								href="${pageContext.request.contextPath}/product/product_type_add.jsp"><input
									type="button" id="button2" value="添加类别" class="input2" /></a></td>
						</tr>
						<tr>
							<td colspan="11" align="center"><c:if
									test="${request.typelist != null }">
									<form
										action="${pageContext.request.contextPath }/type!allType"
										method="post">
										共${request.pagecount }页，当前第${request.pagenow }页<a
											href="${pageContext.request.contextPath }/type!allType?pagenow=1">
											第一页</a>&nbsp;<a
											href="${pageContext.request.contextPath }/type!allType?pagenow=${pagenow - 1}">上一页</a>&nbsp;
										<a
											href="${pageContext.request.contextPath }/type!allType?pagenow=${pagenow + 1}">下一页</a>&nbsp;
										<a
											href="${pageContext.request.contextPath }/type!allType?pagenow=${pagecount}">最后一页</a>转跳到
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
