<!-- Parada S�nchez Liliana -->
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
	<link rel="stylesheet" href="estilos/tablas.css">
	<link rel="stylesheet" href="estilos/estilos.css">
	
	<title>Lista de maestros de carrera</title>
</head>
<body class="body">
	<%
	String usuario;
	String rol;
	
	if(session.getAttribute("usuario")!=null && session.getAttribute("rol")!=null){
		usuario = session.getAttribute("usuario").toString(); 
		rol = session.getAttribute("rol").toString();
		
		if(rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro"))
			out.print("<script>location.replace('menu.jsp');</script>");		
	}else
		out.print("<script>location.replace('login.jsp');</script>");

	%>
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #D5D5D5;">
		<a class="navbar-brand" href="#">Administraci�n de materias</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="ListaCarrerasServlet">Regresar</a></li>
				<li class="nav-item"><a class="nav-link" href="menu.jsp">Regresar a men�</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="LogoutServlet">Cerrar sesi�n</a>
				</li>
			</ul>
		</div>
	</nav>
	
<div class="container">
	<br>
	<h2 class="text-center">Lista de maestros</h2>
	<hr>
	<div class="row">
		<div class="col col-lg-6">
			<form class="form-inline" action='CargarMaestrosCarreraServlet' method='post'>
				<input type="hidden" name="pk_carrera" id="pk_carrera" value="${pk_carrera}">
				<div class="form-group mx-sm-3 mb-2">
				    <select class="form-control" name="maestro" id="maestro">
						<option value="0">- Seleccione un maestro -</option>
						<c:forEach items="${listamaestros}" var="ma">
							<option value="${ma.getPk_usuario()}">${ma.getNombre()} ${ma.getApellido_paterno()} ${ma.getApellido_materno()}</option>
						</c:forEach>
					</select>
				</div>
				<input type='submit' name='buscar' value='Agregar maestro'
					class="btn btn-primary btn-outline-primary mb-2">
				<input type='hidden' name='sts' value='buscar'>
			</form>
		</div>
		<div class="col col-lg-3"></div>
	</div>
	<br>
	<br>
	
	<table class="table table-hover table-bordered table-striped" border=1>
	<thead>
	<tr class="cabecera text-center">
	<th scope="col">No.</th>
	<th scope="col">Nombre maestro</th>
	</tr>
	</thead>
	<tbody>
	<c:if test="${maestros.isEmpty()}">
		<tr><th colspan=2 class="text-center">No se encontraron maestros de la carrera</th></tr>
	</c:if>
	<c:forEach items="${maestros}" var="m" varStatus="contador">
			<tr class="text-center">
				<td scope="row">${contador.index+1}</td>
				<td>${m.getNombre()} ${m.getApellido_paterno()} ${m.getApellido_materno()}</td>	
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>  
</body>
</html>