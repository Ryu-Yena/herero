<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<head>

<title>${placeVo.placeName}</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/place.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slider2.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/calendar2.css">

</head>
<body>

	<!-- header +navi 옮김 -->
	<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
	


	<!-- ABOUT SECTION -->
	<section id="about" class="container">
		<br><br><br>
		<section class="box special">
			<div style="text-align: justify; padding-left: 20px;">
				<h2>${placeVo.placeName}</h2>
			</div>
				<div class="row">
				<div class="col-md-8 col-sm-12">
						<div class="wow fadeInUp" data-wow-delay="0.4s">
						</div>

						<c:import url="/WEB-INF/views/include/slider2.jsp"></c:import>
					</div>

					<div class="col-md-4 col-sm-12">
						<div class="about-thumb">
							<div class="wow fadeInUp section-title" data-wow-delay="0.6s">
								<h2>  </h2>
							</div>
							<div class="wow fadeInUp" data-wow-delay="0.8s">
								<p style="text-align: justify; margin-bottom: 10px; font-size: 14px;">
									주소 : ${placeVo.placeAddress} <br>
									대관 종류: ${placeVo.placeCategory} <br></p>
									<br>
									
									<table>
									<thead>룸 정보</thead>
									<tr>
										<td>이용가능 인원</td>
										<td>가격</td>
										<td>계약금</td>
									</tr>
									<c:forEach items="${placeVo.roomList}" var="placeVo">
									<tr>
										<td>${placeVo.roomMember}인</td>
										<td>${placeVo.roomPrice}원</td>
										<td>${placeVo.roomFee}원</td>
									</tr>
									</c:forEach>
									</table>

							</div>
						</div>
					</div>

				</div>

			<!-- WORK SECTION -->
			<section id="work">
				<div class="container">
					<div class="row">

						<div class="col-md-9 col-sm-12" style="text-align: justify;">
							<div class="wow fadeInUp section-title" data-wow-delay="0.2s">
								<h2>About Us</h2>
								<br>
								<br>
								<p>
									${placeVo.placeContent}
								</p>
							</div>
						</div>
						<div class="col-md-3 col-sm-12" style="text-align: justify;">
							<div style="text-align: justify;">
								<strong>위치 </strong>
							</div>
							<p style="text-align: justify;">구글 지도 삽입</p>
						</div>
					</div>
				</div>
			</section>

			<!-- SKILL SECTION -->
			<section id="skill">
				<div class="container wow fadeInUp" style="text-align: justify;">
									<h2>Reservation</h2>	
					<div class="row">

						<div class="col-md-6 col-sm-6">
							<div class="section-title" data-wow-delay="0.2s">
								<c:import url="/WEB-INF/views/include/calendar2.jsp"></c:import>
							</div>
						</div>
						

						<div class="col-md-6 col-sm-6">
							<button class="button primary fit small" style="align: center;">예약하기</button>
							<div></div>
						</div>
					</div>

				</div>
			</section>
		</section>
	</section>


	<!-- footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>



	<!-- SCRIPTS -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/smoothscroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/magnific-popup-options.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/wow.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>

</body>
</html>