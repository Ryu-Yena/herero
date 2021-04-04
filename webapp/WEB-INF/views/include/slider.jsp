<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
<div class="slider">

	<c:forEach items="${groupVo.gImageList}" varStatus="status">
		<c:if test="${status.index == 0}">
    		<input type="radio" name="slide" id="slide${status.count}" checked="checked">
       	</c:if>
       	<c:if test="${status.index != 0}">
    		<input type="radio" name="slide" id="slide${status.count}" >
       	</c:if>
	</c:forEach>
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