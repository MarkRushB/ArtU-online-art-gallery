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
                        <h2 class="form-title">Login</h2>
                        <form method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="inputEmail"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="inputEmail" placeholder="Email"/>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="email" id="inputPassword" placeholder="Password"/>
                            </div>
                            <div class="form-group form-button">
                                <input type="button" name="signup" id="signup" class="form-submit" value="Login" onclick="startLogin()"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="${cp}/img/Login.jpg" alt="Login image"></figure>
                    </div>
                </div>
            </div>
        </section>
    </div>


<%--    <div class="container-fluid" style="padding-top: 80px;padding-bottom: 80px" >--%>

<%--        <h1 class="title center">登录</h1>--%>
<%--        <br/>--%>
<%--        <div class="col-sm-offset-2 col-md-offest-2">--%>
<%--            <!-- 表单输入 -->--%>
<%--            <div  class="form-horizontal">--%>
<%--                <div class="form-group">--%>
<%--                    <label for="inputEmail" class="col-sm-2 col-md-2 control-label">邮箱/用户名</label>--%>
<%--                    <div class="col-sm-6 col-md-6">--%>
<%--                        <input type="text" class="form-control" id="inputEmail" placeholder="xxxxxx@xx.com"/>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label for="inputPassword" class="col-sm-2 col-md-2 control-label">密码</label>--%>
<%--                    <div class="col-sm-6 col-md-6">--%>
<%--                        <input type="password" class="form-control" id="inputPassword" placeholder="禁止输入非法字符" />--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <div class="col-sm-offset-2 col-sm-6">--%>
<%--                        <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="startLogin()">登录</button>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <br/>--%>
<%--        </div>--%>
<%--    </div>--%>


    <script src="${cp}/signup/vendor/jquery/jquery.min.js"></script>
    <script src="${cp}/signup/js/main.js"></script>
    <jsp:include page="include/foot.jsp"/>

    <script type="text/javascript">
        function startLogin() {
            var loading = layer.load(0);
            var user = {};
            var loginResult = "";
            user.userNameOrEmail = document.getElementById("inputEmail").value;
            user.password = document.getElementById("inputPassword").value;

            $.ajax({
                async : false,
                type : 'POST',
                url : '${cp}/doLogin',
                data : user,
                dataType : 'json',
                success : function(result) {
                    console.log(result);
                    loginResult = result.result;
                    layer.close(loading);
                },
                error : function(result) {
                    layer.alert('Get User Information Failed');
                }
            });


            if(loginResult === 'success'){
                console.log(loginResult,'123');
                layer.msg('Login Sucessful',{icon:1});
                window.location='http://localhost:8080/ArtU/main';
            }
            else if(loginResult == 'unexist'){
                layer.msg('Username is invalid',{icon:2});
            }
            else if(loginResult == 'wrong'){
                layer.msg('Password is invalid',{icon:2});
            }
            else if(loginResult == 'fail'){
                layer.msg('Server Exception',{icon:2});
            }

        }
    </script>

  </body>
</html>