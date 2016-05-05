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

				<h2 class="mbx">商品信息 &gt; 添加商品 &nbsp;&nbsp;&nbsp;</h2>
				<div class="cztable">
					<form action="${pageContext.request.contextPath}/product!change_product"
						method="post">
						<table align="center" width="auto" cellpadding="0" cellspacing="0">
							<tr>
								<td align="right" width="auto">编号：</td>
								<td><input type="text" name="product.product_id"
									value="${request.detail.product_id}" readonly="readonly" /></td>
							</tr>
							<tr>
								<td align="right" width="auto">商品编号：</td>
								<td><input type="text" name="product.product_number"
									value="${request.detail.product_number}" /></td>
							</tr>
							<tr>
								<td align="right" width="90">商品名称：</td>
								<td><input type="text" name="product.product_name"
									value="${request.detail.product_name}" /></td>
							</tr>
							<tr>
								<td align="right">商品类别：</td>
								<td><select name="product.product_type">
										<c:forEach items="${request.typelist }" var="s">
											<option value="${s.type_name }">${s.type_name}</option>
										</c:forEach>
								</select></td>
							</tr>
							<tr>
								<td align="right">商品数量：</td>
								<td><input type="text" name="product.product_amount"
									value="${request.detail.product_amount}" /></td>
							</tr>
							<tr>
								<td align="right">商品价格：</td>
								<td><input type="text" name="product.product_price"
									value="${request.detail.product_price}" /></td>
							</tr>
							<tr>
								<td align="right">商品简介：</td>
								<td colspan="2"><input type="text"
									name="product.product_remark"
									value="${request.detail.product_remark}" /></td>
							</tr>
							<s:file label="商品图片" name="file_path" />
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
