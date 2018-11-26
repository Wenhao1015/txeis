<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="commons/header.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <%@ include file="commons/bar.jsp"%>
   
  
    <main class="content-wrapper">
				<section class="content">
						<div class="container-fluid">
								<form id="requestForm"
										action="submitLeaveRequest"
										class="requestForm"
										method="post"
								>
										<div class="form-group">
												<label class="form-title"> Leave Type: </label>
												<div class="valid-wrap">
														<select
																class="form-control"
																name="leaveType"
														>
																<option value="1">Annual Leave</option>
																<option value="2">Sick Leave</option>
														</select>
												</div>
										</div>
										<div class="date-group">
													<div class="form-group calendar-left">
															<label class="form-title"> Start Date: </label>
															<div class="valid-wrap">
																	<input
																			class="form-control"
																			type="text"
																			name="LeaveStartDate"
																			id="startDate"
																			readonly
																			onClick="GetDate(this);"
																	/>
															</div>
													</div>
														
														<div class="form-group time-right">
																<label class="form-title"> AM/PM: </label>
																<div class="valid-wrap">
																		<select
																				class="form-control"
																				name="LeaveStartDateType"
																		>
																				<option value="0">AM</option>
																				<option value="1">PM</option>
																		</select>
																</div>
														</div>
										</div>
										<div class="date-group">
													<div class="form-group calendar-left">
															<label class="form-title">
																	End Date:
															</label>
															<div class="valid-wrap">
																	<input
																			class="form-control"
																			type="text"
																			name="LeaveEndDate"
																			id="endDate"
																			readonly
																			onClick="GetDate(this);"
																	/>
															</div>
													</div>

													<div class="form-group time-right">
															<label class="form-title"> AM/PM: </label>
															<div class="valid-wrap">
																	<select
																			class="form-control"
																			name="LeaveEndDateType"
																	>
																			<option value="0">AM</option>
																			<option value="1">PM</option>
																	</select>
															</div>
													</div>
												
										</div>

										<div class="form-group">
												<label class="form-title"> Remarks : </label>
												<div class="valid-wrap">
														<textarea
                                        style="height:auto;"
                                        class="form-control"
                                        type="text"
                                        name="remarks"
                                        rows="4"
                                    ></textarea>
												</div>
										</div>
										<div class="form-group text-center btm-button">
												<input
														type="submit"
														class="btn btn-primary"
														value="Submit"
												/>
										</div>
								</form>
						</div>
				</section>
		</main>
  </div>  
    <%@ include file="commons/footer.jsp"%>
        
</body>
<script>
		$(document).ready(function() {
			$('#requestForm').bootstrapValidator({
					live: 'enable',
					message: 'This value is not valid',
					feedbackIcons: {
								valid: 'fa fa-check ',
								// invalid: 'fa fa-times',
								validating: 'fa fa-refresh'
					},
					fields: {
						// LeaveStartDate: {
						//       validators: {
						//           notEmpty: {
						//               message: 'The start date cannot be empty'
						//           }
						//       }
						//   },
						//   LeaveEndDate: {
						//       validators: {
						//           notEmpty: {
						//               message: 'The end date cannot be empty'
						//           }
						//       }
						//   },
							remarks:{
								validators: {
											notEmpty: {
													message: 'The remarks cannot be empty'
											}
									}
							}
					},

			});
			$('#btn_submit').on('click',function(){
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
					return false;
			});
		})
</script>
</html>
