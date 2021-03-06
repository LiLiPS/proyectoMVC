CREATE database proyectomvc;

USE proyectomvc;

CREATE TABLE departamento(
	pk_departamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	departamento VARCHAR(255) NOT NULL
);

CREATE TABLE carrera(
 	pk_carrera INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 	fk_departamento INT NOT NULL,
 	nombre_carrera VARCHAR(255) NOT NULL,
 	abreviatura_carrera VARCHAR(55) NOT NULL,
 	FOREIGN KEY (fk_departamento) REFERENCES departamento(pk_departamento)
);

CREATE TABLE rol(
	pk_rol INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	rol VARCHAR(255) NOT NULL
);

CREATE TABLE usuario(
	pk_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fk_carrera INT NOT NULL,
	fk_rol INT NOT NULL,
	clave_usuario VARCHAR(255) NULL,
	titulo VARCHAR(10) NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	apellido_paterno VARCHAR(255) NULL,
	apellido_materno VARCHAR(255) NULL,
	usuario VARCHAR(255) NOT NULL,
	contrasena VARCHAR(255) NOT NULL,
	horas INT NULL,
	telefono VARCHAR(255) NULL,
	correo VARCHAR(255) NULL,
	FOREIGN KEY (fk_carrera) REFERENCES carrera(pk_carrera),
	FOREIGN KEY (fk_rol) REFERENCES rol(pk_rol)
);

CREATE TABLE jefe_carrera(
	pk_jefe_carrera INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fk_usuario INT NOT NULL,
	fk_carrera INT NOT NULL,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(pk_usuario),
	FOREIGN KEY (fk_carrera) REFERENCES carrera(pk_carrera)
);

CREATE TABLE materia(
	pk_materia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fk_carrera INT NOT NULL,
	clave_materia VARCHAR(255) NOT NULL,
	nombre VARCHAR(255) NOT NULL, 
	semestre INT NOT NULL,
	horas_t INT NOT NULL,
	horas_p INT NOT NULL,
	creditos INT NOT NULL,
	FOREIGN KEY (fk_carrera) REFERENCES carrera(pk_carrera)
);

CREATE TABLE grupo(
	pk_grupo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fk_usuario INT NULL,
	fk_materia INT NOT NULL,
	clave_grupo VARCHAR(255) NULL,
	grupo VARCHAR(10) NOT NULL,
	aula VARCHAR(255) NULL,
	periodo VARCHAR(255) NULL,
	turno VARCHAR(255) NULL,
	alumnos INT NULL,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(pk_usuario),
	FOREIGN KEY (fk_materia) REFERENCES materia(pk_materia)
);

CREATE TABLE hora(
	pk_hora INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	hora VARCHAR(255) NOT NULL
);

CREATE TABLE horario(
	pk_horario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	fk_grupo INT NOT NULL,
	fk_hora INT NOT NULL,
	dia SMALLINT NOT NULL,
	FOREIGN KEY (fk_grupo) REFERENCES grupo(pk_grupo),
	FOREIGN KEY (fk_hora) REFERENCES hora(pk_hora)	
);

/*Consulta para archivo*/
select usuario.pk_usuario, CONCAT(usuario.titulo, ' ', usuario.nombre, ' ', usuario.apellido_paterno,' ', usuario.apellido_materno) as nombreMaestro
from usuario

CREATE VIEW view_usuarios as 
select usuario.*, rol.*, carrera.*, departamento.*   
from usuario 
LEFT JOIN rol ON usuario.fk_rol = rol.pk_rol
LEFT JOIN carrera ON usuario.fk_carrera = carrera.pk_carrera
LEFT JOIN departamento ON carrera.fk_departamento = departamento.pk_departamento;

CREATE VIEW view_grupos as 
select grupo.*, usuario.*, materia.pk_materia, materia.fk_carrera as fk_carrera_materia, materia.clave_materia, materia.nombre as nombre_materia, materia.semestre, materia.horas_t, materia.horas_p, materia.creditos, carrera.*   
from grupo 
LEFT JOIN materia ON grupo.fk_materia = materia.pk_materia
LEFT JOIN usuario ON grupo.fk_usuario = usuario.pk_usuario
LEFT JOIN carrera ON materia.fk_carrera = carrera.pk_carrera;

CREATE VIEW view_materias as
select materia.*, carrera.nombre_carrera
from materia
LEFT JOIN carrera ON materia.fk_carrera = carrera.pk_carrera;

CREATE VIEW view_carreras as
select carrera.*, departamento.*, jefe_carrera.*, CONCAT(usuario.titulo, ' ', usuario.nombre, ' ', usuario.apellido_paterno,' ', usuario.apellido_materno) as nombreMaestro
from carrera
LEFT JOIN departamento ON carrera.fk_departamento = departamento.pk_departamento
LEFT JOIN jefe_carrera ON jefe_carrera.fk_carrera = carrera.pk_carrera
LEFT JOIN usuario ON jefe_carrera.fk_usuario = usuario.pk_usuario;

CREATE VIEW view_sabana as
select grupo.*, CONCAT(usuario.titulo, ' ', usuario.nombre, ' ', usuario.apellido_paterno,' ', usuario.apellido_materno) as nombreMaestro, materia.clave_materia, materia.nombre as nombreMateria, materia.semestre, materia.creditos, carrera.pk_carrera, carrera.nombre_carrera, carrera.abreviatura_carrera from grupo
LEFT JOIN usuario ON grupo.fk_usuario = usuario.pk_usuario
LEFT JOIN materia ON grupo.fk_materia = materia.pk_materia
LEFT JOIN carrera ON materia.fk_carrera = carrera.pk_carrera;

CREATE VIEW view_horarios AS
select * from horario 
LEFT JOIN grupo ON horario.fk_grupo = grupo.pk_grupo
LEFT JOIN hora ON horario.fk_hora = hora.pk_hora;

CREATE VIEW view_horas AS
SELECT horario.fk_hora, horario.dia, grupo.fk_usuario from horario
LEFT JOIN grupo ON horario.fk_grupo = grupo.pk_grupo;