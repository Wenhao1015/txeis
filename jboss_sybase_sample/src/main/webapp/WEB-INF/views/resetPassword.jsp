<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                        <form id="updatePassword" action="updatePassword" method="post">
	                        <div class="form-group">
	                        		<input type="hidden" name="id" value="${id}">
	                        	                                <label class="form-title">Password</label>
	                                <div class="valid-wrap">
	                                    <input type="password" class="form-control" placeholder="Password" name="password">
	                                </div>
	                                <label class="form-title">Confirm Password</label>
	                                <div class="valid-wrap">
	                                    <input type="password" class="form-control" placeholder="Password">
	                                </div>
	                                <div class="form-group account-btn">
			                            <button type="submit" class="btn btn-primary" >Submit</button>
			                        </div>
	                        </div>
                        </form>
</body>
</html>