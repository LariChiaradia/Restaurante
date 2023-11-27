package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
		
//Cadastrar novo acesso
		public void cadastrar(Login login) {
			
			Connection con = Conexao.obterConexao();
			
			String sql = "INSERT INTO LOGIN(USUARIO, SENHA, FUNCAO) VALUES(?, ? ,?)";
			
			try {
				PreparedStatement preparador = con.prepareStatement(sql);
				preparador.setString(1, login.getUser());
				preparador.setString(2, login.getSenha());
				preparador.setString(3, login.getFuncao());
				
				preparador.execute();
				
				preparador.close();
				
				System.out.println("Novo login criado!!!");
				
			} catch (SQLException e) {
				System.err.println("Não foi possível criar o Login!!!");
				e.printStackTrace();
			}
			
		}
		
//Excluir acesso
		public void excluir(int codigo) {
			
			Connection con = Conexao.obterConexao();
			
			String sql = "DELETE FROM LOGIN WHERE ID_USER = ?";
			
			try {
				PreparedStatement preparador = con.prepareStatement(sql);
				preparador.setInt(1, codigo);
				
				preparador.execute();
				
				preparador.close();
			} catch (SQLException e) {
				System.err.println("Não foi possível excluir o Login!!!");
				e.printStackTrace();
			}
		}	
		
//Login
		public Login login(String user,String senha) {
			
			Connection con = Conexao.obterConexao();
			Login login = null;
			String sql = "Select * from Login WHERE login=? AND senha=?";
			
			try {
				PreparedStatement preparador = con.prepareStatement(sql);
				preparador.setString(1, user);
				preparador.setString(2, senha);
				
				ResultSet resultado = preparador.executeQuery();
				if(resultado.next()) {
					login = new Login();
					login.setCodigo(resultado.getInt("codigo"));
					login.setUser(resultado.getString("user"));
					login.setSenha(resultado.getString("senha"));
					login.setFuncao(resultado.getString("funcao"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return login;
		}

	}
