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
<script type="text/javascript">
	$().ready(function() {
		setStudMsgHeadTabCheck();
		showUnreadSysMsgCount();
	});

	//我的信息头部选项卡
	function setStudMsgHeadTabCheck() {
		var currentUrl = window.location.href;
		currentUrl = currentUrl.toLowerCase();
		var asmhm = "";
		$("#ulStudMsgHeadTab li").each(function() {
			asmhm = $(this).find('a').attr("href").toLowerCase();
			if (currentUrl.indexOf(asmhm) > 0) {
				$(this).find('a').attr("class", "tab1");
				return;
			}
		});
	}

	//显示未读系统信息
	function showUnreadSysMsgCount() {
		var unreadSysMsgCount = "0";
		if (Number(unreadSysMsgCount) > 0) {
			$("#unreadSysMsgCount").html("(" + unreadSysMsgCount + ")");
		}
	}

	//退出
	function loginOut() {
		if (confirm("确定退出吗？")) {
			StudentLogin.loginOut(function(data) {
				if (data == "true") {
					window.location = "/Login.aspx";
				} else {
					jBox.alert("退出失败！", "提示", new {
						buttons : {
							"确定" : true
						}
					});
				}
			});
		}
	}
	//更改报考类别
	function changeCateory(thisObj, id) {
		var oldCateoryId = $("#cateoryId").val();
		var cateoryId = "";
		if (id != null) {
			cateoryId = id;
		} else {
			cateoryId = thisObj.val();
		}
		var studentId = $("#studentId").val();
		if (cateoryId.length <= 0) {
			jBox.tip("报考类别不能为空！");
			if (id == null) {
				thisObj.val(oldCateoryId);
			}
		} else {
			studentInfo.changeStudentCateory(cateoryId, function(data) {
				var result = $.parseJSON(data);
				if ((String(result.ok) == "true")) {
					window.location.href = "/Index.aspx";
				} else {
					jBox.tip(result.message);
				}
			});
		}
	}
</script>

<script type="text/javascript">
	function returnIndex() {
		window.location = "/Index.aspx";
	}
	function showMsg(msg, obj) {
		jBox.tip(msg);
		$("#" + obj).focus();
	}
	function saveClick(studentId) {
		var Ctitle = $("#Ctitle").val(); //消息标题
		if (Ctitle == "" || Ctitle.length > 20) {
			showMsg("请您输入消息标题,且不超过20个字！", "Ctitle");
			return false;
		}
		var Ctype = $("#Ctype").val(); //消息类型
		if (Ctype == ("Unselected")) {
			showMsg("请您选择投诉类型！", "Ctype");
			return false;
		}
		var Ccontent = $("#Ccontent").val(); //消息内容
		if (Ccontent == "" || Ccontent.length > 80) {
			showMsg("请您输入消息内容，且不超过80个字！", "Ccontent");
			return false;
		}
		StudentCompain.insertCompain(studentId, Ctitle, Ctype, Ccontent,
				function(data) {
					var obj = $.parseJSON(data);
					if (obj.ok == true) {
						jBox.alert(obj.message, "提示");
						setTimeout(function() {
							window.location.reload();
						}, 1500);
					} else {
						jBox.tip(obj.message);
					}
				});
	}
</script>
</head>
<body>

	<jsp:include page="../base/banner.jsp" />
	<div class="page">
		<div class="box mtop">
			<jsp:include page="../base/left.jsp" />
			<div class="rightbox">

				<h2 class="mbx">商品信息 &gt; 商品分类&gt; 添加分类</h2>
				<div class="cztable">
					<form action="${pageContext.request.contextPath}/type!save" method="post">
						<table width="50%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th style="text-align: center;">类别</th>
								<th style="text-align: center;">操作</th>
							</tr>
							<tr style="height: 28px" class="tdbg" align="center">
								<td><input type="text" name="type.type_name"/></td>
								<td><input type="submit" value="添加" class="input2"
									id="button2" /></td>
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
