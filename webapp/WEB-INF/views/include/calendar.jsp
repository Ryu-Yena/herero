<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>





<body>
	<div id='calendar'></div>

	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
</body>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		console.log(getEventList());
		
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView : "dayGridMonth",
			selectable : true,
			headerToolbar : {
				start : "",
				center : "prev title next",
				end : "today",
			},
			contentHeight : 600,
			fixedWeekCount : false,
			showNonCurrentDates : true,
			dayHeaderContent : function(date) {
				let weekList = [ "일", "월", "화", "수", "목", "금", "토" ];
				return weekList[date.dow];
			},
			editable : true,
			selectable : true,
			businessHours : true,
			dayMaxEvents : true, // allow "more" link when too many events
			dateClick : function(dateClickInfo) {
				const gray = "#787878";
				if (dateClickInfo.dayEl.style.backgroundColor) {
					dateClickInfo.dayEl.style.backgroundColor = "";
				} else {
					dateClickInfo.dayEl.style.backgroundColor = "#e7f0fd";
				}
			},
			/* events: getEventList() */
			
			events: [{"event_no":0,"group_no":0,"event_title":null,"event_date":null,"event_time":null,"event_deadline":null,"event_content":null,"title":"이벤트1","start":"2021-03-01"},{"event_no":0,"group_no":0,"event_title":null,"event_date":null,"event_time":null,"event_deadline":null,"event_content":null,"title":"이벤트2","start":"2021-03-02"},{"event_no":0,"group_no":0,"event_title":null,"event_date":null,"event_time":null,"event_deadline":null,"event_content":null,"title":"이벤트3","start":"2021-03-03"},{"event_no":0,"group_no":0,"event_title":null,"event_date":null,"event_time":null,"event_deadline":null,"event_content":null,"title":"이벤트4","start":"2021-03-04"},{"event_no":0,"group_no":0,"event_title":null,"event_date":null,"event_time":null,"event_deadline":null,"event_content":null,"title":"이벤트5","start":"2021-03-05"},{"event_no":0,"group_no":0,"event_title":null,"event_date":null,"event_time":null,"event_deadline":null,"event_content":null,"title":"이벤트6","start":"2021-03-06"},{"event_no":0,"group_no":0,"event_title":null,"event_date":null,"event_time":null,"event_deadline":null,"event_content":null,"title":"이벤트7","start":"2021-03-07"},{"event_no":0,"group_no":0,"event_title":null,"event_date":null,"event_time":null,"event_deadline":null,"event_content":null,"title":"이벤트8","start":"2021-03-08"},{"event_no":0,"group_no":0,"event_title":null,"event_date":null,"event_time":null,"event_deadline":null,"event_content":null,"title":"이벤트9","start":"2021-03-09"}]
			
			/* events:[ {
				title : 'Event1',
				start : '2021-03-04'
			}, {
				title : 'Event1',
				start : '2021-03-04'
			}, {
				title : 'Event1',
				start : '2021-04-04'
			} ]
 */
		});
		calendar.render();
	});


	
	/* 데이터 가져오기 */
	function getEventList(){
		var data;
		//데이타 전송
		$.ajax({
			
			url : "${pageContext.request.contextPath }/group/getEventList",		
			type : "post",
			/* contentType : "application/json", */
			/* data : {}, */
			
			dataType : "json",
			async: false,
			success : function(getEventList){
				/* console.log(getEventList); */
				data = getEventList;
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
		return data;
		
	};
	
	
	$(document).ready(function() {
	});

	//메뉴얼 : https://fullcalendar.io/docs/Calendar-addEventSource
</script>
