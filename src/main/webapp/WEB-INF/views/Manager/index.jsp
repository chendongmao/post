<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/amazeui.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/admin.css">
	<style>
		.admin-main{
			padding-top: 0px;
		}
	</style>
</head>
<body>
<div class="am-cf admin-main">
	<!-- sidebar start -->
	<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">

		<ul class="am-list admin-sidebar-list">
			<li>

			<li class="admin-parent">
				<a class="am-cf"  href="${pageContext.request.contextPath}/searchUsers" target="right"  ><span class="am-icon-file"></span>用户管理<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>

			</li>
			<li class="admin-parent">
				<a class="am-cf" href="role.jsp"  target="right" ><span class="am-icon-file"></span> 角色管理<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>

			</li>
		</ul>

	</div>

	<!-- content start -->
	<div class="admin-content">
		<div class="admin-content-body">
			<iframe src="${pageContext.request.contextPath}/searchUsers"width="100%" height="1100" name="right" style="border: none;"></iframe>
		</div>s
	</div>
</div>
</div>
</body>

</html>
























































































<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
		 <%--pageEncoding="UTF-8"%>--%>
<%--<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%--<%--%>
	<%--request.setAttribute("APP_PATH",request.getContextPath());--%>
<%--%>--%>

<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>

<%--<html>--%>

	<%--<head>--%>
		<%--<meta charset="utf-8" />--%>
		<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/amazeui.min.css">--%>
		<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/admin.css">--%>
		<%--<link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/app.css">--%>

		 <%--<style>--%>
		 	<%--.admin-main{--%>
		 		<%--padding-top: 0px;--%>
		 	<%--}--%>
		 <%--</style>--%>
	<%--</head>--%>
	<%--<body>--%>


			<%--<header class="am-topbar am-topbar-inverse admin-header">--%>
				<%--<div class="am-topbar-brand">--%>
					<%--<strong>后台</strong> <small>管理系统</small>--%>
				<%--</div>--%>
				<%--<button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}">--%>
			<%--<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>--%>
		<%--</button>--%>
				<%--<div class="am-collapse am-topbar-collapse" id="topbar-collapse">--%>

					<%--<ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">--%>
						<%--<li>--%>
							<%--<a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span> </a>--%>
						<%--</li>--%>
						<%--<li class="am-dropdown" data-am-dropdown="">--%>
							<%--<a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;"> <span class="am-icon-users"></span> admin<span class="am-icon-caret-down"></span>--%>
							<%--</a>--%>
							<%--<ul class="am-dropdown-content">--%>
								<%--<li onclick="updatePwd('修改密码',2)">--%>
									<%--<a href="javascript:void(0)"><span class="am-icon-cog"></span> 修改密码</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="account/logOut.action"><span class="am-icon-power-off"></span> 退出--%>
									<%--</a>--%>
								<%--</li>--%>
							<%--</ul>--%>
						<%--</li>--%>
						<%--<li class="am-hide-sm-only">--%>
							<%--<a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span>--%>
								<%--<span class="admin-fullText">开启全屏</span> </a>--%>
						<%--</li>--%>
					<%--</ul>--%>
				<%--</div>--%>
			<%--</header>--%>

			<%--<div class="am-cf admin-main">--%>
				<%--<!-- sidebar start -->--%>
				<%--<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">--%>
					<%--<div class="am-offcanvas-bar admin-offcanvas-bar">--%>
						<%--<ul class="am-list admin-sidebar-list">--%>
							<%--<li>--%>
								<%--<a href="admin-index.html"><span class="am-icon-home"> 首页</span>--%>
									<%--<li class="admin-parent">--%>
										<%--<a class="am-cf" href="depart.jsp" target="right"  ><span class="am-icon-file"></span> 部门管理<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>--%>

									<%--</li>--%>
									<%--<li class="admin-parent">--%>
										<%--<a class="am-cf" href="${pageContext.request.contextPath}/text.jsp" target="right" ><span class="am-icon-file"></span> 角色管理<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>--%>

									<%--</li>--%>

									<%--<li class="admin-parent">--%>
										<%--<a class="am-cf"  href="user.html" target="right"><span class="am-icon-file"></span> 用户管理<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>--%>

									<%--</li>--%>

									<%--<li class="admin-parent">--%>
										<%--<a class="am-cf" href="schedule.jsp" target="right"><span class="am-icon-file"></span> 日程管理<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>--%>

									<%--</li>--%>


									<%--<li class="admin-parent">--%>
										<%--<a class="am-cf" href="charts-1.jsp" target="right"><span class="am-icon-file"></span> 统计报表<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>--%>

									<%--</li>--%>


									<%--<li class="admin-parent">--%>
										<%--<a class="am-cf" href="updatePwd.jsp" target="right" ><span class="am-icon-file"></span> 修改密码<span class="am-icon-angle-right am-fr am-margin-right"></span> </a>--%>

									<%--</li>--%>
						<%--</ul>--%>




<%--<div class="am-panel am-panel-default admin-sidebar-panel">--%>
							<%--<div class="am-panel-bd">--%>
								<%--<p>--%>
									<%--<span class="am-icon-bookmark"></span> 公告--%>
								<%--</p>--%>
								<%--<p>欢迎使用管理系统</p>--%>
							<%--</div>--%>
						<%--</div>--%>


					<%--</div>--%>
				<%--</div>--%>
				<%--<!-- sidebar end -->--%>

				<%--&lt;%&ndash;开始页面&ndash;%&gt;--%>
				<%--<!-- content start -->--%>
				<%--<div class="admin-content">--%>
					<%--<div class="admin-content-body">--%>
						<%--<iframe  src="${pageContext.request.contextPath}/toTex"--%>
								 <%--width="100%" height="1100" name="right" style="border: none;"></iframe>--%>
					<%--</div>--%>
				<%--</div>--%>


			<%--</div>--%>
			<%--<!-- content end -->--%>

			<%--</div>--%>

			<%--<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>--%>

			<%--<footer>--%>
				<%--<hr>--%>
				<%--<p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>--%>
			<%--</footer>--%>

			<%--<!--[if lt IE 9]>--%>
<%--<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>--%>
<%--<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>--%>
<%--<script src="assets/js/amazeui.ie8polyfill.min.js"></script>--%>
<%--<![endif]-->--%>

			<%--<!--[if (gte IE 9)|!(IE)]><!-->--%>
			<%--<script src="${pageContext.request.contextPath}/static/back/js/jquery-1.11.3.min.js"></script>--%>
			<%--<!--<![endif]-->--%>
			<%--<script src="${pageContext.request.contextPath}/static/back/js/amazeui.min.js"></script>--%>
			<%--<script src="${pageContext.request.contextPath}/static/back/js/app.js"></script>--%>
			<%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/back/myplugs/js/plugs.js"></script>--%>
			<%--<script type="text/javascript">--%>
				<%--//添加编辑弹出层--%>
				<%--function updatePwd(title, id) {--%>
					<%--$.jq_Panel({--%>
						<%--title: title,--%>
						<%--iframeWidth: 500,--%>
						<%--iframeHeight: 300,--%>
						<%--url: "updatePwd.jsp"--%>
					<%--});--%>
				<%--}--%>
			<%--</script>--%>
			<%--</body>--%>
<%--</html>--%>




