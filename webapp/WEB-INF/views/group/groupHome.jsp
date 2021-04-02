<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>

<html>
	<head>
		<title>${groupVo.group_name}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/slider.css">

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
	
	</head>
	<body>
	
		<!-- Wrapper -->
			<div id="wrapper">
				<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
				<!-- Header -->
					<header id="header" class="alt">
						<span class="logo"><img src="${pageContext.request.contextPath}/images/icons/logo.svg" alt="" /></span>
						<h1>${groupVo.group_name}</h1>
					</header>


				<!-- Main -->
					<div id="main">

						<!-- Introduction -->
							<section id="information" class="main">
								<div class="spotlight">
									<c:import url="/WEB-INF/views/include/slider.jsp"></c:import>
									<div class="content" id="group-info">
									
										<p style="margin-bottom: 50px;">
											소모임장: ${groupVo.nickname}<br>	
											개설일: ${groupVo.founded_date}<br>
											분류: ${groupVo.category_name}<br>
											지역: ${groupVo.province} ${groupVo.name}<br>
											멤버수: ${groupVo.member_cnt}<br></p>
										<button type="button" id="group-join">소모임 가입하기</button><br>
										<!-- 
										<span style="margin-right: 30px; font-size: 15px;" >문의하기</span>
										<span style="font-size: 15px;">공유하기</span>
										 -->
									</div>
								</div>
							</section>

						<!-- First Section -->
							<section id="event" class="main special">
								<header class="major">
									<h2>About Us</h2>
								</header>
								<p  align="justify">
								${groupVo.content}
								</p>

							</section>

					</div>
					
				<!-- Footer -->
				<c:import url="/WEB-INF/views/include/homeFooter.jsp"></c:import>

			</div>
			
			
		<!-- 그룹가입 모달 -->
		<div id="modal-group-join" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="${pageContext.request.contextPath}/group/groupJoin" method="post">
						<div class="modal-header">
							<h4 class="modal-title">소모임 가입</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<p>소모임에서 사용할 닉네임을 입력해 주세요</p>
							<input class="form-control" type="text" name="nickname" value="">
							<input type="hidden" name="group_no" value="${groupVo.group_no}">
						</div>
						<div class="modal-footer">
					        <button type="submit" class="btn btn-primary">소모임 가입</button>
	     				</div>
     				</form>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->



		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/popper.js"></script>
			<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/skel.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/home.js"></script>

	</body>
	
	
	
<script type="text/javascript">

	$("#group-join").on("click", function(){
		console.log("클릭");
		
		if(${empty authUser}){
			alert("로그인이 필요한 서비스 입니다.");
			window.location.replace("${pageContext.request.contextPath}/user/loginForm");
		}else {
			$("[name='nickname'").val("");
			$("#modal-group-join").modal();
		}
		
	});
	
	
	
	

</script>	

</html>