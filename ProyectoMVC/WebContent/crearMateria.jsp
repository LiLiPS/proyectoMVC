<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	int id_c=0;

	if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
		usuario = session.getAttribute("usuario").toString();
		rol = session.getAttribute("rol").toString();
		id_c = Integer.parseInt(session.getAttribute("pk_carrera").toString());

		if (rol.equals("maestro")|| rol.equals("administrador"))
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
		<h1 style="text-align: center">Crear una materia</h1>
		<br>
		<form action="NuevaMateriaServlet" method="post">
			<input type="hidden" name="carrera" id="carrera" value="<%=id_c%>">
			<div class="form-group">
	            <label for="clave_materia">Clave materia: </label>
	            <input type="text" name="clave_materia" id="clave_materia" class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="nombre">Nombre: </label>
	            <input type="text" name="nombre" id="nombre" class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="semestre">Semestre: </label>
	            <input type="number" name="semestre" id="semestre" class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="horas_t">Horas teóricas: </label>
	            <input type="number" name="horas_t" id="horas_t" class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="horas_p">Horas prácticas: </label>
	            <input type="number" name="horas_p" id="horas_p"  class="form-control" required>
	        </div>
	        <div class="form-group">
	            <label for="creditos">Créditos: </label>
	            <input type="number" name="creditos" id="creditos" class="form-control" required>
	        </div>
	        <div class="form-group text-center">
	            <input type="submit" name="boton" id="boton" value="Guardar" class="btn btn-success">
	            <a href="MateriasServlet" class="btn btn-danger"> Cancelar </a>
		     </div>
		</form>
	</div>
</body>
</html>