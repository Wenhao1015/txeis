<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
						<h2 class="clearfix">Leave Requests List <button class="btn btn-primary pull-right" id="new-btn">New Apply</button></h2>
						<div class="content-white">
								
						
						
						<form id="SearchForm" action="leaveRequest" method="post">
								<div class="form-group type-group">
										
										<label class="form-title">Type:</label>
										<select id="SearchType" class="form-control" name="SearchType" value="${SearchType}">
											<option value="" >All</option>
											<option value="1" >Annual Leave</option>
											<option value="2" >Sick Leave</option>
										</select>
																</div>
																<div class="form-group">
																		<label class="form-title">From:</label>
																		<input
																					class="form-control"
																					type="text"
																					name="SearchStart"
																					id="SearchStartDate"
																																								readonly
																																								value="${SearchStart}"
																					
																					
																			/>
																</div>
																<div class="form-group">
																		<label class="form-title">
																				To:
																		</label>
																		<input class="form-control" type="text" name="SearchEnd" id="SearchEndDate" value="${SearchEnd}"
																						readonly/>
																</div>
																<div class="form-group btn-group">
																				<label class="form-title">
																				</label>
																				<div>
																								<input type="submit" class="btn btn-primary" value="Search"/>
																				</div>
																</div>
								</form>
						
							<c:if test="${fn:length(leaves) > 0}">
							<table  class="table request-list">
								<thead>
										<tr>
												<th>Sno.</th>
												<th>Leave Type</th>
												<th>Leave Start Date</th>
												<th>Leave End Date</th>
												<th>Duration</th>
												<th>Remarks</th>
												<th>Actions</th>
										</tr>
								</thead>
								<tbody>
										<c:forEach var="leave" items="${leaves}" varStatus="leaves">
												<tr>
													<td>${leaves.index + 1}</td>
													<td>${leave.leaveType==1?"Annal Leave":"Sick Leave"}</td>
													<td>${leave.leaveStartDate}</td>
													<td>${leave.leaveEndDate}</td>
													<td>${leave.leaveDuration} Days</td>
												 <td>${leave.remarks}</td>
												 <td style="width:150px;">
														 <button class="btn btn-primary sm" id="editLeave">Edit</button>
														 <button class="btn btn-secondary sm" id="deleteLeave" onClick="deleteLeave(${leave.id})">Delete</button>
												 </td>
											</tr>
										 </c:forEach>
									</tbody>
							    
							</table>
							</c:if>
							<c:if test="${fn:length(leaves) == 0}">
								<div>No Result Found<div>
							</c:if>
						</div>
							<div id="requestWrap">
									<form id="requestForm"
									action="submitLeaveRequest"
									class="requestForm"
									method="post"
							>
								<input type="text" hidden="true" name="id" id="id" value="${id}">
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
																			name="Remarks"
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

							<form hidden="true" id="deleteForm" action="deleteLeaveRequest" method="post">
								<input type="text" id="deleteId" name="id"/>
							</form>
							</div>
				</section>
		</main>
  </div>  
    <%@ include file="commons/footer.jsp"%>
        
</body>
<script src="./js/jquery.hDialog.js"></script>
<script>
		$(document).ready(function() {
			$("#SearchType").find("option:contains('${SearchType}')").attr("selected",true);
			$("#new-btn").hDialog({'box':'#requestWrap'});
            var nowTemp = new Date();
            var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);
            $('#startDate').fdatepicker({
                startDate:now
            });
            $('#endDate').fdatepicker({
                startDate:now
            });
            $('#SearchStartDate').fdatepicker();
            $('#SearchEndDate').fdatepicker();
          $('#requestForm').bootstrapValidator({
              live: 'enable',
              message: 'This value is not valid',
              feedbackIcons: {
                    valid: 'fa fa-check ',
                    // invalid: 'fa fa-times',
                    validating: 'fa fa-refresh'
              },
              fields: {
                LeaveStartDate: {
                    trigger:'change',
                        message: 'This value is not valid',
                        validators: {
                            notEmpty: {
                                message: 'The start date cannot be empty'
                            }
                        }
                  },
                  LeaveEndDate: {
                    trigger:'change',
                        message: 'This value is not valid',
                        validators: {
                            notEmpty: {
                                message: 'The end date cannot be empty'
                            }
                        }
                  },
                  remarks:{
                    validators: {
                          notEmpty: {
                              message: 'The remarks cannot be empty'
                          }
                      }
                  }
              },

          });
		});

		function deleteLeave(id){
			$("#deleteId").val(id);
			$("#deleteForm").submit();
		}
</script>
</html>
