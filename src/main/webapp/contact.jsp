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
									  <form method="POST" action="fec?action=boderInsert">
										
										
										<div class="row gtr-50">
											<div class="col-6 col-12-mobile">
												<input type="text" name="title" placeholder="글제목" />
											</div>
												<div class="col-12">
												<textarea name="writer" placeholder="내용" rows="7"></textarea>
											</div>
											<div class="col-12">
												<input type="text" name="content" placeholder="글쓴이" />
											</div>
											
											
											<div class="col-12">
												<ul class="buttons">
													<li><input type="submit" class="special" value="쓰기" /></li>
												</ul>
											</div>
										</div>
									</form>
								</div>

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