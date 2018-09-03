
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>首页</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <script type="text/javascript"
            src="${APP_PATH }/static/js/jquery-1.12.4.min.js">
    </script>
    <link
            href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Sentra HTML CSS Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

</head>
<body>
<p align="right">
    <a href="${pageContext.request.contextPath}/postList.jsp">返回</a>
</p>
<form  class="form-horizontal" action=" ${pageContext.request.contextPath }/toEdit.action" method="post">
    <div class="form-group">
        <h4>帖子标题：</h4>
            <%--<input  class="form-control" Name="pTitle" ${post.pTitle} placeholder="主题">--%>

        <textfield Name="pTitle" label="Name">${post.pTitle}</textfield>
        </div>
    </div>
    <h4> 帖子内容:</h4>    <input type="hidden" Name="pId" value="${post.pId}"/>
    <input type="hidden" Name="puId" value="${post.puId}"/><br>
    <textarea class="form-control" rows="5"Name="pContent" placeholder="编辑帖子"> ${post.pContent}</textarea>
    <button type="submit" class="btn btn-primary btn btn-primary btn-sm ">修改</button>
</form>

</body>
</html>
