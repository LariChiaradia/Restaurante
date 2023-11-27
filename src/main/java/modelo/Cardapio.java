package modelo;

public class Cardapio {
	
	public Cardapio() {
		
	}
	
	public Cardapio(String nome, String descricao, String categoria, double preco, int serve) {
		super();
		this.nome = nome;
		this.descricao = descricao;
		this.categoria = categoria;
		this.preco = preco;
		this.serve = serve;
	}


	private int codigo;
	private String nome;
	private String descricao;
	private String categoria;
	private double preco;
	private int serve;


	@Override
	public String toString() {
		
		return "Cardapio [nome=" + nome + ", descrição=" + descricao + ", categoria=" + categoria
				+ ", preço=" + preco + ", serve=" + serve + "]";
		
	}


	public int getCodigo() {
		return codigo;
	}


	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getDescricao() {
		return descricao;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}


	public String getCategoria() {
		return categoria;
	}


	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}


	public double getPreco() {
		return preco;
	}


	public void setPreco(double preco) {
		this.preco = preco;
	}


	public int getServe() {
		return serve;
	}


	public void setServe(int serve) {
		this.serve = serve;
	}
	
}
