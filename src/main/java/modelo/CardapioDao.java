package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//Metodos utilizados no projeto

public class CardapioDao {
//	Cadastrar produtos ou pratos
	
	public void cadastra(Cardapio cardapio) {

		Connection con = Conexao.obterConexao();
		
		String sql = "INSERT INTO Cardapio(nome_produto,descricao_produto,categoria_produto,preco,serve) VALUES (?,?,?,?,?)";
		
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(1, cardapio.getNome());
			preparador.setString(2, cardapio.getDescricao());
			preparador.setString(3, cardapio.getCategoria());
			preparador.setDouble(4, cardapio.getPreco());
			preparador.setInt(5, cardapio.getServe());
			
			preparador.execute();
			
			preparador.close();
			
			System.out.println("Produto cadastrado com sucesso!!!");
			
		} catch (SQLException e) {
			System.err.println("Cadastro não foi concluido!!!");
			e.printStackTrace();
		}
	}
	
// Excluir produtos ou pratos
	
	public void excluir(int codigo) {
		
		Connection con = Conexao.obterConexao();
		
		String sql = "DELETE FROM CARDAPIO WHERE ID_PRODUTO=?";
		
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setInt(1,codigo);
			
			preparador.execute();
			
			preparador.close();
			
			System.out.println("Produto excluido com sucesso!!!");
			
		} catch (SQLException e) {
			System.err.println("Erro ao excluir o produto!!!");
			e.printStackTrace();
		}
	}
	
	
	
	
// Alterar produtos ou pratos
	
	public void alterar(Cardapio cardapio) {
		
		Connection con = Conexao.obterConexao();
		
		String sql = "UPDATE CARDAPIO SET nome_produto=?, descricao_produto=?, categoria_produto=?, preco=?, serve=? WHERE id_produto=?";
		
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(1, cardapio.getNome());
			preparador.setString(2, cardapio.getDescricao());
			preparador.setString(3, cardapio.getCategoria());
			preparador.setDouble(4, cardapio.getPreco());
			preparador.setInt(5, cardapio.getServe());
			preparador.setInt(6, cardapio.getCodigo());
			
			preparador.execute();
			
			preparador.close();
			System.out.println("Alterações concluidas com sucesso!!!");
		} catch (SQLException e) {
			System.err.println("Erro ao alterar o produto!!!");
			e.printStackTrace();
		}
	}


// Produtos Por categoria
	
	public List<Cardapio> filtrar(String categoria){
		
		Connection con = Conexao.obterConexao();
		List<Cardapio> cardapios = new ArrayList<>();
		String sql = "SELECT * FROM CARDAPIO WHERE categoria_produto=?";
		
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(1, categoria);
			
			ResultSet resultado = preparador.executeQuery();
			
			while(resultado.next()) {
				Cardapio cardapio = new Cardapio();
				cardapio.setCodigo(resultado.getInt("id_produto"));
				cardapio.setNome(resultado.getString("nome_produto"));
				cardapio.setDescricao(resultado.getString("descricao_produto"));
				cardapio.setCategoria(resultado.getString("categoria_produto"));
				cardapio.setPreco(resultado.getDouble("preco"));
				cardapio.setServe(resultado.getInt("serve"));
				
				cardapios.add(cardapio);
			}
		} catch (SQLException e) {
			System.err.println("Erro ao carregar!!!");
			e.printStackTrace();
		}
		return cardapios;
	}

	
// Todos os produtos
	
	public List<Cardapio> todos(){
		
		Connection con = Conexao.obterConexao();
		List<Cardapio> cardapios = new ArrayList<>();
		String sql = "SELECT * FROM CARDAPIO";
		
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			ResultSet resultado = preparador.executeQuery();
			
			while(resultado.next()) {
				Cardapio cardapio = new Cardapio();
				cardapio.setCodigo(resultado.getInt("id_produto"));
				cardapio.setNome(resultado.getString("nome_produto"));
				cardapio.setDescricao(resultado.getString("descricao_produto"));
				cardapio.setCategoria(resultado.getString("categoria_produto"));
				cardapio.setPreco(resultado.getDouble("preco"));
				cardapio.setServe(resultado.getInt("serve"));
				
				cardapios.add(cardapio);
			}
			
		} catch (SQLException e) {
			System.err.println("Erro, não foi possível carregar o cardápio!!!");
			e.printStackTrace();
		}
		
		return cardapios;
	}
	
	
// Produtos Por codigo
	
	public Cardapio filtrarPorCodigo(int codigo) {
		
		Connection con = Conexao.obterConexao();
		String sql = "SELECT * FROM CARDAPIO WHERE id_produto=?";
		
		Cardapio cardapio = null;
		
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setInt(1, codigo);
			ResultSet resultado = preparador.executeQuery();
			
			while(resultado.next()) {
				cardapio = new Cardapio();
				cardapio.setCodigo(resultado.getInt("id_produto"));
				cardapio.setNome(resultado.getString("nome_produto"));
				cardapio.setDescricao(resultado.getString("descricao_produto"));
				cardapio.setCategoria(resultado.getString("categoria_produto"));
				cardapio.setPreco(resultado.getDouble("preco"));
				cardapio.setServe(resultado.getInt("serve"));
				
			}
			
		} catch (SQLException e) {
			System.err.println("Erro, não foi possível atualizar o Cardápio!!!");
			e.printStackTrace();
		}
		
		return cardapio;
		
	}
	
// Conta
	
	

// Pedidos
}
