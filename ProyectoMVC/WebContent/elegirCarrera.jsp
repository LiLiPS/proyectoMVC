<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
	<head>
		<%
			String rol = "";
			
			if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
				rol = session.getAttribute("rol").toString();
			
				if (rol.equals("maestro") || rol.equals("administrador")) {
					out.print("<script>location.replace('menu.jsp');</script>");
				}
			} else {
				out.print("<script>location.replace('login.jsp');</script>");
			}
		%>
		<meta charset="UTF-8">
	    <meta name="viewport"
	          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	    <script src="js/bootstrap.min.js"></script>
	    <script src="js/jquery.min.js"></script>
		<title>Seleccione la carrera</title>
	</head>
	
	<body>
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
					<li class="nav-item">
						<a class="nav-link" href="LogoutServlet">Cerrar sesión</a>
					</li>
				</ul>
			</div>
		</nav>
		<br>
		
		<div class="container">
			<h4>Seleccione la carrera con la que desea trabajar:</h4>
			<br>
			<form class="form-inline" action="CarrerasServlet" method="post">
				<div class="form-group mx-sm-3 mb-2">
					<select class="form-control" name="carrera" id="carrera">
						<option value="0">- Seleccione una carrera -</option>
						<c:forEach items="${carreras}" var="c">
							<option value="${c.getPk_carrera()}">${c.getNombre_carrera()}</option>
						</c:forEach>
					</select>
				</div>
				<button class="btn btn-primary btn-outline-primary mb-2" type="submit">Ingresar</button>
			</form>
		</div>
	</body>
</html>