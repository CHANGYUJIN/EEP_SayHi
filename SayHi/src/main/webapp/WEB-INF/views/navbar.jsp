<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/navbar_style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
	<div class="navbar">
		<img src="../img/musinsa_banner.png" id="banner">
		<ul id="nav">
			<a href="list"><img src="../img/musinsa_logo.png" id="logo"></a>
			<div class="search-container">
				<input type="text" class="search-box" name="keyword">
				<button class="search" onClick="myFunction()">
					<i class="fa fa-search"></i>
				</button>
			</div>
			<div class="dropdown-bar">
				<li><a href="#menu0"><p class="menus">랭킹</p></a></li>
				<div class="dropdown">
					<a href="#menu1">상품</a><a href="#menu1">브랜드</a><a href="#menu1">검색어</a>
				</div>
			</div>
			<div class="dropdown-bar">
				<li><a href="#menu1"><p class="menus">업데이트</p></a></li>
				<div class="dropdown">
					<a href="#menu1">신상품</a><a href="#menu1">재입고</a><a href="#menu1">세일소식</a>
					<a href="#menu1">이벤트</a><a href="#menu1">입점</a>
				</div>
			</div>
			<div class="dropdown-bar">
				<li><a href="#menu2"><p class="menus">코디</p></a></li>
				<div class="dropdown">
					<a href="#menu1">코디숍</a><a href="#menu1">코디맵</a><a href="#menu1">브랜드 스냅</a>
					<a href="#menu1">스트릿 스냅</a>
				</div>
			</div>
			<div class="dropdown-bar">
				<li><a href="#menu3"><p class="menus">세일</p></a></li>
				<div class="dropdown">
					<a href="#menu1">쿠폰</a><a href="#menu1">세일</a><a href="#menu1">타임세일</a>
					<a href="#menu1">기획전</a>
				</div>
			</div>
			<div class="dropdown-bar">
				<li><a href="#menu4"><p class="menus">스페셜</p></a></li>
				<div class="dropdown">
					<a href="#menu1">쇼케이스</a><a href="#menu1">스페셜 이슈</a><a href="#menu1">단독상품</a>
				</div>
			</div>
			<div class="nav-right">
			<%-- <%if (result == 0) {%>
				<li><input type="button" class="login-btn" value="로그인 및 회원가입"
					onclick="moveToLogin();"></li>
			<%} else {%>
				<li><input type="button" class="login-btn" value="마이페이지" onclick="moveToMypage();"></li>
				<li><input type="button" class="login-btn" value="로그아웃"
					onclick="moveToLogout();"></li>
			<%};%> --%>
			</div>
		</ul>
	</div>
</body>
</html>