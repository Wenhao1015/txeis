<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>JBoss_Application</title>
        <%@ include file="commons/header.jsp"%>
    </head>
    <body class="account-wrap">
            <div class="account-top">
                <div class="account-box">
                    <div class="account-logo">
                      <img src="./images/logo-account.png" alt="">
                    </div>
                    <form id="loginForm" class="card" method="get">
                      <h1 class="title">Please sign in</h1>
                      <div class="form-group">
                            <label class="form-title">User Name</label>
                            <div class="valid-wrap">
                                <input type="text" id="inputEmail" class="form-control" placeholder="User Name" name="username" autofocus>
                            </div>
                            
                        </div>
                        <div class="form-group">
                            <label  class="form-title">Password</label>
                            <div class="valid-wrap">
                                <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password">
                            </div>
                            
                        </div>
                      <div class="form-group clearfix">
                          <!-- <div class="checkbox pull-left">
                              <label>
                                <input class="icheck" type="checkbox"> Remember Me
                              </label>
                          </div> -->
                          <div class="pull-right">
                            <a href="">Forgot Password?</a>
                          </div>
                      </div>
                      <div class="form-group account-btn">
                          <button id="signin" type="submit" class="btn btn-primary" name="signin" >Sign In</button>
                      </div>
                    </form>
                    
                </div>
            </div>
    </body>
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
                      url:'/login',
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
                }
            });
        });
    </script>
</html>
