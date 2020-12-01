<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilos/estilos.css">
<title>Perfil maestro</title>
</head>
<body class="body">
<% 
	String usuario;
	String rol;
	
	if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
		usuario = session.getAttribute("usuario").toString();
		rol = session.getAttribute("rol").toString();
		
		if (rol.equals("maestro")|| rol.equals("administrador"))
			out.print("<script>location.replace('menu.jsp');</script>");
	} else 
		out.print("<script>location.replace('login.jsp');</script>");
%>
<header id="menu">
	<ul id="button">
		<li><a href="MaestrosServlet">Regresar</a></li>
		<li><a href="menu.jsp">Regresar a menú</a></li>
		<li><a href="LogoutServlet">Cerrar sesión</a></li>
	</ul>
</header>
<h1 style="text-align: center">Datos del maestro</h1>
<div id="contenedor">
		<div id="formulario">
			<table>
				<tr>
					<td><label>Nombre: </label></td>
					<td><label>${maestro.get(0).getNombre()}</label></td>
				</tr>
				<tr>
					<td><label >Apellido Paterno: </label></td>
					<td><label>${maestro.get(0).getApellido_paterno()}</label></td>
				</tr>
				<tr>
					<td><label>Apellido Materno: </label></td>
					<td><label>${maestro.get(0).getApellido_materno()}</label></td>
				</tr>
				<tr>
					<td><label>Teléfono: </label></td>
					<td><label>${maestro.get(0).getTelefono()}</label></td>
				</tr>
				<tr>
					<td><label>Correo electrónico: </label></td>
					<td><label>${maestro.get(0).getCorreo()}</label></td>
				</tr>
				<!--  <tr>
					<td><label for="creditos">Departamento: </label></td>
					<td><label>${maestro.get(0).getNombre()}</label></td>
				</tr>-->
			</table>
		</div>
</div>
</body>
</html>