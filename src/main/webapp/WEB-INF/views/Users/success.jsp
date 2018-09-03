
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

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="css/fontAwesome.css">
    <link rel="stylesheet" href="css/light-box.css">
    <link rel="stylesheet" href="css/owl-carousel.css">
    <link rel="stylesheet" href="css/templatemo-style.css">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

</head>
<body>
<p align="right">
欢迎${User.uName}
<a  class="btn btn-primary" href="${pageContext.request.contextPath}/outLogin">注销</a>
</p>

<header class="nav-down responsive-nav hidden-lg hidden-md">
    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <!--/.navbar-header-->
    <div id="main-nav" class="collapse navbar-collapse">
        <nav>
            <ul class="nav navbar-nav">
                <li><a href="#top">首页</a></li>
                <li><a href="#featured">主页</a></li>
                <li><a href="#projects">进吧</a></li>
                <li><a href="#video">建吧</a></li>
                <li><a href="#blog">我的</a></li>
                <li><a href="#contact">消息</a></li>
            </ul>
        </nav>
    </div>
</header>

<div class="sidebar-navigation hidde-sm hidden-xs">
    <div class="logo">
        <a href="#">Sen<em>tra</em></a>
    </div>
    <nav>
        <ul>
            <li>
                <a href="#top">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    首页
                </a>
            </li>
            <li>
                <a href="#featured">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    主页
                </a>
            </li>
            <li>
                <a href="#projects">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    进吧
                </a>
            </li>
            <li>
                <a href="#video">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    建吧
                </a>
            </li>
            <li>
                <a href="#blog">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    我的
                </a>
            </li>
            <li>
                <a href="#contact">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    消息
                </a>
            </li>
        </ul>
    </nav>
    <ul class="social-icons">
        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a href="#"><i class="fa fa-rss"></i></a></li>
        <li><a href="#"><i class="fa fa-behance"></i></a></li>
    </ul>
</div>
<%--首页--%>
<div class="slider">
    <div class="Modern-Slider content-section" id="top">
        <!-- Item -->
        <div class="item item-1">
            <div class="img-fill">
                <div class="image"></div>
                <div class="info">
                    <div>
                        <h1>Beautiful Template<br>Sentra</h1>
                        <p>This is a HTML CSS template provided by
                            <a href="#" target="_blank">template</a> website.<br>
                            Please tell your friends about our site.</p>
                        <div class="white-button button">
                            <a href="#featured">Discover More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Item -->
        <!-- Item -->
        <div class="item item-2">
            <div class="img-fill">
                <div class="image"></div>
                <div class="info">
                    <div>
                        <h1>Lorem ipsum <br>dolor</h1>
                        <p>Phasellus luctus odio eget dui imperdiet, at pulvinar ante convallis.
                            <br>Proin sit amet fringilla erat.</p>

                        <div class="white-button button">
                            <a href="#featured">Discover More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Item -->
        <!-- Item -->
        <div class="item item-3">
            <div class="img-fill">
                <div class="image"></div>
                <div class="info">
                    <div>
                        <h1>Suspendisse suscipit<br>nulla sed</h1>
                        <p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices <br>posuere cubilia Curae; Sed at massa turpis.</p>

                        <div class="white-button button">
                            <a href="#featured">Discover More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Item -->
    </div>
</div>

<%--主页--%>
<div class="page-content">

    <section id="featured" class="content-section">
        <div class="section-heading">
            <h1>首页<br><em>贴吧</em></h1>
            <p>Curabitur hendrerit mauris mollis ipsum vulputate rutrum.
                <br>Phasellus luctus odio eget dui imperdiet.</p>
        </div>
        <div class="section-content">
            <div class="tabs-content">
                <div class="wrapper">

                    <form class="navbar-form navbar-center">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class=" btn btn-info">搜索</button>
                    </form>




                </div>
            </div>
        </div>
    </section>



    <section id="projects" class="content-section">
        <div class="section-heading">
            <h1>进入<br><em>贴吧</em></h1>
            <p>Curabitur hendrerit mauris mollis ipsum vulputate rutrum.
                <br>Phasellus luctus odio eget dui imperdiet.</p>
        </div>
        <div class="section-content">
            <div class="tabs-content">
                <div class="wrapper">
                    <div>br
                        <h1>到这里111</h1>
                        br
                    </div>


                    <div>br
                        <h1>到这里444</h1>
                        br
                    </div>
                </div>
            </div>
        </div>
    </section>




    <section id="video" class="content-section">
        <div class="section-heading">
            <h1>创建<br><em>贴子</em></h1>
            <p>Curabitur hendrerit mauris mollis ipsum vulputate rutrum.
                <br>Phasellus luctus odio eget dui imperdiet.</p>
        </div>
        <div class="section-content">
            <div class="tabs-content">
                <div class="wrapper">




                </div>
            </div>
        </div>
    </section>






    <section id="blog" class="content-section">
        <div class="section-heading">
            <h1>我的<br><em>贴吧</em></h1>
            <p>Curabitur hendrerit mauris mollis ipsum vulputate rutrum.
                <br>Phasellus luctus odio eget dui imperdiet.</p>
        </div>
        <div class="section-content">
            <div class="tabs-content">
                <div class="wrapper">

                    <a  href="${pageContext.request.contextPath}/searchPost" >帖子管理</a>
                    <br>
                    <a  href="${pageContext.request.contextPath}/myPost" >我的帖子</a>
                    <br>
                    <a  href="${pageContext.request.contextPath}/personalSet" >个人信息设置</a>
                     <br>
                    <a  href="${pageContext.request.contextPath}/headSet">头像设置</a>

                </div>
            </div>
        </div>
    </section>


    <section id="contact" class="content-section">
        <div class="section-heading">
            <h1>我的<br><em>消息</em></h1>
            <p>Curabitur hendrerit mauris mollis ipsum vulputate rutrum.
                <br>Phasellus luctus odio eget dui imperdiet.</p>
        </div>
        <div >

            <form  class="form-horizontal" action=" ${pageContext.request.contextPath }/creatPost.action" method="post">
                <div class="form-group">
                    <label  class="col-sm-2 control-label">帖子标题：</label>
                    <div class="col-sm-10">
                        <input  class="form-control" Name="pTitle" placeholder="主题">
                    </div>
                </div>
                                <h4> 帖子内容:</h4>                          <br>
                <textarea class="form-control" rows="5"Name="pContent" placeholder="编辑帖子"></textarea>
                <input type="hidden" Name="puId" value="${User.uId}"/>
                <button type="submit" class="btn btn-primary btn btn-primary btn-sm ">Submit</button>
            </form>


        </div>
    </section>








    <section class="footer">
        <p>Copyright &copy; 2018 Company Name . Design: <a href="" target="_blank">Sentra</a> More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
    </section>
</div>



<script src="https://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

<script src="js/vendor/bootstrap.min.js"></script>

<script src="js/plugins.js"></script>
<script src="js/main.js"></script>

<script>
    // Hide Header on on scroll down
    var didScroll;
    var lastScrollTop = 0;
    var delta = 5;
    var navbarHeight = $('header').outerHeight();

    $(window).scroll(function(event){
        didScroll = true;
    });

    setInterval(function() {
        if (didScroll) {
            hasScrolled();
            didScroll = false;
        }
    }, 250);

    function hasScrolled() {
        var st = $(this).scrollTop();

        // Make sure they scroll more than delta
        if(Math.abs(lastScrollTop - st) <= delta)
            return;

        // If they scrolled down and are past the navbar, add class .nav-up.
        // This is necessary so you never see what is "behind" the navbar.
        if (st > lastScrollTop && st > navbarHeight){
            // Scroll Down
            $('header').removeClass('nav-down').addClass('nav-up');
        } else {
            // Scroll Up
            if(st + $(window).height() < $(document).height()) {
                $('header').removeClass('nav-up').addClass('nav-down');
            }
        }

        lastScrollTop = st;
    }
</script>

<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>





</body>
</html>
