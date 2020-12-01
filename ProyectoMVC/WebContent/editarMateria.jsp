<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilos/estilos.css">
<title>Editar materia</title>
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
<header id="menu">
	<ul id="button">
		<li><a href="MateriasServlet">Regresar</a></li>
		<li><a href="menu.jsp">Regresar a menú</a></li>
		<li><a href="LogoutServlet">Cerrar sesión</a></li>
	</ul>
</header>
<h1 style="text-align: center">Editar una materia</h1>
<div id="contenedor">
	<form action="EditarMateriaServlet" method="post">
		<div id="formulario">
			<table>
				<tr>
					<td><input type="hidden" name="carrera" id="carrera" value="${materia.getFk_carrera()}"/></td>
				</tr>
				<tr>
					<td><input type="hidden" name="id_materia" id="id_materia" value="${materia.getPk_materia()}"/></td>
				</tr>
				<tr>
					<td><label for="clave_materia">Clave materia: </label></td>
					<td><input type="text" name="clave_materia" id="clave_materia" value="${materia.getClave_materia()}"/></td>
				</tr>
				<tr>
					<td><label for="nombre">Nombre: </label></td>
					<td><input type="text" name="nombre" id="nombre" value="${materia.getNombre()}"/></td>
				</tr>
				<tr>
					<td><label for="semestre">Semestre: </label></td>
					<td><input type="number" name="semestre" id="semestre" class="number" value="${materia.getSemestre()}"/></td>
				</tr>
				<tr>
					<td><label for="horas_t">Horas teóricas: </label></td>
					<td><input type="number" name="horas_t" id="horas_t" class="number" value="${materia.getHoras_t()}"/></td>
				</tr>
				<tr>
					<td><label for="horas_p">Horas prácticas: </label></td>
					<td><input type="number" name="horas_p" id="horas_p" class="number" value="${materia.getHoras_p()}"/></td>
				</tr>
				<tr>
					<td><label for="creditos">Créditos: </label></td>
					<td><input type="number" name="creditos" id="creditos" class="number" value="${materia.getCreditos()}"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="boton" id="boton" value="Editar"/></td>
				</tr>
			</table>
		</div>
	</form>
</div>
</body>
</html>