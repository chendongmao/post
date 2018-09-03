<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/texPost/css/zerogrid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/texPost/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/texPost/css/responsive.css">
</head>
<body>
<div class="wrap-body zerogrid">

    <!--------------Content--------------->
    <section id="content">
        <div class="wrap-content">
            <div class="row block">
                <div id="main-content" class="col-2-3">
                    <div class="wrap-col">
                        <article>
                            <div class="heading">
                                <h2><a href="#">${post.pTitle}</a></h2>
                            </div>
                            <div class="content">
                                ${post.pContent}
                            </div>

                        </article>
                        <%--评论帖子    --%>
                        <%--<section>--%>
                            <%--<h3>评论</h3>--%>
                            <%--<form id="contact-form" action="${pageContext.request.contextPath }/newReply"  method="post">--%>
                                <%--<fieldset>--%>
                                    <%--<input type="hidden" name="pId" value="${post.pId}"/>--%>
                                    <%--<input type="hidden" name="uId" value="${post.puId}"/>--%>
                                    <%--<textarea    Name="rContent"  onBlur="if(this.value=='') this.value='我要跟帖'" onFocus="if(this.value =='我要跟帖' ) this.value=''">我要跟帖${post.puId}      哈哈哈哈      ${post.pId}</textarea>--%>
                                    <%--<div class="buttons">--%>
                                        <%--<a href="#" onClick="document.getElementById('contact-form').reset()">清空</a>--%>
                                        <%--<a href="#" type=”button” onClick="document.getElementById('contact-form').submit()">发表</a>--%>
                                    <%--</div>--%>
                                <%--</fieldset>--%>
                            <%--</form>--%>

                        <%--</section>--%>
                    </div>
                </div>

                <!--            src="images/zerotheme.jpg"-->
                <div id="sidebar" class="col-1-3">
                    <div class="wrap-col">
                        <div class="box">
                            <div class="heading"><h2>作者信息</h2></div>
                            <div class="content">
                                <a href="#" target="_blank"><img  src="${pageContext.request.contextPath}/static/texPost/images/img1.jpg"   style="border: 0px;"  /></a>
                                <p>姓名<a href="#">Zerotheme</a><br>点击量  ${post.pClick} <br>
                                    创建时间 ${post.pTime} <br>
                                </p>
                            </div>
                        </div>

                        <div class="box">
                            <div class="heading"><h2>帖子评论</h2></div>
                            <div class="content">
                                <c:forEach items="${pageInfo.list}" var="emp">
                                    <div class="post">
                                        <img src="${pageContext.request.contextPath}/static/texPost/images/img4.jpg" width="50px"/>
                                        <h4><a href="#">${emp.rContent}</a></h4>
                                        <p>${emp.rTime}</p>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
</body>
</html>