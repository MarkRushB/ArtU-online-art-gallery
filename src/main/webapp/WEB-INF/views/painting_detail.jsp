<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Ramayana - Simple HTML Page</title>

    <!-- Bootstrap core CSS -->
    <link href="${cp}/detail/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="${cp}/detail/assets/css/fontawesome.css">
    <link rel="stylesheet" href="${cp}/detail/assets/css/templatemo-style.css">
    <link rel="stylesheet" href="${cp}/detail/assets/css/owl.css">

</head>

<body class="is-preload">

<!-- Wrapper -->
<div id="wrapper">

    <!-- Main -->
    <div id="main">
        <div class="inner">

            <!-- Header -->
            <header id="header">
                <div class="logo">
                    <a href="index.html">Ramayana</a>
                </div>
            </header>

            <!-- Page Heading -->
            <div class="page-heading">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <h1>Simple Page</h1>
                            <p><strong>Ramayana</strong> is free Bootstrap 4 CSS template from templatemo website. You can feel free to use it. Donec a scelerisque massa. Aliquam non iaculis quam. Duis arcu turpis, tincidunt id convallis nec, pretium non sem. Fusce non vehicula nibh. Nunc interdum libero non tincidunt rutrum. Nunc at feugiat quam, sed ullamcorper felis.</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Simple Post -->
            <section class="simple-post">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <img src="${cp}/detail/assets/images/simple-post.jpg" alt="">
                            <div class="down-content">
                                <p>Mauris aliquam ipsum nibh, id scelerisque leo congue vel. Vivamus ornare, eros et ornare consectetur, ipsum ipsum sollicitudin libero, at condimentum risus nulla non enim. Quisque sodales vestibulum arcu porttitor finibus. Phasellus dictum nisl id augue ornare, vel interdum nibh mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
                                <p>Phasellus vestibulum venenatis interdum. Praesent augue massa, tincidunt eget dignissim a, scelerisque vitae ante. Curabitur a arcu tellus. Donec et massa at dolor condimentum ornare nec non lorem. Maecenas non egestas metus, sed ultricies lectus. Aliquam sit amet gravida tellus. Phasellus id erat nec mi ullamcorper viverra. Quisque vitae pharetra sem. Maecenas sit amet velit ultrices, malesuada quam id, porta nisl. Cras scelerisque ex ut bibendum egestas.</p>
                            </div>
                        </div>
                    </div>



                </div>
            </section>

            <section class="simple-post">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-md-6">
                            <h2>.02 Left Column</h2>
                            <p>Quisque sodales vestibulum arcu porttitor finibus. Phasellus dictum nisl id augue ornare, vel interdum nibh mollis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Class aptent taciti sociosqu ad litora torquent.</p>
                            <p>Maecenas non egestas metus, sed ultricies lectus. Aliquam sit amet gravida tellus. Phasellus id erat nec mi ullamcorper viverra. Quisque vitae pharetra sem. Maecenas sit amet velit ultrices, malesuada quam id, porta nisl.</p>
                            <br><br>

                        </div>
                        <div class="col-md-6">
                            <h2>.02 Right Column</h2>
                            <p>Vivamus ornare, eros et ornare consectetur, ipsum ipsum sollicitudin libero, at condimentum risus nulla non enim. Quisque sodales vestibulum arcu porttitor finibus. Phasellus dictum nisl id augue ornare, vel interdum nibh mollis.</p>
                            <p>Donec et massa at dolor condimentum ornare nec non lorem. Maecenas non egestas metus, sed ultricies lectus. Aliquam sit amet gravida tellus. Phasellus id erat nec mi ullamcorper viverra. Quisque vitae pharetra sem. Maecenas sit amet velit ultrices, malesuada quam id, porta nisl. Cras scelerisque ex ut bibendum egestas.</p>

                        </div>
                    </div>

                </div>
            </section>

            <section class="simple-post">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-lg-4">
                            <h2>First Column</h2>
                            <p>Aliquam sit amet gravida tellus. Phasellus id erat nec mi ullamcorper viverra. Quisque vitae pharetra sem. Maecenas sit amet velit ultrices, malesuada quam id, porta nisl.</p>
                            <br>

                        </div>
                        <div class="col-lg-4">
                            <h2>Second Column</h2>
                            <p>Donec et massa at dolor condimentum ornare nec non lorem. Maecenas non egestas metus, sed ultricies lectus. Aliquam sit amet gravida tellus. Phasellus id erat nec mi ullamcorper viverra.</p>
                            <br>

                        </div>
                        <div class="col-lg-4">
                            <h2>Third Column</h2>
                            <p>Quisque sodales vestibulum arcu porttitor finibus. Phasellus dictum nisl id augue ornare, vel interdum nibh mollis. Aliquam sit amet gravida tellus.</p>

                        </div>
                    </div>

                </div>
            </section>

            <!-- Contact Form -->
            <section class="contact-form">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <form id="contact" action="" method="post">
                                <div class="row">
                                    <div class="col-md-12">
                                        <fieldset>
                                            <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                                        </fieldset>
                                    </div>
                                    <div class="col-md-12">
                                        <fieldset>
                                            <input name="email" type="text" class="form-control" id="email" placeholder="Your email..." required="">
                                        </fieldset>
                                    </div>
                                    <div class="col-md-12">
                                        <fieldset>
                                            <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required=""></textarea>
                                        </fieldset>
                                    </div>
                                    <div class="col-md-12">
                                        <fieldset>
                                            <button type="submit" id="form-submit" class="button">Send Message</button>
                                        </fieldset>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>



</div>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
<script src="${cp}/detail/vendor/jquery/jquery.min.js"></script>
<script src="${cp}/detail/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="${cp}/detail/assets/js/browser.min.js"></script>
<script src="${cp}/detail/assets/js/breakpoints.min.js"></script>
<script src="${cp}/detail/assets/js/transition.js"></script>
<script src="${cp}/detail/assets/js/owl-carousel.js"></script>
<script src="${cp}/detail/assets/js/custom.js"></script>
</body>


</body>

</html>
