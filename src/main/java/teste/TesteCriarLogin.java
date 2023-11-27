package teste;

import modelo.Login;
import modelo.LoginDao;

public class TesteCriarLogin {

	public static void main(String[] args) {
		
		Login login = new Login("LariChia","Lari1234","Gerente");
		
		LoginDao loginDao = new LoginDao();
		loginDao.cadastrar(login);

	}

}
