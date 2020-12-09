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
    
	<title>Editar un grupo</title>
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
	<nav class="navbar navbar-expand-lg navbar-light"	style="background-color: #D5D5D5;">
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
	
	<div class="container">
		<br>
		<h1 style="text-align: center">Editar grupo</h1>
		<br>
		<h4>Datos de grupo:</h4>
		<hr>
		<form action="EditarGrupoServlet" method="post">
			<input type="hidden" name="pk_grupo" id="pk_grupo" value="${grupo.getPk_grupo()}">
			<div class="row">
				<div class="form-group col">
			    <label for="maestro">Maestro:</label>
			    <select class="form-control" name="maestro" id="maestro">
			    	<c:forEach items="${maestros}" var="m">
						<c:if test="${grupo.getFk_usuario() == m.getPk_usuario()}">
							<option value="${m.getPk_usuario()}" selected>${m.getNombre()} ${m.getApellido_paterno()} ${m.getApellido_materno()}</option>
						</c:if>
						<c:if test="${grupo.getFk_usuario() != m.getPk_usuario()}">
							<option value="${m.getPk_usuario()}">${m.getNombre()} ${m.getApellido_paterno()} ${m.getApellido_materno()}</option>
						</c:if>						
					</c:forEach>
				</select>
				</div>
				<div class="form-group col">
				    <label for="materia">Materia:</label>
				    <select class="form-control" name="materia" id="materia">
						<option value="0">- Seleccione una opción -</option>
						<c:forEach items="${materias}" var="ma">
							<c:if test="${grupo.getFk_materia() == ma.getPk_materia()}">
								<option value="${ma.getPk_materia()}" selected>${ma.getNombre()}</option>
							</c:if>
							<c:if test="${grupo.getFk_materia() != ma.getPk_materia()}">
								<option value="${ma.getPk_materia()}">${ma.getNombre()}</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="form-group col">
		            <label for="clave_horario">Clave horario: </label>
		            <input type="text" name="clave_horario" id="clave_horario" class="form-control" value="${grupo.getClave_grupo()}" required>
		        </div>
		        <div class="form-group col">
		            <label for="grupo">Grupo: </label>
		            <input type="text" name="grupo" id="grupo" class="form-control" value="${grupo.getGrupo()}" required>
		        </div>
			</div>
			<div class="row">
				<div class="form-group col">
		            <label for="aula">Aula: </label>
		            <input type="text" name="aula" id="aula" class="form-control" value="${grupo.getAula()}" required>
		        </div>
		        <div class="form-group col">
		            <label for="periodo">Periodo: </label>
		            <input type="text" name="periodo" id="periodo" class="form-control" value="${grupo.getPeriodo()}" required>
		        </div>
			</div>
	        <div class="row">
	        	<div class="form-group col">
		            <label for="turno">Turno: </label>
		            <input type="text" name="turno" id="turno"  class="form-control" value="${grupo.getTurno()}" required>
		        </div>
		        <div class="form-group col">
		            <label for="alumnos">Alumnos: </label>
		            <input type="number" name="alumnos" id="alumnos" class="form-control" value="${grupo.getAlumnos()}" required>
		        </div>
	        </div>
	        <h4>Horario:</h4>
	        <hr>
	        <div class="row">
	        	<div class="form-group col">
				    <label for="lunes">Lunes:</label>
				    <select class="form-control" name="lunes" id="lunes">
						<option value="0">- Seleccione una opción -</option>
						<c:forEach items="${horas}" var="h">
							<c:if test="${fk_horaLunes == h.getPk_hora()}">
								<option value="${h.getPk_hora()}" selected>${h.getHora()}</option>
							</c:if>
							<c:if test="${fk_horaLunes != h.getPk_hora()}">
								<option value="${h.getPk_hora()}">${h.getHora()}</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
				<div class="form-group col">
				    <label for="martes">Martes:</label>
				    <select class="form-control" name="martes" id="martes">
						<option value="0">- Seleccione una opción -</option>
						<c:forEach items="${horas}" var="h">
							<c:if test="${fk_horaMartes == h.getPk_hora()}">
								<option value="${h.getPk_hora()}" selected>${h.getHora()}</option>
							</c:if>
							<c:if test="${fk_horaMartes != h.getPk_hora()}">
								<option value="${h.getPk_hora()}">${h.getHora()}</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
				<div class="form-group col">
				    <label for="miercoles">Miércoles:</label>
				    <select class="form-control" name="miercoles" id="miercoles">
						<option value="0">- Seleccione una opción -</option>
						<c:forEach items="${horas}" var="h">
							<c:if test="${fk_horaMiercoles == h.getPk_hora()}">
								<option value="${h.getPk_hora()}" selected>${h.getHora()}</option>
							</c:if>
							<c:if test="${fk_horaMiercoles != h.getPk_hora()}">
								<option value="${h.getPk_hora()}">${h.getHora()}</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
	        </div>
	        <div class="row">
	        	<div class="form-group col">
				    <label for="jueves">Jueves:</label>
				    <select class="form-control" name="jueves" id="jueves">
						<option value="0">- Seleccione una opción -</option>
						<c:forEach items="${horas}" var="h">
							<c:if test="${fk_horaJueves == h.getPk_hora()}">
								<option value="${h.getPk_hora()}" selected>${h.getHora()}</option>
							</c:if>
							<c:if test="${fk_horaJueves != h.getPk_hora()}">
								<option value="${h.getPk_hora()}">${h.getHora()}</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
				<div class="form-group col">
				    <label for="viernes">Viernes:</label>
				    <select class="form-control" name="viernes" id="viernes">
						<option value="0">- Seleccione una opción -</option>
						<c:forEach items="${horas}" var="h">
							<c:if test="${fk_horaViernes == h.getPk_hora()}">
								<option value="${h.getPk_hora()}" selected>${h.getHora()}</option>
							</c:if>
							<c:if test="${fk_horaViernes != h.getPk_hora()}">
								<option value="${h.getPk_hora()}">${h.getHora()}</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
	        </div>
	        <br>
	        <div class="form-group text-center">
	            <input type="submit" name="boton" id="boton" value="Guardar" class="btn btn-success">
	            <a href="SabanaServlet" class="btn btn-danger"> Cancelar </a>
		     </div>
		</form>
	</div>
</body>
</html>