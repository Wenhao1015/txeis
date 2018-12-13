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
							<option value="1">LOCAL SICK</option>
							<option value="2">STATE PERSON</option>
							<option value="3">JURY DUTY</option>
							<option value="4">SCHOOL BUSINESS</option>
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
								<th>Absence Reason</th>
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
									<td data-title="Leave Type">
											<c:if test="${leave.leaveType==1}">LOCAL SICK</c:if>
											<c:if test="${leave.leaveType==2}">STATE PERSON</c:if>
											<c:if test="${leave.leaveType==3}">JURY DUTY</c:if>
											<c:if test="${leave.leaveType==4}">SCHOOL BUSINESS</c:if>
									</td>
									<td data-title="Absence Reason">${leave.absenseReason }</td>
									<td data-title="Leave Start Date">${leave.start}</td>
									<td data-title="Leave End Date">${leave.end}</td>
									<td data-title="Duration">${leave.leaveDuration} Days</td>
									<td data-title="Remarks">${leave.remarks}</td>
									<td style="width:150px;">
										<button class="btn btn-primary sm edit-btn" id="editLeave" data-toggle="modal" data-target="#requestModal" 
										onClick="editLeave('${leave.id}','${leave.leaveType}','${leave.absenseReason }','${leave.start}',
										'${leave.end}','${leave.remarks}')">Edit</button>
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
					format:'mm/dd/yyyy'
				});
				$('#SearchEndDate').fdatepicker({
					format:'mm/dd/yyyy'
				});
			});
	
		function editLeave(id,leaveType,absenceReason,leaveStartDate,leaveEndDate,remarks){
				$('#requestForm')
            .data('bootstrapValidator')
            .destroy()
        $('#requestForm').data('bootstrapValidator', null)
        formValidator()
				let start_arry = leaveStartDate.split(" ")
				let end_arry = leaveEndDate.split(" ")
				let start = start_arry[1] + " " + start_arry[2]
				let end = end_arry[1] + " " + end_arry[2]
				$("#cancelAdd").hide();
				$("#deleteLeave").show();	
				$(".edit-title").show();
        $(".new-title").hide();
				$("[name='Remarks']").text(remarks);
				$("[name='leaveId']").attr("value", id+"");
				$("[name='leaveType']").val(leaveType);
				$("#absenceReason").val(absenceReason);
				$("#startDate").val(start_arry[0]);
				$("#startTime").val(start);
				$("#startTimeValue").val(start);
				$("#endDate").val(end_arry[0]);
				$("#endTime").val(end)
				$("#endTimeValue").val(end);
				$("[name='Remarks']").val(remarks);
				//Initializes the time control when edit event modal show
				setStartTime()
				setEndTime()
			}
		
		function deleteLeave(id){
			$("#deleteId").val(id);
			$("#deleteForm").submit();
		}
		function showRequestForm() {
        $('#leaveId').attr('value', '')
        $("[name='Remarks']").text('')
        $('#requestForm')[0].reset()
        $('#requestForm')
            .data('bootstrapValidator')
            .destroy()
        $('#requestForm').data('bootstrapValidator', null)
        formValidator()
        $('#cancelAdd').show()
				$('#deleteLeave').hide()
				$(".edit-title").hide();
        $(".new-title").show();
        //Initializes the time control when edit event modal show
				setStartTime()
				setEndTime()
    }
		function changeFormatTimeAm(value){
				let array = value.split(/[,: ]/);
				let hour,minute,time
				hour = parseInt(array[0])
				minute = parseInt(array[1])
				if(minute>=0 && minute <30){
					minute = "00"
				}else{
					minute = "30"
				}
				if(hour>12){
					hour = (hour-12) < 10 ? "0" + (hour-12) : hour-12;
					time = hour+ ":" +minute+" PM"
				}else{
					if(hour==12){
						time = hour+ ":" +minute+" PM"
					}else{
						hour = hour < 10 ? "0" + hour : hour;
						time = hour+ ":" +minute+" AM"
					}

				}
				return time
		}
</script>
</html>
