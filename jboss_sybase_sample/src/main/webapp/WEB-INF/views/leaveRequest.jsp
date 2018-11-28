<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Leave Requests</title>
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
				<button class="btn btn-primary pull-right" id="new-btn" data-toggle="modal" data-target="#requestModal">New
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

				<c:if test="${fn:length(leaves) > 0}">
					<table class="table request-list">
						<thead>
							<tr>
								<th>Sno.</th>
								<th>Leave Type</th>
								<th>Leave Start Date</th>
								<th>Leave End Date</th>
								<th>Duration</th>
								<th>Remarks</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="leave" items="${leaves}" varStatus="leaves">
								<tr>
									<td>${leaves.index + 1}</td>
									<td>${leave.leaveType==1?"Annal Leave":"Sick Leave"}</td>
									<td>${leave.leaveStartDateString} ${leave.leaveStartDateType==0?'AM':'PM'}</td>
									<td>${leave.leaveEndDateString} ${leave.leaveEndDateType==0?'AM':'PM'}</td>
									<td>${leave.leaveDuration} Days</td>
									<td>${leave.remarks}</td>
									<td style="width:150px;">
										<button class="btn btn-primary sm edit-btn" id="editLeave" data-toggle="modal" data-target="#requestModal" 
										onClick="editLeave('${leave.id}','${leave.leaveType}','${leave.leaveStartDateString}','${leave.leaveStartDateType}',
										'${leave.leaveEndDateString}','${leave.leaveEndDateType}','${leave.remarks}')">Edit</button>
										<button class="btn btn-secondary sm" id="deleteLeave" onClick="deleteLeave(${leave.id})">Delete</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</c:if>
				<c:if test="${fn:length(leaves) == 0}">
					<div>
						No Result Found
					<div>
				</c:if>
			</div>
		</section>
			<form hidden="true" id="deleteForm" action="deleteLeaveRequest" method="post">
				<input type="text" id="deleteId" name="id"/>
			</form>
		</main>
	</div>
	<%@ include file="commons/footer.jsp"%>
	<div class="modal fade" id="requestModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
					<div class="modal-content">
							<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
											&times;
									</button>
									<h4 class="modal-title">
											New Apply
									</h4>
							</div>
									<form id="requestForm" action="submitLeaveRequest" method="post">
											<div class="modal-body requestForm">
											<input type="hidden" name="leaveId"/>
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
															id="startDate" readonly  value="" />
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
														<input class="form-control" type="text" name="LeaveEndDate" value=""
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
													<textarea style="height: auto;" class="form-control" name="Remarks" rows="4"></textarea>
												</div>
											</div>
										</div>
											<div class="modal-footer">
												<button type="submit" class="btn btn-primary">Save</button>
												<button class="btn btn-secondary"  data-dismiss="modal" aria-hidden="true">Cancel</button>
											</div>
										
									</form>
						
					</div><!-- /.modal-content -->
			</div><!-- /.modal -->
	</div>
</body>

<script>
	var nowTemp = new Date();
	var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(),
						nowTemp.getDate(), 0, 0, 0, 0);
	$(document).ready(
			function() {
				$("#SearchType").find("option:contains('${SearchType}')").attr(
						"selected", true);
				$('#startDate').fdatepicker({
					startDate : now,
					format:'dd/mm/yyyy'
				});
				$('#endDate').fdatepicker({
					startDate : now,
					format:'dd/mm/yyyy'
				});
				$('#SearchStartDate').fdatepicker({
					format:'dd/mm/yyyy'
				});
				$('#SearchEndDate').fdatepicker({
					format:'dd/mm/yyyy'
				});
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
			});
	
		function editLeave(id,leaveType,leaveStartDate,leaveStartDateType,leaveEndDate,leaveEndDateType,remarks){
			  $("[name='Remarks']").text(remarks);
				$("[name='leaveId']").attr("value", id+"");
				$("[name='leaveType']").val(leaveType);
				$("#startDate").val(leaveStartDate);
				$("[name='LeaveStartDateType']").val(leaveStartDateType);
				$("#endDate").val(leaveEndDate);
				$("[name='LeaveEndDateType']").val(leaveEndDateType)
				$("[name='Remarks']").val(remarks);
			}
		
		function deleteLeave(id){
			$("#deleteId").val(id);
			$("#deleteForm").submit();
		}
</script>
</html>
