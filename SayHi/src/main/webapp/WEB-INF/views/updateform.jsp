<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function update_form() {
		if (!updateForm.price.value) {
			alert("가격을 입력해주세요.");
		} else {
			updateForm.price.value = parseInt(updateForm.price.value);
			updateForm.submit();
		}
	}
</script>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/detail_style.css">
<title>상품 수정 페이지</title>
</head>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/views/navbar2.jsp" />
	</div>
	<div class="container">
		<div class="small-container">
			<div class="row">
				<%-- <div class="col-2">
					<h3>${u.getName()}</h3>
					<img src='${u.getImage()}' width="80%">

				</div> --%>
<<<<<<< HEAD
				<form name="updateForm" action="../updateok" method="post">
					<table id="update">
						<h1>상품 수정</h1>
						<tr>
							<td>category</td>
							<td><input type="text" name="category" value="${u.category}" /></td>
						</tr>
						<tr>
							<td>name</td>
							<td><input type="text" name="name" value="${u.name}" /></td>
						</tr>
						<tr>
							<td>brand</td>
							<td><input type="text" name="brand" value="${u.brand}" /></td>
						</tr>
						<tr>
							<td>price</td>
							<td><input type="text" name="price" value="${u.price}" /></td>
						</tr>
						<tr>
							<td>size</td>
							<td><input type="text" name="size" value="${u.size}" /></td>
						</tr>
					</table>
					<button type="button" onclick="history.back()">목록</button>
					<button onclick="update_form();">등록</button>
				</form>
=======
	<form name="updateForm" action="../updateok" method="post" enctype="multipart/form-data">
		<table id="update">
		<h1>상품 수정</h1>
			<tr>
				<td>카테고리</td>
				<td><input type="text" name="카테고리" value="${u.category}" /></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="상품명" value="${u.name}" /></td>
			</tr>
			<tr>
				<td>브랜드</td>
				<td><input type="text" name="브랜드명" value="${u.brand}" /></td>
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
				<td><input type="text" name="가격" value="${u.price}" /></td>
			</tr>
			<tr>
				<td>사이즈</td>
				<td><input type="text" name="사이즈" value="${u.size}" /></td>
			</tr>
		</table>
		<button type="button" onclick="history.back()">목록</button>
		<button type="button" onclick="update()">등록</button>
	</form>
	</div>
>>>>>>> 900d831dfdb51b8ba23b576c4c2a482fd8da50e1
			</div>
		</div>
	</div>
</body>
</html>