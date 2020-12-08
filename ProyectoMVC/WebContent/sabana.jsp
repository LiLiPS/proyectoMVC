<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
    integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
	
	<title>Sábana de horarios</title>
</head>
<body class="body">
	<%
	String usuario;
	String rol;
	
	if(session.getAttribute("usuario")!=null && session.getAttribute("rol")!=null){
		usuario = session.getAttribute("usuario").toString(); 
		rol = session.getAttribute("rol").toString();
		
		if(rol.equals("maestro") || rol.equals("administrador"))
			out.print("<script>location.replace('menu.jsp');</script>");		
	}else
		out.print("<script>location.replace('login.jsp');</script>");

	%>
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #D5D5D5;">
		<a class="navbar-brand" href="#">Administración de materias</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="menu.jsp">Regresar a menú</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="LogoutServlet">Cerrar sesión</a>
				</li>
			</ul>
		</div>
	</nav>
	
<div class="container">
	<br>
	<h2 class="text-center">Sábana de horarios</h2>
	<hr>
	<div class="row">
		<div class="col col-lg-5">
			<form class="form-inline" action='MaestrosServlet' method='post'>
				<div class="form-group mx-sm-3 mb-2">
					<input type='text' placeholder='Clave horario' name='claveH' class="form-control">
				</div>
				<input type='submit' name='buscar' value='Buscar horario' class="btn btn-primary btn-outline-primary mb-2"> 
				<input type='hidden' name='sts' value='buscar'>
			</form>
		</div>
		<div class="col col-lg-5"><a class="btn btn-success btn-outline-success" href="form.php">
				Subir archivo
			</a></div>
		<div class="col col-lg-2">
			
			<a class="btn btn-success btn-outline-success" href="NuevoGrupoServlet">
				Crear grupo
			</a>
		</div>
	</div>
	<br>
	
	<table class="table table-hover table-bordered table-striped" border=1>
		<thead>
			<tr class="cabecera text-center">
				<th scope="col">Clave horario</th>	
				<th scope="col">Materia</th> <!-- clave y nombre -->
				<th scope="col">Carrera</th> <!-- clave y nombre -->
				<th scope="col">Maestro</th>
				<th scope="col">Periodo</th>
				<th scope="col">Turno</th>
				<th scope="col">Semestre</th>
				<th scope="col">Créditos</th>
				<th scope="col">Operaciones</th>
			</tr>
		</thead>
		<tbody>
		<c:if test="${sabana.isEmpty()}">
			<tr><th colspan="9" class="text-center">No se encontraron horarios</th></tr>
		</c:if>
		<c:forEach items="${sabana}" var="s">
			<tr class="text-center">
				<td>${s.getClave_horario()}</td>
				<td>${s.getClave_materia()} <br> ${s.getMateria()}</td>
				<td>${s.getClave_carrera()} <br> ${s.getCarrera()}</td>
				<td>${s.getNombreMaestro()}</td>
				<td>${s.getPeriodo()}</td>
				<td>${s.getTurno()}</td>
				<td>${s.getSemestre()}</td>
				<td>${s.getCreditos()}</td>			
				<td>
					<a class="btn btn-sm btn-link text-info" href="DetalleSabanaServlet?id=${s.getPk_grupo()}">
						<i class="fas fa-list-ul"></i> Detalles
					</a><br>
					<a class="btn btn-sm btn-link text-warning" href="CargarMaestroServlet?id=${s.getPk_grupo()}">
						<i class="fas fa-edit"></i> Editar
					</a><br>
					<a class="btn btn-sm btn-link text-danger" href="EliminarGrupoServlet?id=${s.getPk_grupo()}">
						<i class="fas fa-trash"></i> Eliminar
					</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>  
</body>
</html>