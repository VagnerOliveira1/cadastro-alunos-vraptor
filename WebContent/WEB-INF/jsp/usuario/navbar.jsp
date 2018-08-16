<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-inverse navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Crud Vagner</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="<c:url value="/aluno/inicio"/>">Home</a></li>
				<li><a href="#about">Sobre</a></li>
				<li><a href="#contact">Contato</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Sistema de Cadastro <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/aluno/formulario"/>">Alunos</a></li>
						<li><a href="#">Professores</a></li>
						<li><a href="#">Turmas</a></li>
						<li role="separator" class="divider"></li>
						<li class="dropdown-header">Outros</li>
						<li><a href="#">Java</a></li>
						<li><a href="#">Tecnologia</a></li>
					</ul></li>
			</ul>
			<form action="<c:url value='/aluno/busca'/>"
				class="navbar-form navbar-left">


				<input id="busca" name="nome" class="form-control"
					placeholder="Buscar" />
				<button type="submit" class="btn btn-default">Buscar</button>
				
             </form>
              <form action="<c:url value='/usuario/login'/>"
				class="navbar-form navbar-right">


				<button type="submit" class="btn btn-default">Sair</button>

			    </form>
            
           
             
		</div>
	</div>
</nav>



