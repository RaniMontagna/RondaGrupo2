<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição de ocorrência</title>
</head>
<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
<body class="Form ocorrencia">
	<div class="content">
	<div class="box">
		<form action="OcorrenciaServlet" method="post">
		<h3>Formulário - Registrar Ocorrência</h3>
			<fieldset>
				<div class="inputs">
					<input type="text" name="id" value="${o.id}" class="form-control" style="display: none">
					
					<label for="descricao" class="form-label">Data e Hora</label> 
					<input type="datetime-local" class="form-control" id="dataHora" name="dataHora" 
				   	pattern="YYYY-MM-DDThh:mm" 
				   	value="<fmt:formatDate value="${o.dataHora}" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${o.dataHora}" pattern="HH:mm"/>" 
				   	placeholder="Data e Hora">
					
					<label for="titulo" class="form-label">Titulo</label>
					<input type="text" name="titulo" value="${o.titulo}" class="form-control">
					
					<label for="descricao" class="form-label">Descrição</label>
					<input type="text" name="descricao" value="${o.descricao}" class="form-control">
					
					<label for="latitude" class="form-label">Latitude</label> 
					<input type="number" name="lat" value="${o.lat}" class="form-control">
					
					<label for="longitude" class="form-label">Longitude</label> 
					<input type="number" name="lon" value="${o.lon}" class="form-control">
					
					<label for="ronda" class="form-label">Ronda</label> 
					<select name="ronda" id="ronda">
				   		<c:forEach items="${rondas}" var="r" varStatus="index">
				       		<option value="${r.id}">${r.id} - ${r.locomocao.descricao} - <fmt:formatDate value="${r.dataHoraInicio}" pattern="dd/MM/yyyy HH:mm"/></option>
				    	</c:forEach>
			  		</select>
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