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
    <link href="${cp}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${cp}/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${cp}/signup/fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="${cp}/signup/css/style.css">

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


<div class="main">

    <!-- Sign up form -->
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">Modify Information</h2>
                    <h5 class="form-title" style="color: goldenrod">Tips: <b>username/email</b> cannot be modified once set</h5>
                    <form method="POST" class="register-form" id="register-form">
                        <div class="form-group">
                            <label for="inputEmail"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input style="color: grey" type="text" name="name" id="inputUserName" placeholder="Your Name" readonly/>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail"><i class="zmdi zmdi-email"></i></label>
                            <input style="color: grey" type="email" name="email" id="inputEmail" placeholder="Your Email" readonly/>
                        </div>
                        <div class="form-group">
                            <label for="inputNickname"><i class="zmdi zmdi-blogger"></i></label>
                            <input type="text" name="ni" id="inputNickname" placeholder="NickName"/>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword"><i class="zmdi zmdi-lock-outline"></i></label>
                            <input type="password" name="re_pass" id="inputPassword" placeholder="Password"/>
                        </div>
                        <div class="form-group">
                            <label for="inputPhoneNumber"><i class="zmdi zmdi-phone"></i></label>
                            <input type="text" name="re_pass" id="inputPhoneNumber" placeholder="Phone Number"/>
                        </div>
                        <div class="form-group" style="margin-left: 2px">
                            <label for="man"><i class="zmdi zmdi-female"></i></label>
                            <label class="radio-inline" style="margin-top: 19px">
                                <input type="radio" id="man" value="option1" style="margin-left: 18px; margin-right: 15px;"> Male
                            </label>
                            <label class="radio-inline" style="margin-top: 19px">
                                <input type="radio" id="woman" value="option2" style="margin-left: 25px"> Female
                            </label>
                        </div>
                        <div class="form-group">
                            <label for="birthday"><i class="zmdi zmdi-calendar"></i></label>
                            <input type="date" name="re_pass" id="birthday" placeholder="Birthday"/>
                        </div>
                        <div class="form-group">
                            <label for="postcodes"><i class="zmdi zmdi-local-post-office"></i></label>
                            <input type="number" name="re_pass" id="postcodes" placeholder="Zip Code"/>
                        </div>
                        <div class="form-group">
                            <label for="address"><i class="zmdi zmdi-home"></i></label>
                            <input type="text" name="re_pass" id="address" placeholder="Address"/>
                        </div>
                        <div class="form-group form-button">
                            <input type="button" name="signup" id="signup" class="form-submit" value="Register" onclick="startRegister()"/>
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure><img src="${cp}/img/SignUp.jpg" alt="sing up image"></figure>
                </div>
            </div>
        </div>
    </section>
</div>
<%--<div class="container-fluid">--%>
<%--    <h1 class="title center">修改个人信息</h1>--%>
<%--    <br/>--%>
<%--    <div class="col-sm-offset-2 col-md-offest-2">--%>
<%--        <!-- 表单输入 -->--%>
<%--        <div  class="form-horizontal">--%>
<%--            <div class="form-group">--%>
<%--                <label for="inputEmail" class="col-sm-2 col-md-2 control-label">用户名</label>--%>
<%--                <div class="col-sm-6 col-md-6">--%>
<%--                    <input type="text" class="form-control" id="inputUserName" placeholder="14121047" readonly>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="inputEmail" class="col-sm-2 col-md-2 control-label">邮箱</label>--%>
<%--                <div class="col-sm-6 col-md-6">--%>
<%--                    <input type="email" class="form-control" id="inputEmail" placeholder="xxxxxx@xx.com" readonly>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="inputNickname" class="col-sm-2 col-md-2 control-label">昵称</label>--%>
<%--                <div class="col-sm-6 col-md-6">--%>
<%--                    <input type="text" class="form-control" id="inputNickname" placeholder="高帅富" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="inputPassword" class="col-sm-2 col-md-2 control-label">密码</label>--%>
<%--                <div class="col-sm-6 col-md-6">--%>
<%--                    <input type="password" class="form-control" id="inputPassword" placeholder="禁止输入非法字符" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="inputPhoneNumber" class="col-sm-2 col-md-2 control-label">手机号码</label>--%>
<%--                <div class="col-sm-6 col-md-6">--%>
<%--                    <input type="text" class="form-control" id="inputPhoneNumber" placeholder="131xxxxxxxx" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="man" class="col-sm-2 col-md-2 control-label">性别</label>--%>
<%--                <div class="col-sm-6 col-md-6">--%>
<%--                    <label class="radio-inline">--%>
<%--                        <input type="radio" id="man" value="option1"> 男--%>
<%--                    </label>--%>
<%--                    <label class="radio-inline">--%>
<%--                        <input type="radio" id="woman" value="option2"> 女--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="birthday" class="col-sm-2 col-md-2 control-label">出生日期</label>--%>
<%--                <div class="col-sm-6 col-md-6">--%>
<%--                    <input type="text" class="form-control" id="birthday" placeholder="18" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="postcodes" class="col-sm-2 col-md-2 control-label">邮政编码</label>--%>
<%--                <div class="col-sm-6 col-md-6">--%>
<%--                    <input type="text" class="form-control" id="postcodes" placeholder="200444" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="address" class="col-sm-2 col-md-2 control-label">地址</label>--%>
<%--                <div class="col-sm-6 col-md-6">--%>
<%--                    <input type="text" class="form-control" id="address" placeholder="131xxxxxxxx" />--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <div class="col-sm-offset-2 col-sm-6">--%>
<%--                    <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="startUpdate()">确认修改</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <br/>--%>
<%--    </div>--%>
<%--</div>--%>


<jsp:include page="include/foot.jsp"/>
<script src="${cp}/signup/vendor/jquery/jquery.min.js"></script>
<script src="${cp}/signup/js/main.js"></script>
<script type="text/javascript">
    initData();
    function initData() {
        var userId = ${currentUser.id};
        var user = getUserById(userId);
        var userDetail = getUserDetailById(userId);
        document.getElementById("inputUserName").value = user.name;
        document.getElementById("inputEmail").value = user.email;
        document.getElementById("inputNickname").value = user.nickName;
        document.getElementById("inputPassword").value = userDetail.password;
        document.getElementById("inputPhoneNumber").value = userDetail.phoneNumber;
        document.getElementById("birthday").value = userDetail.birthday;
        document.getElementById("postcodes").value = userDetail.postNumber;
        document.getElementById("address").value = userDetail.address;
        if(userDetail.sex == 0)
            document.getElementById("man").checked = true;
        else
            document.getElementById("woman").checked = true;
    }
    function startUpdate() {
        var loading = layer.load(0);
        var user = {};
        user.userName = document.getElementById("inputUserName").value;
        user.email = document.getElementById("inputEmail").value;
        user.nickName = document.getElementById("inputNickname").value;
        user.password = document.getElementById("inputPassword").value;
        user.phoneNumber = document.getElementById("inputPhoneNumber").value;
        user.birthday = document.getElementById("birthday").value;
        user.postNumber = document.getElementById("postcodes").value;
        user.address = document.getElementById("address").value;
        user.sex = 0;
        if(document.getElementById("woman").checked)
            user.sex = 1;
        if(user.userName == ''){
            layer.msg('Username is Empty',{icon:2});
            return;
        }
        else if(user.userName.length >= 12){
            layer.msg('Username Cannot Exceed 12 Characters',{icon:2});
            return;
        }
        if(user.nickName == ''){
            layer.msg('Nickname is Empty',{icon:2});
            return;
        }
        else if(user.nickName.length >= 15){
            layer.msg('Nickname Cannot Exceed 15 Characters',{icon:2});
            return;
        }
        else if(user.password == ''){
            layer.msg('Password is Empty',{icon:2});
            return;
        }
        else if(user.password.length>= 20){
            layer.msg('Password cannot Exceed 20 Characters',{icon:2});
            return;
        }
        var registerResult = null;
        $.ajax({
            async : false,
            type : 'POST',
            url : '${cp}/doUpdate',
            data : user,
            dataType : 'json',
            success : function(result) {
                registerResult = result.result;
            },
            error : function(result) {
                layer.alert('Cannot Find User');
            }
        });
        if(registerResult == 'success'){
            layer.close(loading);
            layer.msg('Update Successful',{icon:1});
            window.location.href="${cp}/main";
        }
        else if(registerResult == 'fail'){
            layer.msg('Server exception',{icon:2});
        }
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
                layer.alert('查询错误');
            }
        });
        userResult = JSON.parse(userResult);
        return userResult;
    }

    function getUserDetailById(id) {
        var userDetailResult = "";
        var user = {};
        user.id = id;
        $.ajax({
            async : false,
            type : 'POST',
            url : '${cp}/getUserDetailById',
            data : user,
            dataType : 'json',
            success : function(result) {
                userDetailResult = result.result;
            },
            error : function(result) {
                layer.alert('查询错误');
            }
        });
        userDetailResult = JSON.parse(userDetailResult);
        return userDetailResult;
    }
</script>
</body>
</html>