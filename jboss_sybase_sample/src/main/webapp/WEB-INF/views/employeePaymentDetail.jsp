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
                Pay Information
            </h2>
          <div class="content-white">
              ${employeePaymentDetail.payFreq}
          </div>
           
        	</div>
        </section>
    </main>
  </div>  
    <%@ include file="commons/footer.jsp"%>
        
</body>
</html>
