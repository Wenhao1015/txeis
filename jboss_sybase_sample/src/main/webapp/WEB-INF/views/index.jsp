<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>JBoss_Application</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style type="text/css">
            html, body{
                padding: 0;
                margin: 0;
                width: 100vw;
                height: 100vh;
            }
            body {
                display: -ms-flexbox;
                display: flex;
                -ms-flex-align: center;
                align-items: center;
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #f5f5f5;
            }

            .form-signin {
                width: 100%;
                max-width: 330px;
                padding: 15px;
                margin: auto;
                background-color: white;
                box-shadow: 3px 3px 5px #555;
            }
            .form-signin .checkbox {
                font-weight: 400;
            }
            .form-signin .form-control {
                position: relative;
                box-sizing: border-box;
                height: auto;
                padding: 10px;
                font-size: 16px;
            }
            .form-signin .form-control:focus {
                z-index: 2;
            }
            .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }
            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }
        </style>
    </head>
    <body class="text-center">
        <div id="form" class="form-signin">
            <img style="width:100%;" class="mb-4" src="./images/logo-login.png" alt="">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <label for="inputEmail" class="sr-only">User Name</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="User Name" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <a class="btn btn-lg btn-primary btn-block" id="btn_submit">Sign in</a>
            <p class="mt-5 mb-3 text-muted">&copy; 2018</p>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <script type="text/javascript">
            $(function(){
                $('#btn_submit').on('click',function(){
                    var userName = $('#inputEmail').val();
                    var userPwd = $('#inputPassword').val();
                    $.ajax({
                        type:'POST',
                        url:'/JBoss_Sybase_Sample/login',
                        dataType:'JSON',
                        contentType:'application/json;charset=UTF-8',
                        data:JSON.stringify({
                            userName: userName,
                            userPwd: userPwd
                        }),
                        success : function (res) {
                            if(res.isSuccess){
                                document.location = './home'
                            }
                        }
                    });
                });
            });
        </script>
    </body>
</html>
