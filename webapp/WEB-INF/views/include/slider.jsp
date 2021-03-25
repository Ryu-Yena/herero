<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
<div class="slider">
    <input type="radio" name="slide" id="slide1" checked>
    <input type="radio" name="slide" id="slide2">
    <input type="radio" name="slide" id="slide3">
    <input type="radio" name="slide" id="slide4">
    <ul id="imgholder" class="imgs">
        <li><img src="${pageContext.request.contextPath}/images/slide/slide1.jpg"></li>
        <li><img src="${pageContext.request.contextPath}/images/slide/slide2.jpg"></li>
        <li><img src="${pageContext.request.contextPath}/images/slide/slide3.jpg"></li>
        <li><img src="${pageContext.request.contextPath}/images/slide/slide4.jpg"></li>
    </ul>
    <div class="bullets">
        <label for="slide1">&nbsp;</label>
        <label for="slide2">&nbsp;</label>
        <label for="slide3">&nbsp;</label>
        <label for="slide4">&nbsp;</label>
    </div>
</div>
</body>