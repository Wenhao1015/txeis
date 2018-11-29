
<link rel="stylesheet" href="./css/font-awesome.min.css">
<link rel="stylesheet" href="./css/animate.css" />
<link rel="stylesheet" href="./css/foundation-datepicker.css" />
<link rel="stylesheet" href="./css/icheck.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/gap.css">
<link rel="stylesheet" href="./css/button.css">
<link rel="stylesheet" href="./css/bar.css">
<link rel="stylesheet" href="./css/content.css">
<script src="./js/jquery.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/icheck.min.js"></script>
<script src="./js/foundation-datepicker.js"></script>
	<!-- AdminLTE App -->
<script src="./js/adminlte.js"></script>
<script src="./js/bootstrapValidator.js"></script>

<c:if test="${sessionScope.companyId == 1}">
<style>
.main-sidebar{
	background-color: #a93439;
}
.navbar-badge{
	background-color: #a93439;
}
</style>
</c:if>
<c:if test="${sessionScope.companyId == 2}">
<style>
.main-sidebar{
	background-color: #00529b;
}
.navbar-badge{
	background-color: #00529b;
}
</style>
</c:if>