<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>[최강류우]JAVA STUDY</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/page.css" >
		
   	   	
   	   	<!-- modal -->
   	   	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
   	   	
   	  


	
	</head>
	<body>

		<!-- Wrapper -->
		<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<span class="logo"><img src="${pageContext.request.contextPath}/images/icons/logo.svg" alt="" /></span>
			<h1>[최강류우]JAVA STUDY</h1>
			<p>2021-03-12 || IT/컨텐츠<br />
			built by <a href="#">@choikangryu</a></p>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/group/groupHome2">Calender</a></li>
				<li><a
					href="${pageContext.request.contextPath}/group/groupEventForm" class="active">Event</a></li>
				<li><a href="${pageContext.request.contextPath}/group/board">Board</a></li>
				<li><a href="#cta">Setting</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Introduction -->
			<section class="main">
				<div>
				<button id="addMeeting" class="btn btn-defualt pull-right" style="background-color:  #4a90e2; ">일정 추가</button>
				</div>
				<br>
				<br>
				
				<h4>진행중인 일정</h4>
				<table class="table table-hover">
					<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th>상태</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>1</td>
						<td>4월 정기 정모일 참여투표</td>
						<td>2020/04/06</td>
						<td>진행중</td>
					</tr>
					<tr>
						<td>2</td>
						<td>4월 정기 정모일</td>
						<td>2020/04/06</td>
						<td></td>
					</tr>
					</tbody>
				
				</table>
				
				<br>
				<div class="page_wrap">
					<div class="page_nation">
						<a class="arrow prev"
							href="#"></a> <a href="#" class="active">1</a> <a href="#">2</a>
						<a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
						<a class="arrow next" href="#"></a>
					</div>
				</div>
				<br>
				<br>
				
				
				<h4>지난 일정</h4>				
				<table class="table table-hover">
					<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th>상태</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>1</td>
						<td>4월 정기 정모일 참여투표</td>
						<td>2020/04/06</td>
						<td>진행중</td>
					</tr>
					<tr>
						<td>2</td>
						<td>4월 정기 정모일</td>
						<td>2020/04/06</td>
						<td></td>
					</tr>
					</tbody>
				</table>
				
				<br>
				<div class="page_wrap">
					<div class="page_nation">
						<a class="arrow prev"
							href="#"></a> <a href="#" class="active">1</a> <a href="#">2</a>
						<a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
						<a class="arrow next" href="#"></a>
					</div>
				</div>
				<br>

			</section>

		</div>

		<!-- Footer -->
		<c:import url="/WEB-INF/views/include/homeFooter.jsp"></c:import>
		
		
		
		<!-- modal -->
	<div id="addMeetingModal" class="modal fade bs-example-modal-sm" tabindex="-1"
		role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="color: #000">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">일정 추가하기</h4>
				</div>

				<form method="post" action="${pageContext.request.contextPath }/group/addMeeting" >
					<div class="modal-body">
						<div class="form-group">
							<label class="form-text">일정 이름</label> <input id="event_title"
								type="text" name="event_title" value="" placeholder="일정 제목을 입력하세요">
						</div>
						<div class="form-group">
							<label class="form-text">일정 날짜</label>
							<input type="text" id="datePicker" name="event_date" class="form-control" value="">
						</div>
						
						<div class="form-group">
							<label class="form-text">마감일</label>
							<input type="text" id="datePicker2" name="event_deadline" class="form-control" value="">
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
				</form>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->

	</div>

	<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/skel.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/home.js"></script>
			<script src="${pageContext.request.contextPath}/assets/fullcalendar/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.ko.js"></script>
			

	</body>

	<script type="text/javascript">
	
	$("#addMeeting").on("click", function(){
		$("#addMeetingModal").modal();
	});
	
	$(function() {	
		$('#datePicker').datepicker({
		    format: "yyyy년mm월dd일",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		    startDate: '-1y',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		    endDate: '+1y',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		    datesDisabled : [],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
		    daysOfWeekDisabled : [],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
		    daysOfWeekHighlighted : [], //강조 되어야 하는 요일 설정
		    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
		    multidateSeparator :"  /  ", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		    templates : {
		        leftArrow: '&laquo;',
		        rightArrow: '&raquo;'
		    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
		    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
		    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		    language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
		    
		});//datepicker end
	});//ready end
	
	$(function() {	
		$('#datePicker2').datepicker({
		    format: "yyyy년mm월dd일",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		    startDate: '-1y',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		    endDate: '+1y',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		    autoclose : true,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		    datesDisabled : [],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
		    daysOfWeekDisabled : [],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
		    daysOfWeekHighlighted : [], //강조 되어야 하는 요일 설정
		    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
		    multidateSeparator :"  /  ", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		    templates : {
		        leftArrow: '&laquo;',
		        rightArrow: '&raquo;'
		    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
		    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
		    toggleActive : true,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		    language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
		    
		});//datepicker end
	});//ready end
	
	
	</script>
	
	
	
</html>