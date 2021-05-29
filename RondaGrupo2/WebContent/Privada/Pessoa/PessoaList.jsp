<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista - Pessoas</title>
</head>
<body class="List">
	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
	
	<div class="content">
	<h3>Listagem de pessoas</h3>
	<form action="PessoaServlet">

		<button class="btn-incluir" name="incluir"><i class="fas fa-user-plus"></i><p>Incluir</p></button>
		
		<div class="table-responsive">
		<table class="table">
		<thead class="table-dark">
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>LoginApp</th>
					<th class="act" colspan="2">Ações</th>
				</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="o" varStatus="index">
				<tr>
					<td>${o.id}</td>
					<td>${o.nome}</td>
					<td>${o.loginApp}</td>
					<td><button class="action" name="alterar" value="${o.id}"><i class="fas fa-user-edit"></i>Editar</button></td>
					<td><button class="action" name="excluir" value="${o.id}"><i class="fas fa-user-times"></i>Excluir</button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		</div>
	</form>
	</div>
</body>
</html>