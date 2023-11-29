<%@page import="modelo.Cardapio"%>
<%@page import="modelo.Login"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Alterar</title>
</head>
<body>

	<%
	Cardapio cardapio = (Cardapio) request.getAttribute("cardapio");
	%>

	<a href="entrada?acao=logout"><button>Sair do Sistema</button></a>

	<h1>Alterar Produto Do Cardápio</h1>

	<form method="post" action="entrada">

		Código: <input type="text" name="txtcodigo" value="<%=cardapio.getCodigo()%>" size="5" readonly><br><br> 
		Nome: <input type="text" name="txtnome" value="<%=cardapio.getNome()%>" size="55"><br> <br>
		Descrição: <input type="text" name="txtdescricao" value="<%=cardapio.getDescricao()%>" size="55"><br><br>
		Categoria: <input type="text" name="txtcategoria" value="<%=cardapio.getCategoria()%>" size="5"> 
		Preco: <input type="text" name="txtpreco" value="<%=cardapio.getPreco() %>" size="5"> 
		Serve: <input type="text" name="txtserve" value="<%=cardapio.getServe() %>" size="5"><br> <br> 
		
		<input type="submit" value="Salvar Alterações"> 
		<input type="hidden" name="acao" value="altera">
	</form>

</body>
</html>