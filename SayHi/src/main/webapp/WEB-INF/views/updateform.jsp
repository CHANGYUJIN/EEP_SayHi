<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/detail_style.css">
<title>상품 수정 페이지 </title>
</head>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/views/navbar2.jsp" />
	</div>
	<script type="text/javascript">
		function update() {
			if (!updateForm.price.value) {
				alert("가격을 입력해주세요.");
			} else {
				updateForm.price.value = parseInt(updateForm.price.value);
				updateForm.submit();
			}
		}
	</script>
	<div class="container">
		<div class="small-container">
			<div class="row">
				<%-- <div class="col-2">
					<h3>${u.getName()}</h3>
					<img src='${u.getImage()}' width="80%">

				</div> --%>
	<form name="updateForm" action="../updateok" method="post">
		<table id="update">
		<h1>상품 수정</h1>
			<tr>
				<td>category</td>
				<td><input type="text" name="카테고리" value="${u.category}" /></td>
			</tr>
			<tr>
				<td>name</td>
				<td><input type="text" name="상품명" value="${u.name}" /></td>
			</tr>
			<tr>
				<td>brand</td>
				<td><input type="text" name="브랜드명" value="${u.brand}" /></td>
			</tr>
			<tr>
				<td>image</td>
				<td><input type="text" name="이미지" value="${u.image}" /></td>
			</tr>
			<tr>
				<td>price</td>
				<td><input type="text" name="가격" value="${u.price}" /></td>
			</tr>
			<tr>
				<td>size</td>
				<td><input type="text" name="사이즈" value="${u.size}" /></td>
			</tr>
		</table>
		<button type="button" onclick="history.back()">목록</button>
		<button type="button" onclick="update()">등록</button>
	</form>
	</div>
			</div>
		</div>
</body>
</html>