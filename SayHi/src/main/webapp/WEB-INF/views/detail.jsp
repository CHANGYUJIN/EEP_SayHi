<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="epp.sayhi.toy.model.Product"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/detail_style.css">
<title>상품 상세 페이지</title>
</head>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/views/navbar2.jsp" />
	</div>
	<div class="container">
		<div class="small-container">
			<div class="row">
				<div class="col-2">
					<h3>${u.getName()}</h3>
					<c:forEach var="img" items="${imgFileList}" varStatus="status">
						<img id="imgFile"
							src="<%=request.getContextPath()%>/resources/upload/image/${img.imageFileName}"
							alt="..." width="10%" height="10%">
					</c:forEach>

				</div>
				<div class="col-2">
					<h1>Product Info</h1>
					<p>Brand: ${u.getBrand()}</p>
					<p>좋아요 수: ${u.getRating()}</p>
					<p>구매 후기: ${u.getReview_num()}</p>
					<br>
					<h1>Price Info</h1>
					<p>Price: ${u.getPrice()}</p>
					<br>
					<h1>Size Info</h1>
					<p>Size: ${u.getSize()}</p>
					<br>
					<h1>Add to cart</h1>
					<select>
						<option>사이즈</option>
						<option>M</option>
					</select> <input type="number" value="1"> <a href="" class="btn">장바구니
						넣기</a> <br> <br> <input type="button" value="뒤로가기"
						onclick="history.back()" />
				</div>
			</div>
		</div>
	</div>
	<br />
</body>
</html>