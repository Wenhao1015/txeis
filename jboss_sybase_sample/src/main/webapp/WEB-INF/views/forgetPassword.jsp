<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Forgot Password</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <%@ include file="commons/header.jsp"%>
    </head>
    <body class="account-wrap">
        <%@ include file="commons/bar-account.jsp"%>
        <div class="account-top">
            <div class="account-inner sm">
                <div class="tab-head">
                    <label class="tab-item" id="retrieve-label">
                        <input
                            class="icheck"
                            id="retrieve"
                            type="radio"
                            checked
                            name="forgot"
                        />
                        Retrieve Username
                    </label>
                    <label class="tab-item" id="reset-label">
                        <input
                            class="icheck"
                            id="reset"
                            type="radio"
                            name="forgot"
                        />
                        Reset Password
                    </label>
                </div>
                <form
                    id="retrieveUserName"
                    action="retrieveUserName"
                    method="post"
                >
                    <div class="form-group">
                        <label class="form-title">Email Address</label>
                        <div class="valid-wrap">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="Email"
                                name="email"
                                value="${user.userEmail}"
                            />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-title">User Name</label>
                        <div class="valid-wrap">${user.uName}</div>
                    </div>
                    <div class="form-group account-btn">
                        <button type="submit" class="btn btn-primary">
                            Retrieve User Name
                        </button>
                    </div>
                </form>

                <form id="resetPassword" action="resetPassword" method="post">
                    <div class="form-group">
                        <label class="form-title">User Name</label>
                        <div class="valid-wrap">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="User Name"
                                name="userName"
                                value="${user.uName}"
                            />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-title">Email Address</label>
                        <div class="valid-wrap">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="Email"
                                name="email"
                                value="${user.userEmail}"
                            />
                        </div>
                    </div>
                    <c:if test="${errorMessage!=null && errorMessage!=''}">
                        <div class="valid-wrap error-hint">${errorMessage}</div>
                    </c:if>
                    <div class="form-group account-btn">
                        <button type="submit" class="btn btn-primary">
                            Reset Password
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </body>
    <script>
        $('.icheck').iCheck({
            checkboxClass: 'icheckbox_square-green',
            radioClass: 'iradio_square-green',
            increaseArea: '20%' // optional
        })
        $('#retrieveUserName').bootstrapValidator({
            live: 'enable',
            message: 'This value is not valid',
            trigger: 'blur keyup',
            feedbackIcons: {
                valid: 'fa fa-check ',
                // invalid: 'fa fa-times',
                validating: 'fa fa-refresh'
            },
            fields: {
                email: {
                    message: 'This value is not valid',
                    validators: {
                        notEmpty: {
                            message: 'This field cannot be empty.'
                        },
                        emailAddress: {
                            message: 'Please enter the correct mail format.'
                        }
                    }
                }
            }
        })
        $('#resetPassword').bootstrapValidator({
            live: 'enable',
            message: 'This value is not valid',
            trigger: 'blur keyup',
            feedbackIcons: {
                valid: 'fa fa-check ',
                // invalid: 'fa fa-times',
                validating: 'fa fa-refresh'
            },
            fields: {
                userName: {
                    message: 'This value is not valid',
                    validators: {
                        notEmpty: {
                            message: 'This field cannot be empty.'
                        }
                    }
                },
                email: {
                    message: 'This value is not valid',
                    validators: {
                        notEmpty: {
                            message: 'This field cannot be empty.'
                        },
                        emailAddress: {
                            message: 'Please enter the correct mail format.'
                        }
                    }
                }
            }
        })
        $('#retrieve').on('ifChecked', function(event) {
            $('#retrieveUserName').show()
            $('#resetPassword').hide()
        })
        $('#reset').on('ifChecked', function(event) {
            $('#retrieveUserName').hide()
            $('#resetPassword').show()
		})
		let paramArry = window.location.href.split("/");
		let len = paramArry.length
		console.log(paramArry[len-1])
		if(paramArry[len-1]){
			if(paramArry[len-1]=='resetPassword'){
				$('#reset').iCheck('check');
				$('#retrieveUserName').hide()
            	$('#resetPassword').show()
			}
		}
    </script>
</html>
