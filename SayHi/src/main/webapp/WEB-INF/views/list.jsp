<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="../css/list_style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>File Upload</title>
</head>
<body>
	<div id="header">
		<jsp:include page="/WEB-INF/views/navbar.jsp" />
	</div>
	<div class="area">
		<p class="notice">스탠다드</p>
		<p class="notice">테라스샵</p>
	</div>
	<div class="lists">
		<div class="sort">
			<div class="category">
				<input type="radio" class="dropbtn" name="sort" id="category"
					checked="checked" /><label for="category">품목</label>
			</div>
			<div class="brand">
				<input type="radio" class="dropbtn" name="sort" id="brand" /><label
					for="brand">브랜드</label>
			</div>
		</div>
		<div class="product-list">
			<c:forEach items="${list}" var="u">
				<ul>
					<li class="product-box"><div class="product-detail">
							<c:set var="flag" value="${0}" />
							<c:forEach var="img" items="${imgFileList}" varStatus="status">
								<c:set var="uid" value="${u.id}" />
								<c:set var="pid" value="${img.product_id}" />
								<c:choose>
									<c:when test="${uid==pid and flag==0}">
										<img id="imgFile"
											src="<%=request.getContextPath()%>/resources/upload/image/${img.imageFileName}"
											alt="..." class="product-image">
										<c:set var="flag" value="${1}" />
									</c:when>
								</c:choose>
							</c:forEach>
							<p class="product-brand">${u.brand}</p>
							<p class="product-name">${u.name}</p>
							<p class="product-price">${u.price}</p>
							<p class="product-info">${u.rating}</p>
							<p class="product-info">${u.review_num}</p>
							<a href="detail/${u.getId()}" class="product-option">제품 상세보기</a>
							<a href="update/${u.getId()}" class="product-option">수정</a> <a
								href="delete/${u.getId()}" class="product-option">삭제</a> <a
								href="../image/create" class="product-option">이미지 업로드</a>
						</div></li>
				</ul>
			</c:forEach>
		</div>
	</div>
	<div>
		<a href="upload"> 상품 등록</a>
	</div>
</body>
</html>