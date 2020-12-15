<%--
  Created by IntelliJ IDEA.
  User: markz
  Date: 2020/12/9
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Sentra - Free Bootstrap Theme 123</title>

    <!--

    Sentra Template

    https://templatemo.com/tm-518-sentra

    -->
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">

    <link rel="stylesheet" href="${cp}/index/css/bootstrap.min.css">
    <link rel="stylesheet" href="${cp}/index/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${cp}/index/css/fontAwesome.css">
    <link rel="stylesheet" href="${cp}/index/css/light-box.css">
    <link rel="stylesheet" href="${cp}/index/css/owl-carousel.css">
    <link rel="stylesheet" href="${cp}/index/css/templatemo-style.css">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    <script src="${cp}/js/jquery.min.js" type="text/javascript"></script>
    <script src="${cp}/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${cp}/js/layer.js" type="text/javascript"></script>

    <script src="${cp}/index/js/vendor/bootstrap.min.js"></script>
    <script src="${cp}/index/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <script src="${cp}/js/layer.js" type="text/javascript"></script>

    <script src="${cp}/index/js/plugins.js"></script>
    <script src="${cp}/index/js/main.js"></script>

</head>

<body>

<jsp:include page="include/header.jsp"/>

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
                <li><a href="#top">Edward Hopper</a></li>
                <li><a href="#featured">Claude Monet</a></li>
                <li><a href="#projects">Salvador Dalí</a></li>
                <li><a href="#video">Vincent van Gogh</a></li>
                <li><a href="#video">Paul Cézanne</a></li>
                <li><a href="#blog">Pablo Picasso</a></li>
                <li><a href="#contact">Peter Paul Rubens</a></li>
            </ul>
        </nav>
    </div>
</header>

<div class="sidebar-navigation hidde-sm hidden-xs">
    <div class="logo">
        <a href="#">Art<em>U</em></a>
<%--        <a><input style="width: 100%;--%>
<%--        background-color: transparent;--%>
<%--        margin-top: 50px;--%>
<%--        height: 60px; border-color: white; border-width: thin;" type="text" name="name"</a>--%>
    </div>
<%--    <div class="search" style="margin-top: 70%; margin-left: 10%; margin-right: 3%">--%>
<%--        <input type="text"--%>
<%--               style="width: 70%;--%>
<%--               height: 60px;--%>
<%--               border-color: white;--%>
<%--               border-width: thin;--%>
<%--               background-color: transparent;--%>
<%--               border-width: medium;--%>
<%--               color: white;--%>
<%--               font-weight: bold;"--%>
<%--               placeholder="Search Art Now" name="" id="searchKeyWord" value="" />--%>
<%--        <button style="width: 20%; height: 60px; font-weight: bold; font-family: Arial" onclick="searchProductI()">search</button>--%>
<%--    </div>--%>
    <nav>
        <ul>
            <li>
                <a href="#project1">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Edward Hopper
                </a>
            </li>
            <li>
                <a href="#project2">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Claude Monet
                </a>
            </li>
            <li>
                <a href="#project3">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Salvador Dalí
                </a>
            </li>
            <li>
                <a href="#project4">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Vincent van Gogh
                </a>
            </li>
            <li>
                <a href="#project5">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Paul Cézanne
                </a>
            </li>
            <li>
                <a href="#project6">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Pablo Picasso
                </a>
            </li>
            <li>
                <a href="#project7">
                    <span class="rect"></span>
                    <span class="circle"></span>
                    Peter Paul Rubens
                </a>
            </li>
        </ul>
    </nav>
</div>

<div class="slider">
    <div class="Modern-Slider content-section" id="top">
        <!-- Item -->
        <div class="item item-1">
            <div class="img-fill">
                <div class="image" style="background-image: url(${cp}/index/img/slide_1.jpg);"></div>
                <div class="info">
                    <div>
                        <h1>Water Lilies</h1>
                        <p>Claude Monet (1840-1926)</p>
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
                <div class="image" style="background-image: url(${cp}/index/img/slide_2.jpg);"></div>
                <div class="info">
                    <div>
                        <h1>Office in a Small City</h1>
                        <p>Edward Hopper (1882-1967)</p>

                        <div class="white-button button">
                            <a href="#featured">Share More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Item -->
        <!-- Item -->
        <div class="item item-3">
            <div class="img-fill">
                <div class="image" style="background-image: url(${cp}/index/img/slide_3.jpg);"></div>
                <div class="info">
                    <div>
                        <h1>Almond Blossom</h1>
                        <p>Vincent van Gogh (1853-1890)</p>

                        <div class="white-button button">
                            <a href="#featured">Learn More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- // Item -->
    </div>
</div>


<div class="page-content">
    <section id="projects" class="content-section">
        <h1 id="project1"></h1>
        <div class="section-heading">
            <h1>Edward<br><em>Hopper</em></h1>
        </div>
        <div class="section-content">
            <div class="masonry">
                <div class="row">
                    <div class="item" id="productArea1">

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="projects" class="content-section">
        <h1 id="project2"></h1>
        <div class="section-heading">
            <h1>Claude<br><em>Monet</em></h1>
        </div>
        <div class="section-content">
            <div class="masonry">
                <div class="row">
                    <div class="item" id="productArea2">

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="projects" class="content-section">
        <h1 id="project3"></h1>
        <div class="section-heading">
            <h1>Salvador<br><em>Dalí</em></h1>
        </div>
        <div class="section-content">
            <div class="masonry">
                <div class="row">
                    <div class="item" id="productArea3">

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="projects" class="content-section">
        <h1 id="project4"></h1>
        <div class="section-heading">
            <h1>Vincent<br><em>Van Gogh</em></h1>
        </div>
        <div class="section-content">
            <div class="masonry">
                <div class="row">
                    <div class="item" id="productArea4">

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="projects" class="content-section">
        <h1 id="project5"></h1>
        <div class="section-heading">
            <h1>Paul<br><em>Cézanne</em></h1>
        </div>
        <div class="section-content">
            <div class="masonry">
                <div class="row">
                    <div class="item" id="productArea5">

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="projects" class="content-section">
        <h1 id="project6"></h1>
        <div class="section-heading">
            <h1>Pablo<br><em>Picasso</em></h1>
        </div>
        <div class="section-content">
            <div class="masonry">
                <div class="row">
                    <div class="item" id="productArea6">
<%--                        <div class="col-md-6">--%>
<%--                            <a href="${cp}/index/img/portfolio_big_1.jpg" data-lightbox="image"><img src="${cp}/index/img/portfolio_1.jpg" alt="image 1"></a>--%>
<%--                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="projects" class="content-section">
        <h1 id="project7"></h1>
        <div class="section-heading">
            <h1>Peter<br><em>Paul Rubens</em></h1>
        </div>
        <div class="section-content">
            <div class="masonry">
                <div class="row">
                    <div class="item" id="productArea7">

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="footer">
        <p>Copyright &copy; 2019 Company Name

            . Design: TemplateMo</p>
    </section>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>
<link href="${cp}/css/bootstrap.min.css" rel="stylesheet">
<link href="${cp}/css/style.css" rel="stylesheet">



<%--<script src="${cp}/js/html5shiv.min.js"></script>--%>
<%--<script src="${cp}/js/js/respond.min.js"></script>--%>


<script type="text/javascript">

    var loading = layer.load(0);

    var productType = new Array;
    productType[1] = "Edward Hopper";
    productType[2] = "Claude Monet";
    productType[3] = "Salvador Dalí";
    productType[4] = "Vincent van Gogh";
    productType[5] = "Paul Cézanne";
    productType[6] = "Pablo Picasso";
    productType[7] = "Peter Paul Rubens";


    listProducts();

    function listProducts() {
        var allProduct = getAllProducts();
        var mark = new Array;
        mark[1] = 0;
        mark[2] = 0;
        mark[3] = 0;
        mark[4] = 0;
        mark[5] = 0;
        mark[6] = 0;
        mark[7] = 0;
        for(var i=0;i<allProduct.length;i++){
            var html = "";
            var imgURL = "${cp}/img/"+allProduct[i].id+".jpg";
            html += '<div class="col-md-6" onclick="productDetail('+allProduct[i].id+')">'+
                '<a data-lightbox="image"><img src="'+imgURL+'"></a>'+
                '</div>'
            ;
            // console.log(imgURL);

            var id = "productArea"+allProduct[i].type;
            console.log(id);
            var productArea = document.getElementById(id);
            if(mark[allProduct[i].type] == 0){
                // html ='<hr/><h1>'+productType[allProduct[i].type]+'</h1><hr/>'+html;
                mark[allProduct[i].type] = 1;
            }

            productArea.innerHTML += html;

        }
        layer.close(loading);
    }
    function getAllProducts() {
        var allProducts = null;
        var nothing = {};
        $.ajax({
            async : false, //设置同步
            type : 'POST',
            url : '${cp}/getAllProducts',
            data : nothing,
            dataType : 'json',
            success : function(result) {
                if (result!=null) {
                    allProducts = result.allProducts;
                }
                else{
                    layer.alert('查询错误');
                }
            },
            error : function(resoult) {
                layer.alert('查询错误');
            }
        });
        //划重点划重点，这里的eval方法不同于prase方法，外面加括号
        allProducts = eval("("+allProducts+")");
        return allProducts;
    }

    function productDetail(id) {
        var product = {};
        var jumpResult = '';
        product.id = id;
        $.ajax({
            async : false, //设置同步
            type : 'POST',
            url : '${cp}/productDetail',
            data : product,
            dataType : 'json',
            success : function(result) {
                jumpResult = result.result;
            },
            error : function(resoult) {
                layer.alert('查询错误');
            }
        });

        if(jumpResult == "success"){
            window.location.href = "${cp}/product_detail";
        }
    }




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


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>

</body>
</html>
