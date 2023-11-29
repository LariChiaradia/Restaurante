<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<style><%@include file="/WEB-INF/visao/css/Login.css"%></style>

	<header>

		<h1>Login</h1>

	</header>

	<main>
		<form method="post" action="entrada">
			<section class="inputs-container">
			<input type="text" name="txtlogin" placeholder="Digite o seu usuário" required><br>
			<br>
			<input type="password" name="txtsenha" placeholder="Digite a sua senha" required><br>
			</section>
				<br> <button id="btn-login" type="submit">Acessar Sistema</button>
					<input type="hidden" name="acao" value="login">

		</form>
	</main>
</body>
</html>