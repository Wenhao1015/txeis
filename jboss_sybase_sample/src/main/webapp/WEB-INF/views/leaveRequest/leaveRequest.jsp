<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Leave Requests</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="../commons/header.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<%@ include file="../commons/bar.jsp"%>
		<main class="content-wrapper">
		<section class="content">
			<h2 class="clearfix main-title">
				Leave Requests List
				<a class="btn btn-primary pull-right" href="/<%=request.getContextPath().split("/")[1]%>/leaveRequest/eventCalendar">Switch To Calendar View</a>
				<button class="btn btn-primary pull-right" id="new-btn" data-toggle="modal" data-target="#requestModal" onclick="showRequestForm()">New
					Apply</button>
				
			</h2>
			<div class="content-white">
				<form id="SearchForm" action="leaveRequest" method="post">
					<div class="form-group type-group">
						<label class="form-title">Type:</label> <select id="SearchType"
							class="form-control" name="SearchType">
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
					<table class="table request-list responsive-table">
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
									<td  data-title="Sno.">${leaves.index + 1}</td>
									<td data-title="Leave Type">${leave.leaveType==1?"Annal Leave":"Sick Leave"}</td>
									<td data-title="Leave Start Date">${leave.leaveStartDateString} ${leave.leaveStartDateType==0?'AM':'PM'}</td>
									<td data-title="Leave End Date">${leave.leaveEndDateString} ${leave.leaveEndDateType==0?'AM':'PM'}</td>
									<td data-title="Duration">${leave.leaveDuration} Days</td>
									<td data-title="Remarks">${leave.remarks}</td>
									<td style="width:150px;">
										<button class="btn btn-primary sm edit-btn" id="editLeave" data-toggle="modal" data-target="#requestModal" 
										onClick="editLeave('${leave.id}','${leave.leaveType}','${leave.leaveStartDateString}','${leave.leaveStartDateType}',
										'${leave.leaveEndDateString}','${leave.leaveEndDateType}','${leave.remarks}')">Edit</button>
										<button class="btn btn-secondary sm" onClick="deleteLeave(${leave.id})">Delete</button>
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
	<%@ include file="../commons/footer.jsp"%>
	<%@ include file="../modal/eventModal.jsp"%>
</body>

<script>
	$(document).ready(
			function() {
				$("#SearchType").val(${SearchType});
				$('#SearchStartDate').fdatepicker({
					format:'dd/mm/yyyy'
				});
				$('#SearchEndDate').fdatepicker({
					format:'dd/mm/yyyy'
				});
			});
	
		function editLeave(id,leaveType,leaveStartDate,leaveStartDateType,leaveEndDate,leaveEndDateType,remarks){
				$("#cancelAdd").hide();
				$("#deleteLeave").show();	
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