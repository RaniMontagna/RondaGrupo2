<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição de pessoa</title>
</head>
<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
<body class="Form locomocao">
	<div class="content">
	<div class="box">
		<form action="LocomocaoServlet" method="post">
		<h3>Formulário - Registrar Locomoção</h3>
			<fieldset>
				<div class="inputs">
					<input type="text" name="id" value="${o.id}" class="form-control" style="display: none">
					<label for="descricao" class="form-label">Descrição</label> 
					<input type="text" name="descricao" value="${o.descricao}" class="form-control" placeholder="">
					<label for="placa" class="form-label">Placa</label> 
					<input type="text" name="placa" value="${o.placa}" class="form-control" placeholder="">
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