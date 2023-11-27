package teste;

import java.util.List;

import modelo.Cardapio;
import modelo.CardapioDao;

public class TesteTodosItensCardapio {

	public static void main(String[] args) {
		
		CardapioDao cardapioDao = new CardapioDao();
		
		List<Cardapio> cardapios = cardapioDao.todos();
		
		for(Cardapio  cardapio : cardapios) {
			System.out.println(cardapio);
		}

	}

}
