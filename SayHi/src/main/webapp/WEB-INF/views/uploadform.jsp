<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
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

	<h1>상품 등록</h1>
	<form name="uploadForm" action="uploadok" method="post"
		enctype="multipart/form-data">
		<table id="upload">
			<tr>
				<td>category</td>
				<td><input type="text" name="category" /></td>
			</tr>
			<tr>
				<td>name</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>brand</td>
				<td><input type="text" name="brand" /></td>
			</tr>
			<tr>
				<td>image</td>
				<td><div class="my-5">
						<p>이미지 파일용</p>
						<input class="form-control" type="file" id="imagefile"
							name="imagefile" accept="image/*" multiple>
					</div></td>
			</tr>
			<tr>
				<td>price</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td>size</td>
				<td><input type="text" name="size" /></td>
			</tr>
		</table>
		<button type="button" onclick="history.back()">목록</button>
		<button type="button" onclick="send()">등록</button>
	</form>
</body>
</html>