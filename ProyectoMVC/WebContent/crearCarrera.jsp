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
    
	<title>Crear una materia</title>
</head>
<body class="body">

	<%
		String usuario;
	String rol;

	if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
		usuario = session.getAttribute("usuario").toString();
		rol = session.getAttribute("rol").toString();

		if (rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro"))
			out.print("<script>location.replace('menu.jsp');</script>");
	} else
		out.print("<script>location.replace('login.jsp');</script>");
	%>
	<nav class="navbar navbar-expand-lg navbar-light"	style="background-color: #D5D5D5;">
		<a class="navbar-brand" href="#">Administración de materias</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="menu.jsp">Regresar a menú</a></li>
				<li class="nav-item"><a class="nav-link" href="LogoutServlet">Cerrar sesión</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
		<br>
		<h1 style="text-align: center">Crear una carrera</h1>
		<br>
		<div id="contenedor">
			<form action="NuevaCarreraServlet" method="post">
				<div class="form-group">
		            <label for="abreviatura_carrera">Abreviatura carrera: </label>
		            <input type="text" name="abreviatura_carrera" id="abreviatura_carrera" class="form-control" required>
		        </div>
		        <div class="form-group">
		            <label for="nombre_carrera">Nombre carrera: </label>
		            <input type="text" name="nombre_carrera" id="nombre_carrera" class="form-control" required>
		        </div>
		        <div class="form-group">
				    <label for="departamento">Departamento:</label>
				    <select class="form-control" name="departamento" id="departamento">
						<option value="0">- Seleccione una opción -</option>
						<c:forEach items="${departamentos}" var="d">
							<option value="${d.getPk_departamento()}">${d.getDepartamento()}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group text-center">
		            <input type="submit" name="boton" id="boton" value="Guardar" class="btn btn-success">
		            <a href="ListaCarrerasServlet" class="btn btn-danger"> Cancelar </a>
		        </div>
			</form>
	</div>
	</div>
</body>
</html>