<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	<form name="updateForm" action="../updateok" method="post">
		<table id="update">
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
				<td>image</td>
				<td><input type="text" name="image" value="${u.image}" /></td>
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
		<button type="button" onclick="update()">등록</button>
	</form>
</body>
</html>