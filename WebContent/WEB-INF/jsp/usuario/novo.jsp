<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../resources/img/iconV.png">


<title>Sistema de Cadastro</title>


<!-- Bootstrap core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../resources/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../resources/js/ie-emulation-modes-warning.js"></script>



<!-- Custom styles for this template -->
<link href="../resources/css/carousel.css" rel="stylesheet">
</head>
<body>



	<div class="top-content">

		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>Entre no sistema</h3>
								<p>Digite seus dados de usuário</p>
							</div>

						</div>

						<form id="usuarioForm" action='<c:url value="/usuario"/>'
							method="POST">
							<div class="form-group">
								<label class="sr-only" for="form-username">Username</label> <input
									type="text" name="usuario.nome" value="${usuario.nome }"
									placeholder="Usuário..." class="form-username form-control"
									id="form-username">
							</div>
							<div class="form-group">
								<label class="sr-only" for="form-password">Login</label> <input
									type="password" name="usuario.login" value="${usuario.login }"
									placeholder="Login..." class="form-password form-control"
									id="form-password">
							</div>
							<div class="form-group">
								<label class="sr-only" for="form-password">Password</label> <input
									type="password" name="usuario.senha" placeholder=" Senha..."
									class="form-password form-control" id="form-password">
							</div>

							<div class="form-group">
								<label class="sr-only" for="form-password">Password</label> <input
									id="confirmacao" equalTo="#senha" type="password"
									placeholder="Confirme a Senha..."
									class="form-password form-control" id="form-password">
							</div>


							<button type="submit" class="btn btn-success">Salvar
								Usuario</button>




						</form>
						<script type="text/javascript">
							$('#usuarioForm').validate();
						</script>
				<a href="http://localhost:8080/vraptor-blank-project/usuario/login">
				    <buton class="btn pull-right">Fazer Login </button>
				</a>
						
				<a href="http://localhost:8080/vraptor-blank-project/aluno/inicio">
				    <buton class="btn pull-right">Inicio </button>
				</a>
				
				


					</div>






				</div>

			</div>


		





				<script type="text/javascript">
					$('#usuariosForm').validate();
				</script>

			


		</div>



		<div class="container marketing">

			<!-- Three columns of text below the carousel -->


			<!-- START THE FEATURETTES -->





			<hr class="featurette-divider">
			<hr class="featurette-divider">
			<hr class="featurette-divider">

			<!-- FOOTER -->
			<jsp:include page='footer.jsp' />
		</div>
		<!-- /.container -->
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../resources/js/jquery.min.js"><\/script>')
	</script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="../resources/js/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../resources/js/ie10-viewport-bug-workaround.js"></script>


</body>
</html>