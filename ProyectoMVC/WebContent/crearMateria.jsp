<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javabeans.UsuarioBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="estilos/estilos.css">
<title>Crear una materia</title>
</head>
<body class="body">

<%
	String usuario;
	String rol;

	if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
		usuario = session.getAttribute("usuario").toString();
		rol = session.getAttribute("rol").toString();

		if (rol.equals("maestro")) {
			out.print("<script>location.replace('menu.jsp');</script>");
		}

	} else {
		out.print("<script>location.replace('login.jsp');</script>");
	}
%>
<header id="menu">
	<ul id="button">
		<li><a href="materias.jsp">Regresar</a></li>
		<li><a href="menu.jsp">Regresar a menú</a></li>
		<li><a href="logout.jsp">Cerrar sesión</a></li>
	</ul>
</header>
<h1 style="text-align: center">Añadir una materia</h1>
	<div id="contenedor">
	<form action="nuevaMateria.jsp" method="post">
		<div id="formulario">
			<table>
				<tr>
					<td><label for="clave_materia">Clave materia: </label></td>
					<td><input type="text" name="clave_materia" id="clave_materia"></td>
				</tr>
				<tr>
					<td><label for="nombre">Nombre: </label></td>
					<td><input type="text" name="nombre" id="nombre"></td>
				</tr>
				<tr>
					<td><label for="abreviaturaCarrera">Abreviatura de Carrera: </label></td>
					<td><input type="text" name="abreviaturaCarrera" id="abreviaturaCarrera" placeholder="Ej. ISX"></td>
				</tr>
				<tr>
					<td><label for="carrera">Carrera: </label></td>
					<td><input type="text" name="carrera" id="carrera"></td>
				</tr>
				<tr>
					<td><label for="semestre">Semestre: </label></td>
					<td><input type="number" name="semestre" id="semestre" class="number"></td>
				</tr>
				<tr>
					<td><label for="horas_t">Horas teóricas: </label></td>
					<td><input type="number" name="horas_t" id="horas_t" class="number"></td>
				</tr>
				<tr>
					<td><label for="horas_p">Horas prácticas: </label></td>
					<td><input type="number" name="horas_p" id="horas_p" class="number"></td>
				</tr>
				<tr>
					<td><label for="creditos">Créditos: </label></td>
					<td><input type="number" name="creditos" id="creditos" class="number"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="boton" id="boton" value="Guardar"></td>
				</tr>
			</table>
		</div>
		<p>
			<br>
		</p>
	</form>
	</div>
</body>
</html>