<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilos/tablas.css">
<link rel="stylesheet" href="estilos/estilos.css">
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
	<header id="menu">
		<ul id="button">
			<li><a href="menu.jsp">Regresar a menú</a></li>
			<li><a href="LogoutServlet">Cerrar sesión</a></li>
	</ul>
	</header>
	<h2>Maestros</h2>
	
	<div id="contenedor">
	<form action='MaestrosServlet' method='post'>
		<h4>Buscar un maestro</h4>
		<input type='text' placeholder='Clave de maestro' name='claveM'>
		<input type='submit' name='buscar' value='Buscar'>
		<input type='hidden' name='sts' value='buscar'>
	</form>
	<br>
	
	<table border=1>
	<tr class="cabecera">
	<th>No.</th>
	<th>Clave maestro</th>
	<th>Título</th>
	<th>Nombre</th>
	<th>Apellido paterno</th>
	<th>Apellido materno</th>
	<th>Reporte de materias</th>
	<th>Perfil</th>
	</tr>
	<c:if test="list.isEmpty()">
		<tr><th colspan=11>No se encontraron maestros</th></tr>
	</c:if>
	<c:forEach items="${list}" var="us" varStatus="contador">
			<tr>
				<td>${contador.index+1}</td>
				<td>${us.getClave_usuario()}</td>
				<td>${us.getTitulo()}</td>
				<td>${us.getNombre()}</td>
				<td>${us.getApellido_paterno()}</td>
				<td>${us.getApellido_materno()}</td>			
				<td><a href="reporte.jsp?id=${us.getPk_usuario()}">Reporte</a></td>
				<td><a href="CargarMaestroServlet?id=${us.getPk_usuario()}">Perfil</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>