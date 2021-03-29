<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>소모임 메인</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" >
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/group.css" >
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/page.css" >

<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->


</head>
<body class="landing is-preload">
	<div id="page-wrapper">

		<!-- header +navi 옮김 -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>

		<!-- Main -->
		
		<!-- Banner -->
		<section id="banner">
			<h2>소모임 찾기</h2>
		</section>
		
		<section id="Main" class="container">
			<section class="box special">
				<a href="${pageContext.request.contextPath}/group/groupForm" class="button small primary">소모임 만들기</a> <br> <br>

				<div class="row">
					<div class="col-6 col-12-narmal">
						<header class="major" style="text-align: left;">
							<i class="far fa-heart" style="color: #ff7851; margin: 5px;"></i>
							신규 소모임
						</header>

						<div class="row">
						
							<c:forEach items="${groupMainMap.lastlyGroupList}" var="groupVo"  varStatus="status">
							
								<div class="col-6 col-12-narmal">
									<div style="border: 1px solid #e5e5e5;">
										<img width="100%" src="${pageContext.request.contextPath}/upload/${groupVo.gImageMain.image_name}" alt="" />
										<h5>${groupVo.group_name}</h5>
										<p style="font-size: 13px; text-align: justify; padding: 10%;">
											분야: ${groupVo.category_name} <br> 지역: ${groupVo.province} ${groupVo.name}<br> 맴버: ${groupVo.member_cnt}명
										</p>
										<ul class="actions special">
											<li><a href="#" class="button primary small">소모임 가입하기</a></li>
										</ul>
									</div>
								</div>
							
							</c:forEach>
							
						</div>
					</div>

					<div class="col-6 col-12-narmal">
						<header class="major" style="text-align: left;">
							<i class="far fa-star" style="color: #ff7851; margin: 5px;"></i>
							추천 소모임
						</header>

						<div class="row">
						
							<c:forEach items="${groupMainMap.rcmdGroupList}" var="groupVo"  varStatus="status">
						
								<div class="col-6 col-12-narmal">
									<div style="border: 1px solid #e5e5e5;">
										<img width="100%"
											src="${pageContext.request.contextPath}/upload/${groupVo.gImageMain.image_name}"
											alt="" />
										<h5>${groupVo.group_name}</h5>
										<p style="font-size: 13px; text-align: justify; padding: 10%;">
											분야: ${groupVo.category_name} <br> 지역: ${groupVo.province} ${groupVo.name}<br> 맴버: ${groupVo.member_cnt}명
										</p>
										<ul class="actions special">
											<li><a href="#" class="button primary small">소모임 가입하기</a></li>
										</ul>
									</div>
								</div>
							</c:forEach>
						</div>	
								
					</div>
				</div>

				<br> <br>

				<section class="srcarea">
					<form action="${pageContext.request.contextPath}/group/groupMain" method="get">
					<div class="row">
						
						<!-- <span><p>'SEARCH'</p></span> -->
						<select id="selectBoxProvice" class="col-3" name="province_no">
						
						</select>
						<select id="selectBoxRegion" class="col-2"  name="region_no">
							<option selected value="0">구</option>
						</select>
						<select class="col-2" name="max_cnt">
							<option selected value="0">인원</option>
							<option value="2">2인</option>
							<option value="4">4인</option>
							<option value="6">6인</option>
							<option value="8">8인</option>
							<option value="9">8인이상</option>
						</select>
						<input class="col-3" name="gkeyword" type="text" placeholder="검색어를 입력해 주세요">
						<button id="btn-group-search" type="submit" class="button primary">검색</button>
						
					</div>
					</form>
				</section>

				<br>


				<!-- 전체리스트 출력영역 -->
				<c:forEach items="${groupMainMap.groupList}" var="groupVo"  varStatus="status">
					<c:if test="${status.index %2 == 0}">
						<div class="row" style="margin-bottom: 50px;">
					</c:if>
							<div class="col-6 col-12-narmal">
								<div style="border: 1px solid #e5e5e5;">
									<img class="gListImgH" src="${pageContext.request.contextPath}/upload/${groupVo.gImageMain.image_name}" alt="" style="float: left; margin-right: 15px;" />
									<div class="actions special" style="padding: 10px;">
										<h5>${groupVo.group_name}</h5>
										<p style="font-size: 13px; text-align: justify; ">
											분야 : ${groupVo.category_name} <br> 지역 : ${groupVo.province} ${groupVo.name}<br> 맴버 : ${groupVo.member_cnt}명 <br>
											<button class="button small" style="margin-left: 40px;">소모임 가입하기</button>
										</p>
									</div>
								</div>
							</div>
							
					<c:if test="${status.index %2 != 0}">
						</div>
					</c:if>
					
				</c:forEach>
				
				
				</div>
				
				<!-- paging -->
				<c:import url="/WEB-INF/views/include/page.jsp"></c:import>
				

			</section>
		</section>
		
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

	</div>

</body>


<script type="text/javascript">
/***********************************
*검색창
***********************************/

/* 시작할때 */
$(document).ready(function(){
   //지역1 리스트 출력
   getProvinceList();
});


//지역1을 선택할때 지역2 리스트 출력
$("#selectBoxProvice").on("change", function(){
	var province_no = $("#selectBoxProvice").val();
	getRegion(province_no);
	
});



/* 지역1 가져오기 */
function getProvinceList() {
	
	$.ajax({
		url : "${pageContext.request.contextPath }/group/getListProvinceOnly",		
		type : "post",
		/* contentType : "application/json", */
		/* data : {pKeyword: pKeyword}, */
		dataType : "json",
		success : function(provinceList){
			console.log(provinceList);
			
			var strHtml = "";
			
			strHtml += "<option selected value='0'>시/군</option>";
			for(var i=0; i<provinceList.length; i++){
				strHtml += "<option value='"+ provinceList[i].province_no +"'>"+ provinceList[i].province +"</option>";
			}
			
			$("#selectBoxProvice").html(strHtml);
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

/* 지역2 가져오기 */
function getRegion(province_no){
	$.ajax({
		url : "${pageContext.request.contextPath }/group/getListRegionOnly",		
		type : "post",
		/* contentType : "application/json", */
		data : {province_no: province_no},
		dataType : "json",
		success : function(regionList){
			console.log(regionList);
			
			var strHtml = "";
			
			strHtml += "<option selected value='0'>구</option>";
			for(var i=0; i<regionList.length; i++){
				strHtml += "<option value='"+ regionList[i].region_no +"'>"+ regionList[i].name +"</option>";
			}
			
			$("#selectBoxRegion").html(strHtml);
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
}

</script>

	



</html>