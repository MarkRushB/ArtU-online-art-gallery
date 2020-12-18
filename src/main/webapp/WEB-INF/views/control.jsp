<%--
  Created by IntelliJ IDEA.
  User: markz
  Date: 2020/12/14
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ArtU Admin Dashboard</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <!--
    Visual Admin Template
    https://templatemo.com/tm-455-visual-admin
    -->
<%--    origin--%>
    <link href="${cp}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${cp}/css/style.css" rel="stylesheet">

    <script src="${cp}/js/jquery.min.js" type="text/javascript"></script>
    <script src="${cp}/js/ajaxfileupload.js" type="text/javascript"></script>
    <script src="${cp}/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${cp}/js/layer.js" type="text/javascript"></script>
<%--    template--%>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="${cp}/control/css/font-awesome.min.css" rel="stylesheet">
    <link href="${cp}/control/css/bootstrap.min.css" rel="stylesheet">
    <link href="${cp}/control/css/templatemo-style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>-->
<!--    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->
      <script src="${cp}/js/html5shiv.min.js"></script>
      <script src="${cp}/js/respond.min.js"></script>


</head>
<body style="padding-top: 0px;">
<!-- Left column -->
<div class="templatemo-flex-row">
    <div class="templatemo-sidebar">
        <div class="profile-photo-container">
            <img src="${cp}/control/images/profile-photo.jpg" alt="Profile Photo">
            <div class="profile-photo-overlay"></div>
        </div>
        <header class="templatemo-site-header">
            <div class="square"></div>
            <h1>Hi, ${currentUser.nickName}</h1>
            <h3 style="margin: 30px 0">Here is Your Control Panel</h3>
        </header>


        <nav class="templatemo-left-nav">
            <ul>
                <li><a href="#s1"><i class="fa fa-user fa-fw"></i>Manager User</a></li>
                <li><a href="#s2"><i class="fa fa-dashboard fa-fw"></i>Add Art</a></li>
                <li><a href="#s3"><i class="fa fa-desktop fa-fw"></i>Manage Art</a></li>
                <li><a href="main"><i class="fa fa-home fa-fw"></i>Home Page</a></li>
                <li><a href="doLogout"><i class="fa fa-desktop fa-fw"></i>Sign Out</a></li>
            </ul>
        </nav>
    </div>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-content-container">
            <div class="templatemo-flex-row flex-content-row">
                <div class="col-1">
                    <div class="templatemo-content-widget blue-bg col-md-3">
                        <i class="fa fa-times"></i>
                        <h2 class="text-uppercase margin-bottom-10">Attention</h2>
                        <p class="margin-bottom-0">Please be responsible to our users, please confirm before operation.</p>
                    </div>
                    <div class="templatemo-content-widget white-bg col-md-3">
                        <i class="fa fa-times"></i>
                        <h2 class="text-uppercase margin-bottom-10">Thank you</h2>
                        <p class="margin-bottom-0">Because of your hard maintenance, we provide our users with a better user experience.</p>
                    </div>
                </div>
            </div>
            <div class="templatemo-content-widget no-padding">
                <div class="panel-heading templatemo-position-relative"><h2 class="text-uppercase"><a name="s1">User Table</a></h2></div>
                <div class="panel panel-default table-responsive">
                    <table class="table table-striped table-bordered templatemo-user-table" id="userTable">
                    </table>
                </div>
            </div>

            <div class="templatemo-flex-row flex-content-row">
                <div class="col-1">
                    <div class="panel panel-default margin-10">
                        <div class="panel-heading"><h2 class="text-uppercase"><a name="s2">Add Art</a></h2></div>
                        <div class="panel-body">
<%--                            <form action="index.html" class="templatemo-login-form">--%>
                                <div class="form-group col-md-8 col-md-offset-2">
                                    <label for="productName">Painting Title</label>
                                    <input type="text" class="form-control" id="productName" placeholder="Enter Painting Name">
                                </div>
                                <div class="form-group col-md-8 col-md-offset-2">
                                    <label for="productDescribe">Description</label>
                                    <textarea class="form-control" placeholder="Enter Description" rows="4" id="productDescribe"></textarea>
                                </div>
                                <div class="form-group col-md-8 col-md-offset-2">
                                    <label for="keyWord">Keywords</label>
                                    <textarea class="form-control" placeholder="Enter Keywords" rows="2" id="keyWord"></textarea>
                                </div>
                                <div class="form-group col-md-8 col-md-offset-2">
                                    <label for="productPrice">Artwork Price</label>
                                    <input type="number" class="form-control" id="productPrice" placeholder="Enter Price">
                                </div>
                                <div class="form-group col-md-8 col-md-offset-2">
                                    <label for="productCount">Amount of Artwork</label>
                                    <input type="number" class="form-control" id="productCount" placeholder="Enter Amount">
                                </div>
                                <div class="form-group col-md-8 col-md-offset-2">
                                    <label for="productType" class="control-label templatemo-block">Artist</label>
                                    <select name="productType" class="form-control" id="productType">
                                        <option value="1">Edward Hopper</option>
                                        <option value="2">Claude Monet</option>
                                        <option value="3">Salvador Dalí</option>
                                        <option value="4">Vincent Van Gogh</option>
                                        <option value="5">Paul Cézanne</option>
                                        <option value="6">Pablo Picasso</option>
                                        <option value="7">Peter Paul Rubens</option>
                                    </select>
                                </div>
                                <div class="row form-group col-md-8 col-md-offset-2">
                                        <label for="productImgUpload" class="control-label templatemo-block" accept="image/jpg">File Input</label>
                                        <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                                        <input type="file" name="productImgUpload" id="productImgUpload" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false">
                                        <p>Maximum upload size is 5 MB.</p>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-6" id="imgPreSee">
                                    </div>
                                </div>
                                <div class="form-group col-md-8 col-md-offset-2">
                                    <button type="submit" class="templatemo-blue-button" onclick="addProduct()">Add Art</button>
                                </div>
<%--                            </form>--%>
                        </div>
                    </div>
                </div>

            </div>

            <div class="panel-heading"><h2 class="text-uppercase"><a name="s3">Add Art</a></h2></div>
            <div id="productArea" style="margin-right: -30%">
                <%--                <div class="templatemo-content-widget white-bg col-md-4 templatemo-position-relative templatemo-content-img-bg">--%>
                <%--                    <img src="images/sunset-big.jpg" alt="Sunset" class="img-responsive content-bg-img">--%>
                <%--                    <i class="fa fa-heart"></i>--%>
                <%--                    <h2 class="templatemo-position-relative white-text">Sunset</h2>--%>
                <%--                    <div class="view-img-btn-wrap">--%>
                <%--                        <a href="" class="btn btn-default templatemo-view-img-btn">View</a>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
            </div>
        </div>
    </div>
</div>

<!-- JS -->
<%--<script src="${cp}/control/js/jquery-1.11.2.min.js"></script>--%>
<%--<script src="${cp}/control/js/jquery-migrate-1.2.1.min.js"></script>--%>
<script type="text/javascript" src="${cp}/control/js/templatemo-script.js"></script>
<script type="text/javascript" src="${cp}/control/js/bootstrap-filestyle.min.js"></script>
<script>
    function productDetail(id) {
        var product = {};
        var jumpResult = '';
        product.id = id;
        $.ajax({
            async : false,
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
</script>
<script type="text/javascript">
    var loading = layer.load(0);
    listAllUser();
    listAllProduct();
    layer.close(loading);

    function listAllUser() {
        var userTable = document.getElementById("userTable");
        var allUser = getAllUsers();
        userTable.innerHTML =
        '<thead>'+
        '<tr>'+
        '<td><a href="" class="white-text templatemo-sort-by">User ID</a></td>'+
        '<td><a href="" class="white-text templatemo-sort-by">Role</a></td>'+
        '<td><a href="" class="white-text templatemo-sort-by">User Name</a></td>'+
        '<td><a href="" class="white-text templatemo-sort-by">NickName</a></td>'+
        '<td><a href="" class="white-text templatemo-sort-by">Email</a></td>'+
        '<td><a href="" class="white-text templatemo-sort-by">Delete</a></td>'+
        '</tr>'+
        '</thead>';
        var html = "";
        for(var i=0;i<allUser.length;i++){
            html +=
                '<tbody>'+
                '<tr>'+
                '<td>'+allUser[i].id+'</td>'+
                '<td id="role'+i+'"></td>'+
                '<td>'+allUser[i].name+'</td>'+
                '<td>'+allUser[i].nickName+'</td>'+
                '<td>'+allUser[i].email+'</td>'+
                '<td>'+
                '<button class="btn btn-primary btn-sm" type="submit" onclick="deleteUser('+allUser[i].id+')">删除</button>'+
                '</td>'+
                '</tr>'+
                '</tbody>';
        }
        userTable.innerHTML += html;
    }
    window.onload = function (){
        var allUser = getAllUsers();
        console.log(allUser)
        for(var i=0;i<allUser.length;i++) {
            var role = allUser[i].role;
            var f = "#role" + i;
            console.log(f)
            console.log(role)
            switch (role) {
                case 0 :
                    $(f).text("User");
                    break;
                case 1 :
                    $(f).text("Admin");
                    break;
            }
        }
    }

    function getAllUsers() {
        var allUsers = "";
        var nothing = {};
        $.ajax({
            async : false,
            type : 'POST',
            url : '${cp}/getAllUser',
            data : nothing,
            dataType : 'json',
            success : function(result) {
                if (result!=null) {
                    allUsers = result.allUsers;
                }
                else{
                    layer.alert('');
                }
            },
            error : function(resoult) {
                layer.alert('Get User Information Failed');
            }
        });
        allUsers = eval("("+allUsers+")");
        return allUsers;
    }


    function listAllProduct() {
        var productArea = document.getElementById("productArea");
        var allProduct = getAllProducts();
        var html="";
        productArea.innerHTML = '';

        for(var i=0;i<allProduct.length;i++){
            var imgURL = "${cp}/img/"+allProduct[i].id+".jpg";
            html+=
            '<div class="templatemo-content-widget white-bg col-md-3 templatemo-position-relative templatemo-content-img-bg">'+
            '<img src="'+imgURL+'" alt="Sunset" class="img-responsive content-bg-img">'+
            '<i class="fa fa-heart"></i>'+
            '<h2 class="templatemo-position-relative white-text">'+'<b>'+allProduct[i].name+'</b></h2></br>'+
            '<h2 class="templatemo-position-relative white-text" style="font-size: 13px">'+'<b>'+"Artwork Price: "+'</b>'+allProduct[i].price+'</h2>'+
            '<h2 class="templatemo-position-relative white-text" style="font-size: 13px">'+'<b>'+"Amount: "+'</b>'+allProduct[i].counts+'</h2>'+
            '<div class="view-img-btn-wrap" style="margin-left: -30px;">'+
            '<button class="btn btn-primary delete-button" style="background-color: white; color: #0f0f0f; font-weight: bold" type="submit" onclick="productDetail('+allProduct[i].id+')">View</button>'+ '<button class="btn btn-primary delete-button" style="background-color: white; color: #0f0f0f; font-weight: bold" type="submit" onclick="deleteProduct('+allProduct[i].id+')">Delete</button>'+
            '</div>'+
            '</div>';
        }
        productArea.innerHTML+=html;
    }


    function getAllProducts() {
        var allProducts = null;
        var nothing = {};
        $.ajax({
            async : false,
            type : 'POST',
            url : '${cp}/getAllProducts',
            data : nothing,
            dataType : 'json',
            success : function(result) {
                if (result!=null) {
                    allProducts = result.allProducts;
                }
                else{
                    layer.alert('Get Painting Information Failed');
                }
            },
            error : function(resoult) {
                layer.alert('Get Painting Information Failed');
            }
        });
        allProducts = eval("("+allProducts+")");
        return allProducts;
    }

    function deleteUser(id) {
        var user = {};
        user.id = id;
        var deleteResult = "";
        $.ajax({
            async : false,
            type : 'POST',
            url : '${cp}/deleteUser',
            data : user,
            dataType : 'json',
            success : function(result) {
                deleteResult = result;
            },
            error : function(result) {
                layer.alert('Get User Information Failed');
            }
        });
        layer.msg(deleteResult.message);
        listAllUser()
    }

    function deleteProduct(id) {
        var product = {};
        product.id = id;
        var deleteResult = "";
        $.ajax({
            async : false,
            type : 'POST',
            url : '${cp}/deleteProduct',
            data : product,
            dataType : 'json',
            success : function(result) {
                deleteResult = result;
            },
            error : function(result) {
                layer.alert('Delete Painting Failed');
            }
        });
        layer.msg(deleteResult.message);
        listAllProduct();
    }

    function addProduct() {
        var loadings = layer.load(0);
        var product = {};
        product.name = document.getElementById("productName").value;
        product.description = document.getElementById("productDescribe").value;
        product.keyWord = document.getElementById("keyWord").value;
        product.price = document.getElementById("productPrice").value;
        product.counts = document.getElementById("productCount").value;
        product.type = document.getElementById("productType").value;
        var addResult="";
        $.ajax({
            async : false,
            type : 'POST',
            url : '${cp}/addProduct',
            data : product,
            dataType : 'json',
            success : function(result) {
                addResult = result.result;
            },
            error : function(result) {
                layer.alert('Delete Painting Failed');
            }
        });
        if(addResult == "success") {
            fileUpload();
            layer.msg('Add Painting Successful', {icon: 1, time: 1000});
            layer.close(loadings)
        }
        listAllProduct();
    }

    function fileUpload() {
        var results = "";
        var name = document.getElementById("productName").value;
        $.ajaxFileUpload({
            url:'${cp}/uploadFile?name='+name,
            secureuri:false ,
            fileElementId:'productImgUpload',
            type:'POST',
            dataType : 'text',
            success: function (result){
                console.log(this.url)
                result = result.replace(/<pre.*?>/g, '');  //ajaxFileUpload会对服务器响应回来的text内容加上<pre style="....">text</pre>前后缀
                result = result.replace(/<PRE.*?>/g, '');
                result = result.replace("<PRE>", '');
                result = result.replace("</PRE>", '');
                result = result.replace("<pre>", '');
                result = result.replace("</pre>", '');
                result = JSON.parse(result);
                results = result.result;
                if(results == "success") {
                    layer.msg("Painting Upload Successful", {icon: 1});
                    window.location.href = "${cp}/control";
                    //var imgPreSee = document.getElementById("imgPreSee");
                    //var imgSrc = '${cp}/img/'+name+'.jpg';
                    //imgPreSee.innerHTML +='<img src="'+imgSrc+')" class="col-sm-12 col-md-12 col-lg-12"/>';
                }
                else {
                    layer.msg("Painting Upload Failed", {icon: 0});
                }

            },
            error: function ()
            {
                layer.alert("Error");
            }}
        );
    }
</script>


</body>
</html>
