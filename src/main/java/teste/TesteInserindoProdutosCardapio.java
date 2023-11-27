package teste;

import modelo.Cardapio;
import modelo.CardapioDao;

public class TesteInserindoProdutosCardapio {

	public static void main(String[] args) {
		
//		Cardapio cardapio = new Cardapio("Refrigerante Lata","Lata de 350ml","Bebidas", 6.00, 1 );
		Cardapio cardapio = new Cardapio("Bife a rolê","Batata e Bife enrolado ","Principal", 20.00, 1 );
		
		CardapioDao cardapioDao = new CardapioDao();
		cardapioDao.cadastra(cardapio);
		
		
	}

}
