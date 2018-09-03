<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <%--分页配置--%>
    <script type="text/javascript" src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
    <link href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>



    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/amazeui.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/admin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/back/css/app.css">
</head>

<body>

<div class="am-cf admin-main" >
    <!-- content start -->
    <div class="admin-content">
        <div class="admin-content-body">

            <p class="container" style="padding: 50px 10px 0px 10px">
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <button type="button" class="am-btn am-btn-default btnAdd">
                                    <span class="icon-plus"></span> 导入表
                                </button>
                                <button type="button" class="am-btn am-btn-default btnOut">
                                    <span class="icon-plus"></span> 导出表
                                </button>

                                <%--<button type="button" class="am-btn am-btn-default" id="btnremove" onclick="delAll()">--%>
                                    <%--<span class="icon-trash"></span> 导出表--%>
                                <%--</button>--%>
                            </div>
                        </div>
                    </div>
                </div>


                <form class="navbar-form navbar-center" action=" ${pageContext.request.contextPath }/ManagerSearchUser" method="post">
                    <div class="form-group">
                        <input type="text" name="uName"  placeholder="请输入用户姓名">
                    </div>
                    <button type="submit" class=" btn btn-info">搜索</button>
                </form>
                <br>




            <%--主页显示--%>
            <c:if test="${pageInfo.list!=null}">
            <div class="am-g" style="margin-top: -30px;">
                <div class="am-u-sm-12">
                    <form class="am-form" action="user/delAll.action">
                        <table class="am-table am-table-striped am-table-hover table-main">
                            <thead>
                            <tr>
                                <th class="table-check">
                                    <input type="checkbox">
                                </th>
                                <th class="table-id">
                                    ID
                                </th>
                                <th>
                                    用户名
                                </th>
                                <th class="table-title">
                                    密码
                                </th>

                                <th>
                                    手机
                                </th>
                                <th>
                                    邮箱
                                </th>
                                <th class="table-set">
                                    操作
                                </th>
                            </tr>
                            </thead>

                            <c:forEach items="${pageInfo.list }" var="emp">
                            <tbody id="tUser">
                            <tr>
                                <td><input name="ids" value="1" type="checkbox"></td>
                                <td>${emp.uId}</td>
                                <td>${emp.uName}</td>
                                <td>
                                    <a href="#">${emp.uPassword}</a>
                                </td>

                                <td>${emp.uMopile}</td>
                                <td>${emp.uEmail}</td>
                                <td>
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs"><button type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary btnEdit"><span class="am-icon-pencil-square-o"></span> 编辑</button><button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(1,1)"><span class="am-icon-trash-o"></span> 删除</button></div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                            </c:forEach>

                        </table>

                    </form>

                    <!-- 显示分页信息 -->
                    <div class="row">
                        <!--分页文字信息  -->
                        <div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
                            页,总 ${pageInfo.total } 条记录</div>
                        <!-- 分页条信息 -->
                        <div class="col-md-6">
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <li><a href="${APP_PATH }/searchUsers?pn=1">首页</a></li>
                                    <c:if test="${pageInfo.hasPreviousPage }">
                                        <li><a href="${APP_PATH }/searchUsers?pn=${pageInfo.pageNum-1}"
                                               aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                                        </a></li>
                                    </c:if>


                                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                                        <c:if test="${page_Num == pageInfo.pageNum }">
                                            <li class="active"><a href="#">${page_Num }</a></li>
                                        </c:if>
                                        <c:if test="${page_Num != pageInfo.pageNum }">
                                            <li><a href="${APP_PATH }/searchUsers?pn=${page_Num }">${page_Num }</a></li>
                                        </c:if>

                                    </c:forEach>
                                    <c:if test="${pageInfo.hasNextPage }">
                                        <li><a href="${APP_PATH }/searchUsers?pn=${pageInfo.pageNum+1 }"
                                               aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                                        </a></li>
                                    </c:if>
                                    <li><a href="${APP_PATH }/searchUsers?pn=${pageInfo.pages}">末页</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            </c:if>

            <%--查询显示--%>
            <c:if test="${User.list!=null}">
                <div class="am-g" style="margin-top: -30px;">
                    <div class="am-u-sm-12">
                        <form class="am-form" action="user/delAll.action">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-check">
                                        <input id="chkAll" type="checkbox">
                                    </th>
                                    <th class="table-id">
                                        ID
                                    </th>
                                    <th>
                                        用户名
                                    </th>
                                    <th class="table-title">
                                        密码
                                    </th>

                                    <th>
                                        手机
                                    </th>
                                    <th>
                                        邮箱
                                    </th>
                                    <th class="table-set">
                                        操作
                                    </th>
                                </tr>
                                </thead>

                                <c:forEach items="${User.list }" var="emp">
                                    <tbody id="tUser">
                                    <tr>
                                        <td><input name="ids" value="1" type="checkbox"></td>
                                        <td>${emp.uId}</td>
                                        <td>${emp.uName}</td>
                                        <td>
                                            <a href="#">${emp.uPassword}</a>
                                        </td>

                                        <td>${emp.uMopile}</td>
                                        <td>${emp.uEmail}</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button type="button" class="am-btn am-btn-default am-btn-xs am-text-secondary btnEdit"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                    <button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="delUser(1,1)"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </c:forEach>

                            </table>
                        </form>
                    </div>
                </div>
            </c:if>



        </div>

    </div>
    <!-- content end -->
</div>


<script src="${pageContext.request.contextPath}/static/back/js/jquery-1.11.3.min.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/back/myplugs/js/plugs.js"></script>
<script>
    $(function() {

        $(".btnEdit").click(function() {

            $.jq_Panel({
                title: "编辑用户",

                url: "${pageContext.request.contextPath}/addUser",
                iframeWidth: 500,
                iframeHeight:400,
            });
        });

        $(".btnAdd").click(function() {

            $.jq_Panel({
                title: "导入用户信息表",
                url: "${pageContext.request.contextPath}/addFace",
                iframeWidth: 500,
                iframeHeight:200,
            });
        });

        $(".btnOut").click(function() {

            $.jq_Panel({
                title: "导出表",
                url: "${pageContext.request.contextPath}/exportExcel",
//                iframeWidth: 500,
//                iframeHeight:200,
            });
            alert("成功导出")
        });

    });
</script>
</body>
</html>