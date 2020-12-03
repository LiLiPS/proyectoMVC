<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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
	
	if(session.getAttribute("usuario")!=null && session.getAttribute("rol")!=null){
		usuario = session.getAttribute("usuario").toString(); 
		rol = session.getAttribute("rol").toString();
		
		if(rol.equals("maestro") || rol.equals("jefe") || rol.equals("jefe_maestro"))
			out.print("<script>location.replace('menu.jsp');</script>");		
	}else
		out.print("<script>location.replace('login.jsp');</script>");
%>
<header id="menu">
	<ul id="button">
		<li><a href="ListaCarrerasServlet">Regresar</a></li>
		<li><a href="menu.jsp">Regresar a menú</a></li>
		<li><a href="LogoutServlet">Cerrar sesión</a></li>
	</ul>
</header>

<h1 style="text-align: center">Crear una carrera</h1>
	<div id="contenedor">
	<form action="NuevaCarreraServlet" method="post">
		<div id="formulario">
			<table>
				<tr>
					<td><label for="abreviatura_carrera">Abreviatura carrera: </label></td>
					<td><input type="text" name="abreviatura_carrera" id="abreviatura_carrera"></td>
				</tr>
				<tr>
					<td><label for="nombre_carrera">Nombre carrera: </label></td>
					<td><input type="text" name="nombre_carrera" id="nombre_carrera"></td>
				</tr>
				<tr>
					<td><label for="departamento">Departamento:</label></td>
					<td>
						<select name="departamento" id="departamento">
							<option value="0">- Seleccione una opción -</option>
							<c:forEach items="${departamentos}" var="d">
								<option value="${d.getPk_departamento()}">${d.getDepartamento()}</option>
							</c:forEach>
						</select>
					</td>
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