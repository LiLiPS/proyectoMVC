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
		<title>Reporte de materias</title>
	</head>
	<%
		String usuario;
		String rol;
		
		if(session.getAttribute("usuario")!=null && session.getAttribute("rol")!=null){
			usuario = session.getAttribute("usuario").toString(); 
			rol = session.getAttribute("rol").toString();
			
			if(rol.equals("administrador"))
				out.print("<script>location.replace('menu.jsp');</script>");		
		}else
			out.print("<script>location.replace('login.jsp');</script>");
	
	%>

<body class="body">

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
				<li class="nav-item"><a class="nav-link" href="MaestrosServlet">Regresar</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="menu.jsp">Regresar a menú</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="LogoutServlet">Cerrar sesión</a>
				</li>
			</ul>
		</div>
	</nav>
	<br>
	
	<div class="container">
	<h3 style="text-align:center">Reporte de materias</h3>
	<hr>
	<h6 style="text-align:center">
		INSTITUTO TECNOLÓGICO DE LEÓN <br>
		DEPARTAMENTO DE SISTEMAS Y COMPUTACIÓN <br>
		PROGRAMACIÓN DE AGOSTO A DICIEMBRE 2020 <br>
	</h6>
	<br>
	<table class="table table-hover table-bordered table-striped" border=1>
		<tr class="text-center">
			<td width="25%" class="text-right">Nombre del Maestro</td>
			<td class="text-left">${maestro.getNombre()} ${maestro.getApellido_paterno()} ${maestro.getApellido_materno()}</td>
		</tr>
		<tr class="text-center">
			<td width="25%" class="text-right">Clave del Maestro</td>
			<td class="text-left">${maestro.getClave_usuario()}</td>
		</tr>
		<tr class="text-center">
			<td width="25%" class="text-right">Horas por impartir</td>
			<td class="text-left">${maestro.getHoras()}</td>
		</tr>
		<tr class="text-center">
			<td width="25%" class="text-right">Horas asignadas en Licenciatura</td>
			<td class="text-left">${horas}</td>
		</tr>
		<tr class="text-center">
			<td width="25%" class="text-right">Horas asignadas en Posgrado</td>
			<td class="text-left">0</td>
		</tr>
		<tr class="text-center">
			<td width="25%" class="text-right">Total de horas asignadas</td>
			<td class="text-left">${horas}</td>
		</tr>
	</table>
	
	<br><br>
	
	<div class="table-responsive">
		<table class="table table-hover table-bordered table-striped" border=1>
			<thead >
				<tr class="text-center">
					<th scope="col">No.</th>
					<th scope="col">Clave del Grupo</th>
					<th scope="col">Materia</th> <!-- clave y nombre -->
					<th scope="col">Carrera</th> <!-- clave y nombre -->
					<th scope="col">Grupo</th>
					<th scope="col">Aula</th>
					<th scope="col">No. Alumnos</th>
					<th scope="col">Semestre</th>
					<th scope="col">L</th>
					<th scope="col">M</th>
					<th scope="col">Mi</th>
					<th scope="col">J</th>
					<th scope="col">V</th>
					<th scope="col">H Teóricas</th>
					<th scope="col">H Prácticas</th>
					<th scope="col">Créditos</th>
				</tr>
			</thead>
			<c:forEach items="${grupos}" var="g" varStatus="contador">
			<tbody>
				<tr class="text-center">
					<td scope="row">${contador.index+1}</td>
					<td>${g.getClave_grupo()}</td>
					<td>${g.getClave_materia()} <br> ${g.getNombre_materia()}</td>
					<td>${g.getNombre_carrera()}</td>
					<td>${g.getGrupo()}</td>
					<td>${g.getAula()}</td>
					<td>${g.getAlumnos()}</td>
					<td>${g.getSemestre()}</td>
					<td>${g.getHora_lunes()}</td>
					<td>${g.getHora_martes()}</td>
					<td>${g.getHora_miercoles()}</td>
					<td>${g.getHora_jueves()}</td>
					<td>${g.getHora_viernes()}</td>
					<td>${g.getHoras_t()}</td>
					<td>${g.getHoras_p()}</td>
					<td>${g.getCreditos()}</td>
				</tr>
			</tbody>
			</c:forEach>
		</table>	
	</div>
	</div>
</body>
</html>