<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Twenty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>글쓰기 페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="contact is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<%@ include file="header.jsp" %>

			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon solid fa-envelope"></span>
						<h2>글쓰기</h2>
						<p>게시판에 글을 써보세요</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 special container medium">
					
							<!-- Content -->
								<div class="content">
									 
												 <form method="POST" action="fec?action=boderUpdate&title=${bd2.title}">
										
										<div class="row gtr-50">
											<div class="col-6 col-12-mobile">
												글제목:<input type="text" name="title" value="${bd2.title}" />
											</div>
												<div class="col-12">
											내용:	<input type="text" name="writer"value="${bd2.writer}" />
											
											</div>
											<div class="col-12">
												글쓴이:	<input type="text" name="content"value="${bd2.content}" />
											</div>
											
												
												  <c:if test="${id != null}"> <!-- 로그인 성공한 경우 -->
											
												<div class="col-12">
												<ul class="buttons">
													<li><input type="submit" class="special" value="수정" /></li>		
												</ul>
											</div>
										</div>
										</form>	
									<form method="post" action="fec?action=boderDelete&title=${bd2.title}">
									<div class="col-12">
												<ul class="buttons">
													<li><input type="submit" class="special" value="삭제" /></li>
												</ul>
											</div>		
											</form>
										
								</div>
										</c:if>
						</section>

				</article>

			<!-- Footer -->
		 <%@ include file="footer.jsp" %>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollgress.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>