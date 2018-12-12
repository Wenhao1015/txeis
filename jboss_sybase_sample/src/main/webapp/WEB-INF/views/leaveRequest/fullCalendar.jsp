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
            <form hidden="true" id="deleteForm" action="deleteLeaveRequestFromCalendar" method="post">
                    <input type="text" id="deleteId" name="id"/>
            </form>
        </div>
        <%@ include file="../commons/footer.jsp"%>
        <%@ include file="../modal/eventModal.jsp"%>
    </body>
    <script>
        $(document).ready(function() {
            $("#requestForm").attr("action", "submitLeaveRequestFromCalendar");
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
                            $('#requestForm')
                                .data('bootstrapValidator')
                                .destroy()
                            $('#requestForm').data('bootstrapValidator', null)
                            formValidator()
                            let leaveStartDate = calEvent.start._i
                            let leaveEndDate = calEvent.end._i

                            let start_arry = leaveStartDate.split(" ")
				            let end_arry = leaveEndDate.split(" ")

                            let start = changeFormatTimeAm(start_arry[1])
                            let end = changeFormatTimeAm(end_arry[1])

							$("#cancelAdd").hide();
							$("#deleteLeave").show();
							$('#requestModal').modal('show')
							$("[name='Remarks']").text(calEvent.Remarks);
							$("#leaveId").attr("value", calEvent.id+"");
                            $("#startDate").val(calEvent.LeaveStartDate);
                            $("#startTime").val(start);
                            $("#startTimeValue").val(start);
							$("#endDate").val(calEvent.LeaveEndDate);
                            $("#endTime").val(end)
                            $("#endTimeValue").val(end);
                            $("[name='Remarks']").val(calEvent.Remarks);
                            //Initializes the time control when edit event modal show
                            setStartTime()
				            setEndTime()
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
                            //Initializes the time control when new event modal show
                            setStartTime()
				            setEndTime()
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
        function changeFormatTimeAm(value){
				let array = value.split(/[,: ]/);
				let hour,minute,time
				hour = parseInt(array[0])
				minute = parseInt(array[1])
				if(minute>=0 && minute <30){
					minute = "00"
				}else{
					minute = "30"
				}
				if(hour>12){
					hour = (hour-12) < 10 ? "0" + (hour-12) : hour-12;
					time = hour+ ":" +minute+" PM"
				}else{
					if(hour==12){
						time = hour+ ":" +minute+" PM"
					}else{
						hour = hour < 10 ? "0" + hour : hour;
						time = hour+ ":" +minute+" AM"
					}

				}
				return time
		}
    </script>
</html>
