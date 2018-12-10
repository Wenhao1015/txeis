<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Title</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="/<%=request.getContextPath().split("/")[1]%>/css/fullcalendar.min.css" />
        <%@ include file="../commons/header.jsp"%>
        <script src="/<%=request.getContextPath().split("/")[1]%>/js/moment.min.js"></script>
        <script src="/<%=request.getContextPath().split("/")[1]%>/js/fullcalendar.min.js"></script>
        <script src="/<%=request.getContextPath().split("/")[1]%>/js/theme-chooser.js"></script>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <%@ include file="../commons/bar.jsp"%>
			
            <main class="content-wrapper">
                <section class="content">
                    <h2 class="clearfix main-title">
                        <a class="btn btn-primary pull-right" href="/<%=request.getContextPath().split("/")[1]%>/leaveRequest/leaveRequest">Switch To Table View</a>
                    </h2>
                    <div class="container-fluid"><div id="calendar"></div></div>
                </section>
            </main>
        </div>
        <%@ include file="../commons/footer.jsp"%>
        <%@ include file="../modal/eventModal.jsp"%>
    </body>
    <script>
        $(document).ready(function() {
			var leaveList = eval(${leaves});
			console.log(leaveList)
            initThemeChooser({
                init: function(themeSystem) {
                    $('#calendar').fullCalendar({
                        themeSystem: themeSystem,
                        header: {
                            left: 'prev,next today',
                            center: 'title',
                            right: 'month,agendaWeek,agendaDay,listMonth'
                        },
                        defaultDate: new Date(),
                        weekNumbers: false,
                        navLinks: true, // can click day/week names to navigate views
                        editable: false,
                        eventLimit: true, // allow "more" link when too many events
                        events: leaveList,
                        eventClick: function(calEvent, jsEvent, view) {
							console.log(calEvent)
							$("#cancelAdd").hide();
							$("#deleteLeave").show();
							$('#requestModal').modal('show')
							$("[name='Remarks']").text(calEvent.Remarks);
							$("#leaveId").attr("value", calEvent.id+"");
							$("[name='leaveType']").val(calEvent.LeaveType);
							$("#startDate").val(calEvent.LeaveStartDate);
							$("[name='LeaveStartDateType']").val(calEvent.LeaveStartDateType);
							$("#endDate").val(calEvent.LeaveEndDate);
							$("[name='LeaveEndDateType']").val(calEvent.LeaveEndDateType)
							$("[name='Remarks']").val(calEvent.Remarks);
                        },
                        dayClick: function(date, allDay, jsEvent, view) {
                            $("#leaveId").attr("value","");
							$("[name='Remarks']").text("");
							$('#requestForm')[0].reset();
							$('#requestForm').data('bootstrapValidator').destroy()
							$('#requestForm').data('bootstrapValidator', null)
							formValidator()
							$("#cancelAdd").show();
							$("#deleteLeave").hide();
                            $('#requestModal').modal('show')
                        }
                    })
                },

                change: function(themeSystem) {
                    $('#calendar').fullCalendar(
                        'option',
                        'themeSystem',
                        themeSystem
                    )
                }
            })
		})
       
    </script>
</html>
