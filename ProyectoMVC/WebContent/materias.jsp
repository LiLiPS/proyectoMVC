<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelo.MateriaDAO, javabeans.MateriaBean, javax.servlet.http.HttpSession, java.util.ArrayList, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%

	String estadoPagina = "nada";
	String sid = request.getParameter("claveM");
	String clave = sid;
	List<MateriaBean> list = new ArrayList<MateriaBean>();
	
	try { // Obtener el estado (status-->sts)
		estadoPagina = request.getParameter("sts");
		if (estadoPagina == null) {
			estadoPagina = "nada";
			list = MateriaDAO.getMaterias();
		}
		if (estadoPagina.equals("buscar")) {
			if (clave == "")
				list = MateriaDAO.getMaterias();
			else
				list = MateriaDAO.getMateriasbyClave(clave);
		}
	} catch (Exception exx) {
		exx.printStackTrace();
	}
	
	request.setAttribute("list",list);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de materias</title>
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
			<li><a href="menu.jsp">Regresar a menú</a></li>
			<li><a href="logout.jsp">Cerrar sesión</a></li>
		</ul>
	</header>
	<h2>Materias</h2>


	<div id="contenedor">
		<a id="boton" href="crearMateria.jsp">Agregar nueva materia</a>
		<form action='materias.jsp' method='GET'>
			<h4>Buscar una materia</h4>
			<input type='text' placeholder='Clave de materia' name='claveM'>
			<input type='submit' name='buscar' value='Buscar'> <input
				type='hidden' name='sts' value='buscar'>
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
					<td><a href="eliminarMateria.jsp?id=${m.getPk_materia()}">Borrar</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>