<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="imageForm" action="uploadImageOk/${u.getId()}" method="post" enctype="multipart/form-data">
	<div>
		<input id="file-selected" name="image" type="file"
			accept=".jpg,.jpeg,.png,.img,.gif">
	</div>
	<button type="button" onclick="history.back()"> 목록 </button>
	<button type="submit" value="등록"></button>
</form>
</body>
</html>