<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h2 class="clearfix">
				Leave Requests List
				<button class="btn btn-primary pull-right" id="new-btn">New
					Apply</button>
			</h2>
			<div class="content-white">
				<form id="SearchForm" action="leaveRequest" method="post">
					<div class="form-group type-group">
						<label class="form-title">Type:</label> <select id="SearchType"
							class="form-control" name="SearchType" value="${SearchType}">
							<option value="">All</option>
							<option value="1">Annual Leave</option>
							<option value="2">Sick Leave</option>
						</select>
					</div>
					<div class="form-group">
						<label class="form-title">From:</label> <input
							class="form-control" type="text" name="SearchStart"
							id="SearchStartDate" readonly value="${SearchStart}" />
					</div>
					<div class="form-group">
						<label class="form-title"> To: </label> <input
							class="form-control" type="text" name="SearchEnd"
							id="SearchEndDate" value="${SearchEnd}" readonly />
					</div>
					<div class="form-group btn-group">
						<label class="form-title"> </label>
						<div>
							<input type="submit" class="btn btn-primary" value="Search" />
						</div>
					</div>
				</form>

				<c:if test="${leaves!=null}">
					<table class="table request-list">
						<thead>
							<tr>
								<th>Sno.</th>
								<th>Leave Type</th>
								<th>Leave Start Date</th>
								<th>Leave End Date</th>
								<th>Remarks</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="leave" items="${leaves}" varStatus="leaves">
								<tr>
									<td>${leaves.index + 1}</td>
									<td>${leave.leaveType==1?"Annal Leave":"Sick Leave"}</td>
									<td>${leave.leaveStartDate}</td>
									<td>${leave.leaveEndDate}</td>
									<td>${leave.remarks}</td>
									<td style="width: 150px;">
										<button class="btn btn-primary sm">Edit</button>
										<button class="btn btn-secondary sm">Delete</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</c:if>
				<c:if test="${leaves==null}">
					<div>
						No Result Found
					<div>
				</c:if>
			</div>
		</section>
		</main>
	</div>
	<%@ include file="commons/footer.jsp"%>
	<div id="requestWrap" class="dialog">
		<div class="dialog-content">
			<div class="dialog-header">New Apply</div>
			<div class="dialog-body">
				<form id="requestForm" class="requestForm">
					<div class="form-group">
						<label class="form-title"> Leave Type: </label>
						<div class="valid-wrap">
							<select class="form-control" name="leaveType">
								<option value="1">Annual Leave</option>
								<option value="2">Sick Leave</option>
							</select>
						</div>
					</div>
					<div class="date-group">
						<div class="form-group calendar-left">
							<label class="form-title"> Start Date: </label>
							<div class="valid-wrap">
								<input class="form-control" type="text" name="LeaveStartDate"
									id="startDate" readonly />
							</div>
						</div>

						<div class="form-group time-right">
							<label class="form-title"> AM/PM: </label>
							<div class="valid-wrap">
								<select class="form-control" name="LeaveStartDateType">
									<option value="0">AM</option>
									<option value="1">PM</option>
								</select>
							</div>
						</div>
					</div>
					<div class="date-group">
						<div class="form-group calendar-left">
							<label class="form-title"> End Date: </label>
							<div class="valid-wrap">
								<input class="form-control" type="text" name="LeaveEndDate"
									id="endDate" readonly />
							</div>
						</div>

						<div class="form-group time-right">
							<label class="form-title"> AM/PM: </label>
							<div class="valid-wrap">
								<select class="form-control" name="LeaveEndDateType">
									<option value="0">AM</option>
									<option value="1">PM</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="form-title"> Remarks : </label>
						<div class="valid-wrap">
							<textarea style="height: auto;" class="form-control" type="text"
								name="Remarks" rows="4"></textarea>
						</div>
					</div>
					<div class="form-group text-center btm-button">
						<button id="submitForm" type="submit" class="btn btn-primary">Save</button>
						<button class="btn btn-secondary" data-click="close">Cancel</button>
					</div>
				</form>
			</div>
		</div>

	</div>
</body>

<script>
	$(document).ready(
			function() {
				$("#SearchType").find("option:contains('${SearchType}')").attr(
						"selected", true);
				$("#new-btn").hDialog({
					'box' : '#requestWrap'
				});
				var nowTemp = new Date();
				var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(),
						nowTemp.getDate(), 0, 0, 0, 0);
				$('#startDate').fdatepicker({
					startDate : now
				});
				$('#endDate').fdatepicker({
					startDate : now
				});
				$('#SearchStartDate').fdatepicker();
				$('#SearchEndDate').fdatepicker();
				$('#requestForm').bootstrapValidator({
					live : 'enable',
					message : 'This value is not valid',
					feedbackIcons : {
						valid : 'fa fa-check ',
						// invalid: 'fa fa-times',
						validating : 'fa fa-refresh'
					},
					fields : {
						LeaveStartDate : {
							trigger : 'change',
							message : 'This value is not valid',
							validators : {
								notEmpty : {
									message : 'The start date cannot be empty'
								}
							}
						},
						LeaveEndDate : {
							trigger : 'change',
							message : 'This value is not valid',
							validators : {
								notEmpty : {
									message : 'The end date cannot be empty'
								}
							}
						},
						Remarks : {
							validators : {
								notEmpty : {
									message : 'The remarks cannot be empty'
								}
							}
						}
					},
					// submitHandler: function (validator, form, submitButton) {
          //       alert("submit");
          //   }
				});
				
				$("#submitForm").click(function(){
					let leaveType = $("[name='leaveType']").val()
					let LeaveStartDate = $("[name='LeaveStartDate']").val()
					let LeaveStartDateType = $("[name='LeaveStartDateType']").val()
					let LeaveEndDate = $("[name='LeaveEndDate']").val()
					let LeaveEndDateType = $("[name='LeaveEndDateType']").val()
					let Remarks = $("[name='Remarks']").val()
					var bootstrapValidator = $('#requestForm').data('bootstrapValidator');
					bootstrapValidator.validate();
			        if(bootstrapValidator.isValid()){
									$.ajax({
	                        type:'POST',
	                        url:'/submitLeaveRequest',
	                        dataType:'JSON',
	                        contentType:'application/json;charset=UTF-8',
	                        data:JSON.stringify({
														leaveType: leaveType,
														LeaveStartDate: LeaveStartDate,
														LeaveStartDateType:LeaveStartDateType,
														LeaveEndDate:LeaveEndDate,
														LeaveEndDateType:LeaveEndDateType,
														Remarks:Remarks
	                        }),
	                        success : function (res) {
														console.log(res)
	                            // if(res.isSuccess){
															// 	$.hDialog('close',{box:'#requestWrap'});
															// 	$("#requestForm").data('bootstrapValidator').destroy();
															// 	$('#requestForm').data('bootstrapValidator',null);
	                            // }
	                        }
	                    });
											
		             }
				})


			})
</script>
</html>
