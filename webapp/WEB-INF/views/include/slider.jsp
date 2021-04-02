<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
<div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <input type="radio" name="slide" id="slide4">
    <ul id="imgholder" class="imgs">
    	<c:forEach items="${groupVo.gImageList}" var="gImageVo">
        	<li><img src="${pageContext.request.contextPath}/upload/${gImageVo.image_name}"></li>
        </c:forEach>
    </ul>
    <div class="bullets">
    	<c:forEach items="${groupVo.gImageList}" varStatus="status">
    		 <label for="slide${status.count}">&nbsp;</label>
    	</c:forEach>
    </div>
</div>
</body>