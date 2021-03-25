<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>소모임 만들기</title>

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/group.css" />

<style>

.loca-input {
	float : left;
	width: 50%;
	height : 38px;
}

.src-btn {
	float : left;
}

</style>

</head>
<body>
	<div id="page-wrapper">

		<!-- header +navi 옮김 -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>

		<!-- Main -->
		<section id="group" class="container">

			<section class="box special">
				<header class="major">
					<h2>소모임 만들기</h2>
				</header>

				<br> <br>
				<form>
					<div align="left">
						<h3><strong>STEP 1. 소모임 위치를 설정해주세요.</strong></h3>
					</div>
					<div>
						<input class="loca-input" type="text" placeholder="검색할 위치를 입력해주세요" />
						<button class="button src-btn" type="button">검색</button>
					</div>

					<br><br><br><br>
					<div align="left">
						<h3><strong>STEP 2. 소모임 관심사에 맞는 주제를 선택해주세요.</strong></h3>
						<h5>주제가 구체적일수록 비슷한 관심사를 가진 사람들에게 소모임을 홍보하기가 더 쉬워집니다.</h5>
						<a href="">+ 더 보기</a>					
					</div>
					
					<br><br>
					<div align="left">
						<h3><strong>STEP 3. 소모임 이름을 정해주세요.</strong></h3>
						<h5>사람들이 소모임의 성격과 내용을 파악할 수 있는 이름을 지어주세요. 떠오르는 기발한 이름이 있나요?<br>
							마음이 바뀌면 나중에 다시 변경할 수 있습니다.</h5>					
					</div>
					<div>
						<input class="loca-input" type="text" placeholder="이름입력" >
						<button class="button src-btn" type="button">중복확인</button>
					</div>
					
					<br><br><br><br>
					<div align="left">
						<h3><strong>STEP 4. 소모임의 주소(URL)를 정해주세요.</strong></h3>
						<h5>영문이나 숫자를 이용해 만들어 주세요. 예) http://herero.co.kr/( URL 주소 ) --> ( ) 입력해야 할 부분</h5>					
					</div>
					
					<div class="container-textbox">
						<input class="loca-input" type="text" placeholder="http://herero.co.kr/URL 주소" >
						<button class="button src-btn">중복확인</button>
					</div>
					
					<br><br><br><br>
					<div align="left">
						<h3><strong>STEP 5. 소모임의 대표 이미지를 설정해주세요.</strong></h3>
						<h5>소모임을 대표할 수 있는 이미지를 올려주세요.(최대 4장)</h5>					
					</div>
					<div align="left">
						<input class="" type="file">
					</div>
					
					<br>
					<br>
					
					<div align="left">
						<h3><strong>STEP 6. 소모임에 대해 소개해주세요.</strong></h3>
						<h5>설명글은 회원들에게 소모임을 홍보할 때 표시됩니다. 변경사항이 있다면 나중에 언제든지 업데이트가 가능합니다.</h5>					
					</div>
					<ul class="group-introlist" align="left">
						<li>소모임의 목적은 무엇인가요?</li>
						<li>어떤 회원을 모집하시나요?</li>
						<li>소모임에서는 어떤 활동이 이루어지나요?</li>
					</ul>
					<textarea class="intro-textarea" rows="6" placeholder="최소 50자 이상 입력해주세요" style="width: 80%;" ></textarea>

					<br><br><br><br>
					<input type="submit" src="${pageContext.request.contextPath}/group/groupHome" class="button primary">
					
					<br><br><br><br>
				</form>


			</section>
		</section>
		</div>

		<!-- footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>



</body>
</html>