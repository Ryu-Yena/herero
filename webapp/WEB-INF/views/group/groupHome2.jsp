<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>${groupVo.group_name}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css" />
   	   	
   	   	
   	   	<!-- fullcalendar -->
   	   	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fullcalendar/main.css" />
   	   	
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
						<li><a href="${pageContext.request.contextPath}/group/groupHome2" class="active">Calender</a></li>
						<li><a href="${pageContext.request.contextPath}/group/eventBoard">Event</a></li>
						<li><a href="${pageContext.request.contextPath}/group/board">Board</a></li>
						<li><a href="#cta">Setting</a></li>
					</ul>
				</nav>

				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
						<section class="main">

							<c:import url="/WEB-INF/views/include/calendar.jsp"></c:import>

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