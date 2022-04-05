<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/detail_style.css">

<title>상품 등록</title>
<style>
	#input {
		width: 300px;
		height: 50px;
		border-bottom: 3px solid black;	
	}
</style>
</head>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/views/navbar.jsp" />
	</div>
	<script type="text/javascript">
		function send() {
			if (!uploadForm.price.value) {
				alert("가격을 입력해주세요.");
			} else {
				uploadForm.price.value = parseInt(uploadForm.price.value);
				uploadForm.submit();
			}
		}
	</script>
	<div class="container">
		<div class="small-container">
			<div class="row">
	<form name="uploadForm" action="uploadok" method="post"
		enctype="multipart/form-data">
		<div class="col-2">		
		<table id="upload">
		<h1>상품 등록</h1>
			<tr>
				<td>카테고리</td>
				<td><input type="text" name="category" /></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>브랜드</td>
				<td><input type="text" name="brand" /></td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><div class="my-5">
					<input class="form-control" type="file" id="imagefile"
						name="imagefile" accept="image/*" multiple>
				</div></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td>사이즈</td>
				<td><input type="text" name="size" /></td>
			</tr>
		</table>
		</div>
		<button type="button" onclick="history.back()">목록</button>
		<button type="button" onclick="send()">등록</button>
	</form>
</body>
</html>