<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

<title>소모임 만들기</title>

<!--===============================================================================================-->
<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css"
>
<!--===============================================================================================-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/group.css">


<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>


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

				<br>
				<br>
				<form id="groupForm" action="${pageContext.request.contextPath}/group/addGroup" method="post" enctype="multipart/form-data">
					<div align="left">
						<h3>
							<strong>STEP 1. 소모임 위치를 설정해주세요.</strong>
						</h3>
					</div>
					<div>
						<input id="txt-province" class="groupform-input" type="text" placeholder="검색할 위치를 입력해주세요" readonly>
						<button id="btn-modal-province" class="button groupform-btn" type="button">위치찾기</button>
					</div>
					<br>
					<br>
					<input type="text" name="province_no" value="">
					<input type="text" name="region_no" value="">
					<br>
					<br>
					
					<div align="left">
						<h3>
							<strong>STEP 2. 소모임 관심사에 맞는 주제를 선택해주세요.</strong>
						</h3>
						<h5>주제가 구체적일수록 비슷한 관심사를 가진 사람들에게 소모임을 홍보하기가 더 쉬워집니다.</h5>
					</div>
					<div>
						<input id="txt-category" class="groupform-input" type="text" placeholder="소모인 관심사를 입력해주세요" readonly>
						<button id="btn-modal-category" class="button groupform-btn" type="button">관심사찾기</button>
					</div>
					<br>
					<br>
					<input type="text" name="category_no" value="">
					<br>
					<br>
					<div align="left">
						<h3>
							<strong>STEP 3. 소모임 이름을 정해주세요.</strong>
						</h3>
						<h5>
							사람들이 소모임의 성격과 내용을 파악할 수 있는 이름을 지어주세요. 떠오르는 기발한 이름이 있나요?
							<br>
							마음이 바뀌면 나중에 다시 변경할 수 있습니다.
						</h5>
					</div>
					<div>
						<input class="groupform-input" type="text" placeholder="이름입력" name="group_name" value="">
						<button id="btn-groupNameCheck" class="button groupform-btn" type="button">중복확인</button>
					</div>
					<div id="groupNameCheckMsg" class="" align="left">
						<div class='bold'>소모임이름 중복확인을 해주세요</div>
					</div>

					<br>
					<br>
					<br>
					<br>
					<div align="left">
						<h3>
							<strong>STEP 4. 소모임의 주소(URL)를 정해주세요.</strong>
						</h3>
						<h5>영문이나 숫자를 이용해 만들어 주세요. 예) http://herero.co.kr/( URL 주소 ) --> ( ) 입력해야 할 부분</h5>
					</div>

					<div class="container-textbox">
						<input class="groupform-input" type="text" placeholder="http://herero.co.kr/URL 주소" name="group_url" value="">
						<button id="btn-groupUrlCheck" class="button groupform-btn" type="button">중복확인</button>
					</div>
					<div id="groupUrlCheckMsg" class="" align="left">
						<div class='bold'>주소(url) 중복확인을 해주세요</div>
					</div>

					<br>
					<br>
					<br>
					<br>
					<div align="left">
						<h3>
							<strong>STEP 5. 소모임의 대표 이미지를 설정해주세요.</strong>
						</h3>
						<h5>소모임을 대표할 수 있는 이미지를 올려주세요.(최대 4장)</h5>
					</div>
					<div align="left">
						<input id="file00" type="file" name="file" value="" >
						<input type="radio" name="mainImg" value="0" id="r00">
						<label for="r00">대표이미지</label> <br>
						
						<input id="file01" type="file" name="file" value="" >
						<input type="radio" name="mainImg" value="1" id="r01">
						<label for="r01">대표이미지</label> <br>
						
						<input id="file02" type="file" name="file" value="" >
						<input type="radio" name="mainImg" value="2" id="r02">
						<label for="r02">대표이미지</label> <br>
						
						<input id="file03" type="file" name="file" value="" >
						<input type="radio" name="mainImg" value="3" id="r03">
						<label for="r03">대표이미지</label> <br>
					</div>
					<br>
					<br>

					<div align="left">
						<h3>
							<strong>STEP 6. 소모임에 대해 소개해주세요.</strong>
						</h3>
						<h5>설명글은 회원들에게 소모임을 홍보할 때 표시됩니다. 변경사항이 있다면 나중에 언제든지 업데이트가 가능합니다.</h5>
					</div>
					<ul class="group-introlist" align="left">
						<li>소모임의 목적은 무엇인가요?</li>
						<li>어떤 회원을 모집하시나요?</li>
						<li>소모임에서는 어떤 활동이 이루어지나요?</li>
					</ul>
					<textarea class="" rows="6" placeholder="최소 50자 이상 입력해주세요" style="width: 80%;" name="content"  value=""></textarea>

					<br>
					<br>
					<br>
					<br>
					<button id="btn-addGroup" type="submit" class="button primary">소모임 만들기</button>

					<br>
					<br>
					<br>
					<br>
				</form>


			</section>
		</section>
	</div>

	<!-- footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>



	<!-- 모달영역 -->

	<!-- 주소찾기 모달 -->
	<div id="modal-province" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">소모임 위치 선택</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-group form-inline">
						<input id="txt-pKeyword" class="form-control" type="text" name="pKeyword" value="">
						<button id="btn-province-search" class="btn button pull-right" >위치 검색</button>
					</div>
					<div id="province-list-box">
						<table class="table table-condensed table-bordered table-hover">
							<tbody id="province-list-area">
							
							
							</tbody>
						</table>
					</div>
					
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	
	<!-- 소모임 관심사 찾기 모달 -->
	<div id="modal-category" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">소모임 관심사 선택</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div id="category-list-box">
						<table class="table table-condensed table-bordered table-hover">
							<tbody id="category-list-area">
							
							
							</tbody>
						</table>
					</div>
				</div>
				
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	

</body>

<script type="text/javascript">
    /***********************************
    *소모임 위치선택 모달창 관련
    ***********************************/
     var groupNameCK = false; /* 그룹명 조회 및 사용가능 체크변수  true변 사용할 수 있는 상태*/
     var urlNameCK = false; /* 그룹명 조회 및 사용가능 체크변수  true변 사용할 수 있는 상태*/
	
    /* 소모임 위치선택 모달창 호출버튼 클릭할때 */
	$("#btn-modal-province").on("click", function() {
		//초기화
		$("#txt-pKeyword").val("");
		$("#province-list-area").empty();
		//모달창 호출
		$("#modal-province").modal("show");
	});
	
	
	/* 소모임 위치선택 모달창 > 위치검색 버튼 클릭할때 */
	$("#btn-province-search").on("click", function() {
		//위치리스트 가져와서 출력
		getProvinceList();
	});
	
	/* 소모임 위치선택 모달창 > 위치선택 버튼을 클릭했을때 */
	$("#province-list-area").on("click", ".btn-province-choice", function() {
		//지역1 지역2 정보를 구하고
		var $this = $(this);
		var pno = $this.data("pno");
		var pname = $this.data("pname");
		var rno = $this.data("rno");
		var rname = $this.data("rname");
		
		//키값은 숨겨놓는다.
		$("[name='province_no']").val(pno);
		$("[name='region_no']").val(rno);
		
		//선택한 위치명을  화면에 출력한다.
		var strProvince = pname + "  > " + rname;
		$("#txt-province").val(strProvince);
		
		//모달창 닫는다
		$("#modal-province").modal("hide");
	});
	
	
	/***********************************
    *소모임 관심사선택 모달창 관련
    ***********************************/
	
     /* 소모임 관심사선택 모달창 호출버튼 클릭할때 */
	$("#btn-modal-category").on("click", function() {
		getCategoryList();
		$("#modal-category").modal("show");
	});
	
	
	/* 소모임 관심사선택 모달창 > 관심사선택 버튼을 클릭했을때 */
	$("#category-list-area").on("click", ".btn-category-choice", function() {
		var $this = $(this);
		var cno = $this.data("cno");
		var cname = $this.data("cname");
		
		//키값은 숨겨놓는다.
		$("[name='category_no']").val(cno);
		
		//선택한 관심사명을  화면에 출력한다.
		$("#txt-category").val(cname);
		
		//모달창 닫는다
		$("#modal-category").modal("hide");
	});
	
	
	/***********************************
    *소모임 그룹명 관련
    ***********************************/
	
    /* 소모임 > 그룹명 중복 체크 */
	$("#btn-groupNameCheck").on("click", function(){
		console.log("그룹명 체크");
		groupNameCheck();
	});
	
	/* 소모임 > 그룹명 중복 체크 > 그룹명 입력칸에 변화가 있는경우*/
	$("[name=group_name]").on("propertychange change keyup paste input", function(){
		console.log("그룹명 변화");
		var strHtml = "<div class='bold'>소모임이름 중복확인을 해주세요</div>"
		$("#groupNameCheckMsg").html(strHtml);
		groupNameCK = false; //그룹명 체크 변수를 사용불가로 변경
	});

	
	
	
	/***********************************
    *소모임 URL 관련
    ***********************************/
     
    /* 소모임 > URL 중복 체크 */
 	$("#btn-groupUrlCheck").on("click", function(){
 		console.log("url 체크");
 		groupUrlCheck();
 	});
    
    
 	/* 소모임 > url 중복 체크 > url 입력칸에 변화가 있는경우*/
	$("[name=group_url]").on("propertychange change keyup paste", function(){
		console.log("url 변화");
		var strHtml = "<div class='bold'>주소(url) 중복확인을 해주세요</div>"
		$("#groupUrlCheckMsg").html(strHtml);
		urlNameCK = false; //그룹명 체크 변수를 사용불가로 변경
	});
 	
    
	/***********************************
	*소모임 첨부파일
	***********************************/
 	
 	
	/***********************************
    *소모임 저장 관련
    ***********************************/
 	$("#groupForm").on("submit", function(){

 		//소모임 위치 체크
 		var province_no = $("[name='province_no']").val();
 		if(province_no == null || province_no == ''){
 			alert("소모임 위치를 선택해 주세요");
 			$("#txt-province").focus();
 			return false;
 		}
 		
 		//소모임 관심 분야 체크
 		var category_no = $("[name='category_no']").val();
 		if(category_no == null || category_no == ''){
 			alert("관심분야를 선택해 주세요");
 			$("#txt-category").focus();
 			return false;
 		}
 		
 		//소모임 이름 체크
 		if(groupNameCK == false){
 			alert("소모임이름을 체크해 주세요");
 			$("[name='group_name']").focus();
 			return false;
 		}
 		
 		//소모임 url 체크
 		if(urlNameCK == false){
 			alert("소모임url을 체크해 주세요");
 			$("[name='group_url']").focus();
 			return false;
 		}
 		
 		//파일 유뮤, 대표이미지 체크
 		var fileCK = $("[name='file']").val();
 		if(fileCK == false){
 		 	alert("이미지를 첨부해 주세요");
 		 	$("#file00").focus();
 			return false;
 		}
 		
 		var mainImgCK = false; 
 		$("[name='mainImg']").each(function() {
 			if($(this).is(":checked")){
 				mainImgCK = true;
 			}
 		});
 		if(mainImgCK == false){
 			alert("대표이미지를 선택해 주세요");
 			$("#r00").focus();
 			return false;
 		}

 		
 		//소개글 체크
 		var content = $("[name='content']").val();
 		if(content == null || content == ''){
 			alert("소개글을 입력해 주세요");
 			$("[name='content']").focus();
 			return false;
 		}
 		
 		
 	});
    
    
 	
 	
     
	/* 위치리스트 가져오기 + 검색 결과출력 */
	function getProvinceList() {
		var pKeyword = $("#txt-pKeyword").val();
		
		$.ajax({
			url : "${pageContext.request.contextPath }/group/getProvinceList",		
			type : "post",
			/* contentType : "application/json", */
			data : {pKeyword: pKeyword},
			dataType : "json",
			success : function(provinceList){
				console.log(provinceList);
				
				var strHtml = "";
				for(var i=0; i<provinceList.length; i++){
					strHtml += "<tr>";
					
					if( provinceList[i].province == null ){
						provinceList[i].province = "";
					}
					if( provinceList[i].name == null ){
						provinceList[i].name = "";
					}
					
					strHtml += "	<td>"+ provinceList[i].province+ "</td>";
					strHtml += "	<td>"+ provinceList[i].name+ "</td>";
					strHtml += "	<td class='text-center'>";
					strHtml += "	    <button data-pno='"+provinceList[i].province_no+"' data-pname='"+provinceList[i].province+"' ";
					strHtml += "	            data-rno='"+provinceList[i].region_no+"' data-rname='"+provinceList[i].name+"' ";
					strHtml += "	            class='btn-province-choice btn btn-default btn-xs'>선택</button>";
					strHtml += "	</td>";
					
					strHtml += "</tr>";
				}
				
				$("#province-list-area").html(strHtml);
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	
	/* 관심사리스트 가져오기 + 출력 */
	function getCategoryList() {
		
		$.ajax({
			url : "${pageContext.request.contextPath }/group/getCategoryList",		
			type : "post",
			dataType : "json",
			success : function(categoryList){
				console.log(categoryList);
				
				
				var strHtml = "";
				for(var i=0; i<categoryList.length; i++){
					strHtml += "<tr>";
					
					strHtml += "	<td>"+ categoryList[i].category_name+ "</td>";
					strHtml += "	<td class='text-center'>";
					strHtml += "	    <button data-cno='"+categoryList[i].category_no+"' data-cname='"+categoryList[i].category_name+"' ";
					strHtml += "	            class='btn-category-choice btn btn-default btn-xs'>선택</button>";
					strHtml += "	</td>";
					
					strHtml += "</tr>";
				}
				
				$("#category-list-area").html(strHtml);
		
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	}
	
	
	/* 그룹명 중복체크 */
	function groupNameCheck() {
		var group_name = $("[name=group_name]").val();
		
		if(group_name.length > 0){
			$.ajax({
				url : "${pageContext.request.contextPath }/group/groupNameCheck",		
				type : "post",
				data : {group_name: group_name},
				dataType : "json",
				success : function(resultMap){
					console.log(resultMap.result);
					
					if(resultMap.result == 0){
						var strHtml = "<div class='text-success bold'>사용할 수 있는 그룹명입니다.</div>"
						$("#groupNameCheckMsg").html(strHtml);
						groupNameCK = true; //그룹명 체크 변수를 사용가능으로 변경
					}else {
						var strHtml = "<div class='text-danger bold'>사용할 수 없는 그룹명입니다. 다시 입력해주세요</div>"
						$("#groupNameCheckMsg").html(strHtml);
						groupNameCK = false; //그룹명 체크 변수를 사용불가로 변경
					}
			
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
	}
	
	
	/* url 중복체크 */
	function groupUrlCheck() {
		var group_url = $("[name=group_url]").val();
		
		if(group_url.length > 0){
			$.ajax({
				url : "${pageContext.request.contextPath }/group/groupUrlCheck",		
				type : "post",
				data : {group_url: group_url},
				dataType : "json",
				success : function(resultMap){
					console.log(resultMap.result);
					
					if(resultMap.result == 0){
						var strHtml = "<div class='text-success bold'>사용할 수 있는 주소(url)입니다.</div>"
						$("#groupUrlCheckMsg").html(strHtml);
						urlNameCK = true; //주소(url) 체크 변수를 사용가능으로 변경
					}else {
						var strHtml = "<div class='text-danger bold'>사용할 수 없는 주소(url)입니다. 다시 입력해주세요</div>"
						$("#groupUrlCheckMsg").html(strHtml);
						urlNameCK = false; //주소(url) 체크 변수를 사용불가로 변경
					}
			
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
	}
</script>

</html>