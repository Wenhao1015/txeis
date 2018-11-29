<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
    <head>
        <title>Title</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="./css/fullcalendar.min.css" />
        <%@ include file="commons/header.jsp"%>
        <script src="./js/moment.min.js"></script>
        <script src="./js/fullcalendar.min.js"></script>
        <script src="./js/theme-chooser.js"></script>
    </head>
    <body class="hold-transition sidebar-mini">
        <div class="wrapper">
            <%@ include file="commons/bar.jsp"%>

            <main class="content-wrapper">
                <section class="content">
                    <div class="container-fluid"><div id="calendar"></div></div>
                </section>
            </main>
        </div>
        <%@ include file="commons/footer.jsp"%>
        <div
            class="modal fade"
            id="requestModal"
            tabindex="-1"
            role="dialog"
            aria-labelledby="myModalLabel"
            aria-hidden="true"
            data-backdrop="static"
        >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
							aria-hidden="true"
							onclick="closeRequestForm()"
                        >
                            &times;
                        </button>
                        <h4 class="modal-title">New Apply</h4>
                    </div>
                    <form
                        id="requestForm"
                        action="submitLeaveRequestFromCalendar"
                        method="post"
                    >
                        <div class="modal-body requestForm">
                            <input type="hidden" id="leaveId" name="leaveId" />
                            <div class="form-group">
                                <label class="form-title"> Leave Type: </label>
                                <div class="valid-wrap">
                                    <select
                                        class="form-control"
                                        name="leaveType"
                                    >
                                        <option value="1">Annual Leave</option>
                                        <option value="2">Sick Leave</option>
                                    </select>
                                </div>
                            </div>
                            <div class="date-group">
                                <div class="form-group calendar-left">
                                    <label class="form-title">
                                        Start Date:
                                    </label>
                                    <div class="valid-wrap">
                                        <input
                                            class="form-control"
                                            type="text"
                                            name="LeaveStartDate"
                                            id="startDate"
                                            readonly
                                            value=""
                                        />
                                    </div>
                                </div>

                                <div class="form-group time-right">
                                    <label class="form-title"> AM/PM: </label>
                                    <div class="valid-wrap">
                                        <select
                                            class="form-control"
                                            name="LeaveStartDateType"
                                        >
                                            <option value="0">AM</option>
                                            <option value="1">PM</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="date-group">
                                <div class="form-group calendar-left">
                                    <label class="form-title">
                                        End Date:
                                    </label>
                                    <div class="valid-wrap">
                                        <input
                                            class="form-control"
                                            type="text"
                                            name="LeaveEndDate"
                                            value=""
                                            id="endDate"
                                            readonly
                                        />
                                    </div>
                                </div>

                                <div class="form-group time-right">
                                    <label class="form-title"> AM/PM: </label>
                                    <div class="valid-wrap">
                                        <select
                                            class="form-control"
                                            name="LeaveEndDateType"
                                        >
                                            <option value="0">AM</option>
                                            <option value="1">PM</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-title"> Remarks : </label>
                                <div class="valid-wrap">
                                    <textarea
                                        style="height: auto;"
                                        class="form-control"
                                        name="Remarks"
                                        rows="4"
                                    ></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">
                                Save
							</button>
							<button
                                class="btn btn-secondary"
                                data-dismiss="modal"
								aria-hidden="true"
								id="deleteLeave" 
								onclick="deleteRequest()"
                            >
                                Delete
                            </button>
                            <button
                                class="btn btn-secondary"
                                data-dismiss="modal"
								aria-hidden="true"
								id="cancelAdd"
								onclick="closeRequestForm()"
                            >
                                Cancel
                            </button>
                        </div>
                    </form>
				</div>
				<form hidden="true" id="deleteForm" action="deleteLeaveRequestFromCalendar" method="post">
						<input type="text" id="deleteId" name="id"/>
				</form>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal -->
        </div>
    </body>
    <script>
        $(document).ready(function() {
			var leaveList = eval(${leaves});
			console.log(leaveList)
            formValidator()
            var nowTemp = new Date()
            var now = new Date(
                nowTemp.getFullYear(),
                nowTemp.getMonth(),
                nowTemp.getDate(),
                0,
                0,
                0,
                0
            )
            $('#startDate').fdatepicker({
                startDate: now,
                format: 'dd/mm/yyyy'
            })
            $('#endDate').fdatepicker({
                startDate: now,
                format: 'dd/mm/yyyy'
            })

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

		function deleteRequest() {
			var id = $("#leaveId").val()
			$("#deleteId").val(id);
			$("#deleteForm").submit();
        }
        function closeRequestForm() {
            $('#requestForm').data('bootstrapValidator').destroy()
            $('#requestForm').data('bootstrapValidator', null)
            formValidator()
        }
        function formValidator() {
            $('#requestForm').bootstrapValidator({
                live: 'enable',
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'fa fa-check ',
                    // invalid: 'fa fa-times',
                    validating: 'fa fa-refresh'
                },
                fields: {
                    LeaveStartDate: {
                        trigger: 'change',
                        message: 'This value is not valid',
                        validators: {
                            notEmpty: {
                                message: 'The start date cannot be empty'
                            }
                        }
                    },
                    LeaveEndDate: {
                        trigger: 'change',
                        message: 'This value is not valid',
                        validators: {
                            notEmpty: {
                                message: 'The end date cannot be empty'
                            }
                        }
                    },
                    Remarks: {
                        validators: {
                            notEmpty: {
                                message: 'The remarks cannot be empty'
                            }
                        }
                    }
                }
            })
        }
    </script>
</html>
