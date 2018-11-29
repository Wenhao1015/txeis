<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="commons/header.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
		<div class="wrapper">
				<%@ include file="commons/bar.jsp"%>
			 
			
				<main  class="content-wrapper">
					<section class="content">
						<div class="container-fluid">
								<h2 class="clearfix">
										Current Pay Information
								</h2>
							<div class="content-white">
									<table class="table request-list">
											<thead>
												<tr>
													<th>Sno.</th>
													<th>cyrNyrflg</th>
													<th>payFreq</th>
													<th>Employee ID</th>
													<th>jobCd</th>
													<th>primJob</th>
													<th></th>
												</tr>
											</thead>
											<c:if test="${fn:length(employeePayments) > 0}">
											<tbody>
												<c:forEach var="employeePayment" items="${employeePayments}" varStatus="employeePayments">
													<tr>
														<td>${employeePayments.index + 1}</td>
														<td>${employeePayment.cyrNyrflg}</td>
														<td>${employeePayment.payFreq}</td>
														<td>${employeePayment.empNbr}</td>
														<td>${employeePayment.jobCd}</td>
														<td>${employeePayment.primJob}</td>
														<td style="width:100px;">
																<button class="btn btn-primary sm edit-btn" 
																onClick="view('${employeePayment.cyrNyrflg}','${employeePayment.payFreq}','${employeePayment.empNbr}','${employeePayment.jobCd}')">View</button>
															</td>
													</tr>
												</c:forEach>
											</tbody>
											</c:if>
										</table>
							</div>
							<form hidden="true" id="viewForm" action="employeePaymentDetail" method="post">
									<input type="text" id="cyrNyrFlg" name="cyrNyrFlg"/>
									<input type="text" id="payFreq" name="payFreq"/>
									<input type="text" id="empNbr" name="empNbr"/>
									<input type="text" id="jobCd" name="jobCd"/>
							</div>
						</section>
				</main>
			</div>  
				<%@ include file="commons/footer.jsp"%>
						
		</body>
		<script>
		function view(cyrNyrflg,payFreq,empNbr,jobCd){
			alert(cyrNyrflg+","+payFreq+","+empNbr+","+jobCd)
				$("#cyrNyrFlg").val(cyrNyrflg);
				$("#payFreq").val(payFreq);
				$("#empNbr").val(empNbr);
				$("#jobCd").val(jobCd);
				$("#viewForm").submit();
			}
		</script>
		</html>