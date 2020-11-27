<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de materias</title>
</head>
<%
String rol;
if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
	rol = session.getAttribute("rol").toString();

	if (rol.equals("maestro") || rol.equals("administrador")) 
		out.print("<script>location.replace('menu.jsp');</script>");
} else {
	out.print("<script>location.replace('login.jsp');</script>");
}
%>
<body class="body">
	
	<header id="menu">
		<ul id="button">
			<li><a href="menu.jsp">Regresar a menú</a></li>
			<li><a href="LogoutServlet">Cerrar sesión</a></li>
		</ul>
	</header>
	<h2>Materias</h2>


	<div id="contenedor">
		<a id="boton" href="crearMateria.jsp">Agregar nueva materia</a>
		<form action='MateriasServlet' method='post'>
			<h4>Buscar una materia</h4>
			<input type='text' placeholder='Clave de materia' name='claveM'>
			<input type='submit' name='buscar' value='Buscar'> 
			<input type='hidden' name='sts' value='buscar'>
			<input type='hidden' name='id_c' value='${id_c}'>
		</form>
		<br>

		<table border=1>
			<tr class="cabecera">
				<th>No.</th>
				<th>Carrera</th>
				<th>Clave materia</th>
				<th>Nombre</th>
				<th>Semestre</th>
				<th>Horas teóricas</th>
				<th>Horas prácticas</th>
				<th>Créditos</th>
				<th>Editar</th>
				<th>Borrar</th>
			</tr>
			<c:if test="list.isEmpty()">
				<tr>
					<th colspan=11>No se encontraron materias</th>
				</tr>
			</c:if>
			<c:forEach items="${list}" var="m">
				<tr>
					<td>${m.getPk_materia()}</td>
					<td>${m.getNombre_carrera()}</td>
					<td>${m.getClave_materia()}</td>
					<td>${m.getNombre()}</td>					
					<td>${m.getSemestre()}</td>
					<td>${m.getHoras_t()}</td>
					<td>${m.getHoras_p()}</td>
					<td>${m.getCreditos()}</td>
					<td><a href="editarMateria.jsp?id=${m.getPk_materia()}">Editar</a></td>
					<td><a href="EliminarMateriaServlet?id=${m.getPk_materia()}">Borrar</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>