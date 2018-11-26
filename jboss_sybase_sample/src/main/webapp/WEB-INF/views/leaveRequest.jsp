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
   
  
    <main  class="content-wrapper">
    	<section class="content">
    		<div class="container-fluid">
        		<form action="submitLeaveRequest" method="post">

					Leave Type: <select name="leaveType">
					  <option value ="1">Annual Leave</option>
					  <option value ="2">Sick Leave</option>
					</select><br>
					Start Date: <input type="text" name="LeaveStartDate" id="startDate" readonly onClick="GetDate(this);" />
					AM/PM: <select name="LeaveStartDateType">
					  <option value ="0">AM</option>
					  <option value ="1">PM</option>
					</select><br>
					End Date: <input type="text" name="LeaveEndDate" id="endDate" readonly onClick="GetDate(this);" />
					AM/PM: <select name="LeaveEndDateType">
					  <option value ="0">AM</option>
					  <option value ="1">PM</option>
					</select><br>
					Remarks :<input type="text" name="Remarks"/><br>
					<input type="submit" value="Submit"/>
				</form>
        	</div>
        </section>
    </main>
  </div>  
    <%@ include file="commons/footer.jsp"%>
        
</body>
</html>
