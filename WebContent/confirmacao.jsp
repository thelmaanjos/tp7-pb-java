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
    <title>Confirmação</title>
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
	<% String msgConfirmacao = (String)request.getAttribute("mensagem");%>	
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<main class="px-3 m-auto">
			<h1>Prontinho!</h1>
			<p class="lead pb-3"><%=msgConfirmacao%></p>
			<form action="atividade" method="get">
				<button 
					type="submit"
					class="btn btn-lg btn-secondary fw-bold border-white bg-white">lista de atividades
				</button>
 			</form>
		</main>
	</div>
  </body>
</html>