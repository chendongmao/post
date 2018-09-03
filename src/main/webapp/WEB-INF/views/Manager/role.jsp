
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setAttribute("APP_PATH",request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>

		<link rel="stylesheet" href="${APP_PATH}/css/amazeui.min.css">
		<link rel="stylesheet" href="${APP_PATH}/css/admin.css">
		<link rel="stylesheet" href="${APP_PATH}/css/app.css">
	</head>

	<body>

		<div class="am-cf admin-main" >
			<!-- content start -->
			<div class="admin-content">
				<div class="admin-content-body">
				
					<div class="container" style="padding: 50px 10px 0px 10px">
						<div class="am-g">
							<div class="am-u-sm-12 am-u-md-6">
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs">
							
									<button type="button" class="am-btn am-btn-default btnAdd">
										<span class="icon-plus"></span> 新增
									</button>
                               
									</div>
								</div>
							</div>
							<div class="am-u-sm-12 am-u-md-3">
								<div class="am-input-group am-input-group-sm">
									<input id="roleName" class="am-form-field" placeholder="请输入角色名称" type="text">
									<span class="am-input-group-btn">
									<button class="am-btn am-btn-default" type="button" id="btnsearch">
										搜索
									</button> </span>
								</div>
							</div>
						</div>

						<div class="am-g" style="margin-top: 5px;">
							<div class="am-u-sm-12">
								<form class="am-form">
									<table class="am-table am-table-striped am-table-hover table-main">
										<thead>
											<tr>
												<th class="table-id">
													<input id="chkAll" type="checkbox">
												</th>

												<th>
													角色名称
												</th>
												<th class="table-title">
													角色描述
												</th>

												<th class="table-set">
													操作
												</th>
											</tr>
										</thead>
										<tbody id="tUser">
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
											<tr>
												<td><input name="chks" value="701" type="checkbox"></td>
												<td>
													<a href="javascript:void(0)">超级管理员</a>
												</td>
												<td>拥有所有权限</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs"><button type="button" id="role_701" class="am-btn am-btn-default am-btn-xs am-text-secondary btnedit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" onclick="sharesysfun(701);" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 分配权限</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(701,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
									
								</form>
							</div>
						</div>
					</div>

				</div>
				<!-- content end -->
			</div>
		</div>

		<!--[if (gte IE 9)|!(IE)]><!-->
		<script src="${APP_PATH}/js/jquery-1.11.3.min.js"></script>
		<!--<![endif]-->
		<script type="text/javascript" src="myplugs/js/plugs.js"></script>
		<script>
			$(function() {

						$(".btnedit").click(function() {

							$.jq_Panel({
								title: "修改角色",
								iframeWidth: 500,
								iframeHeight: 300,
								url: "editRole.html"
							});
						});
						
						 $(".btnAdd").click(function(){
						 	
						 	$.jq_Panel({
								title: "添加角色",
								iframeWidth: 500,
								iframeHeight: 300,
								url: "editRole.html"
							});
						 	
						});						
			});
		 function sharesysfun(id){
		 	location.href="shareRole.jsp";
		 }
		</script>
	</body>

</html>