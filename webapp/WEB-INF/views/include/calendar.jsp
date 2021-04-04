<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<body>
	<div id='calendar'></div>


	<!-- 이벤트 등록 모달 --> 
	<!-- modal -->
	<div id="addEventModal" class="modal fade bs-example-modal-sm" tabindex="-1"
		role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">일정 추가하기</h4>
				</div>

				<form method="post" action="${pageContext.request.contextPath }/group/addEvent" >
					<div class="modal-body">
						<div class="form-group">
							<label class="form-text">일정 이름</label> <input id="event_title"
								type="text" name="event_title" value="">
						</div>
						<div class="form-group">
							<label class="form-text">일정 날짜</label> <input id="event_date"
								type="text" name="event_date" value="">
						</div>

						<div class="form-group">
							<label class="form-text">일정 공지</label>
							<textarea class="form-control" id="content" name="event_content"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"
							style="background: gray;">취소</button>
						<button type="submit" class="btn btn-primary" id="btn_addEvent"
							style="background: #4e6ffb;">등록</button>
					</div>
					<input type="hidden" name="group_no" value="${param.no}">
				</form>
				
			</div>
			<!-- /.modal-content -->
			
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
		
	
		
	<!-- modal -->
	<!-- <div id="eventReader" class="modal fade bs-example-modal-sm" tabindex="-1"
		role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					
					<h4 class="modal-title">일정 추가하기</h4>
				</div>


				캘린더 정보 읽어오기


			</div>
			/.modal-dialog
		</div>
		/.modal -->
		
		
		
		
		<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
</body>


<script type="text/javascript">
	

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
			dateClick : function(info) {
				
				var bdate = info.dateStr;
				console.log(bdate);
				/*
				$("#addEvent").on('show.bs.modal', function(){
					console.log(bdate);
					$("[name='event_date']").val(bdate);
				});
				*/
				
				$("[name='event_date']").val(bdate);
				$("#addEventModal").modal();
				
				const gray = "#787878";
				if (dateClickInfo.dayEl.style.backgroundColor) {
					dateClickInfo.dayEl.style.backgroundColor = "";
				} else {
					dateClickInfo.dayEl.style.backgroundColor = "";
				}
			},
			events: getEventList()

			/*
			events:[ {
				title : 'Event1',
				start : '2021-03-04'
			}, {
				title : 'Event1',
				start : '2021-03-04'
			}, {
				no: 13
				title : 'Event1',
				start : '2021-04-04'
			} ]
		 	*/
		});
		calendar.render();
		
		
		
		//달력 이벤트명 클릭할때-->보기모달창
		$(".fc-event-title").on("click", function(){
			console.log("이벤트클릭");
			
			$("#addEvent").modal();
		});
	});
	
	

	/* 데이터 가져오기 */
	function getEventList() {
		var data;
		var group_no = "${param.no}";
		
		//데이타 전송
		$.ajax({

			url : "${pageContext.request.contextPath }/group/getEventList",
			type : "post",
			/* contentType : "application/json", */
			data : {no: group_no},

			dataType : "json",
			async : false,
			success : function(getEventList) {
				console.log(getEventList); 
				data = getEventList;
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

		return data;

	}
	
		

</script>
