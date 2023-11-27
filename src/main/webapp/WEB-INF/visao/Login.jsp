<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	
	<h1>Login</h1>

	<form method="post" action="entrada">
	
		Login: <input type="text" name="txtlogin"><br><br>
		Senha: <input type="password" name="txtsenha"><br><br>
		<input type="submit" value="Acessar Sistema">
		<input type="hidden" name="acao" value="login">
		
	</form>
	
</body>
</html>