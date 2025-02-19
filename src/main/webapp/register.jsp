<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>My Login Page &mdash; Bootstrap 4 Login Page Snippet</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>
<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<a href="index.jsp"><img src="img/logo.jpg"  alt="logo"></a>
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">회원가입</h4>
							<form method="POST" class="my-login-validation" action="fec?action=memberInsert">
								
								
								<div class="form-group">
									<label for="id">이름</label>
									<input type="text" class="form-control" name="name" required>
									<div class="invalid-feedback">
										Your id is invalid
									</div>
								</div>
								<div class="form-group">
									<label for="id">id</label>
									<input type="text" class="form-control" name="id" required>
									<div class="invalid-feedback">
										Your id is invalid
									</div>

								</div>
								<div class="form-group">
									<label for="password">Password</label>
									<input id="password" type="text" class="form-control" name="pwd" required data-eye>
									<div class="invalid-feedback">
										Password is required
									</div>
								</div>
								<div class="form-group">
									<label for="id">email</label>
									<input type="text" class="form-control" name="email" required>
									<div class="invalid-feedback">
										Your id is invalid
									</div>

								</div>
								
									<div class="form-group">
									<label for="phone">phone</label>
									<input id="phone" type="text" class="form-control" name="phone" required>
									<div class="invalid-feedback">
										Your id is invalid
									</div>
								</div>

								

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Register
									</button>
								</div>
								<div class="mt-4 text-center">
									회원정보가 있으십니까? <a href="login.jsp">로그인</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2022 &mdash; Your Company 
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="js/my-login.js"></script>
</body>
</html>