<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="modelo.LoginDAO,javabeans.LoginBean, controlador.LoginServlet"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<meta charset="UTF-8">

<title>Administración de horarios</title>
<style type="text/css">
.body {
	background:
	linear-gradient(to bottom, rgba(255,255,255,0.7) 5%,rgba(255,255,255,0.7) 5%),
		url(https://lobos.milaulas.com/pluginfile.php/1/theme_eguru/logo/1598504862/Logo%20TecNM%20Horizontal%20gris.png)
		no-repeat;
	min-height: 100%;
	background-size: cover;
}
</style>
</head>
<%
	String rol = "";

	if (session.getAttribute("usu") == null) 
		out.print("<script>location.replace('login.jsp');</script>");
	else {
		rol = (String) session.getAttribute("rol");
	}
		
		
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
			<ul id="button" class="navbar-nav mr-auto">
				<c:if test="${rol == 'jefe' || rol == 'jefe_maestro'}">
					<!-- <li><a href="LoginServlet">Cambiar de carrera</a></li> -->
					<li class="nav-item"><a class="nav-link"
						href="MateriasServlet">Lista de materias</a></li>
					<li class="nav-item"><a class="nav-link"
						href="MaestrosServlet">Lista de maestros</a></li>
					<li class="nav-item"><a class="nav-link" href="SabanaServlet">Sábana</a></li>
					<li class="nav-item"><a class="nav-link" href="LogoutServlet">Cerrar sesión</a></li>
				</c:if>
				<c:if test="${rol == 'maestro'}">
					<li class="nav-item">
						<a class="nav-link" href="ReporteServlet?id=<%=session.getAttribute("id_usuario")%>">
							Reporte de materias
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="CargarMaestroServlet?id=<%=session.getAttribute("id_usuario")%>">
							Perfil
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="LogoutServlet">Cerrar	sesión</a>
					</li>
				</c:if>
				<c:if test="${rol == 'administrador' }">
					<li class="nav-item">
						<a class="nav-link" href="ListaCarrerasServlet">Lista de carreras</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="LogoutServlet">Cerrar sesión</a>
					</li>
				</c:if>
			</ul>
		</div>
	</nav>

	<div class="container">
		<br>
		<%
			out.print("<h3 style='text-align: center'>Bienvenid@ " + session.getAttribute("titulo") + " " + session.getAttribute("usuario") + " </h3>");
		%>
		<c:if test="${rol == 'jefe' || rol =='jefe_maestro'}">
			<br>
			<h4>
				Para consultar la lista de materias de clic a "Lista de materias" <br>
				Para consultar el reporte de un maestro de clic a "Lista de maestros" <br>
				Para consultar la lista de materias con sus horarios de clic a "Sábana"
			</h4>
		</c:if>
		<c:if test="${rol == 'maestro' }">
			<br>
			<h4>
				Para consultar el reporte de sus materias de clic en "Reporte de materias" <br>
				Para consultar su perfil de clic en "Perfil"
			</h4>
		</c:if>
		<c:if test="${rol == 'administrador'}">
			<br>
			<h4>
				Para consultar la lista de carreras da clic en "Lista carreras"
			</h4>
		</c:if>
	</div>
</body>
</html>
