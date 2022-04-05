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
<title>상품 상세 페이지</title>
<style>
.container {
	max-width: 1300px;
	margin: auto;
	padding-left: 25px;
	padding-right: 25px;
}

.row {
	display: flex;
	align-items: center;
	flex-wrap: wrap;
	justify-content: space-around;
}

.col-2 {
	flex-basis: 50%;
	mid-width: 300px;
}

.col-2 img {
	max-width: 100%;
	padding: 50px 0;
}

.single-product {
	margin-top: 80px;
}

.single-product .col-2 img {
	padding: 0;
	padding-right: 10px;
	margin: 20px
}

.single-product .col-2 {
	padding: 20px;
}

.single-product h4 {
	margin: 20px 0;
	font-size: 22px;
	font-weight: bold;
}

.single-product select {
	display: block;
	padding: 10px;
	margin-top: 20px;
}

.single-product input {
	width: 50px;
	height: 40px;
	padding-left: 10px;
	font-size: 20px;
	margin-right: 10px;
	border: 1px solid #ff523b;
}

input:focus {
	outline: none;
}

@charset "UTF-8";

@import url(https://fonts.google.com/earlyaccess/nanumgothic.css);

.search-container {
	float: left;
	margin-right: 500px
}

.search-box {
	display: inline-block;
	margin-top: 15px;
	width: 230px;
	height: 30px;
	border: none;
	font-size: 16px;
	padding-left: 20px;
	font-family: nanumgothic;
}

.search-box::placeholder {
	color: rgb(169, 169, 169);
}

.search-box:focus {
	outline: none;
}

.search {
	float: right;
	height: 32px;
	width: 32px;
	margin-top: 15px;
	background: black;
	color: white;
	font-size: 17px;
	border: solid 1px grey;
	cursor: pointer;
}

.main-page {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-content: center;
	align-items: center;
	flex-wrap: wrap;
	width: 100vw;
	height: 100vh;
}

/* .main-background {
    width: 100%;
    height: 100%;
    background-size: 1500px 500px;
    background-image: url("../../resources/img/main_background2.jpg");
    background-repeat: repeat-x;
    animation: scroll 40s linear infinite;
}
  
@keyframes scroll {
    from {
        background-position: left calc(4.84 * min(100vh, 750px)) top 0px;
    }
    to {
        background-position: left 0px top 0px;
    }
} */
.main-bar {
	position: absolute;
	overflow: hidden;
	display: inline;
}

.content {
	margin-top: -100px;
}

.navbar {
	box-shadow: 0 2px 0 0 rgba(0, 0, 0, .2);
	background-color: black;
	font-family: nanumgothic;
	overflow: hidden;
}

.login-btn {
	margin-top: 20px;
	margin-right: 10px;
	border-width: 1px;
	border-style: solid;
	border-radius: 5px;
	border-color: rgb(221, 221, 221);
	padding: 5px;
}

.login-btn:hover {
	cursor: pointer;
}

.dropdown-bar {
	float: left;
	overflow: hidden;
	cursor: pointer;
}

.dropdown {
	font-size: 20px;
	display: none;
	position: absolute;
	background-color: white;
	min-width: 160px;
	border: solid 1px lightgrey;
	top: 140px;
}

.dropdown a {
	color: black;
	padding: 12px 16px;
	border: solid 1px lightgrey;
	text-decoration: none;
	font-weight: bold;
	display: block;
	text-align: center;
	position: relative;
	z-index: 3;
}

.dropdown a:hover {
	background-color: lightgrey;
}

.dropdown-bar:hover .dropdown {
	display: block;
}

.desc {
	font-size: 12px;
	font-weight: normal;
}

.main {
	list-style-type: none;
	text-align: center;
	padding-left: 20px;
	padding-right: 9px;
}

.bar {
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
	padding-left: 60px;
	padding-right: 29px;
	padding-bottom: 10px;
	text-decoration: none;
}

.bar a:hover {
	background-color: rgba(0, 0, 0, .1);
}

.nav-right-contact {
	padding-left: 25px;
	float: right;
}

.dropdown-list {
	margin-left: 200px;
}

.left-menu {
	float: left;
	position: relative;
}

.ad {
	background-color: rgb(242, 242, 242);
	height: 250px;
	text-align: center;
	margin-top: 80px;
}

.ad-content {
	padding-top: 100px;
	font-size: 50px;
	font-weight: bold;
	color: rgb(73, 73, 73);
}

.contact {
	color: rgb(25, 31, 140) !important;
	text-align: right;
	padding-right: 10px;
}

.contact-icon {
	position: absolute;
	float: right;
	top: 5%;
	margin-left: -3px;
	left: 97%;
}

#banner {
	width: 100%;
	height: 100%;
}

#logo {
	width: 168px;
	height: 45px;
	margin: 7px 20px 0px 12px;
	cursor: pointer;
	display: flex;
	float: left;
}

#nav {
	list-style-type: none;
	margin: 0;
	padding: 7px 0px 7px 0px;
	overflow: hidden;
	background-color: black;
	color: white;
}

#main-text {
	display: flex;
	justify-content: center;
	color: rgba(0, 0, 0, .9);
	font-size: 38px;
	font-weight: bold;
	margin-top: 100px;
	font-family: nanumgothic;
}

.menu {
	color: white;
}

li {
	float: left;
}

li a {
	display: block;
	margin-right: 38px;
	margin-top: 18px;
	text-align: left;
	text-decoration: none;
	font-weight: bold;
}

li a:hover {
	color: orange;
}

a:link, a:visited, a:active {
	color: black;
}

article {
	position: relative;
	text-align: center;
	padding-top: 5px;
}

p.menus {
	font-size: 20px;
	color: white;
}

hr {
	margin-top: -15px;
	width: 300px;
	background-color: rgb(209, 209, 209);
	border: none;
	height: 1px;
}

footer {
	background-color: white;
	font-size: 12px;
	text-align: center;
	color: grey;
}

body {
	margin: 0;
}

html {
	scroll-behavior: smooth;
}

#navimage {
	float: left;
}

#menu0 {
	margin: 50px;
	padding-bottom: 50px;
}

#menu1 {
	width: 100%;
}

#menu2 {
	width: 100%;
}
</style>
</head>
<body>
	<div class="navbar">
		<img src="../../img/musinsa_banner.png" id="banner">
		<ul id="nav">
			<a href="../list"><img src="../../img/musinsa_logo.png" id="logo"></a>
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
					<a href="#menu1">코디숍</a><a href="#menu1">코디맵</a><a href="#menu1">브랜드
						스냅</a> <a href="#menu1">스트릿 스냅</a>
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
					<a href="#menu1">쇼케이스</a><a href="#menu1">스페셜 이슈</a><a
						href="#menu1">단독상품</a>
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