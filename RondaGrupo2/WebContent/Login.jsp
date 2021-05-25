<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	
	<link rel="stylesheet" type="text/css" href="./resources/css/estilos.css">
</head>
<body class="login">

<form action="LoginServlet" method="post">
	<div class="box">
	   <h1>AUTENTICAÇÃO</h1>  
	   <label>Email</label>
	   <input type="email" id="inputEmail" name="inputEmail" class="form-control" placeholder="Email address" required autofocus>
	   <label>Senha</label>       
	   <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Password" required>
	   <p class="error">${requestScope.mensagemLogin}</p> 
	   
	   <div class="button"> 
	      <button type="submit">Login</button>
	   </div> 
	   
	</div> 
</form>
  



</body>
</html>