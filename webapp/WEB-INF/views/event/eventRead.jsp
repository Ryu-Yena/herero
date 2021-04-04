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
				
				
				
				<div class="wrapper">
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
                            <div class="col-6">
                                <div class="input-group">
                                    <label class="label">공지사항</label>
                                    <div class="input-group-icon">
                                        <textarea placeholder="공지" style="width: 585px;"></textarea>
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
                        <div class="bt-area" style="margin-left: 325px;">
	                        <div class="">
	                            <button class="btn btn--radius-2 btn-cre" type="submit" style="float:left;">일정참가</button>
	                        </div>
	                         <div class="">
	                            <button class="btn btn--radius-2 btn-can" type="submit" style="float:left; margin-left: 10px;">일정불참</button>
	                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
				
				
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