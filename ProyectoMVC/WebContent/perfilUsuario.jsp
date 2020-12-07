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
		<title>Perfil maestro</title>
	</head>
	<body class="body">
	<% 
	String usuario;
	String rol;
	
	if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
		usuario = session.getAttribute("usuario").toString();
		rol = session.getAttribute("rol").toString();
		
		if (rol.equals("administrador"))
			out.print("<script>location.replace('menu.jsp');</script>");
	} else 
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
				<c:if test="${rol == 'jefe' || rol == 'jefe_maestro'}">
					<li class="nav-item"><a class="nav-link" href="MaestrosServlet">Regresar</a></li>
					<li class="nav-item"><a class="nav-link" href="menu.jsp">Regresar a menú</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutServlet">Cerrar sesión</a></li>
				</c:if>
				<c:if test="${rol == 'maestro' }">
					<li class="nav-item"><a class="nav-link" href="menu.jsp">Regresar a menú</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutServlet">Cerrar sesión</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
	
	<br>
	
	<div class="container">
		<h1 style="text-align: center">Datos del maestro</h1>
		<br>
		<div class="card text-center" style="width: 18rem;">
		  <img class="card-img-top" src="img/user.png" alt="Card image cap">
		  <div class="card-body">
		    <h5 class="card-title">${maestro.get(0).getNombre()} ${maestro.get(0).getApellido_paterno()} ${maestro.get(0).getApellido_materno()}</h5>
		  </div>
		  <ul class="list-group list-group-flush">
		    <li class="list-group-item">Teléfono: <br> ${maestro.get(0).getTelefono()}</li>
		    <li class="list-group-item">Correo electrónico: <br> ${maestro.get(0).getCorreo()}</li>
		    <li class="list-group-item">Departamento: <br> ${maestro.get(0).getDepartamento()}</li>
		  </ul>
		</div>
	</div>
</body>
</html>