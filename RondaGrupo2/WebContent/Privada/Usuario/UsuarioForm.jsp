<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edi��o de usu�rio</title>
</head>
<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
<body class="Form usuario">
	<div class="content">
	<div class="box">
		<form action="UsuarioServlet" method="post">
		<h3>Formul�rio - Registrar Usuario</h3>
			<fieldset>
				<div class="inputs">
					<label for="id" class="form-label">Id</label> 
					<input type="number" name="id" value="${o.id}" class="form-control">
					<label for="email" class="form-label">Email</label> 
					<input type="email" name="email" value="${o.email}" class="form-control" placeholder="nome@email.com">
					<label for="nome" class="form-label">Nome</label> 
					<input type="text" name="nome" value="${o.nome}" class="form-control" placeholder="Nome">
					<label for="senha" class="form-label">Senha</label> 
					<input type="password" name="senha" value="${o.senha}" class="form-control" placeholder="******">
				</div>
				<div class="btns">
					<button type="submit" name="gravar">Gravar</button>
					<button type="submit" name="cancelar">Cancelar</button>
				</div>
			</fieldset>
		</form>
	</div>
	</div>
</body>
</html>