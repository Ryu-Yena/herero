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
        events: {
	        url: "${pageContext.request.contextPath}/group/groupHome2",
	        method: "GET",
	        failure: function () {
	          alert("there was an error while fetching events!");
	        },
	      },
	     eventDidMount: function (arg) {
            const eventTitle = arg.event.title;
            const eventEl = arg.el;

            const firstIconEl = eventEl.querySelector(".event-icon.first");
            const secondIconEl = eventEl.querySelector(".event-icon.second");

            firstIconEl.addEventListener("click", () =>
              firstIconClickHandler(eventTitle)
            );
            secondIconEl.addEventListener("click", () =>
              secondIconClickHandler(eventTitle)
            );
          },
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
</script>
