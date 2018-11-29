<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table class="table request-list">
						<thead>
							<tr>
								<th>Sno.</th>
								<th>cyrNyrflg</th>
								<th>payFreq</th>
								<th>empNbr</th>
								<th>jobCd</th>
								<th>primJob</th>
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
								</tr>
							</c:forEach>
						</tbody>
						</c:if>
					</table>
</body>
</html>