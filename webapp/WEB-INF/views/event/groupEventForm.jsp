<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML>
<html>
<head>
<title>${groupVo.group_name}</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/calendar.css" nonce="">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<link href="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.css?version=1.3" rel="stylesheet" type="text/css" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />   	

<style>



.eventinfo label {
	display : block;
	float: left;
	width : 150px;
	font-size: 20px;
	margin-top: 6.5px;
}

#namebox {
	display: inline-block;
	width:300px;
}

#eventTime{
	display: inline-block;
	width:300px;
}

.eventinfo div {
	display : inline-block;
}

.sub_tit {font-size: 24px; font-weight:  600;}

.btn-cre{
	background-color : #D95829;
}

.btn-can{
	background-color : #1B1C26;
}


</style>

</head>
<body>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<span class="logo"><img
				src="${pageContext.request.contextPath}/images/icons/logo.svg"
				alt="" /></span>
			<h1>${groupVo.group_name}</h1>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/group/groupHome2">Calender</a></li>
				<li><a
					href="${pageContext.request.contextPath}/group/groupEventForm"
					class="active">Event</a></li>
				<li><a href="${pageContext.request.contextPath}/group/board">Board</a></li>
				<li><a href="#cta">Setting</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Introduction -->
			<section class="main">


				<div id="step-wrapper">
					<div class="sub_tit">진행상황</div>
					<br>
					<ul class="guide-step row" style="margin-left: 7%; margin-bottom: 50px;">
						<li style="float: left;"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/recruit.png">
							<div class="title" style="text-align: center;">인원모집중</div></li>
						<li class="step-arrow" style="float: left;"><img
							src="${pageContext.request.contextPath}/images/guide/arrow.png"></li>
						<li style="float: left;"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/recruit-com.png">
							<div class="title" style="text-align: center;">모집완료</div></li>
						<li class="step-arrow" style="float: left;"><img
							src="${pageContext.request.contextPath}/images/guide/arrow.png"></li>
						<li style="float: left;"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/place.png">
							<div class="title" style="text-align: center;">장소 선정중</div></li>
						<li class="step-arrow" style="float: left;"><img
							src="${pageContext.request.contextPath}/images/guide/arrow.png"></li>
						<li style="float: left;"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/pay.png">
							<div class="title" style="text-align: center;">결제중</div></li>
						<li class="step-arrow" style="float: left;"><img
							src="${pageContext.request.contextPath}/images/guide/arrow.png"></li>
						<li style="float: left;"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/fin.png">
							<div class="title" style="text-align: center;">결제완료</div></li>
					</ul>
				</div>
				
				<br>

				<form method="post" action="${pageContext.request.contextPath }/group/addMeeting">
					<div class="wrapper"
						style="margin-left: 20%;">
						<div class="wrapper">
							<div class="sub_tit" style="text-align: left;">일정 만들기</div>
							<br>
							<div class="row">
								<div class="form-group col-md-4">
									<label class="form-text">일정 이름</label> <input
										class="input--style-4" type="text" name="event_title">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-4">
								<label class="form-text">일정 날짜</label> <input type="text"
									id="datePicker" name="event_date" class="form-control" value="">
							</div>

							<div class="form-group col-md-4">
								<label class="form-text">일정 시간</label> <input type="text"
									name="event_time" class="timepicker">
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-4">
								<label class="form-text">마감일</label> <input type="text"
									id="datePicker2" name="event_deadline" class="form-control"
									value="">
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-8">
								<label class="form-text">공지사항</label>
								<textarea class="form-control" name="event_content"></textarea>
							</div>
						</div>
						<br>
						<div class="bt-area col-md-offset-3">
							<div class="">
								<button class="btn btn--radius-2 btn-cre" type="submit"
									style="float: left;">등록</button>
							</div>
							<div class="">
								<button class="btn btn--radius-2 btn-can" type="button"
									style="float: left; margin-left: 10px;">취소</button>
							</div>
						</div>
						<input type="text" name="group_no" class="form-control" value="${param.no}">
					</div>
				</form>
			</section>
			
		</div>


		<!-- Footer -->
		<c:import url="/WEB-INF/views/include/homeFooter.jsp"></c:import>
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
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.ko.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/js//jquery-1.8.3.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.js?version=1.3"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

</body>


<script type="text/javascript">

	$(function() {
		$('#datePicker').datepicker({
			format : "yyyy-mm-dd", //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
			startDate : '-1y', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
			endDate : '+1y', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
			autoclose : true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
			calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
			clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
			datesDisabled : [],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
			daysOfWeekDisabled : [], //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
			daysOfWeekHighlighted : [], //강조 되어야 하는 요일 설정
			disableTouchKeyboard : false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
			immediateUpdates : false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
			multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
			multidateSeparator : "  /  ", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
			templates : {
				leftArrow : '&laquo;',
				rightArrow : '&raquo;'
			}, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
			showWeekDays : true,// 위에 요일 보여주는 옵션 기본값 : true
			todayHighlight : true, //오늘 날짜에 하이라이팅 기능 기본값 :false 
			toggleActive : true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
			weekStart : 0,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
			language : "ko" //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.

		});//datepicker end
	});//ready end

	$(function() {
		$('#datePicker2').datepicker({
			format : "yyyy-mm-dd", //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
			startDate : '-1y', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
			endDate : '+1y', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
			autoclose : true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
			calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
			clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
			datesDisabled : [],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
			daysOfWeekDisabled : [], //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
			daysOfWeekHighlighted : [], //강조 되어야 하는 요일 설정
			disableTouchKeyboard : false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
			immediateUpdates : false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
			multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
			multidateSeparator : "  /  ", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
			templates : {
				leftArrow : '&laquo;',
				rightArrow : '&raquo;'
			}, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
			showWeekDays : true,// 위에 요일 보여주는 옵션 기본값 : true
			todayHighlight : true, //오늘 날짜에 하이라이팅 기능 기본값 :false 
			toggleActive : true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
			weekStart : 0,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
			language : "ko" //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.

		});//datepicker end
	});//ready end

	$('.timepicker').timepicker({
		timeFormat : 'HH:mm',
		interval : 60,
		minTime : '09',
		maxTime : '11:00pm',
		defaultTime : '12',
		startTime : '00:00',
		dynamic : false,
		dropdown : true,
		scrollbar : true
	});
</script>
</html>