<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>





<body>
    <div id='calendar'></div>
    
    
</body>

<script>

	
	
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		
		var calendar = new FullCalendar.Calendar(calendarEl, {
		 initialView: "dayGridMonth",
		 selectable: true,
         headerToolbar: {
           start: "",
           center: "prev title next",
           end: "today",
         },
        contentHeight: 600,
        fixedWeekCount: false,
        showNonCurrentDates: true,
        dayHeaderContent: function (date) {
          let weekList = ["일", "월", "화", "수", "목", "금", "토"];
          return weekList[date.dow];
        },
        editable: true,
        selectable: true,
        businessHours: true,
        dayMaxEvents: true, // allow "more" link when too many events
          dateClick: function (dateClickInfo) {
            const gray = "#787878";
            if (dateClickInfo.dayEl.style.backgroundColor) {
              dateClickInfo.dayEl.style.backgroundColor = "";
            } else {
              dateClickInfo.dayEl.style.backgroundColor = "#e7f0fd";
            }
          }			
		
		});
		calendar.render();
	});
	
	var data = [
		{
	      title: 'Event1',
	      start: '2021-03-04'
	    },
	    {
	      title: 'Event1',
	      start: '2021-03-04'
	    },
	    {
	      title: 'Event1',
	      start: '2021-04-04'
	    }	
	]


	$(document).ready(function(){
		calendar.addEventSource( data )
	});
	
	//메뉴얼 : https://fullcalendar.io/docs/Calendar-addEventSource

	

</script>
