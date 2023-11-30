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

	<style><%@ include file="/WEB-INF/visao/css/Altera.css"%></style>

	<%
	Cardapio cardapio = (Cardapio) request.getAttribute("cardapio");
	%>
	<main>
	<a href="entrada?acao=logout"><button>Sair do Sistema</button></a>

	<form method="post" action="entrada">
	
		<h1>Alterar Produto Do Cardápio</h1>
		<section class="inputs-container">
		Código: <input type="text" name="txtcodigo" value="<%=cardapio.getCodigo()%>" size="2" readonly><br><br> 
		Nome: <input type="text" name="txtnome" value="<%=cardapio.getNome()%>" size="55"><br> <br>
		Descrição: <input type="text" name="txtdescricao" value="<%=cardapio.getDescricao()%>" size="55"><br><br>
		Categoria: <input type="text" name="txtcategoria" value="<%=cardapio.getCategoria()%>" size="5"> 
		Preco: <input type="text" name="txtpreco" value="<%=cardapio.getPreco() %>" size="5"> 
		Serve: <input type="text" name="txtserve" value="<%=cardapio.getServe() %>" size="5"><br> <br> 
		</section>
		<a href="entrada?acao=cardapio"><button>Salvar Alterações</button></a>
		<input type="hidden" name="acao" value="altera">
	</form>
</main>
</body>
</html>