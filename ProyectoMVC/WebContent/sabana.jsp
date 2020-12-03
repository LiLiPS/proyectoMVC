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
    <link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.min.js"></script>
	<link rel="stylesheet" href="estilos/tablas.css">
	<link rel="stylesheet" href="estilos/estilos.css">
	
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
	<br><br>
	<div class="row">
		<div class="col col-lg-5">
			<form action='MaestrosServlet' method='post'>
				<div class="row">
					<div class="col">
						<div class="form-group">
							<input type='text' placeholder='Clave horario' name='claveH'
								class="form-control">
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<input type='submit' name='buscar' value='Buscar horario'
								class="btn btn-sm btn-primary btn-outline-primary"> <input
								type='hidden' name='sts' value='buscar'>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="col col-lg-6"></div>
		<div class="col col-lg-1">
			<a class="btn btn-success btn-outline-success" href="form.php">
				Crear horario </a>
		</div>
	</div>
	<br><br>
	
	<table class="table table-hover table-bordered table-striped" border=1>
	<thead>
	<tr class="cabecera text-center">
	<th scope="col">Clave horario</th>	
	<th scope="col">Clave de materia</th>
	<th scope="col">Clave de carrera</th>
	<th scope="col">Nombre de Materia</th>
	<th scope="col">Carrera</th>
	<th scope="col">Maestro</th>
	<th scope="col">Periodo</th>
	<th scope="col">Turno</th>
	<th scope="col">Grupo</th>
	<th scope="col">No. Alumnos</th>
	<th scope="col">Semestre</th>
	<th scope="col">Créditos</th>
	<th scope="col">Aula</th>
	<th scope="col">Operaciones</th>
	</tr>
	</thead>
	<tbody>
	<c:if test="list.isEmpty()">
		<tr><th colspan=11>No se encontraron maestros</th></tr>
	</c:if>
	<c:forEach items="${sabana}" var="s">
			<tr class="text-center">
				<td>${s.getClave_horario()}</td>
				<td>${s.getClave_materia()}</td>
				<td>${s.getClave_carrera()}</td>
				<td>${s.getMateria()}</td>
				<td>${s.getCarrera()}</td>
				<td>${s.getNombreMaestro()}</td>
				<td>${s.getPeriodo()}</td>
				<td>${s.getTurno()}</td>
				<td>${s.getGrupo()}</td>
				<td>${s.getAlumnos()}</td>
				<td>${s.getSemestre()}</td>
				<td>${s.getCreditos()}</td>
				<td>${s.getAula()}</td>				
				<td>
					<a class="btn btn-sm btn-info" href="reporte.jsp?id=${us.getPk_usuario()}">
						<i class="fas fa-list-ul"></i> Detalles
					</a>
					<a class="btn btn-sm btn-primary" href="CargarMaestroServlet?id=${us.getPk_usuario()}">
						<i class="fas fa-id-card"></i> Editar
					</a>
					<a class="btn btn-sm btn-primary" href="CargarMaestroServlet?id=${us.getPk_usuario()}">
						<i class="fas fa-id-card"></i> Eliminar
					</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>  
</body>
</html>