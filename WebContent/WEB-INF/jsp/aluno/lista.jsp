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


<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<title>Sistema de Cadastro</title>

<!-- Bootstrap core CSS -->
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../resources/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../resources/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->

<!-- Custom styles for this template -->
<link href="../resources/css/carousel.css" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>

	<div class="navbar-wrapper">
		<div class="container">
		<%@ include file='navbar.jsp' %>
			<div style="background-color: red; color: white">
				<c:forEach var="error" items="${errors}">
    		${error.category} - ${error.message}<br />
				</c:forEach>
			</div>


		

		
				
					<a href="/vraptor-blank-project/aluno/formulario">
						<button type="button" class="btn btn-primary btn-lg">
							CadastrarAluno</button>
					</a>
					
		


			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Email</th>
						<th>CPF</th>
						<th>Editar</th>
						<th>Remover</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${alunoList}" var="aluno">
						<tr>
							<td>${aluno.nome }</td>
							<td>${aluno.email }</td>
							<td>${aluno.cpf }</td>
							<td><a href="edita?id=${aluno.id }"><button
										type="button" class="btn btn-warning">Editar</button></a></td>
							<td><a href="remove?id=${aluno.id}"><button
										type="button" class="btn btn-danger">Remover</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>


		</div>




		<!-- Marketing messaging and featurettes
    ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->


		<div class="container marketing">

			<!-- Three columns of text below the carousel -->



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

	<script src="../resources/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="../resources/js/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->



</body>
</html>
