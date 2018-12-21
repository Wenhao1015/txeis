<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
    <head>
        <title>TxEIS : Employee Access -  Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/font-awesome.min.css">
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/animate.css" />
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/foundation-datepicker.css" />
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/icheck.css">
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/common.css">
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/gap.css">
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/button.css">
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/bar.css">
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/content.css">
    </head>
    <body class="account-wrap">
            <div class="account-top">
                <div class="account-inner">
                    <div class="account-left">
                        <img src="/<%=request.getContextPath().split("/")[1]%>/images/ascender_pecan_logo.jpg" alt="esc logo">
                    </div>
                    <div class="account-box">
                        <div class="account-logo">
                        <img src="/<%=request.getContextPath().split("/")[1]%>/images/logo-account.png" alt="esc logo">
                        </div>
                        <form id="loginForm" class="card" method="get">
                        <h1 class="title">Please sign in</h1>
                        <div class="form-group">
                                <label class="form-title" for="inputEmail">User Name</label>
                                <div class="valid-wrap icon-group">
                                    <i class="fa fa-user left-icon"></i>
                                    <input type="text" id="inputEmail" class="form-control" placeholder="User Name" name="username" autofocus>
                                </div>
                                
                            </div>
                            <div class="form-group">
                                <label  class="form-title" for="inputPassword">Password</label>
                                <div class="valid-wrap icon-group">
                                    <i class="fa fa-lock left-icon"></i>
                                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password">
                                </div>
                                
                            </div>
                            <p class="error-hint hide" id="errorMessage">User name or password error!</p>
                            <div class="form-group clearfix">
                                <!-- <div class="checkbox pull-left">
                                    <label>
                                        <input class="icheck" type="checkbox"> Remember Me
                                    </label>
                                </div> -->
                                <div class="pull-right">
                                    <a href="/<%=request.getContextPath().split("/")[1]%>/forgetPassword">Forgot Password?</a>
                                </div>
                            </div>
                            <div class="form-group account-btn">
                                <button id="signin" type="submit" class="btn btn-primary" name="signin" >Sign In</button>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
    </body>
    <script src="/<%=request.getContextPath().split("/")[1]%>/js/jquery.min.js"></script>
    <script src="/<%=request.getContextPath().split("/")[1]%>/js/bootstrap.min.js"></script>
    <script src="/<%=request.getContextPath().split("/")[1]%>/js/icheck.min.js"></script>
    <script src="/<%=request.getContextPath().split("/")[1]%>/js/foundation-datepicker.js"></script>
        <!-- AdminLTE App -->
    <script src="/<%=request.getContextPath().split("/")[1]%>/js/adminlte.js"></script>
    <script src="/<%=request.getContextPath().split("/")[1]%>/js/bootstrapValidator.js"></script>
    <script type="text/javascript">
        $(function(){
          $('.icheck').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass   : 'iradio_square-green',
            increaseArea : '20%' // optional
          })
          $('#loginForm').bootstrapValidator({
  //        live: 'disabled',
          message: 'This value is not valid',
        //   feedbackIcons: {
        //       valid: 'fa fa-check ',
        //       invalid: 'fa fa-times',
        //       validating: 'fa fa-refresh'
        //   },
          fields: {
              username: {
                  message: 'The username is not valid',
                  validators: {
                      notEmpty: {
                          message: 'The username is required and cannot be empty'
                      }
                  }
              },
              password: {
                  validators: {
                      notEmpty: {
                          message: 'The password is required and cannot be empty'
                      }
                  }
              }
          },
  
      });
            $('#signin').on('click',function(){
                var userName = $('#inputEmail').val();
                var userPwd = $('#inputPassword').val();
                var bootstrapValidator = $('#loginForm').data('bootstrapValidator');
                bootstrapValidator.validate();
                if(bootstrapValidator.isValid()){
                    console.log("000")
                    $.ajax({
                        type:'POST',
                        url:'<%=request.getContextPath()%>/login',
                        dataType:'JSON',
                        contentType:'application/json;charset=UTF-8',
                        data:JSON.stringify({
                            userName: userName,
                            userPwd: userPwd
                        }),
                        success : function (res) {
                            if(res.isSuccess){
                                document.location = '<%=request.getContextPath()%>/home'
                            }
                        },
                        error:function(res){
                            $("#errorMessage").show()
                        }
                    });
                }
            });
        });
    </script>
</html>
