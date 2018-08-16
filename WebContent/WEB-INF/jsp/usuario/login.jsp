<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../resources/img/iconV.png">

<title>Login</title>

<!-- CSS -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<link rel="stylesheet" href="../resources/css/form-elements.css">
<link rel="stylesheet" href="../resources/css/style.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

<!-- Favicon and touch icons -->
<link rel="shortcut icon" href="assets/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>

	<!-- Top content -->
	<div class="top-content">

		<div class="inner-bg">
			<div class="container">


				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<h1>
							<strong>CRUD</strong>
						</h1>
						<div class="description">
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-sm-6 col-sm-offset-3 form-box">
					<div class="form-top">
						<div class="form-top-left">
							<h3>Entre no nosso sistema</h3>
							<p>Digite seu nome de usuário e senha para fazer logon:</p>
						</div>

					</div>


					<form role="form" action='<c:url value="/login"/>' method="post" class="login-form">
						<div class="form-group">
							<label class="sr-only" for="form-username">Username</label> <input
								type="text" name="usuario.login" placeholder="Usuário..."
								class="form-username form-control" id="form-username">
						</div>
						<div class="form-group">
							<label class="sr-only" for="form-password">Login</label> <input
								type="password" name="usuario.senha" placeholder="Login..."
								class="form-password form-control" id="form-password">
						</div>


                        <button type="submit" class="btn btn-primary btn-lg">Large button</button>
						



					</form>

					<div class="form-bottom"></div>
				</div>





			</div>

			<a href="http://localhost:8080/vraptor-blank-project/usuario/novo">
				<button type="submit" class="btn btn-info">Cadastrar
					Usuario</button>
			</a>

		
		<a href="http://localhost:8080/vraptor-blank-project/aluno/inicio">
				<button type="submit" class="btn btn-info">Inicio
			    </button>
			</a>
		</div>

	</div>


	<!-- Javascript -->
	<script src="../resources/js/jquery-1.11.1.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/jquery.backstretch.min.js"></script>
	<script src="../resources/js/scripts.js"></script>

	<!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

</body>

</html>
