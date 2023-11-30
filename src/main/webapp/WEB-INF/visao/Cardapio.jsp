<%@page import="modelo.Cardapio"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cardapio</title>
</head>
<body>

	<style><%@ include file="/WEB-INF/visao/css/Cardapio.css"%></style>
	<header>
			<h1>Cardapio</h1>
	</header>

	<%
	List<Cardapio> entradas = (List<Cardapio>) request.getAttribute("listaentrada");
	%>
	<main>
	<h2>Entrada</h2>
	<table border="1" style="width: 90%" class="tabela">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Cardapio cardapio : entradas) {
			%>
			<tr>
				<td><%=cardapio.getNome()%></td>
				<td><%=cardapio.getDescricao()%></td>
				<td><%=cardapio.getCategoria()%></td>
				<td><%=cardapio.getPreco()%></td>
				<td><%=cardapio.getServe()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>


	<%
	List<Cardapio> principais = (List<Cardapio>) request.getAttribute("listaprincipal");
	%>
	<h2>Principal</h2>
	<table border="1" style="width: 90%" class="tabela">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Cardapio cardapio : principais) {
			%>
			<tr>
				<td><%=cardapio.getNome()%></td>
				<td><%=cardapio.getDescricao()%></td>
				<td><%=cardapio.getCategoria()%></td>
				<td><%=cardapio.getPreco()%></td>
				<td><%=cardapio.getServe()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<%
	List<Cardapio> combos = (List<Cardapio>) request.getAttribute("listadecombos");
	%>
	<h2>Combos</h2>
<table border="1" style="width: 90%" class="tabela">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Cardapio cardapio : combos) {
			%>
			<tr>
				<td><%=cardapio.getNome()%></td>
				<td><%=cardapio.getDescricao()%></td>
				<td><%=cardapio.getCategoria()%></td>
				<td><%=cardapio.getPreco()%></td>
				<td><%=cardapio.getServe()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<%
	List<Cardapio> sobremesas = (List<Cardapio>) request.getAttribute("listadesobremesas");
	%>
	<h2>Sobremesas</h2>
<table border="1" style="width: 90%" class="tabela">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Cardapio cardapio : sobremesas) {
			%>
			<tr>
				<td><%=cardapio.getNome()%></td>
				<td><%=cardapio.getDescricao()%></td>
				<td><%=cardapio.getCategoria()%></td>
				<td><%=cardapio.getPreco()%></td>
				<td><%=cardapio.getServe()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<%
	List<Cardapio> bebidas = (List<Cardapio>) request.getAttribute("listadebebidas");
	%>
	<h2>Bebidas</h2>
<table border="1" style="width: 90%" class="tabela">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (Cardapio cardapio : bebidas) {
			%>
			<tr>
				<td><%=cardapio.getNome()%></td>
				<td><%=cardapio.getDescricao()%></td>
				<td><%=cardapio.getCategoria()%></td>
				<td><%=cardapio.getPreco()%></td>
				<td><%=cardapio.getServe()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	
		<a href="entrada?acao=homepage"><button>HomePage</button></a>
	</main>
</body>
</html>