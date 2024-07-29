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
						<h2>회원리스트</h2>
						<p>회원목록</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 special container medium">

							<!-- Content -->
								<div class="content">
									  <h1>회원 리스트</h1>
			  <table border="1">
	 	   <tr>
	      <th>이름</th> <th>아이디</th> <th>pwd</th> <th>phone</th> <th>email</th>
	      <th>수정</th>  <th>삭제</th>
	    </tr>
	    
	  	  <c:forEach var="m" items="${members}">			
		    <tr>
		      <td>${m.name}</td> <td>${m.id}</td> <td>${m.pwd}</td> <td>${m.phone}</td> <td>${m.email}</td>
		      <td> <a href="fec?action=memberUpdateForm&id=${m.id}"> 수정 </a> </td>
		      <td> <a href="fec?action=memberDelete&id=${m.id}">삭제</a> </td>
		    </tr>
	    </c:forEach>
	  
	  </table>
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