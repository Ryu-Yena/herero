<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE HTML>
<html>
<head>
	<title>${groupVo.group_name}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
	
	<style type="text/css">
	
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
			<p>${groupVo.founded_date}
				|| ${groupVo.category_name}<br />
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

			<!-- Content -->
			<section id="content" class="main">
				<div id="step-wrapper">
					<div class="sub_tit">진행상황</div>
					<br>
					<ul class="guide-step row" style="margin-left: 7%; margin-bottom: 50px;">
						<li style="float: left;" id="recuit"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/recruit.png">
							<div class="title" style="text-align: center;">인원모집중</div></li>
						<li class="step-arrow" style="float: left;"><img
							src="${pageContext.request.contextPath}/images/guide/arrow.png"></li>
						<li style="float: left;" id="recuit-com"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/recruit-com.png">
							<div class="title" style="text-align: center;">모집완료</div></li>
						<li class="step-arrow" style="float: left;"><img
							src="${pageContext.request.contextPath}/images/guide/arrow.png"></li>
						<li style="float: left;" id="fmap"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/place.png">
							<div class="title" style="text-align: center;">장소 선정중</div></li>
						<li class="step-arrow" style="float: left;"><img
							src="${pageContext.request.contextPath}/images/guide/arrow.png"></li>
						<li style="float: left;" id="pay"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/pay.png">
							<div class="title" style="text-align: center;">결제중</div></li>
						<li class="step-arrow" style="float: left;"><img
							src="${pageContext.request.contextPath}/images/guide/arrow.png"></li>
						<li style="float: left;" id="fin"><img class="gicon"
							src="${pageContext.request.contextPath}/images/guide/fin.png">
							<div class="title" style="text-align: center;">결제완료</div></li>
					</ul>
				</div>
				
				
				<form method="post" action="${pageContext.request.contextPath }/group/addMeeting">
					<div class="wrapper" style="margin-left: 20%;">
						<div class="wrapper">
							<div class="sub_tit">일정 참가</div><br>
							<br>
							<div class="row">
								<div class="form-group col-md-8">
									 <label class="label">일정 이름</label>
                                    <input class="input--style-4" type="text" name="first_name" placeholder="IT개발자 모임">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-4">
								<label class="label">일정 날짜</label>
                                    <input class="input--style-4" type="text" id="datepicker">
							</div>

							<div class="form-group col-md-4">
								<label class="label">일정 시간</label> <input type="text"
									name="event_time" class="timepicker">
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-4">
								<label class="label">인원모집 마감일</label>
                                    <input class="input--style-4" type="text" placeholder="2021-03-12">
							</div>
						</div>

						<div class="row">
							<div class="form-group col-md-8">
								<label class="label">공지사항</label>
								<textarea class="form-control" name="event_content"></textarea>
							</div>
						</div>
						<br>
						<div class="row">
						<div class="form-group col-md-8">
							<label class="label">참가자 목록</label>
                            <textarea  placeholder="현재 참여 인원(O명)"></textarea>
						</div>
						</div>
						<br>
						
						<div class="bt-area col-md-offset-3">
							<div class="">
								<button class="btn btn--radius-2 btn-cre" type="submit"
									style="float: left;">일정참가</button>
							</div>
							<div class="">
								<button class="btn btn--radius-2 btn-can" type="button"
									style="float: left; margin-left: 10px;">일정불참</button>
							</div>
						</div>
						<input type="hidden" name="group_no" class="form-control" value="${param.no}">
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
	</body>
</html>