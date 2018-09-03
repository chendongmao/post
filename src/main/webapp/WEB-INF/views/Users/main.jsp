
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title> 主页</title>
<%----%>
    <link href="${pageContext.request.contextPath}/static/showPost/css/bootstrap.min.css" type="text/css" rel="stylesheet" charset="utf-8" >
    <link href="${pageContext.request.contextPath}/static/showPost/css/style.css" type="text/css" rel="stylesheet" charset="utf-8">
    <%--bookstarp--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <%----%>

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

    <link rel="stylesheet" href="../../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="../../../css/fontAwesome.css">
    <link rel="stylesheet" href="../../../css/light-box.css">
    <link rel="stylesheet" href="../../../css/owl-carousel.css">
    <link rel="stylesheet" href="../../../css/templatemo-style.css">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    <script src="../../../js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

</head>
<body>
<!-- 上方导航栏 -->
<p align="right">

    <a  class="btn btn-primary" href="${pageContext.request.contextPath}/toUserLogin">登录</a>
    <a class="btn btn-primary" href="${pageContext.request.contextPath}/toRegister">注册</a>
</p>

<form class="navbar-form navbar-center" action=" ${pageContext.request.contextPath }/readerSearchPost.action" method="post">
    <div class="form-group">
        <input type="text" name="pTitle" class="form-control" placeholder="Search">
    </div>
    <button type="submit" class=" btn btn-info">搜索</button>
</form>

<c:if test="${pageInfo.list!=null}">
    <div class="content-block new-content">

        <div class="row">
            <c:forEach items="${pageInfo.list }" var="emp">
                <div class="news-list">
                    <div class="news-img col-xs-5 col-sm-5 col-md-4"> <a target="_blank" href="${pageContext.request.contextPath}/searchReaderPost?pId=${emp.pId}"><img  src="${pageContext.request.contextPath}/static/back/images/logo.jpg" alt=""> </a> </div>
                    <div class="news-info col-xs-7 col-sm-7 col-md-8">
                        <dl>
                            <dt> <a href="${pageContext.request.contextPath}/searchReaderPost?pId=${emp.pId}" target="_blank" > ${emp.pTitle } </a> </dt>
                            <dd><span class="name"></span> <span class="identity"></span> <span class="time"> ${emp.pTime } </span></dd>
                            <dd class="text">
                                    ${emp.pContent }
                            </dd>
                        </dl>
                        <div class="news_bot col-sm-7 col-md-8"> <span class="tags visible-lg visible-md">  </span> <span class="look"> 点击量<strong>${emp.pClick }</strong>  </span> </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</c:if>

<%--++++++++++++++++++++++++++++++++++++++++++++--%>
<c:if test="${Post.list!=null}">
<section id="blog" class="content-section">
    <div class="section-heading">
        <h1>贴吧<br><em>推荐</em></h1>
    </div>
    <div class="section-content">
        <div class="tabs-content">
            <div class="wrapper">
                <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                    <li><a href="#tab1" class="active">July 2018</a></li>
                    <li><a href="#tab1">June 2018</a></li>
                    <li><a href="#tab1">May 2018</a></li>
                    <li><a href="#tab1">April 2018</a></li>
                </ul>
                <section id="first-tab-group" class="tabgroup">
<c:forEach items="${Post.list}" var="emp">
                    <div id="tab1">
                        <ul>
                            <li>
                                <div class="item">
                                    <img src="../../../images/blog_1.jpg" alt="">
                                    <div class="text-content">
                                        <h4>${emp.pTitle }</h4>
                                        <span>创建时间${emp.pTime }</span>
                                        <p>  ${emp.pContent }</p>

                                        <div class="accent-button button">
                                            <a href="${pageContext.request.contextPath}/searchReaderPost?pId=${emp.pId}">Continue Reading</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
</c:forEach>
                </section>
                <%--++++++++++++++++++++++++++++++++++++++++++++++++++--%>
            </div>
        </div>
    </div>
</section>
</c:if>
</body>
</html>
