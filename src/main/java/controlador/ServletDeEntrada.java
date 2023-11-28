package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Cardapio;
import modelo.CardapioDao;
import modelo.Login;
import modelo.LoginDao;

@WebServlet("/entrada")
public class ServletDeEntrada extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String acao = req.getParameter("acao");
		
		HttpSession sessao = req.getSession();
		Boolean Naologado = sessao.getAttribute("NaoLogado") == null;
		Boolean acessoProtegido = !(acao.equals("login") || acao.equals("formlogin") || acao.equals("homepage") || acao.equals("cardapio"));
		
		if(Naologado && acessoProtegido) {
			resp.sendRedirect("http://localhost:8080/Chiaradia_Restaurante/entrada?acao=formlogin");
			return;
		}

		
		if(acao.equals("login")) {
			
			String user = req.getParameter("txtlogin");
			String senha = req.getParameter("txtsenha");
			
			LoginDao loginDao = new LoginDao();
			Login login = loginDao.login(user, senha);
			
			if(user != null) {
				sessao = req.getSession();
				sessao.setAttribute("NaoLogado", user);
				
				resp.sendRedirect("http://localhost:8080/Chiaradia_Restaurante/entrada?acao=homepage");
			}else {
				
				resp.sendRedirect("http://localhost:8080/Chiaradia_Restaurante/entrada?acao=formlogin");
			}
			
		}else if(acao.equals("formlogin")) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/visao/Login.jsp");
			dispatcher.forward(req, resp);
			
		}else if(acao.equals("homepage")) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/visao/HomePage.jsp");
			dispatcher.forward(req, resp);
			
		}else if(acao.equals("formcadastra")) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/visao/Cadastra.jsp");
			dispatcher.forward(req, resp);
			
		}else if(acao.equals("cadastra")) {
			
			String nome = req.getParameter("txtnome");
			String descricao = req.getParameter("txtdescricao");
			String categoria = req.getParameter("txtcategoria");
			double preco = Double.parseDouble(req.getParameter("txtpreco"));
			int serve = Integer.parseInt(req.getParameter("txtserve"));
			
			Cardapio cardapio = new Cardapio(nome,descricao,categoria,preco,serve);
			
			CardapioDao cardapioDao = new CardapioDao();
			cardapioDao.cadastra(cardapio);
			
			resp.sendRedirect("http://localhost:8080/Chiaradia_Restaurante/entrada?acao=formcadastra");
			
		}else if(acao.equals("conta")) {
			RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/visao/Conta.jsp");
			dispatcher.forward(req, resp);
			
		}else if(acao.equals("cardapio")) {
			
			CardapioDao cardapioDao = new CardapioDao();
			List<Cardapio> entradas = cardapioDao.filtrar("Entrada");
			req.setAttribute("listaentrada", entradas);
			
			List<Cardapio> principais = cardapioDao.filtrar("Principal");
			req.setAttribute("listaprincipal", principais);
			
			List<Cardapio> combos = cardapioDao.filtrar("Combos");
			req.setAttribute("listadecombos", combos);
			
			List<Cardapio> sobremesas = cardapioDao.filtrar("Sobremesas");
			req.setAttribute("listadesobremesas", sobremesas);
			
			List<Cardapio> bebidas = cardapioDao.filtrar("Bebidas");
			req.setAttribute("listadebebidas", bebidas);
			
			if(Naologado) {
				RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/visao/Cardapio.jsp");
				dispatcher.forward(req, resp);
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/visao/CardapioLogado.jsp");
				dispatcher.forward(req, resp);
			}
			
		}else if(acao.equals("altera")) {
			
			String nome = req.getParameter("txtnome");
			String descricao = req.getParameter("txtdescricao");
			String categoria = req.getParameter("txtcategoria");
			double preco = Double.parseDouble(req.getParameter("txtpreco"));
			int serve = Integer.parseInt(req.getParameter("txtserve"));
			
			Cardapio cardapio = new Cardapio(nome,descricao,categoria,preco,serve);
			
			CardapioDao cardapioDao = new CardapioDao();
			cardapioDao.alterar(cardapio);
			
			resp.sendRedirect("http://localhost:8080/Chiaradia_Restaurante/entrada?acao=cardapio");
			
		}else if(acao.equals("excluir")) {
			
			Integer codigo = Integer.parseInt(req.getParameter("codigo"));
			
			CardapioDao cardapioDao = new CardapioDao();
			cardapioDao.excluir(codigo);
			
			resp.sendRedirect("http://localhost:8080/Chiaradia_Restaurante/entrada?acao=cardapio");
		}else if(acao.equals("filtrarentrada")) {

		}
		}
	}