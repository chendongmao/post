
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册表单</title>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //Meta-Tags -->

    <!-- Style --> <link rel="stylesheet" href="static/css/style1.css" type="text/css" media="all">
</head>
<body>
<h1>注册</h1>

<div class="container w3layouts agileits">
    <div class="register w3layouts agileits">
        <form action=" ${pageContext.request.contextPath }/register.action" method="post">
            <input type="text" Name="uName" placeholder="用户名" required="">
            <input type="text" Name="uEmail" placeholder="邮箱" required="">
            <input type="password" Name="uPassword" placeholder="密码" required="">
            <input type="text" Name="uMopile" placeholder="手机号码" required="">
            <div class="send-button w3layouts agileits">
                <input type="submit" value="注册">
            </div>
        </form>
        <%--<div class="send-button w3layouts agileits">--%>
        <%--<form>--%>
        <%--<input type="submit" value="注册">--%>
        <%--</form>--%>
        <%--</div>--%>
    </div>

</div>


</body>
</html>
