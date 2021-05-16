package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import negocio.Atividade;
import repository.AtividadeDao;

public class AtividadeController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	public AtividadeController() 
	{
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		request.setAttribute("lista", AtividadeDao.obterLista());
		request.getRequestDispatcher("atividade/lista.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		if ("lista".equals(request.getParameter("tela"))) 
		{
			request.getRequestDispatcher("atividade/detalhe.jsp").forward(request, response);
		} else 
		{
			Atividade atividade = new Atividade(request.getParameter("nome"), request.getParameter("autor"));

			atividade.setDescAtv(request.getParameter("descAtv"));
			atividade.setIsUrgent(Boolean.parseBoolean(request.getParameter("isUrgent")));
			atividade.setPrioridade(Integer.valueOf(request.getParameter("prioridade")));
			 
			if (AtividadeDao.incluir(atividade)) 
			{
				request.setAttribute("mensagem", atividade.toString());
				request.setAttribute("lista", AtividadeDao.obterLista());

				request.getRequestDispatcher("confirmacao.jsp").forward(request, response);
			} else 
			{
				// todo
			}
		}
	}
}
