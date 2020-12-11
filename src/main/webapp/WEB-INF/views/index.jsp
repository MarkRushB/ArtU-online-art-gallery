<%--
  Created by IntelliJ IDEA.
  User: markz
  Date: 2020/12/2
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Law &mdash; Free Multi-Purpose One Page Bootstrap 4 Theme by uicookies.com</title>
    <meta name="description" content="Free Bootstrap 4 Theme by uicookies.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600|Montserrat:200,300,400" rel="stylesheet">

    <link rel="stylesheet" href="${cp}/assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="${cp}/assets/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${cp}/assets/fonts/law-icons/font/flaticon.css">

    <link rel="stylesheet" href="${cp}/assets/fonts/fontawesome/css/font-awesome.min.css">


    <link rel="stylesheet" href="${cp}/assets/css/slick.css">
    <link rel="stylesheet" href="${cp}/assets/css/slick-theme.css">

    <link rel="stylesheet" href="${cp}/assets/css/helpers.css">
    <link rel="stylesheet" href="${cp}/assets/css/style.css">
</head>
<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">

<nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="pb-navbar">
    <div class="container">
        <a class="navbar-brand">ArtU</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-navbar" aria-controls="probootstrap-navbar" aria-expanded="false" aria-label="Toggle navigation">
            <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-navbar">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link">“ An online art gallery ”</a></li>
                <!--            <li class="nav-item"><a class="nav-link" href="#section-about">About</a></li>-->
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<section class="pb_cover_v1 text-left cover-bg-black cover-bg-opacity-5" style="background-image: url(${cp}/assets/images/1.jpg)" id="section-home">
    <div class="container">
        <div class="row align-items-center justify-content-end">
            <div class="col-md-12  order-md-2">

                <h2 class="heading mb-1 pb_font-150">ArtU</h2>
                <div class="sub-heading"><p class="mb-5">Bringing the world's art for you</p>
                    <p><a href="main" role="button" class="btn smoothscroll pb_outline-light btn-xl pb_font-13 p-4 rounded-0 pb_letter-spacing-2 pb_bgcolor-light pb_color-dark">Start Exploring</a></p>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- END section -->


<section class="pb_section pb_section_v1" data-section="about" id="section-about">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 pr-md-5 pr-sm-0">
                <h2 class="mt-0 heading-border-top mb-3 font-weight-normal">Morning Sun</h2>
                <p class="pb_font-16">The painting on the right was created by Edward Hopper in 1952. In <b>Morning Sun</b>, the woman - modeled after Hopper's wife, Jo - faces the sun impassively and seemingly lost in thought. Her visible right eye appears sightless, emphasizing her isolation. The bare wall and the elevation of the room above the street also suggest the bleakness and solitude of impersonal urban life</p>
            </div>
            <div class="col-lg-7">
                <div class="images">
                    <img class="img1 img-fluid" src="${cp}/assets/images/2.png">
                </div>
            </div>
        </div>
    </div>
</section>


<!-- END section -->


<section class="pb_sm_py_cover cover-bg-black cover-bg-opacity-4" style="background-image: url(${cp}/assets/images/1900x1200_img_4.jpg)">
    <div class="container">
        <div class="row">
            <div class="col-md-12 pb_color-light-opacity-8">
                <h2 class="heading mb-3 text-center">About Us</h2>
                <p class="pb_font-16 scol-md-7">2020 is a very special year, everyone is forced to lock up at home because of the Covid-19 epidemic that is sweeping the world. Just like Edward Hopper's paintings, each of his paintings is like describing a person in quarantine, everyone in his painting looks so lonely</p>
                <p class="pb_font-16">Just like us in reality, when the epidemic started, I thought that all emotions related to loneliness came from the sudden termination of various normal social activities. But gradually I discovered that the reason for loneliness is actually because the sense of existence of each individual slowly disappears in quarantine. But Hopper's painting gave me a window to release. His painting made me no longer restricted to my small room, and the world in the painting filled me with curiosity</p>
                <p class="pb_font-16">So, this is why I want to create a online art gallery website</p>
                <p class="text-center"><a href="#section-home" role="button" class="btn smoothscroll pb_outline-light p-3 rounded-0 pb_font-13 pb_letter-spacing-2 text-center">Back to Home</a></p>
            </div>
        </div>

    </div>
</section>
<!-- END section -->



<footer class="pb_footer bg-light" role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col text-center">
                <p class="pb_font-14">ArtU - Bringing the world's art for you</p>
            </div>
        </div>
    </div>
</footer>


<script src="${cp}/assets/js/jquery.min.js"></script>

<script src="${cp}/assets/js/popper.min.js"></script>
<script src="${cp}/assets/js/bootstrap.min.js"></script>
<script src="${cp}/assets/js/slick.min.js"></script>

<script src="${cp}/assets/js/jquery.waypoints.min.js"></script>
<script src="${cp}/assets/js/jquery.easing.1.3.js"></script>

<script src="${cp}/assets/js/main.js"></script>

</body>
</html>
