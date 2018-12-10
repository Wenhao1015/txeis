<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                        <form id="retrieveUserName" action="retrieveUserName" method="post">
                        <div class="form-group">
                                <label class="form-title">Email Address</label>
                                <div class="valid-wrap">
                                    <input type="text" class="form-control" placeholder="Email" name="email" value="${user.userEmail}" autofocus>
                                </div>
                                <label class="form-title">User Name</label>
                                <div class="valid-wrap">
                                    ${user.uName}
                                </div>
                                <div class="form-group account-btn">
		                            <button type="submit" class="btn btn-primary" >Retrieve User Name</button>
		                        </div>
                        </div>
                        </form>
                        
                        <form id="resetPassword" action="resetPassword" method="post">
	                        <div class="form-group">
	                        	                                <label class="form-title">User Name</label>
	                                <div class="valid-wrap">
	                                    <input type="text" class="form-control" placeholder="User Name" name="userName" value="${user.uName}">
	                                </div>
	                                <label class="form-title">Email Address</label>
	                                <div class="valid-wrap">
	                                    <input type="text" class="form-control" placeholder="Email" name="email" value="${user.userEmail}">
	                                </div>
	                                <c:if test="${errorMessage!=null && errorMessage!=""}">
										<div class="valid-wrap">
		                                    ${errorMessage}
		                                </div>
	                                </c:if>
	                                <div class="form-group account-btn">
			                            <button type="submit" class="btn btn-primary" >Reset Password</button>
			                        </div>
	                        </div>
                        </form>
</body>
</html>