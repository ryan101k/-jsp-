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
						<h2>회원정보 수정</h2>
						<p>회원정보를 수정하세요</p>
					</header>

					<!-- One -->
					  <div class="memberUpdateForm">
						<section class="wrapper style4 special container medium">
							<!-- Content -->
								<div class="content">    
           		 <form method="post" action="fec?action=memberUpdate&id=${m2.id}">
                이름 : <input type="text" name="name" value="${m2.name}" disabled> <br>
                id : <input type="text" name="id" value="${m2.id}" disabled><br>
                pwd : <input type="text" name="pwd" value="${m2.pwd}" disabled><br>
                이메일: <input type="text" name="email" value="${m2.email}"><br>
                phone : <input type="text" name="phone" value="${m2.phone}"> <br>
                <input type="submit" value="회원수정">
            </form>
        </div>
        
									
								</div>
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