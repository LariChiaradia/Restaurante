package modelo;

public class Login {
	
	public Login() {
		
	}
	
	public Login(String login, String senha, String funcao) {
		super();
		this.user = login;
		this.senha = senha;
		this.funcao = funcao;
	}
	
	public Login(int codigo, String login, String senha, String funcao) {
		super();
		this.codigo = codigo;
		this.user = login;
		this.senha = senha;
		this.funcao = funcao;
	}


	private int codigo;
	private String user;
	private String senha;
	private String funcao;
	
	@Override
	public String toString() {
		
		return "Login [login=" + user + ", senha=" + senha + ", funcao=" + funcao
				+ "]";
		
	}
	
	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getFuncao() {
		return funcao;
	}
	public void setFuncao(String funcao) {
		this.funcao = funcao;
	}

}
