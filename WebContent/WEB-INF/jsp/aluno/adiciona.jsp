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
	<h3>Aluno adicionado com sucesso!</h3>

	<ul>
		<li><a href="<c:url value="/aluno/formulario"/>"> Novo Aluno</a></li>
		<li><a href="<c:url value="/aluno/lista"/>"> Lista Alunos </a></li>
	</ul>

</body>
</html>
