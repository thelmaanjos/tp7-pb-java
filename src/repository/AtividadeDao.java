package repository;

import java.util.ArrayList;
import java.util.List;
import negocio.Atividade;

public class AtividadeDao 
{
	
	private static List<Atividade> atividades;
	
	private static void prepara()
	{
		if(atividades == null)
		{
			atividades = new ArrayList<Atividade>();
		}
	}
	
	public static boolean incluir(Atividade atividade)
	{
		prepara();
		
		try {
			atividades.add(atividade);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return false;
	}
	
	public static List<Atividade> obterLista()
	{
		prepara();
		return atividades;
	}
	
}