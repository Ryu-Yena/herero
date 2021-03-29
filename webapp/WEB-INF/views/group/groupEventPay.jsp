<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML>
<html>
<head>
<title>[최강류우]JAVA STUDY</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/calendar.css" nonce="">


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>


<style>

#step-wrapper{margin-top: 60px;}
#step-wrapper .sub_tit{font-size: 24px; font-weight:  600;}
#step-wrapper .guide-step {list-style: none; padding: 0; margin-top: 50px;}
#step-wrapper .guide-step:after{content:""; clear: both; display: block;}
#step-wrapper .guide-step li{text-align: center; float: left; width:calc(18% + 6px);box-sizing:border-box;padding-left:20px;}
#step-wrapper .guide-step li:first-child{width:calc(18% - 24px);}
#step-wrapper .guide-step li:nth-child(n+2){background-image:url("/images/event/arrow.png");background-repeat:no-repeat; background-position: left  7.5px top 40px; background-size: 14px;}
#step-wrapper .guide-step li .title{font-size: 18px; font-weight: 600; margin-top: 10px;}
#step-wrapper .guide-step li .desc{margin-top: 10px; font-size: 12px;}
#step-wrapper img {width : 50px;}
#step-wrapper .guide-step .step-arrow {width : 0px;}
#step-wrapper .guide-step .step-arrow img {width : 20px;}

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

.bt-area .btn-cre{
	background-color : #D95829;
}

.bt-area .btn-can{
	background-color : #1B1C26;
}

</style>

</head>
<body>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<span class="logo"><img src="${pageContext.request.contextPath}/images/icons/logo.svg" alt="" /></span>
			<h1>[최강류우]JAVA STUDY</h1>
			<p>
				2021-03-12 || IT/컨텐츠<br /> built by <a href="#">@choikangryu</a>
			</p>
		</header>

		<!-- Nav -->
		<c:import url="/WEB-INF/views/include/homeNav.jsp"></c:import>

		<!-- Main -->
		<div id="main">

			<!-- Introduction -->
			<section id="event" class="main">

				<div id="step-wrapper">
					<div class="sub_tit">진행상황</div>
					<ul class="guide-step">
						<li><img src="${pageContext.request.contextPath}/images/event/recruit.png">
							<div class="title">인원모집중</div>
							<div class="desc">현재 인원을 모집중입니다.</div></li>
						<li class="step-arrow"><img src="${pageContext.request.contextPath}/images/event/arrow.png"></li>
						<li><img src="${pageContext.request.contextPath}/images/event/recruit-com.png">
							<div class="title">모집완료</div>
							<div class="desc">다음 단계까지 잠시만 기다려주세요.</div></li>
						<li class="step-arrow"><img src="${pageContext.request.contextPath}/images/event/arrow.png"></li>	
						<li><img src="${pageContext.request.contextPath}/images/event/place.png">
							<div class="title">장소 선정중</div>
							<div class="desc">일정 생성자가 장소를 예약중입니다.</div></li>
						<li class="step-arrow"><img src="${pageContext.request.contextPath}/images/event/arrow.png"></li>	
						<li><img src="${pageContext.request.contextPath}/images/event/pay.png">
							<div class="title">결제중</div>
							<div class="desc">장소 선정 완료되어 예약 결제중입니다.</div></li>
						<li class="step-arrow"><img src="${pageContext.request.contextPath}/images/event/arrow.png"></li>	
						<li><img src="${pageContext.request.contextPath}/images/event/fin.png">
							<div class="title">결제완료</div>
							<div class="desc">결제가 완료되었습니다.<br>모든 인원이 결제시 완료됩니다.</div></li>
					</ul>
				</div>
				
				<!-- <div class="eventinfo">
					<div class="eventname">
						<label for="name">일정이름</label>
						<input id="namebox" type="text">
					</div>
					<div class="eventdate">
						<label for="name">일정날짜</label>
						<input type="text" id="datepicker">
					</div>
					<div class="eventname">
						<label for="name">일정시간</label>
						<select id="eventTime">
							<option selected>시간설정</option>
							<option>07:00</option>
							<option>07:30</option>
							<option>08:00</option>
							<option>08:30</option>
						</select>
					</div>
					<div class="eventdate">
						<label for="name">인원모집마감일</label>
						<input type="text" id="datepicker">
					</div>
				</div>
				<div>
					<textarea class="eventdetail" style="width: 300px; float:left; display: inline-block;">세부내용</textarea>
				</div> -->
				
				
	<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins" style="margin-left: 20%;">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <div class="sub_tit">일정 참가</div><br>
                    <form method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">일정 이름</label>
                                    <input class="input--style-4" type="text" name="first_name" placeholder="IT개발자 모임">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">일정 날짜</label>
                                    <input class="input--style-4" type="text" id="datepicker">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">일정 시간</label>
                                    <div class="input-group-icon">
                                        <select style="width: 275px;">
                                        	<option>시간을선택해주세요</option>
                                        	<option>07:00</option>
                                        	<option selected>07:30</option>
                                        	<option>08:00</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">인원모집 마감일</label>
                                    <input class="input--style-4" type="text" id="datepicker" placeholder="2021-03-12">
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">공지사항</label>
                                    <div class="input-group-icon">
                                        <textarea placeholder="공지입력" style="width: 275px;"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">장소정보</label>
                                    <div class="input-group-icon">
                                        <textarea placeholder="장소이름 : 스타벅스~  결제금액: 15,000원" style="width: 275px;"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row row-space">
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">참가자 목록</label>
                                    <div class="input-group-icon">
                                        <textarea placeholder="현재 참여 인원(O명)" style="width: 585px;"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="bt-area" style="margin-left: 50%;">
	                        <div class="">
	                            <button class="btn btn--radius-2 btn-cre" type="submit" style="float:left;">결제하기</button>
	                        </div>
	                         <div class="">
	                            <button class="btn btn--radius-2 btn-can" type="submit" style="float:left; margin-left: 10px;">취소</button>
	                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
				
				
				
				

				<div class="spotlight"></div>

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
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>





	<script>
		$(function() {
			//모든 datepicker에 대한 공통 옵션 설정
			$.datepicker
					.setDefaults({
						dateFormat : 'yy-mm-dd' //Input Display Format 변경
						,
						showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
						,
						showMonthAfterYear : true //년도 먼저 나오고, 뒤에 월 표시
						,
						changeYear : true //콤보박스에서 년 선택 가능
						,
						changeMonth : true //콤보박스에서 월 선택 가능                
						,
						showOn : "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
						,
						buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
						,
						buttonImageOnly : true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
						,
						buttonText : "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
						,
						yearSuffix : "년" //달력의 년도 부분 뒤에 붙는 텍스트
						,
						monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7',
								'8', '9', '10', '11', '12' ] //달력의 월 부분 텍스트
						,
						monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip 텍스트
						,
						dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 부분 텍스트
						,
						dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일',
								'토요일' ] //달력의 요일 부분 Tooltip 텍스트
						,
						minDate : "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
						,
						maxDate : "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
					});

			//input을 datepicker로 선언
			$("#datepicker").datepicker();
			$("#datepicker2").datepicker();

			//From의 초기값을 오늘 날짜로 설정
			$('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
			//To의 초기값을 내일로 설정
			$('#datepicker2').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
		});
	</script>

</body>
</html>