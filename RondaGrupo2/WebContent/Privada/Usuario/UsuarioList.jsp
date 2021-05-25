<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista - Usuario</title>
</head>
<body class="List">
	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
	
	<div class="content">
	<h3>Listagem de usuários</h3>
	<form action="UsuarioServlet">

		<button class="btn-incluir" name="incluir"><i class="fas fa-user-plus"></i><p>Incluir</p></button>

		<table class="table table-striped">
		<thead class="table-dark">
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Email</th>
					<th>Senha</th>
					<th class="act" colspan="2">Ações</th>
				</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="o" varStatus="index">
				<tr>
					<td>${o.id}</td>
					<td>${o.nome}</td>
					<td>${o.email}</td>
					<td>${o.senha}</td>
					<td><button class="action" name="alterar" value="${o.id}"><i class="fas fa-user-edit"></i>Editar</button></td>
					<td><button class="action" name="excluir" value="${o.id}"><i class="fas fa-user-times"></i>Excluir</button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
	</form>
	</div>
</body>
</html>