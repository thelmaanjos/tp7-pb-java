<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.83.1">
    <title>Cadastro de atividade</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">
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
	<link href="form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">   
	<div class="container">
		<main>
			<div class="py-5 text-center">
				<h2>Cadastre uma atividade</h2>
			</div>
			<div class="col-md-7 col-lg-8 mx-auto">
	        	<form 
	        		class="needs-validation" 
					novalidate 
					action="atividade" 
					method="post">
					<div class="row g-3">
						<div class="col-sm-6">
							<label for="firstName" class="form-label">Nome da atividade</label>
						  	<input 
						  		type="text" 
						  		class="form-control"  
						  		name="nome" 
						  		value="TP7 Projeto de Bloco" 
						  		required>
						  		<div class="invalid-feedback">
						    		Insira um nome para a sua atividade
								</div>
						</div>
						<div class="col-sm-6">
							<label for="username" class="form-label">Autor</label>
	              			<div class="input-group has-validation">
	                			<span class="input-group-text">@</span>
	                			<input type="text" 
	                				class="form-control" 
	                				name="autor" 
	                				value="thelmaanjos" 
	                				required>
									<div class="invalid-feedback">
	                  					Insira o autor da atividade
	                				</div>
	              			</div>
	            		</div>
						<div class="col-12">
	              			<label for="text" class="form-label">Descrição da atividade 
	              			<span class="text-muted">(Opcional)</span>
	              			</label>
	              			<textarea 
	              				class="form-control" 
	              				id="message" 
	              				placeholder="Descreva a sua atividade :)"
	              				name="descAtv">
	              			</textarea>
	            		</div> 
	          			<div class="col-12">
	            		<label for="text" class="mb-3">Essa tarefa é urgente?</label>
					  		<div class="form-check">
					  			<input 
					  				class="form-check-input" 
									type="radio" 
									name="isUrgent" 
									value="true"
									checked>
					  			<label class="form-check-label">Urgente!</label>
							</div>
		            		<div class="form-check">
		              			<input
		              				class="form-check-input" 
					  				type="radio" 
					  				name="isUrgent"  
					 				value="false">
		              				<label class="form-check-label">Não é urgente</label>
		            		</div>
	            		</div>
						<div class="col-md-8">
	              			<label class="form-label">Escolha o nível de prioridade</label>
	              			<select 
	              				class="form-select"
	              				name="prioridade"
	              				required>
	                			<option selected> 1</option>
				                <option>2</option>
				                <option>3</option>
				            </select>
							<div class="invalid-feedback">
	                			Selecione um nível de prioridade
	              			</div>
	            		</div>
	          		<hr class="my-4">
	         		</div>
	          	<button class="w-100 btn btn-primary btn-lg my-5" type="submit">Cadastrar atividade</button>
	        	</form>
			</div>
		</main>
	</div>
</body>
</html>
