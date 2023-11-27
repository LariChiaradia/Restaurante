<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Cadastrar</title>
</head>
<body>

	<h1>Cadastrar Produtos ou Pratos</h1>

	<form action="entrada" method="post">
		Nome: <input type="text" name="txtnome" size="70"> <br><br>
		Descrição: <input type="text" name="txtdescricao" size="66"><br><br>
		Categoria: <select id="categorias" name="txtcategoria" style="width: 100px;">
		    <option value="Entrada">Entrada</option>
		    <option value="Principal">Principal</option>
		    <option value="Combos">Combos</option>
		    <option value="Sobremesas">Sobremesas</option>
		    <option value="Bebidas">Bebidas</option>
		  </select>
		Preço: <input type="text" name="txtpreco" size="5">
		Serve: <input type="text" name="txtserve" size="5"><br><br>
		
		<input type="submit" value="Salvar">
		<input type="hidden" name = "acao" value="cadastra">
		
	</form>

</body>
</html>