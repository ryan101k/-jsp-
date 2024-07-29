<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<%@ include file="header.jsp" %>

			<!-- Banner -->
				<section id="banner">

					<div class="inner">

						<header>
							<h2>우맘끼</h2>
						</header>
						<p>우리 엄마 <strong>끼리</strong> 
						<br />
						자유로운 소통의 놀이터
						<br />
						지금 <a href="register.jsp">회원가입</a>.</p>
						<footer>
							<ul class="buttons stacked">
								<li><a href="#main" class="button fit scrolly">자세히 읽어보기</a></li>
							</ul>
						</footer>

					</div>

				</section>
				<div class="figure">

					<div class="swiper">
						<div class="swiper-wrapper">
						  <div class="swiper-slide">
							<div class="pic">
								<img src="./img/c1.jpg" alt="">
							</div>                
						  </div>
						  <div class="swiper-slide">
							<div class="pic">
								<img src="./img/c2.jpg" alt="">
							</div>                
						  </div>
						  <div class="swiper-slide">
							<div class="pic">
								<img src="./img/c3.jpg" alt="">
							</div>                
						  </div>
						  <div class="swiper-slide">
							<div class="pic">
								<img src="./img/c4.jpg" alt="">
							</div>                
						  </div>
					  
						</div>
			
						<!-- If we need pagination -->
						<div class="swiper-pagination"></div>
					
						<!-- If we need navigation buttons -->
						<div class="swiper-button-prev"></div>
						<div class="swiper-button-next"></div>
					
					</div>
			
				</div>
			<!-- Main -->
				<article id="main">

					<header class="special container">
						<span class="icon solid fa-chart-bar"></span>
						<h2>엄마들을 위한  <strong>커뮤니티</strong>  
						<br />
						당신의 발자취를 남겨보세요</h2>
						<p>엄마들의 <strong>커뮤니티</strong>울산 엄마들의
						정보를 한곳에
						<br />
						네이버 <a href="https://www.naver.com/">카페도있습니다</a> 즐기세요!!</p>
					</header>
				
					
					<!-- One -->
						<section class="wrapper style2 container special-alt">
							<div class="row gtr-50">
								<div class="col-8 col-12-narrower">

									<header>
										<h2>울산<strong>정보력</strong>쇼핑 시간 알차게 쓰는법.</h2>
									</header>
									<p>1. 홍보를 목적으로 오셨더라도 가입인사는 필수<br>

										2. 카테고리에 영향을 받지 않으며 오로지 '홍보합시다' 게시판에만 업로드 가능(협력업체 제외)<br>
										
										3. 업로드시 링크1번링크 사용이나, 셀프링크로 맘카페의 접속이 전환되게 끔 하는홍보(새창으로 열리게끔)<br>
										
										4. 불법영업 행위라 간주되는 홍보물은 검토후 수정이나 삭제<br>
										
										5. 게시판 속성에 맞지 않는 게시글 이나 홍보글(이동처리 되거나 삭제)<br></p>
									<footer>
										<ul class="buttons">
											<li><a href="#" class="button">지금 바로가기</a></li>
										</ul>
									</footer>

								</div>
								<div class="col-4 col-12-narrower imp-narrower">

									<ul class="featured-icons">
										<li><span class="icon fa-clock"><span class="label">Feature 1</span></span></li>
										<li><span class="icon solid fa-volume-up"><span class="label">Feature 2</span></span></li>
										<li><span class="icon solid fa-laptop"><span class="label">Feature 3</span></span></li>
										<li><span class="icon solid fa-inbox"><span class="label">Feature 4</span></span></li>
										<li><span class="icon solid fa-lock"><span class="label">Feature 5</span></span></li>
										<li><span class="icon solid fa-cog"><span class="label">Feature 6</span></span></li>
									</ul>

								</div>
							</div>
						</section>
					
				

					<!-- Three -->
						<section class="wrapper style3 container special">

							<header class="major">
								<h2>나눌 수 있는<strong>이야기</strong></h2>
							</header> 

							<div class="row">
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="images/d1.jpg" alt="" /></a>
										<header>
											<h3>아이들 영상</h3>
										</header>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
											 Fugiat adipisci quam itaque neque ad eius minima eveniet nulla,
											  cum, iste facilis commodi nobis! Voluptates adipisci molestiae, debitis ratione dignissimos qui.</p>
									</section>

								</div>
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="images/d2.png" alt="" /></a>
										<header>
											<h3>결혼 이야기</h3>
										</header>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod aliquam enim pariatur quibusdam placeat laborum et voluptatem magni quas, odio ipsa nostrum. Obcaecati alias ea pariatur, iusto numquam vel deleniti.</p>
									</section>

								</div>
							</div>
							<div class="row">
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="images/d3.jpg" alt="" /></a>
										<header>
											<h3>영유아 맘톡</h3>
										</header>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti eius deserunt veritatis optio vel earum voluptatem molestiae illum odio nulla consequuntur quia pariatur animi hic, blanditiis sequi eligendi dolorem porro?.</p>
									</section>

								</div>
								<div class="col-6 col-12-narrower">

									<section>
										<a href="#" class="image featured"><img src="images/d4.jpg" alt="" /></a>
										<header>
											<h3>육아정보</h3>
										</header>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate suscipit, tempora error consectetur, praesentium voluptates ut laboriosam molestias, modi nesciunt temporibus dicta quisquam officiis velit fugiat aliquid dignissimos quis! Eius?.</p>
									</section>

								</div>
							</div>

							<footer class="major">
								<ul class="buttons">
									<li><a href="#" class="button">자세히 보기</a></li>
								</ul>
							</footer>

						</section>

				</article>

			<!-- CTA -->
				<section id="cta">

					<header>
						<h2> 준비가<strong>완료되었습니까</strong>?</h2>
						<p>무료로 즐기시거나 기부해주세요</p>
					</header>
					<footer>
						<ul class="buttons">
							<li><a href="#" class="button primary">기부하기</a></li>
							<li><a href="#" class="button">바로즐기기</a></li>
						</ul>
					</footer>

				</section>

			<!-- Footer -->
	 <%@ include file="footer.jsp" %>

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