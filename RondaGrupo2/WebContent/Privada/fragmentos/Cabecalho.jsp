<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Bootstrap -->
<link rel="stylesheet" href="../../resources/bootstrap/css/bootstrap.min.css">
<!-- jQuery (necessário para os plugins Javascript do Bootstrap) -->
<script src="../../resources/jquery/jquery-3.6.0.min.js"></script>
<!-- Incluir plugins do Bootstrap -->
<script src="../../resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Biblioteca dos Icones -->
<link href="../../resources/fontawesome/css/all.css" rel="stylesheet">
<!-- SmartMenus core CSS (required) -->
<link href="../../resources/smartmenus/css/sm-core-css.css" rel="stylesheet" type="text/css" />
<!-- "sm-blue" menu theme (optional, you can use your own CSS, too) -->
<link href="../../resources/smartmenus/css/sm-blue/sm-blue.css" rel="stylesheet" type="text/css" />
<!-- Estilos personalizados da página -->
<link href="../../resources/css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<nav class="menu">
		<div class="text">
			<h3>ADS - Casca</h3>
			<h6>Programação Orientada a Objetos</h6>
		</div>
		<div class="btns">
		<a class="btn" href="../Home/Home.jsp">Home</a>
		<div class="dropdown">
 			<button class="dropbtn"><span>Adicionar</span><i class="fas fa-chevron-down"></i></button>
 			<div class="dropdown-content">
				<a href="../Pessoa/PessoaServlet?incluir">Pessoa</a>
				<a href="../Locomocao/LocomocaoServlet?incluir">Locomoção</a>
				<a href="../Usuario/UsuarioServlet?incluir">Usuário</a>
				<a href="../Localizacao/LocalizacaoServlet?incluir">Localização</a>
				<a href="../Ocorrencia/OcorrenciaServlet?incluir">Ocorrência</a>
				<a href="../Ronda/RondaServlet?incluir">Ronda</a>
  			</div>
		</div>
		<div class="dropdown">
 			<button class="dropbtn"><span>Consultar</span><i class="fas fa-chevron-down"></i></button>
 			<div class="dropdown-content">
				<a href="../Pessoa/PessoaServlet">Pessoas</a>
				<a href="../Locomocao/LocomocaoServlet">Locomoções</a>
				<a href="../Usuario/UsuarioServlet">Usuários</a>
				<a href="../Localizacao/LocalizacaoServlet">Localizações</a>
				<a href="../Ocorrencia/OcorrenciaServlet">Ocorrência</a>
				<a href="../Ronda/RondaServlet">Ronda</a>
  			</div>
		</div>
		<div class="dropdown">
 			<button class="dropbtn"><span>Relatórios</span><i class="fas fa-chevron-down"></i></button>
 			<div class="dropdown-content">
				<a href="../Relatorios/RelOcorrenciaServlet" target="_blank">Locomoção</a>
				<a href="../Relatorios/RelPessoaServlet" target="_blank">Pessoa</a>
				<a href="../Relatorios/RelRondaServlet" target="_blank">Ronda</a>
  			</div>
		</div>
		<a class="btn" href="../SairServlet">Sair</a>
		</div>
	</nav>
</body>
</html>