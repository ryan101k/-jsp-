<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

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
						<h2>글목록</h2>
						<p>글목록을 확인하세요</p>
					</header>

					<!-- One -->
						<section class="wrapper style4 special container medium">

							<!-- Content -->
								  <div class="board">
     		   <div class="inner">
        	    <h1>게시판</h1>
        	   
         	   <table>
          	      <tr>
           	         <th>글번호</th> <th>글제목</th>
                    <th>글쓴이</th>
           	     </tr>
               
             <c:forEach var="b" items="${boards}">	 
            	    <tr>
                  <td>${b.bid}</td>
                    <td><a href="fec?action=BoardUpdateForm&title=${b.title}">${b.title}</a></td>
                    <td>${b.content}</td>
          	      </tr>
           	     </c:forEach>
              
       	     </table>
    	    </div>
	    </div>
	  	  <c:if test="${id != null}"> <!-- 로그인 성공한 경우 -->
	    <form action="contact.jsp">
	 	<div class="col-12">
						<ul class="buttons">
					<li><input type="submit" class="special" value="쓰기" /></li>
										</ul>
									</div>
			</form>
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