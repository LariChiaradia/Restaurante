package teste;

import modelo.CardapioDao;

public class TesteExcluirProdutosCardapio {

	public static void main(String[] args) {
		
		CardapioDao cardapioDao = new CardapioDao();
		cardapioDao.excluir(1);

	}

}
