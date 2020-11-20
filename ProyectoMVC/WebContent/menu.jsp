<!-- Parada S�nchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="modelo.LoginDAO,javabeans.UsuarioBean"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="estilos/estilos.css">
<title>Administraci�n de horarios</title>
<style type="text/css">
	.body{	
    background: url(https://lobos.milaulas.com/pluginfile.php/1/theme_eguru/logo/1598504862/Logo%20TecNM%20Horizontal%20gris.png) no-repeat;
    min-height: 100%;
    background-size: cover;
}
</style>
</head>
<%
	UsuarioBean us = (UsuarioBean)session.getAttribute("usu");
	String usuario="", titulo="", rol="";
	int id=0;
	
	if(us == null){
		out.print("<script>location.replace('login.jsp');</script>");
	} else{
	usuario = (String)session.getAttribute("usuario");
	titulo = (String)session.getAttribute("titulo");
	rol = (String)session.getAttribute("rol");
	id = (int)session.getAttribute("id_usuario");
}%>
<body class="body">
<header id="menu">
<ul id="button">
	<c:if test="${rol == 'jefe' || 'jefe_maestro'}">
	<li><a href="materias.jsp">Lista de materias</a></li>
	<li><a href="maestros.jsp">Lista de maestros</a></li>
	<li><a href="sabana.jsp">S�bana</a></li>
	<li><a href="logout.jsp">Cerrar sesi�n</a></li>
	</c:if>
	<c:if test="${rol == 'maestro' }">
	<li><a href="reporte.jsp?id=<%=id%>">Reporte de materias</a></li>
	<li><a href="logout.jsp">Cerrar sesi�n</a></li>
	</c:if>
	<c:if test="${rol == 'administrador' }">
	<li><a href="carreras.jsp">Lista de carreras</a></li>
	<li><a href="logout.jsp">Cerrar sesi�n</a></li>
	</c:if>
</ul>
</header>

<% out.print("<h3>Bienvenid@ "+titulo +" "+ usuario+" </h3>"); %>
<c:if test="${rol == 'jefe' || 'jefe_maestro'}">
<h4 style="text-align:center">
	Para consultar la lista de materias de clic a "Lista de materias" <br>
	Para consultar el reporte de un maestro de clic a "Lista de maestros" <br>
	Para consultar la lista de materias con sus horarios de clic a "Sabana"
	
</h4>
</c:if>
<c:if test="${rol == 'maestro' }">
<h4 style="text-align:center">
	Para consultar el reporte de sus materias de clic en "Reporte de materias"
	
</h4>
</c:if>
<c:if test="${rol == 'administrador'}">
<h4 style="text-align:center">
	Para consultar la lista de carreras da clic en "Lista carreras"	
</h4>
</c:if>

</body>
</html>
