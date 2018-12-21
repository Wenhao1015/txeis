<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <title>TxEIS : Employee Access -  Change Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="commons/header.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <%@ include file="commons/bar.jsp"%>
    <main class="content-wrapper">
        <section class="content">
            <h2 class="clearfix no-print section-title">
                Change Password
            </h2>
            <div class="content-white">
                <form id="updatePassword" action="updatePassword" method="post" style="max-width:350px;">
                    <div class="form-group">
                        <input type="hidden" name="id" value="${id}" />
                        <label class="form-title">Old Password</label>
                        <div class="valid-wrap">
                            <input
                                type="password"
                                class="form-control"
                                placeholder="Old Password"
                                name="oldPassword"
                            />
                        </div>
                    </div>  
                  <div class="form-group">
                        <label class="form-title">Password</label>
                        <div class="valid-wrap">
                            <input
                                type="password"
                                class="form-control"
                                placeholder="Password"
                                name="password"
                            />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-title">Confirm Password</label>
                        <div class="valid-wrap">
                            <input
                                type="password"
                                class="form-control"
                                placeholder="Password"
                                name="newPassword"
                            />
                        </div>
                    </div>
                    <div class="form-group account-btn">
                        <button type="submit" class="btn btn-primary">
                            Submit
                        </button>
                    </div>
                </form>
            </div>
        </section>
    </main>
  </div>  
    <%@ include file="commons/footer.jsp"%>
        
</body>
<script>
    $('#updatePassword').bootstrapValidator({
                live: 'enable',
                message: 'This value is not valid',
                trigger: 'blur keyup',
                feedbackIcons: {
                    valid: 'fa fa-check ',
                    // invalid: 'fa fa-times',
                    validating: 'fa fa-refresh'
                },
                fields: {
                  oldPassword: {
                        message: 'This value is not valid',
                        validators: {
                            notEmpty: {
                                message: 'This field cannot be empty.'
                            },
                            stringLength: {
                                min: 6,
                                message:
                                    'Password length must not be less than 6 bits.'
                            }
                        }
                    },
                    password: {
                        message: 'This value is not valid',
                        validators: {
                            notEmpty: {
                                message: 'This field cannot be empty.'
                            },
                            stringLength: {
                                min: 6,
                                message:
                                    'Password length must not be less than 6 bits.'
                            }
                        }
                    },
                    newPassword: {
                        message: 'This value is not valid',
                        validators: {
                            notEmpty: {
                                message: 'This field cannot be empty.'
                            },
                            identical: {
                                field: 'password',
                                message:
                                    'The two passwords you entered did not match.'
                            },
                            stringLength: {
                                min: 6,
                                message: 'Password length must not be less than 6 .'
                            }
                        }
                    }
                }
            })
    </script>
</html>