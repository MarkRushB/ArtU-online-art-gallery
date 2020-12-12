<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!--假装我是代码，代码一定要对齐，对齐，对齐！-->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>购物+</title>
    <link href="${cp}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${cp}/css/style.css" rel="stylesheet">

    <script src="${cp}/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${cp}/js/layer.js" type="text/javascript"></script>
    <!--[if lt IE 9]>
    <script src="${cp}/js/html5shiv.min.js"></script>
    <script src="${cp}/js/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--导航栏部分-->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${cp}/main">ArtU</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav navbar-right">
                <c:if test="${empty currentUser}">
                    <li><a href="register" methods="post">Register</a></li>
                    <li><a href="login" methods="post">Login</a></li>
                </c:if>
                <c:if test="${not empty currentUser}">
                    <c:if test="${currentUser.role == 1}">
                        <li><a href="${cp}/control" methods="post">Control Panel</a></li>
                    </c:if>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                ${currentUser.nickName}
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="${cp}/shopping_car">购物车</a></li>
                            <li><a href="${cp}/shopping_record">订单状态</a></li>
                            <c:if test="${currentUser.role == 1}">
                                <li><a href="${cp}/shopping_handle">处理订单</a></li>
                            </c:if>
                            <li role="separator" class="divider"></li>
                            <li><a href="${cp}/amend_info">个人资料修改</a></li>
                            <li><a href="${cp}/doLogout">注销登录</a></li>
                        </ul>
                    </li>
                </c:if>
            </ul>

            <div class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search Art Now" id="searchKeyWord"/>
                </div>
                <button class="btn btn-default" onclick="searchProduct();">Search</button>
            </div>
<%--            <div class="search">--%>
<%--                <input type="text"--%>
<%--                       style="width: 70%;--%>
<%--               height: 60px;--%>
<%--               border-color: white;--%>
<%--               border-width: thin;--%>
<%--               background-color: transparent;--%>
<%--               border-width: medium;--%>
<%--               color: white;--%>
<%--               font-weight: bold;"--%>
<%--                       placeholder="Search Art Now" name="" id="searchKeyWord" value="" />--%>
<%--                <button style="width: 20%; height: 60px; font-weight: bold; font-family: Arial" onclick="searchProduct()">search</button>--%>
<%--            </div>--%>
        </div>
    </div>
</nav>
<script type="text/javascript">
    function searchProduct() {
        var search = {};
        search.searchKeyWord = document.getElementById("searchKeyWord").value;
        var searchResult = "";
        $.ajax({
            async : false,
            type : 'POST',
            url : '${cp}/searchPre',
            data : search,
            dataType : 'json',
            success : function(result) {
                searchResult = result.result;
            },
            error : function(result) {
                layer.alert('查询错误');
            }
        });
        if(searchResult == "success")
            window.location.href = "${cp}/search";
    }
</script>

</body>
</html>