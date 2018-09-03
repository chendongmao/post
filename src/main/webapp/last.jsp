<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
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
                                <h2><a href="#">Sed accumsan libero quis mi commodo et suscipit</a></h2>
                            </div>
                            <div class="content">
                                <!--							<img src="images/img1.jpg" width="100%"/>-->
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam. Cras fringilla magna. Phasellus suscipit, leo a pharetra condimentum, lorem tellus eleifend magna, eget fringilla velit magna id neque. Curabitur vel urna. In tristique orci porttitor ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</p>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam. Cras fringilla magna. Phasellus suscipit, leo a pharetra condimentum, lorem tellus eleifend magna, eget fringilla velit magna id neque. Curabitur vel urna. In tristique orci porttitor ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</p>

                            </div>

                        </article>
                   <%--评论帖子--%>
                        <section>
                            <h3>评论</h3>

                            <form id="contact-form" method="post">
                                <fieldset>
                                    <textarea onBlur="if(this.value=='') this.value='我要跟帖'" onFocus="if(this.value =='我要跟帖' ) this.value=''">我要跟帖</textarea>
                                    <div class="buttons">
                                        <a href="#" onClick="document.getElementById('contact-form').reset()">清空</a>
                                        <a href="#" onClick="document.getElementById('contact-form').submit()">发表</a>
                                    </div>
                                </fieldset>
                            </form>
                        </section>


                    </div>
                </div>

                <!--            src="images/zerotheme.jpg"-->
                <div id="sidebar" class="col-1-3">
                    <div class="wrap-col">
                        <div class="box">
                            <div class="heading"><h2>作者信息</h2></div>
                            <div class="content">
                                <a href="#" target="_blank"><img  src="${pageContext.request.contextPath}/static/texPost/images/img1.jpg"   style="border: 0px;"  /></a>
                                <p>Free Html5 Templates created by <a href="#">Zerotheme</a>. You can use and modify the template for both personal and commercial use. <br>You must keep all copyright information and credit links in the template and associated files.</p>
                            </div>
                        </div>

                        <div class="box">
                            <div class="heading"><h2>帖子评论</h2></div>
                            <div class="content">
                                <div class="post">
                                    <img src="${pageContext.request.contextPath}/static/texPost/images/img4.jpg" width="50px"/>
                                    <h4><a href="#">Lorem ipsum dolor sit</a></h4>
                                    <p>November 11 ,2012</p>
                                </div>
                                <div class="post">
                                    <img src="${pageContext.request.contextPath}/static/texPost/images/img5.jpg" width="50px"/>
                                    <h4><a href="#">Lorem ipsum dolor sit</a></h4>
                                    <p>November 11 ,2012</p>
                                </div>
                                <div class="post">
                                    <img src="${pageContext.request.contextPath}/static/texPost/images/img1.jpg" width="50px"/>
                                    <h4><a href="#">Lorem ipsum dolor sit</a></h4>
                                    <p>November 11 ,2012</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </section>

</div>
</body></html>
































































<%--<html>--%>
<%--<head>--%>
    <%--<link href="${pageContext.request.contextPath}/static/showPost/css/bootstrap.min.css" type="text/css" rel="stylesheet" charset="utf-8" >--%>
    <%--<link href="${pageContext.request.contextPath}/static/showPost/css/style.css" type="text/css" rel="stylesheet" charset="utf-8">--%>
    <%--&lt;%&ndash;bookstarp&ndash;%&gt;--%>
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.12.4.min.js"></script>--%>
    <%--<script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<section class="container user-select">--%>
    <%--<!--/超小屏幕可见-->--%>
    <%--<div class="content-wrap"><!--内容-->--%>
        <%--<div class="content">--%>
            <%--<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">--%>

                <%--<div class="content-block new-content">--%>
                    <%--<h2 class="title"><strong>最新推荐</strong></h2>--%>
                    <%--<div class="row">--%>


                        <%--<div class="news-list">--%>
                            <%--<div class="news-img col-xs-5 col-sm-5 col-md-4"> <a target="_blank" href=""><img  src="${pageContext.request.contextPath}/static/back/images/logo.jpg" alt=""> </a> </div>--%>
                            <%--<div class="news-info col-xs-7 col-sm-7 col-md-8">--%>
                                <%--<dl>--%>
                                    <%--<dt> <a href="" target="_blank" > 异清轩技术博客正式上线！ </a> </dt>--%>
                                    <%--<dd><span class="name"><a href="" title="由 异清轩 发布" rel="author">异清轩</a></span> <span class="identity"></span> <span class="time"> 2015-10-19 </span></dd>--%>
                                    <%--<dd class="text">欢迎来到异清轩技术博客，在这里可以看到网站前端和后端的技术，还有CMS内容管理系统，包括但不限于这些还有CMS内容管理系统，包括但不限于这些。</dd>--%>
                                <%--</dl>--%>
                                <%--<div class="news_bot col-sm-7 col-md-8"> <span class="tags visible-lg visible-md"> <a href="">本站</a> <a href="">异清轩</a> </span> <span class="look"> 共 <strong>2126</strong> 人围观，发现 <strong> 12 </strong> 个不明物体 </span> </div>--%>
                            <%--</div>--%>
                        <%--</div>--%>



                    <%--</div>--%>
                    <%--<div class="quotes" style="margin-top:15px"><span class="disabled">首页</span><span class="disabled">上一页</span><span class="current">1</span><a href="">2</a><a href="">下一页</a><a href="">尾页</a></div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</section>--%>
<%--</body>--%>
<%--</html>--%>




