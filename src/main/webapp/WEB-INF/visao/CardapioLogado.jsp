<%@page import="modelo.Cardapio"%>
<%@page import="modelo.Login"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cardapio Logado</title>
</head>
<body>

	<h1>Cardapio</h1>
	
	<a href="entrada?acao=formcadastra"><button>Cadastrar Novo Produto</button></a>

	<%
	List<Cardapio> entradas = (List<Cardapio>) request.getAttribute("listaentrada");
	%>
	<h2>Entrada</h2>
	<table border="1" style="width: 90%">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
				<th>Alterar</th>
				<th>Excluir</th>
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
				<td><a
					href="entrada?acao=mostraporcodigo&codigo=<%=cardapio.getCodigo()%>">Alterar</a></td>
				<td><a
					href="entrada?acao=excluir&codigo=<%=cardapio.getCodigo()%>">X</a></td>
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
	<table border="1" style="width: 90%">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
				<th>Alterar</th>
				<th>Excluir</th>
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
				<td><a
					href="entrada?acao=mostraporcodigo&codigo=<%=cardapio.getCodigo()%>">Alterar</a></td>
				<td><a
					href="entrada?acao=excluir&codigo=<%=cardapio.getCodigo()%>">X</a></td>
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
	<table border="1" style="width: 90%">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
				<th>Alterar</th>
				<th>Excluir</th>
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
				<td><a
					href="entrada?acao=mostraporcodigo&codigo=<%=cardapio.getCodigo()%>">Alterar</a></td>
				<td><a
					href="entrada?acao=excluir&codigo=<%=cardapio.getCodigo()%>">X</a></td>
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
	<table border="1" style="width: 90%">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
				<th>Alterar</th>
				<th>Excluir</th>
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
				<td><a
					href="entrada?acao=mostraporcodigo&codigo=<%=cardapio.getCodigo()%>">Alterar</a></td>
				<td><a
					href="entrada?acao=excluir&codigo=<%=cardapio.getCodigo()%>">X</a></td>
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
	<table border="1" style="width: 90%">
		<thead>
			<tr style="background-color: black; color: white">
				<th>Nome</th>
				<th>Descrição</th>
				<th>Categoria</th>
				<th>Preco</th>
				<th>Serve</th>
				<th>Alterar</th>
				<th>Excluir</th>
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
				<td><a
					href="entrada?acao=mostraporcodigo&codigo=<%=cardapio.getCodigo()%>">Alterar</a></td>
				<td><a
					href="entrada?acao=excluir&codigo=<%=cardapio.getCodigo()%>">X</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>