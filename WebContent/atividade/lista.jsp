<%@page import="negocio.Atividade"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
	<meta name="generator" content="Hugo 0.83.1">
	<title>Lista</title>
	<link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/cover/">
	<!-- Bootstrap core CSS -->
	<link 
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" 
		crossorigin="anonymous">
	<style>
		.bd-placeholder-img {
			font-size: 1.125rem;
	  		text-anchor: middle;
	  		-webkit-user-select: none;
	  		-moz-user-select: none;
	  		user-select: none;
		}

		@media (min-width: 768px) {
			.bd-placeholder-img-lg {
				font-size: 3.5rem;
			}
		}
	</style>
	<!-- Custom styles for this template -->
	<link href="lista.css" rel="stylesheet">
</head>
<body class="d-flex h-100 text-center text-white bg-dark">
	<% List<Atividade> atividades = (List<Atividade>)request.getAttribute("lista"); %>
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<main class="px-3 m-auto">
		<%if(atividades.size() > 0) 
		{%>
			<h2>Listagem de atividades</h2>
			<p>Existem <%=atividades.size()%> atividades cadastradas</p> 
			<table class="table table-dark">
			  <thead>
			    <tr>
			      <th>Nome da atividade</th>
			      <th>Autor</th>
			      <th>Descrição</th>
			      <th>Urgência</th>
			      <th>Prioridade</th>
			    </tr>
			  </thead>
			  <tbody>
			<%
			String isUrgent;
			for(Atividade a : atividades) 
			{
				if (a.getIsUrgent()) 
				{
					isUrgent = "Urgente!";	
				} 
				else
				{
					isUrgent = "Não urgente";
				}%>
				<tr>
					<td><%=a.getNome()%></td>
					<td><%=a.getAutor()%></td>
					<td><%=a.getDescAtv()%></td>
					<td><%=isUrgent%></td>
					<td><%=a.getPrioridade()%></td>
				</tr>
				<%}%>
				</tbody>
			</table>	
		<%}
		else 
		{%>
			<h1>Oops.</h1>
			<h2>Não existem projetos</h2>
			<p class="lead pt-3">
				Para criar atividades, você precisa primeiro criar um projeto.
			</p>
			<p class="lead pb-3 px-5">
				Clique no botão "novo projeto" para criar o seu primeiro projeto e, de cara, já
				cadastre atividades nele! </p>
			<form 
				action="atividade" 
				method="post">
				<button 
					type="submit"
					name="tela" 
					value="lista" 
					class="btn btn-lg btn-secondary fw-bold border-white bg-white">novo projeto
				</button>
			</form>
		<%}%>
		</main>
	</div>
</body>
</html>