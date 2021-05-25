<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição de ronda</title>
</head>
<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
<body class="Form ronda">
	<div class="content">
	<div class="box">
		<form action="RondaServlet" method="post">
		<h3>Formulário - Registrar Ronda</h3>
			<fieldset>
				<div class="inputs">
					<input type="text" name="id" value="${o.id}" class="form-control" style="display: none">
					
					<label for="dataHoraInicio" class="form-label">Data e Hora Inicial</label> 
					<input type="datetime-local" class="form-control" id="dataHoraInicio" name="dataHoraInicio" 
				   	pattern="YYYY-MM-DDThh:mm" 
				   	value="<fmt:formatDate value="${o.dataHoraInicio}" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${o.dataHoraInicio}" pattern="HH:mm"/>" 
				   	placeholder="Data e Hora Inicial">
				   	
				   	<label for="dataHoraFim" class="form-label">Data e Hora Final</label> 
					<input type="datetime-local" class="form-control" id="dataHoraFim" name="dataHoraFim" 
				   	pattern="YYYY-MM-DDThh:mm" 
				   	value="<fmt:formatDate value="${o.dataHoraFim}" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${o.dataHoraFim}" pattern="HH:mm"/>" 
				   	placeholder="Data e Hora Final">
					
					<label for="latUltima" class="form-label">Latitude Ultima</label> 
					<input type="number" name="latUltima" value="${o.latUltima}" class="form-control">
					
					<label for="lonUltima" class="form-label">Longitude Ultima</label> 
					<input type="number" name="lonUltima" value="${o.lonUltima}" class="form-control">
					
					<label for="dataHoraUltima" class="form-label">Data e Hora Ultima</label> 
					<input type="datetime-local" class="form-control" id="dataHoraUltima" name="dataHoraUltima" 
				   	pattern="YYYY-MM-DDThh:mm" 
				   	value="<fmt:formatDate value="${o.dataHoraUltima}" pattern="yyyy-MM-dd"/>T<fmt:formatDate value="${o.dataHoraUltima}" pattern="HH:mm"/>" 
				   	placeholder="Data e Hora Ultima">
				
					<label for="locomocao" class="form-label">Locomocao</label> 
					<select name="locomocao" id="locomocao">
				   		<c:forEach items="${locomocoes}" var="l" varStatus="index">
				       		<option value="${l.id}">${l.id} - ${l.descricao}</option>
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