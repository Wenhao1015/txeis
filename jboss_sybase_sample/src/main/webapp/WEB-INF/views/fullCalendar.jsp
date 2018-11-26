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
        
</body>
<script>

    $(document).ready(function() {
  
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
            events: [
              {
                title: 'All Day Event',
                start: '2018-03-01'
              },
              {
                title: 'Long Event',
                start: '2018-03-07',
                end: '2018-03-10'
              },
              {
                id: 999,
                title: 'Repeating Event',
                start: '2018-03-09T16:00:00'
              },
              {
                id: 999,
                title: 'Repeating Event',
                start: '2018-03-16T16:00:00'
              },
              {
                title: 'Conference',
                start: '2018-03-11',
                end: '2018-03-13'
              },
              {
                title: 'Meeting',
                start: '2018-03-12T10:30:00',
                end: '2018-03-12T12:30:00'
              },
              {
                title: 'Lunch',
                start: '2018-03-12T12:00:00'
              },
              {
                title: 'Meeting',
                start: '2018-03-12T14:30:00'
              },
              {
                title: 'Happy Hour',
                start: '2018-03-12T17:30:00'
              },
              {
                title: 'Dinner',
                start: '2018-03-12T20:00:00'
              },
              {
                title: 'Birthday Party',
                start: '2018-03-13T07:00:00'
              },
              {
                title: 'Click for Google',
                url: 'http://google.com/',
                start: '2018-03-28'
              }
            ],
            eventClick: function(calEvent, jsEvent, view) {
  
              alert('Event: ' + calEvent.title);
              alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);
              alert('View: ' + view.name);
  
              // change the border color just for fun
              $(this).css('border-color', 'red');
  
            },
            dayClick: function(date, allDay, jsEvent, view) { 
              var selDate =$.fullCalendar.formatDate(date,'yyyy-MM-dd');//格式化日期 
              alert(date)
              // console.log(allDay)
              // console.log(jsEvent)
              // console.log(view)
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
