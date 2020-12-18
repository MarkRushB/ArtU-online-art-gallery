<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ArtU</title>

      <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
      <link href="${cp}/detail/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

      <link rel="stylesheet" href="${cp}/detail/assets/css/fontawesome.css">
      <link rel="stylesheet" href="${cp}/detail/assets/css/templatemo-style.css">
      <link rel="stylesheet" href="${cp}/detail/assets/css/owl.css">

<%--      ----------------------------- --%>
      <link href="${cp}/css/bootstrap.min.css" rel="stylesheet">
      <link href="${cp}/css/style.css" rel="stylesheet">

      <script src="${cp}/js/jquery.min.js" type="text/javascript"></script>
      <script src="${cp}/js/bootstrap.min.js" type="text/javascript"></script>
      <script src="${cp}/js/layer.js" type="text/javascript"></script>

    <!--[if lt IE 9]>
      <script src="${cp}/js/html5shiv.min.js"></script>
      <script src="${cp}/js/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>

    <jsp:include page="include/header.jsp"/>
    <div id="wrapper">
        <!-- Main -->
        <div id="main">
            <div class="inner">
                <!-- Page Heading -->
                <div class="page-heading">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <h1>${productDetail.name}</h1>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Simple Post -->
                <section class="simple-post">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <img src="${cp}/img/${productDetail.id}.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </section>

                <section class="simple-post">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-3">
                                <h3>Title</h3>
                                <p>${productDetail.name}</p>
                                <br>
                            </div>
                            <div class="col-md-3">
                                <h3>Creator</h3>
                                <p id="creator">${productDetail.type}</p>
                                <br>
                            </div>
                            <div class="col-md-3"></div>
                        </div>
                    </div>
                </section>
                <section class="simple-post">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-3">
                                <h3>Date Created</h3>
                                <p>${productDetail.counts}</p>
                                <br>
                            </div>
                            <div class="col-md-3">
                                <h3>Media</h3>
                                <p>${productDetail.keyWord}</p>
                                <br>
                            </div>
                            <div class="col-md-3"></div>
                        </div>
                    </div>
                </section>
                <section class="simple-post">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <h3 align="center">Description</h3>
                                <p>${productDetail.description}</p>
                                <br>
                            </div>
                        </div>
                    </div>
                </section>

        <div class="row">
            <div class="col-md-8 col-md-offset-2 ">
                <h3 align="center"><b style="color: rgba(83,91,160,0.82)">Comment Here!</b></h3>
                <h6 align="center" style="color: #5a6268">Communicate with worldwide artists</h6>
                <hr class="division"/>
                <table class="table evaluationTable" border="0" id="evaluation">
                </table>
                <hr/>
                <div id="inputArea"></div>
            </div>
        </div>


            <section class="main-banner" style="margin-top: 50px;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="banner-content">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="banner-caption">
                                            <h4>Welcome to <em>ArtU</em></h4>
                                            <span>Art is priceless, but Artwork has a price</span>
                                            <p>Personal maintenance is not easy, we have prepared decorative ornaments for this painting for you, you can purchase to support us</p>
                                            <div class="btn-group " role="group" style="padding-bottom: 30px; padding-left: 6%">
                                                <button type="button" class="btn btn-default" onclick="subCounts()">-</button>
                                                <button id="productCounts" type="button" class="btn btn-default">1</button>
                                                <button type="button" class="btn btn-default" onclick="addCounts(1)">+</button>
                                            </div>
                                            <fieldset class="contact-form" style="display: inline-block; margin: auto 2px auto 30px; ">
                                                <button type="submit" id="form-submit" class="button" onclick="addToShoppingCar(${productDetail.id})">Like</button>
                                            </fieldset>
                                            <fieldset class="contact-form" style="display: inline-block; margin: auto 2px auto 0px; ">
                                                <button type="submit" id="form-submit" class="button" onclick="buyConfirm(${productDetail.id})">Purchase</button>
                                            </fieldset>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            </div>
        </div>

    </div>


    <jsp:include page="include/foot.jsp"/>
    <script type="text/javascript">
      listEvaluations();

      function addToShoppingCar(productId) {
          judgeIsLogin();
          var productCounts = document.getElementById("productCounts");
          var counts = parseInt(productCounts.innerHTML);
          var shoppingCar = {};
          shoppingCar.userId = "${currentUser.id}";
          shoppingCar.productId = productId;
          shoppingCar.counts = counts;
          var addResult = "";
          $.ajax({
              async : false,
              type : 'POST',
              url : '${cp}/addShoppingCar',
              data : shoppingCar,
              dataType : 'json',
              success : function(result) {
                  addResult = result.result;
              },
              error : function(result) {
                  layer.alert('Get User Information Failed');
              }
          });
          if(addResult == "success") {
              layer.confirm('Go to My Favorite?', {icon: 1, title:'Added Successful',btn:['My Favorite','Continue Browsing']},
                      function(){
                          window.location.href = "${cp}/shopping_car";
                      },
                      function(index){
                        layer.close(index);}
              );
          }
      }

      function judgeIsLogin() {
          if("${currentUser.id}" == null || "${currentUser.id}" === undefined || "${currentUser.id}" ===""){
              window.location.href = "${cp}/login";
          }
      }

      function subCounts() {
          var productCounts = document.getElementById("productCounts");
          var counts = parseInt(productCounts.innerHTML);
          if(counts>=2)
              counts--;
          productCounts.innerHTML = counts;
      }

      function addCounts() {
          var productCounts = document.getElementById("productCounts");
          var counts = parseInt(productCounts.innerHTML);
          if(counts<${productDetail.counts})
              counts++;
          productCounts.innerHTML = counts;
      }

      function buyConfirm(productId) {
          judgeIsLogin();
          var address = getUserAddress("${currentUser.id}");
          var phoneNumber = getUserPhoneNumber("${currentUser.id}");
          var productCounts = document.getElementById("productCounts");
          var counts = parseInt(productCounts.innerHTML);
          var product = getProductById(productId);
          var html = '<div class="col-sm-1 col-md-1 col-lg-1"></div>'+
                  '<div class="col-sm-10 col-md-10 col-lg-10">'+
                  '<table class="table confirm-margin">'+
                  '<tr>'+
                  '<th>Title</th>'+
                  '<td>'+product.name+'</td>'+
                  '</tr>'+
                  '<tr>'+
                  '<th>Artwork Price</th>'+
                  '<td>'+product.price+'</td>'+
                  '</tr>'+
                  '<tr>'+
                  '<th>Purchase Quantity</th>'+
                  '<td>'+counts+'</td>'+
                  '</tr>'+
                  '<tr>'+
                  '<th>Total Cost</th>'+
                  '<td>'+counts*product.price+'</td>'+
                  '</tr>'+
                  '<tr>'+
                  '<th>Delivery Address</th>'+
                  '<td>'+address+'</td>'+
                  '</tr>'+
                  '<tr>'+
                  '<th>Phone Number</th>'+
                  '<td>'+phoneNumber+'</td>'+
                  '</tr>'+
                  '</table>'+
                  '<div class="row">'+
                  '<div class="col-sm-4 col-md-4 col-lg-4"></div>'+
                  '<button class="btn btn-danger col-sm-4 col-md-4 col-lg-4" onclick="addToShoppingRecords('+productId+')">Place Order</button>'+
                  '</div>'+
                  '</div>';
          layer.open({
              type:1,
              title:'Please Confirm Order Information：',
              content:html,
              area:['700px','450px'],
          });
      }

      function getProductById(id) {
          var productResult = "";
          var product = {};
          product.id = id;
          $.ajax({
              async : false,
              type : 'POST',
              url : '${cp}/getProductById',
              data : product,
              dataType : 'json',
              success : function(result) {
                  productResult = result.result;
              },
              error : function(result) {
                  layer.alert('Get Information Failed');
              }
          });
          productResult = JSON.parse(productResult);
          return productResult;
      }

      function getUserAddress(id) {
          var address = "";
          var user = {};
          user.id = id;
          $.ajax({
              async : false,
              type : 'POST',
              url : '${cp}/getUserAddressAndPhoneNumber',
              data : user,
              dataType : 'json',
              success : function(result) {
                  address = result.address;
              },
              error : function(result) {
                  layer.alert('Get Information Failed');
              }
          });
          return address;
      }

      function getUserPhoneNumber(id) {
          var phoneNumber = "";
          var user = {};
          user.id = id;
          $.ajax({
              async : false,
              type : 'POST',
              url : '${cp}/getUserAddressAndPhoneNumber',
              data : user,
              dataType : 'json',
              success : function(result) {
                  phoneNumber = result.phoneNumber;
              },
              error : function(result) {
                  layer.alert('Get Information Failed');
              }
          });
          return phoneNumber;
      }

      function addToShoppingRecords(productId) {
          var productCounts = document.getElementById("productCounts");
          var counts = parseInt(productCounts.innerHTML);
          var shoppingRecord = {};
          shoppingRecord.userId = "${currentUser.id}";
          shoppingRecord.productId = productId;
          shoppingRecord.counts = counts;
          var buyResult = "";
          $.ajax({
              async : false,
              type : 'POST',
              url : '${cp}/addShoppingRecord',
              data : shoppingRecord,
              dataType : 'json',
              success : function(result) {
                  buyResult = result.result;
              },
              error : function(result) {
                  layer.alert('Purchase Failed');
              }
          });
          if(buyResult === "success") {
              layer.confirm('Go to Order Page？', {icon: 1, title:'Purchase Successful',btn:['Order Page','Continue Purchasing']},
                      function(){
                          window.location.href = "${cp}/shopping_record";
                      },
                      function(index){
                          layer.close(index);}
              );
          }
          else if(buyResult === "unEnough"){
              layer.alert("Insufficient Inventory, Purchase Failed")
          }
      }

      function listEvaluations() {
          var evaluations = getEvaluations();
          var evaluationTable = document.getElementById("evaluation");
          var html = "";
          for(var i=0;i<evaluations.length;i++){
              var user = getUserById(evaluations[i].userId);
              html+='<tr>'+
                      '<th>'+user.nickName+'</th>'+
                      '<td>'+evaluations[i].content+'</td>'+
                      '</tr>';
          }
          evaluationTable.innerHTML += html;

          if("${currentUser}"!==""){
              var inputArea = document.getElementById("inputArea");
              html=
              '<section class="contact-form">'+
              '<div class="col-md-6 col-md-offset-3">'+
                  '<div class="col-md-12">'+
              '<fieldset>'+
              ' <textarea name="message" rows="6" class="form-control" id="evaluationText" placeholder="When you are browsing this painting, what do you think?" required=""></textarea>'+
              '</fieldset>'+
              '</div>'+
              '<div class="col-md-12">'+
              '<fieldset>'+
              '<button style="margin: 0 37%" type="submit" id="form-submit" class="button" onclick="addToEvaluation()">Comment</button>'+
              '</fieldset>'+
              '</div>'+
              '</div>'+
              '</section>';
              inputArea.innerHTML +=html;
          }

      }


      function getEvaluations() {
          var evaluations = "";
          var product = {};
          product.productId = "${productDetail.id}";
          $.ajax({
              async : false,
              type : 'POST',
              url : '${cp}/getShoppingEvaluations',
              data : product,
              dataType : 'json',
              success : function(result) {
                  evaluations = result.result;
              },
              error : function(result) {
                  layer.alert('Get Information Failed');
              }
          });
          evaluations = eval("("+evaluations+")");
          return evaluations;
      }

      function getUserById(id) {
          var userResult = "";
          var user = {};
          user.id = id;
          $.ajax({
              async : false,
              type : 'POST',
              url : '${cp}/getUserById',
              data : user,
              dataType : 'json',
              success : function(result) {
                  userResult = result.result;
              },
              error : function(result) {
                  layer.alert('Get Information Failed');
              }
          });
          userResult = JSON.parse(userResult);
          return userResult;
      }

      function addToEvaluation() {
          var inputText = document.getElementById("evaluationText").value;
          var evaluation = {};
          evaluation.userId = "${currentUser.id}";
          evaluation.productId = "${productDetail.id}";
          evaluation.content = inputText;
          var addResult = "";
          $.ajax({
              async : false,
              type : 'GET',
              url : '${cp}/addShoppingEvaluation',
              data : evaluation,
              dataType : 'json',
              success : function(result) {
                  addResult = result.result;
                  console.log(addResult)
              },
              error : function(result) {
                  layer.alert('Get User Information Failed');
              }
          });
          if(addResult == "success"){
              console.log("test1")
              layer.msg("Post Successful",{icon:1});
              window.location.href = "${cp}/product_detail";
          }else if(addResult == "unsafeComment"){
              console.log("test2")
              layer.msg("Unsafe Comment",{icon:2});
              <%--window.location.href = "${cp}/product_detail";--%>
          }

      }
      window.onload = function (){
          var creator = ${productDetail.type};
          switch (creator){
              case 1 :
                  $("#creator").text("Edward Hopper");
                  break;
              case 2 :
                  $("#creator").text("Claude Monet");
                  break;
              case 3 :
                  $("#creator").text("Salvador Dalí");
                  break;
              case 4 :
                  $("#creator").text("Vincent Van Gogh");
                  break;
              case 5 :
                  $("#creator").text("Paul Cézanne");
                  break;
              case 6 :
                  $("#creator").text("Pablo Picasso");
                  break;
              case 7 :
                  $("#creator").text("Peter Paul Rubens");
                  break;


          }
      }

    </script>
    <script src="${cp}/detail/vendor/jquery/jquery.min.js"></script>
    <script src="${cp}/detail/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="${cp}/detail/assets/js/browser.min.js"></script>
    <script src="${cp}/detail/assets/js/breakpoints.min.js"></script>
    <script src="${cp}/detail/assets/js/transition.js"></script>
    <script src="${cp}/detail/assets/js/owl-carousel.js"></script>
    <script src="${cp}/detail/assets/js/custom.js"></script>
  </body>
</html>