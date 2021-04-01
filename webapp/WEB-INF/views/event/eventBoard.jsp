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
				<button id="eventModal" class="btn btn-defualt pull-right" style="background-color:  #4a90e2; ">일정 추가</button>
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