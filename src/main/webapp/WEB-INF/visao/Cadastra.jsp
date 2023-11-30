<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Cadastrar</title>
</head>
<body>

	<style><%@ include file="/WEB-INF/visao/css/Cadastro.css"%></style>

	
		<main>
			<form action="entrada" method="post">
				<h1>Cadastrar Produtos</h1>
				<section class="inputs-container">
				Nome: <input type="text" name="txtnome" size="70"> <br><br>
				Descrição: <input type="text" name="txtdescricao" size="70"><br><br>
					<section>
					Categoria: <select id="categorias" name="txtcategoria" style="width: 100px;">
					    <option value="Entrada">Entrada</option>
					    <option value="Principal">Principal</option>
					    <option value="Combos">Combos</option>
					    <option value="Sobremesas">Sobremesas</option>
					    <option value="Bebidas">Bebidas</option>
					  </select>
					Preço: <input type="text" name="txtpreco" size="5">
					Serve: <input type="text" name="txtserve" size="5"><br><br>
					</section>
				</section>
				<a href="entrada?acao=cardapio"><button>Salvar</button></a>
				<input type="hidden" name = "acao" value="cadastra">
				<a href="entrada?acao=cardapio" class="button" >Ir para Cardápio</a>
			</form>
				
		</main>
</body>
</html>