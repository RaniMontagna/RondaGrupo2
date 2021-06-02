<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edição de Pessoa</title>
</head>
<jsp:include page="../fragmentos/Cabecalho.jsp"></jsp:include>
<body class="Form">
	<div class="content">
		<div class="box boxFoto">
			<h3>Foto da ocorrência:</h3>
			<form action="OcorrenciaServlet" method="post" enctype="multipart/form-data">
				<fieldset>
					<input type="text" readonly="readonly" name="id" id="id" value="${o.id}" style="display: none"> 
					
					<div class="areaImagem">
						<label style="margin-bottom: 0px" >Selecione a foto:</label> 
						<input type="file" id="foto" name="foto" />
					</div>

					<div class="areaImagem" id="areaImagem">
						<img name="imagembd" id="imagembd" width="700" src="data:image/jpg;base64,${o.fotoBase64}" />
					</div>

					<div class="btns">
						<button type="submit" name="gravarFoto">Gravar</button>
						<button type="submit" name="cancelar">Voltar</button>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>
