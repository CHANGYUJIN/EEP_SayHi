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
<script>
	function subcategory_dp(v, id) {
		if (v == "category") {
			document.getElementById(id).style.display = "";
		} else {
			document.getElementById(id).style.display = "none";
		}
	}
</script>
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
					checked="checked" value="category" onClick="subcategory_dp(this.value, 'subcategory');"/><label for="category" class="catlabel">품목</label>
			</div>
			<div class="brand">
				<input type="radio" class="dropbtn" name="sort" id="brand" value="brand" onClick="subcategory_dp(this.value, 'subcategory');"/><label
					for="brand" class="catlabel">브랜드</label>
			</div>
			<div id="subcategory">
					<label for="tops" class="subcatlabel">상의</label>
					<input type="radio" name="sub" id="tops" value="topmenu">
					<div class="submenu" id="topmenu">
						<ul>
							<li>전체</li>
							<li>반팔 티셔츠</li>
							<li>긴팔 티셔츠</li>
							<li>민소매 티셔츠</li>
							<li>셔츠/블라우스</li>
							<li>피케/카라 티셔츠</li>
							<li>맨투맨/스웨트셔츠</li>
							<li>후드 티셔츠</li>
							<li>니트/스웨터</li>
						</ul>
					</div>
				<label for="outer"  class="subcatlabel">아우터</label>
				<input type="radio" name="sub" id="outer">
				<div class="submenu" id="outermenu">
						<ul>
							<li>전체</li>
							<li>반팔 티셔츠</li>
							<li>긴팔 티셔츠</li>
							<li>민소매 티셔츠</li>
							<li>셔츠/블라우스</li>
							<li>피케/카라 티셔츠</li>
							<li>맨투맨/스웨트셔츠</li>
							<li>후드 티셔츠</li>
							<li>니트/스웨터</li>
						</ul>
					</div>
				<label for="pants"  class="subcatlabel">바지</label>
				<input type="radio" name="sub" id="pants">
				<div class="submenu" id="pantsmenu">
						<ul>
							<li>전체</li>
							<li>반팔 티셔츠</li>
							<li>긴팔 티셔츠</li>
							<li>민소매 티셔츠</li>
							<li>셔츠/블라우스</li>
							<li>피케/카라 티셔츠</li>
							<li>맨투맨/스웨트셔츠</li>
							<li>후드 티셔츠</li>
							<li>니트/스웨터</li>
						</ul>
					</div>
				<label for="onepiece"  class="subcatlabel">원피스</label>
				<input type="radio" name="sub" id="onepiece">
				<div class="submenu" id="onepiecemenu">
						<ul>
							<li>전체</li>
							<li>반팔 티셔츠</li>
							<li>긴팔 티셔츠</li>
							<li>민소매 티셔츠</li>
							<li>셔츠/블라우스</li>
							<li>피케/카라 티셔츠</li>
							<li>맨투맨/스웨트셔츠</li>
							<li>후드 티셔츠</li>
							<li>니트/스웨터</li>
						</ul>
					</div>
				<label for="skirt"  class="subcatlabel">스커트</label>
				<input type="radio" name="sub" id="skirt">
				<div class="submenu" id="skirtmenu">
						<ul>
							<li>전체</li>
							<li>반팔 티셔츠</li>
							<li>긴팔 티셔츠</li>
							<li>민소매 티셔츠</li>
							<li>셔츠/블라우스</li>
							<li>피케/카라 티셔츠</li>
							<li>맨투맨/스웨트셔츠</li>
							<li>후드 티셔츠</li>
							<li>니트/스웨터</li>
						</ul>
					</div>
				<label for="sneakers"  class="subcatlabel">스니커즈</label>
				<input type="radio" name="sub" id="sneakers"><div class="submenu" id="sneakersmenu">
						<ul>
							<li>전체</li>
							<li>반팔 티셔츠</li>
							<li>긴팔 티셔츠</li>
							<li>민소매 티셔츠</li>
							<li>셔츠/블라우스</li>
							<li>피케/카라 티셔츠</li>
							<li>맨투맨/스웨트셔츠</li>
							<li>후드 티셔츠</li>
							<li>니트/스웨터</li>
						</ul>
					</div>
			</div>
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
						<a href="detail/${u.getId()}" class="product-option">제품 상세보기</a> <a
							href="update/${u.getId()}" class="product-option">수정</a> <a
							href="delete/${u.getId()}" class="product-option">삭제</a>
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