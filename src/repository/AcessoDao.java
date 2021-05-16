package repository;

public class AcessoDao {

	public static boolean validar(String login, String senha)
	{
		return login.equalsIgnoreCase(senha);
	}
}