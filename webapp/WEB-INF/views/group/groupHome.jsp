<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>

<style>
#group-info {
	position: relative;
	left: 100px;
}

#group-name {
	width : 250px;
	height : 50px;
	margin-bottom : 30px;
	color : white;
	background-color : #D95829;	
}

#group-join {
	width : 250px;
	height : 50px;
	color: white;
	background-color : purple;
}

</style>


<html>
	<head>
		<title>[자바야놀자]JAVA STUDY</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slider.css">
	</head>
	<body>
	
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header" class="alt">
						<span class="logo"><img src="${pageContext.request.contextPath}/images/icons/logo.svg" alt="" /></span>
						<h1>[자바야놀자]JAVA STUDY</h1>
						<p>2021-03-12 || IT/컨텐츠<br />
						built by <a href="#">@choikangryu</a></p>
					</header>


				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
							<section id="information" class="main">
								<div class="spotlight">
									<c:import url="/WEB-INF/views/include/slider.jsp"></c:import>
									<div class="content" id="group-info">
										<button type="button" id="group-name">소모임 이름 영역</button>
										<h5>지역: 서울특별시 서초구</h5>
										<h5 style="margin-bottom: 50px;">멤버수: 34명</h5>
										<button type="button" id="group-join">소모임 가입하기</button><br>
										<span style="margin-right: 30px; font-size: 15px;" >문의하기</span><span style="font-size: 15px;">공유하기</span>
									</div>
								</div>
							</section>

						<!-- First Section -->
							<section id="event" class="main special">
								<header class="major">
									<h2>상세 내용</h2>
								</header>
								<p  align="justify"><strong>소모임 규칙</strong><br>
								- 늦지 않기<br>
								- 불참 시 미리 알려주기 <br>
								- 대관 결제는 예약일로 24시간 내에 하기 (늦으면 예약 취소 됩니다!)<br>
								- 장소는 서로 상의 하에 정하는 걸로<br>
								- 매주 화요일 저녁 8시에 오프라인 모임 있습니다<br>
								</p>

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

	</body>
</html>