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
		<h3>Listagem de vigilantes da ronda</h3>
		<form action="RondaServlet">


			<input type="hidden" name="idRonda" value="${o.id}">
			<label for="vigilante" class="form-label">Vigilantes:</label> 
			
			<div style="width: 800px; margin: auto; display: flex; justify-content: center;">
			<select style="width: 50%" class="form-control form-select" name="vigilante" id="vigilante">
				<c:forEach items="${pessoas}" var="p" varStatus="index">
					<option value="${p.id}">${p.id}- ${p.nome}</option>
				</c:forEach>
			</select>
			</div>

			<div>
			<button class="btn-incluir" name="incluirVigilante">
				<i class="fas fa-user-plus"></i>
				<p>Incluir Vigilante</p>
			</button>
			
			<button class="btn-incluir" name="voltar">
				<i class="fas fa-undo-alt"></i>
				<p>Voltar</p>
			</button>
			</div>
			

			<div class="table-responsive">
				<table class="table">
					<thead class="table-dark">
						<tr>
							<th>Id</th>
							<th>Nome</th>
							<th class="act">Excluir</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${o.vigilantes}" var="v" varStatus="index">
							<tr>
								<td>${v.id}</td>
								<td>${v.nome}</td>
								<td><button class="action" name="excluirVigilante" value="${v.id}"><i class="fas fa-user-times"></i>Excluir</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</form>
	</div>
</body>
</html>