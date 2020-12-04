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
	
	<title>Lista de materias</title>
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
	<h2 class="text-center">Maestros</h2>
	<hr>
	<div class="row">
		<div class="col col-lg-6">
			<form class="form-inline" action='MaestrosServlet' method='post'>
				<div class="form-group mx-sm-3 mb-2">
					<input type='text' placeholder='Clave de maestro' name='claveM' class="form-control">
				</div>
				<input type='submit' name='buscar' value='Buscar' class="btn btn-primary btn-outline-primary mb-2"> 
				<input	type='hidden' name='sts' value='buscar'>
			</form>
		</div>
	</div>
	<br><br>
	
	<table class="table table-hover table-bordered table-striped" border=1>
	<thead>
	<tr class="cabecera text-center">
	<th scope="col">No.</th>
	<th scope="col">Clave maestro</th>
	<th scope="col">Título</th>
	<th scope="col">Nombre</th>
	<th scope="col">Apellido paterno</th>
	<th scope="col">Apellido materno</th>
	<th scope="col">Opciones</th>
	</tr>
	</thead>
	<tbody>
	<c:if test="list.isEmpty()">
		<tr><th colspan=11>No se encontraron maestros</th></tr>
	</c:if>
	<c:forEach items="${list}" var="us" varStatus="contador">
			<tr class="text-center">
				<td scope="row">${contador.index+1}</td>
				<td>${us.getClave_usuario()}</td>
				<td>${us.getTitulo()}</td>
				<td>${us.getNombre()}</td>
				<td>${us.getApellido_paterno()}</td>
				<td>${us.getApellido_materno()}</td>			
				<td>
					<a class="btn btn-sm btn-link text-info" href="reporte.jsp?id=${us.getPk_usuario()}">
						<i class="fas fa-list-ul"></i> Reporte
					</a>
					<a class="btn btn-sm btn-link text-primary" href="CargarMaestroServlet?id=${us.getPk_usuario()}">
						<i class="fas fa-id-card"></i> Perfil
					</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>  
</body>
</html>