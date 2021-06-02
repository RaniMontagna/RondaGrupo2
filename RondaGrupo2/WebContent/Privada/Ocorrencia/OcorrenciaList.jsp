<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista - Ocorrência</title>
</head>
<body class="List">
	<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
	
	<div class="content">
	<h3>Listagem de ocorrência</h3>
	<form action="OcorrenciaServlet">

		<button class="btn-incluir" name="incluir"><i class="fas fa-user-plus"></i><p>Incluir</p></button>

		<div class="table-responsive">
		<table class="table">
		<thead class="table-dark">
				<tr>
					<th>Miniatura</th>
					<th>Data e Hora</th>
					<th>Titulo</th>
					<th>Descrição</th>
					<th>Latitude</th>
					<th>Longitude</th>
					<th>Ronda</th>
					<th class="act" colspan="3">Ações</th>
				</tr>
		</thead>
		<tbody>
			<c:forEach items="${lista}" var="o" varStatus="index">
				<tr>
					<td><img width="150" src="data:image/jpg;base64,${o.fotoBase64}" /></td>
					<td class="tdList"><fmt:formatDate value="${o.dataHora}" pattern="dd/MM/yyyy HH:mm"/></td>
					<td class="tdList">${o.titulo}</td>
					<td class="tdList">${o.descricao}</td>
					<td class="tdList">${o.lat}</td>
					<td class="tdList">${o.lon}</td>
					<td class="tdList">${o.ronda.id} - ${o.ronda.locomocao.descricao} - <fmt:formatDate value="${o.ronda.dataHoraInicio}" pattern="dd/MM/yyyy HH:mm"/></td>
					<td><button class="action" name="alterarFoto" value="${o.id}"><i class="fas fa-camera-retro"></i>Foto</button></td>
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