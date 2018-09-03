<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<!--webfonts-->
	<link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
	<!--//webfonts-->
	<script src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
</head>
<body>
<script>$(document).ready(function(c) {
    $('.close').on('click', function(c){
        $('.login-form').fadeOut('slow', function(c){
            $('.login-form').remove();
        });
    });
});
</script>
<!--SIGN UP-->
<h1>登录</h1>
<div class="login-form">
	<div class="close"> </div>
	<div class="head-info">
		<label class="lbl-1"> </label>
		<label class="lbl-2"> </label>
		<label class="lbl-3"> </label>
	</div>
	<div class="clear"> </div>
	<div class="avtar">
	<img src="images/avtar.png" />
</div>
	<form action=" ${pageContext.request.contextPath }/login.action" method="post">
		<input type="text" class="text" name="uName"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'uName';}" >
		<div class="key">
			<input type="password" name="uPassword" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'uPassword';}">
		</div>
		<div class="signin">
			<input type="submit" value="Login" >
		</div>
	</form>

</div>
<div class="copy-rights">
	<p>东软贴吧欢迎您！</p>
	<p>新的</p>
</div>

</body>
</html>