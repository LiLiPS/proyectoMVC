<!-- Parada S�nchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administraci�n de materias</title>
<link rel="stylesheet" href="estilos/estiloLogin.css">

</head>
<body>
	<div class="body"></div>
	<div class="grad"></div>
	<div class="header">
		<div><h1>LOGIN</h1></div>
	</div>
	
	<form action="LoginServlet" method="post">
		<div class="login">
			<table>
				<tr>
					<td><input type="text" name="usuario" id="usuario" placeholder="Usuario"></td>
				</tr>
				<tr>
					<td><input type="password" name="contrasena" id="contrasena" placeholder="Contrase�a"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button type="submit"
						name="button" id="button">Entrar</button></td>
				</tr>
			</table>
		</div>
		<p>
			<br>
		</p>
	</form>

</body>
</html>