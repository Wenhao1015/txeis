<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./css/fullcalendar.min.css">
    <%@ include file="commons/header.jsp"%>
    <script src='./js/moment.min.js'></script>
    <script src='./js/fullcalendar.min.js'></script>
    <script src='./js/theme-chooser.js'></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <%@ include file="commons/bar.jsp"%>
   
  
    <main  class="content-wrapper">
    	<section class="content">
    		<div class="container-fluid">
                <div id="calendar"></div>
        	</div>
        </section>
    </main>
  </div>  
    <%@ include file="commons/footer.jsp"%>
    <div class="modal fade" id="requestModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title">
                        New Apply
                    </h4>
                </div>
                    <form id="requestForm" action="submitLeaveRequest" method="post">
                        <div class="modal-body requestForm">
                        <input type="hidden" name="leaveId"/>
                        <div class="form-group">
                          <label class="form-title"> Leave Type: </label>
                          <div class="valid-wrap">
                            <select class="form-control" name="leaveType">
                              <option value="1">Annual Leave</option>
                              <option value="2">Sick Leave</option>
                            </select>
                          </div>
                        </div>
                        <div class="date-group">
                          <div class="form-group calendar-left">
                            <label class="form-title"> Start Date: </label>
                            <div class="valid-wrap">
                              <input class="form-control" type="text" name="LeaveStartDate"
                                id="startDate" readonly  value="" />
                            </div>
                          </div>
              
                          <div class="form-group time-right">
                            <label class="form-title"> AM/PM: </label>
                            <div class="valid-wrap">
                              <select class="form-control" name="LeaveStartDateType">
                                <option value="0">AM</option>
                                <option value="1">PM</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="date-group">
                          <div class="form-group calendar-left">
                            <label class="form-title"> End Date: </label>
                            <div class="valid-wrap">
                              <input class="form-control" type="text" name="LeaveEndDate" value=""
                                id="endDate" readonly />
                            </div>
                          </div>
              
                          <div class="form-group time-right">
                            <label class="form-title"> AM/PM: </label>
                            <div class="valid-wrap">
                              <select class="form-control" name="LeaveEndDateType">
                                <option value="0">AM</option>
                                <option value="1">PM</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="form-title"> Remarks : </label>
                          <div class="valid-wrap">
                            <textarea style="height: auto;" class="form-control" name="Remarks" rows="4"></textarea>
                          </div>
                        </div>
                      </div>
                        <div class="modal-footer">
                          <button type="submit" class="btn btn-primary">Save</button>
                          <button class="btn btn-secondary"  data-dismiss="modal" aria-hidden="true">Cancel</button>
                        </div>
                      
                    </form>
              
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</body>
<script>

    $(document).ready(function() {
      var nowTemp = new Date();
				var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(),
						nowTemp.getDate(), 0, 0, 0, 0);
				$('#startDate').fdatepicker({
          startDate : now,
          format:'mm/dd/yyyy'
				});
				$('#endDate').fdatepicker({
          startDate : now,
          format:'mm/dd/yyyy'
        });
        $('#requestForm').bootstrapValidator({
					live : 'enable',
					message : 'This value is not valid',
					feedbackIcons : {
						valid : 'fa fa-check ',
						// invalid: 'fa fa-times',
						validating : 'fa fa-refresh'
					},
					fields : {
						LeaveStartDate : {
							trigger : 'change',
							message : 'This value is not valid',
							validators : {
								notEmpty : {
									message : 'The start date cannot be empty'
								}
							}
						},
						LeaveEndDate : {
							trigger : 'change',
							message : 'This value is not valid',
							validators : {
								notEmpty : {
									message : 'The end date cannot be empty'
								}
							}
						},
						Remarks : {
							validators : {
								notEmpty : {
									message : 'The remarks cannot be empty'
								}
							}
						}
					},
					// submitHandler: function (validator, form, submitButton) {
          //       alert("submit");
          //   }
				});
		var json = eval(${events});
        alert(json[0].startDate);		
      initThemeChooser({
  		
        init: function(themeSystem) {
          $('#calendar').fullCalendar({
            themeSystem: themeSystem,
            header: {
              left: 'prev,next today',
              center: 'title',
              right: 'month,agendaWeek,agendaDay,listMonth'
            },
            defaultDate: '2018-03-12',
            weekNumbers: true,
            navLinks: true, // can click day/week names to navigate views
            editable: true,
            eventLimit: true, // allow "more" link when too many events
            events: [json],
            eventClick: function(calEvent, jsEvent, view) {
  
              alert('Event: ' + calEvent.title);
              alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
              alert('View: ' + view.name);
  
              // change the border color just for fun
              $(this).css('border-color', 'red');
  
            },
            dayClick: function(date, allDay, jsEvent, view) { 
              $('#requestModal').modal('show')
          }
          });
        },
  
        change: function(themeSystem) {
          $('#calendar').fullCalendar('option', 'themeSystem', themeSystem);
        }
  
      });
  
    });
  
  </script>
</html>
