package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import negocio.Atividade;
import repository.AcessoDao;

public class AcessoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AcessoController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Atividade atividade = new Atividade(request.getParameter("nome"), request.getParameter("email"));
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		if(AcessoDao.validar(login, senha))
		{
			request.getRequestDispatcher("home.html").forward(request, response);
			
		} else 
		{	
			request.setAttribute("msgAutenticacao", "Credenciais inválidas.");
			request.getRequestDispatcher("login.jsp").forward(request, response);

		}
	}

}
