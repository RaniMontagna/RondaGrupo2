<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista - Ronda</title>
</head>
<body class="List">
	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
	
	<div class="content">
	<h3>Listagem de ronda</h3>
	<form action="RondaServlet">

		<button class="btn-incluir" name="incluir"><i class="fas fa-user-plus"></i><p>Incluir</p></button>
		
		<div class="table-responsive">
		<table class="table">
		<thead class="table-dark">
				<tr>
					<th>Data e Hora Inicio</th>
					<th>Data e Hora Final</th>
					<th>Latitude Ultima</th>
					<th>Longitude Ultima</th>
					<th>Data Ultima</th>
					<th>Locomoção</th>
					<th>Vigilantes</th>
					<th class="act" colspan="2">Ações</th>
				</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="o" varStatus="index">
				<tr>
					<td><fmt:formatDate value="${o.dataHoraInicio}" pattern="dd/MM/yyyy HH:mm"/></td>
					<td><fmt:formatDate value="${o.dataHoraFim}" pattern="dd/MM/yyyy HH:mm"/></td>
					<td>${o.latUltima}</td>
					<td>${o.lonUltima}</td>
					<td><fmt:formatDate value="${o.dataHoraUltima}" pattern="dd/MM/yyyy HH:mm"/></td>
					<td>${o.locomocao.id} - ${o.locomocao.descricao}</td>
					<td><button class="action" name="vigilantes" value="${o.id}"><i class="fas fa-user-edit"></i>Alterar</button></td>
					<td><button class="action" name="alterar" value="${o.id}"><i class="fas fa-user-edit"></i> Editar</button></td>
					<td><button class="action" name="excluir" value="${o.id}"><i class="fas fa-user-times"></i> Excluir</button></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		</div>
	</form>
	</div>
</body>
</html>