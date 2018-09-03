<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta charset="UTF-8">
	<title></title>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/amazeui.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/admin.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/app.css">
	<style>
		.admin-main {
			padding-top: 0px;
		}
	</style>
</head>

<body>

<div class="am-cf admin-main">
	<!-- content start -->
	<div class="admin-content">
		<div class="admin-content-body">
			<div class="am-g">
				<form class="am-form am-form-horizontal" action="role/addroleSubmit.action" method="post" style="padding-top: 30px;">
					<input value="504" name="roleId" type="hidden">
					<div class="am-form-group">
						<label  class="am-u-sm-3 am-form-label">
							用户名
						</label>
						<div class="am-u-sm-9">
							<input  required="" placeholder="请输入用户名" value="" name="userName" type="text">
							${User.uName}
							<small i>输入用户名。</small>
						</div>
					</div>
					<div class="am-form-group">
						<label  class="am-u-sm-3 am-form-label">
							密码
						</label>
						<div class="am-u-sm-9">
							<input  required="" placeholder="请输入密码" value="" name="name" type="text">
							${User.uPassword}
							<small >输入密码。</small>
						</div>
					</div>

					<div class="am-form-group">
						<label  class="am-u-sm-3 am-form-label">
							邮箱
						</label>
						<div class="am-u-sm-9">
							<input  required="" placeholder="请输入邮箱" value="" name="email" type="text">
							${User.uEmail}
							<small >输入邮箱。</small>
						</div>
					</div>

					<div class="am-form-group">
						<label class="am-u-sm-3 am-form-label">
							手机
						</label>
						<div class="am-u-sm-9">
							<input  required="" placeholder="请输入手机号" value="" name="email" type="text">
							${User.uMopile}
							<small >输入手机。</small>
						</div>
					</div>




					<div class="am-form-group">
						<div class="am-u-sm-9 am-u-sm-push-3">
							<input id="addRole" class="am-btn am-btn-success" value="编辑用户" type="button">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>

</html>