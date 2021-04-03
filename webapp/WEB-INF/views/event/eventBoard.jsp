<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>${groupVo.group_name}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/page.css" >
		<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
		<link href="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.css?version=1.3" rel="stylesheet" type="text/css" media="screen">
   	   	
   	   	<!-- modal -->
   	   	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
   	   	
   	  


	
	</head>
	<body>

		<!-- Wrapper -->
		<div id="wrapper">

		<!-- Header -->
			<header id="header" class="alt">
				<span class="logo"><img src="${pageContext.request.contextPath}/images/icons/logo.svg" alt="" /></span>
				<h1>${groupVo.group_name}</h1>
				<p>${groupVo.founded_date} || ${groupVo.category_name}<br />
			</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/group/groupHome?no=${groupVo.group_no}">Calender</a></li>
				<li><a href="${pageContext.request.contextPath}/group/meetList?no=${groupVo.group_no}" class="active">Event</a></li>
				<li><a href="${pageContext.request.contextPath}/group/board">Board</a></li>
				<li><a href="#cta">Setting</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Introduction -->
			<section class="main">
				<div>
				<button id="addMeeting" class="btn btn-defualt pull-right" style="background-color:  #4a90e2; ">
				<a href="${pageContext.request.contextPath}/group/meetForm?no=${groupVo.group_no}">일정 추가</a></button>
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
						<th>마감일</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${meetingList}" var="meetVo">
					<tr>
						<td>${meetVo.event_no}</td>
						<td>${meetVo.event_title}</td>
						<td>${meetVo.event_date}</td>
						<td>${meetVo.event_deadline}</td>
					</tr>
					</c:forEach>
					</tbody>
				
				</table>
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
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap-datepicker.ko.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/js//jquery-1.8.3.min.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/jquery/jquery-ui.js?version=1.3"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
			
			

	</body>

	
</html>