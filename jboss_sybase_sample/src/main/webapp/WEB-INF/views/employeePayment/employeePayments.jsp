<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html lang="en">
<head>
		<title>TxEIS : Employee Access -  Employee Payment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="../commons/header.jsp"%>
</head>
<body class="hold-transition sidebar-mini">
		<div class="wrapper">
				<%@ include file="../commons/bar.jsp"%>
			 
			
				<main  class="content-wrapper">
					<section class="content">
						<div class="container-fluid">
								<h2 class="clearfix section-title">
										Current Pay Information
								</h2>
							<div class="content-white">
									<table class="table request-list  responsive-table">
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
														<td data-title="Sno.">${employeePayments.index + 1}</td>
														<td data-title="cyrNyrflg">${employeePayment.cyrNyrflg}</td>
														<td data-title="payFreq">${employeePayment.payFreq}</td>
														<td data-title="Employee ID">${employeePayment.empNbr}</td>
														<td data-title="jobCd">${employeePayment.jobCd}</td>
														<td data-title="primJob">${employeePayment.primJob}</td>
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
				<%@ include file="../commons/footer.jsp"%>
						
		</body>
		<script>
		function view(cyrNyrflg,payFreq,empNbr,jobCd){
				$("#cyrNyrFlg").val(cyrNyrflg);
				$("#payFreq").val(payFreq);
				$("#empNbr").val(empNbr);
				$("#jobCd").val(jobCd);
				$("#viewForm").submit();
			}
		</script>
		</html>