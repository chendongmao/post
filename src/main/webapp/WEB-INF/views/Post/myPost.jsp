<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
    <link href="${pageContext.request.contextPath}/static/showPost/css/bootstrap.min.css" type="text/css" rel="stylesheet" charset="utf-8" >
    <link href="${pageContext.request.contextPath}/static/showPost/css/style.css" type="text/css" rel="stylesheet" charset="utf-8">
    <%--bookstarp--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<p align="right">
    欢迎${User.uName}
    <a  class="btn btn-primary" href="${pageContext.request.contextPath}/outLogin">注销</a>
</p>
<section class="container user-select">
    <!--/超小屏幕可见-->
    <div class="content-wrap"><!--内容-->
        <div class="content">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">


                <div class="content-block new-content">
                    <h2 class="title"><strong>我的帖子</strong></h2>
                    <div class="row">
<c:forEach items="${pageInfo.list }" var="emp">

                        <div class="news-list">
                            <div class="news-img col-xs-5 col-sm-5 col-md-4"> <a target="_blank" href="${pageContext.request.contextPath}/searchMyPost?pId=${emp.pId}"><img  src="${pageContext.request.contextPath}/static/back/images/logo.jpg" alt=""> </a> </div>
                            <div class="news-info col-xs-7 col-sm-7 col-md-8">
                                <dl>
                                    <dt> <a href="${pageContext.request.contextPath}/searchMyPost?pId=${emp.pId}" target="_blank" > ${emp.pTitle } </a> </dt>
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
                    <!-- 显示分页信息 -->
                    <div class="row">
                        <!--分页文字信息  -->
                        <div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
                            页,总 ${pageInfo.total } 条记录</div>
                        <!-- 分页条信息 -->
                        <div class="col-md-6">
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <li><a href="${APP_PATH }/myPost?pn=1">首页</a></li>
                                    <c:if test="${pageInfo.hasPreviousPage }">
                                        <li><a href="${APP_PATH }/myPost?pn=${pageInfo.pageNum-1}"
                                               aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                                        </a></li>
                                    </c:if>


                                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                                        <c:if test="${page_Num == pageInfo.pageNum }">
                                            <li class="active"><a href="#">${page_Num }</a></li>
                                        </c:if>
                                        <c:if test="${page_Num != pageInfo.pageNum }">
                                            <li><a href="${APP_PATH }/myPost?pn=${page_Num }">${page_Num }</a></li>
                                        </c:if>

                                    </c:forEach>
                                    <c:if test="${pageInfo.hasNextPage }">
                                        <li><a href="${APP_PATH }/myPost?pn=${pageInfo.pageNum+1 }"
                                               aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                                        </a></li>
                                    </c:if>
                                    <li><a href="${APP_PATH }/myPost?pn=${pageInfo.pages}">末页</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
