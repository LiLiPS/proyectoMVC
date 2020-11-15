CREATE database proyectomvc;

USE proyectomvc;

CREATE TABLE carrera(
 	id_carrera INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 	nombre_carrera VARCHAR(255) NOT NULL,
 	abreviatura_carrera VARCHAR(55) NOT NULL
);

CREATE TABLE usuario(
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	clave_usuario VARCHAR(255) NULL,
	titulo VARCHAR(10) NOT NULL,
	nombre VARCHAR(255) NOT NULL,
	apellido_paterno VARCHAR(255) NULL,
	apellido_materno VARCHAR(255) NULL,
	usuario VARCHAR(255) NOT NULL,
	contrasena VARCHAR(255) NOT NULL,
	horas INT NULL,
	rol VARCHAR(255) NOT NULL
);

CREATE TABLE usuario_carrera(
	id_usuario_carrera INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT NOT NULL,
	id_carrera INT NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera)
);

CREATE TABLE materia(
	id_materia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_carrera INT NOT NULL,
	clave_materia VARCHAR(255) NOT NULL,
	nombre VARCHAR(255) NOT NULL, 
	semestre INT NOT NULL,
	horas_t INT NOT NULL,
	horas_p INT NOT NULL,
	creditos INT NOT NULL,
	FOREIGN KEY (id_carrera) REFERENCES carrera(id_carrera)
);

CREATE TABLE horario(
	id_horario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT NOT NULL,
	id_materia INT NOT NULL,
	clave_horario VARCHAR(255) NULL,
	clave_grupo VARCHAR(255) NULL,
	grupo VARCHAR(10) NOT NULL,
	aula VARCHAR(255) NULL,
	lunes VARCHAR(255) NULL,
	martes VARCHAR(255) NULL,
	miercoles VARCHAR(255) NULL,
	jueves VARCHAR(255) NULL,
	viernes VARCHAR(255) NULL,
	periodo VARCHAR(255) NULL,
	turno VARCHAR(255) NULL,
	alumnos INT NULL,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
	FOREIGN KEY (id_materia) REFERENCES materia(id_materia)
);
