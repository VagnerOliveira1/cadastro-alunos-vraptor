<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../resources/img/iconV.png">


<title>Carousel Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../resources/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../resources/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom styles for this template -->
<link href="../resources/css/carousel.css" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
	<div class="navbar-wrapper">
		<div class="container">

		<%@ include file='navbar.jsp' %>

			<table class="table table-striped">
				<form action="altera">
					<fieldset>
						<legend>Editar Aluno</legend>
						<input type="hidden" name="aluno.id" value="${aluno.id }" /> 
						
						<label for="nome">Nome:</label> 
							<input id="nome" type="text" name="aluno.nome" value="${aluno.nome }" />
					    <label for="email">Email:</label>
							<input id="email" type="text" name="aluno.email" value="${aluno.email }" />
					    <label for="cpf">CPF:</label>
							<input id="cpf" type="text" readonly="readonly" name="aluno.cpf" value="${aluno.cpf}" />

						<button type="submit" class="btn btn-warning">Alterar</button>
					</fieldset>
				</form>
			</table>


		</div>




		<div class="container marketing">

			



			<!-- /END THE FEATURETTES -->
			<hr class="featurette-divider">
			<hr class="featurette-divider">
			<hr class="featurette-divider">
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
