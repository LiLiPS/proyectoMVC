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
		
		<title>Detalles sábana</title>
	</head>
	<body>
		<%
		String usuario;
		String rol;
		String lunes, martes, miercoles, jueves, viernes;
		
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
					<li class="nav-item"><a class="nav-link" href="SabanaServlet">Regresar</a></li>
					<li class="nav-item"><a class="nav-link" href="menu.jsp">Regresar a menú</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutServlet">Cerrar sesión</a></li>
				</ul>
			</div>
		</nav>
		<br>
		
		<div class="container">
			<h2 class="text-center">Detalles sábana</h2>
			<br>
			
			<c:forEach items="${horario}" var="h">
				<c:if test="${h.getDia() == 1 }">
					<p hidden="">${lunes = h.getHora()}</p>
				</c:if>
				<c:if test="${h.getDia() == 2 }">
					<p hidden="">${martes = h.getHora()}</p>
				</c:if>
				<c:if test="${h.getDia() == 3 }">
					<p hidden="">${miercoles = h.getHora()}</p>
				</c:if>
				<c:if test="${h.getDia() == 4 }">
					<p hidden="">${jueves = h.getHora()}</p>
				</c:if>
				<c:if test="${h.getDia() == 5 }">
					<p hidden="">${viernes = h.getHora()}</p>
				</c:if>
			</c:forEach>
			
			<table class="table table-hover table-bordered table-striped" border=1>
			<thead>
				<tr class="cabecera text-center">
					<th scope="col">Grupo</th>
					<th scope="col">No. Alumnos</th>
					<th scope="col">Aula</th>
					<th scope="col">Lunes</th>
					<th scope="col">Martes</th> 
					<th scope="col">Miércoles</th>
					<th scope="col">Jueves</th>
					<th scope="col">Viernes</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${horario.isEmpty()}">
				<tr><th colspan="8" class="text-center">No se encontraron horarios</th></tr>
			</c:if>
				<tr class="text-center">
					<!-- <td>${s.getClave_horario()}</td>-->
					<td>${horario.get(0).getGrupo()}</td>
					<td>${horario.get(0).getAlumnos()}</td>
					<td>${horario.get(0).getAula()}</td>
					<td>${lunes}</td>
					<td>${martes}</td>
					<td>${miercoles}</td>
					<td>${jueves}</td>
					<td>${viernes}</td>
				</tr>
			</tbody>
		</table>
		</div>
	</body>
</html>