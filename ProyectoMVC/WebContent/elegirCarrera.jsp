<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seleccione la carrera</title>
</head>
<body>
	<h4>Seleccione la carrera con la que desea trabajar:</h4>
	<form action="">
		<label>Carrera: </label>
		<select>
			<c:forEach items="${carreras}" var="c">
				<option value="${c.getPk_carrera()}">${c.getNombre_carrera()}</option>
			</c:forEach>
		</select>
		<button type="submit">Ingresar</button>
	</form>
</body>
</html>