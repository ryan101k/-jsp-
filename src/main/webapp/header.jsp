<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>     
<!DOCTYPE html>
<html lang="en">
<html>
	<head>
	    <meta charset="UTF-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
   		 <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>1912033기말과제</title>
		
    <!-- swiper CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <script defer src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	  <!-- google font icon -->
	  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

	<script defer src="js/swiper.js"></script>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" />

		</noscript>
	</head>
	<body class="index is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" class="alt">
					<h1 id="logo"><a href="index.jsp">박국령<span>1912033</span></a></h1>
					<nav id="nav">
						<ul>
						<li><div class="search">
								<input type="text">
								<span class="material-symbols-outlined">
									search
								</span>
							</div>
						</li>	
							<li class="current"><a href="index.jsp">메인으로</a></li>
							<li class="submenu">
								<a href="#">목록</a>
								<ul>
									<c:if test="${id == null}"> <!-- 로그인 못한경우 -->
								 <li><li><a href="fec?action=memberForm">회원가입</a></li>
								 	<li><a href="fec?action=boardList">글목록</a></li></li>
								 
								<li><li class="submenu">
										<a href="#">서브메뉴</a>
										<ul>
											<li><a href="#">1서브메뉴</a></li>
											<li><a href="#">2서브메뉴</a></li>
											<li><a href="#">3서브메뉴</a></li>
											<li><a href="#">4서브메뉴</a></li>
											<li><a href="#">5서브메뉴</a></li>
										</ul>
									</li></li>
							</c:if>
							  <c:if test="${id != null}"> <!-- 로그인 성공한 경우 -->
								 <li><li><a href="fec?action=memberList">회원정보</a></li>
									<li><a href="fec?action=boardList">글목록</a></li></li>					
									<li><a href="fec?action=contactForm">글쓰기</a></li>
									<li class="submenu">
										<a href="#">서브메뉴</a>
										<ul>
											<li><a href="#">1서브메뉴</a></li>
											<li><a href="#">2서브메뉴</a></li>
											<li><a href="#">3서브메뉴</a></li>
											<li><a href="#">4서브메뉴</a></li>
											<li><a href="#">5서브메뉴</a></li>
										</ul>
									</li>
							  </c:if>
									
									
								</ul>
							</li>
							<c:if test="${id == null}"> <!-- 로그인 못한경우 -->
							<li><a href="fec?action=loginForm" class="button primary">로그인</a></li>
							</c:if>
							  <c:if test="${id != null}"> <!-- 로그인 성공한 경우 -->
							 <li><a href="fec?action=logout" class="button primary">로그아웃</a></li>
							  </c:if>
						
						</ul>
					</nav>
				</header>

</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>