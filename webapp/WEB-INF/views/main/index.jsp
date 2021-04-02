<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
<title>HERE로</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="landing is-preload">
	<div id="page-wrapper">

		<!-- header +navi 옮김 -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>

		<!-- Banner -->
		<section id="banner">
			<h2>HERERO</h2>
			<p>
				소모임 개설에서부터 오프라인 대관예약까지 이 모든 걸 한 번에<br>
				해결하고 싶은 사람들 모두 여기(HERE)로!
			</p>
			<ul class="actions special">
				<li><a href="${pageContext.request.contextPath}/mgroup/groupForm" class="button primary">소모임 만들기</a></li>
				<li><a href="${pageContext.request.contextPath}/place/main" class="button">대관 예약하기</a></li>
			</ul>
		</section>

		<!-- Main -->
		<section id="main" class="container">

			<section class="box special">
				<header class="major">
					<h2>'HERE로'에 처음 온 당신을 위한 안내서</h2>
					<p>히어로에서 소모임 완벽정복을 위한 4STEP 안내서</p>
				</header>

				<section class="box special features">
					<div class="features-row">
						<section>
							<span class="icon solid major fa-bolt accent2"></span>
							<h3>STEP1. 회원가입하기</h3>
							<p style="text-align: justify;">'HERE로' 서비는 회원가입을 한 고객을 대상으로 서비스를 하고 있습니다.
								회원가입에는 어떠한 비용도 발생하지 않으며 간단작성으로 가입을 완료할 수 있습니다.</p>
						</section>
						<section>
							<span class="icon solid major fa-chart-area accent3"></span>
							<h3>STEP2. 소모임 가입하기</h3>
							<p style="text-align: justify;">소모임에 대해 검색해보고 원하는 소모임에 들어가 가입하기를 누르기!</p>
						</section>
					</div>
					<div class="features-row">
						<section>
							<span class="icon solid major fa-cloud accent4"></span>
							<h3>STEP3. 소모임 만들기</h3>
							<p style="text-align: justify;">원하는 소모임이 없다면 소모임 만들기를 눌러서 자신의 소모임에 대해 소개글을 작성하고 소모임 만들기!</p>
						</section>
						<section>
							<span class="icon solid major fa-lock accent5"></span>
							<h3>STEP4. 대관예약하기</h3>
							<p style="text-align: justify;">대관예약에 들어가서 위치와 인원에 맞는 대관을 찾아 예약하기!
							      대관 예약은 예약일로부터 24시간 내에 결제가 이루어지지 않으면 취소됩니다.</p>
						</section>
					</div>
				</section>
			</section>



			<section class="box special">
				<header class="major">
					<h2>나에게 딱맞는 소모임을 찾아보자</h2>
				</header>
			</section>



			<div class="row">
			
				<c:forEach items="${lastlyGroupList}" var="groupVo">
					<div class="col-3 col-12-normal">

						<section class="box special">
							<span class="image featured">
								<img src="${pageContext.request.contextPath}/upload/${groupVo.gImageMain.image_name}"	alt="" /></span>
							<h5>${groupVo.group_name}</h5>
							<p align="justify" style="font-size: 13px;"> 
							    분야: ${groupVo.category_name}<br>
								지역: ${groupVo.province} ${groupVo.name}<br>
								맴버수: ${groupVo.member_cnt}명</p>
							<ul class="actions special">
								<li><a href="${pageContext.request.contextPath}/group/groupHome?no=${groupVo.group_no}"" class="button alt">소모임 가입하기</a></li>
							</ul>
						</section>

					</div>
					
				</c:forEach>
				
		</section>


		<!-- footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>