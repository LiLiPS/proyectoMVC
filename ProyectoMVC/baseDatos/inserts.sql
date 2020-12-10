USE DATABASE proyectomvc;

/*DEPARTAMENTOS*/
INSERT INTO departamento (departamento)
values ('Ciencias econ�mico administrativas'),
	   ('Metal mec�nica'),
	   ('Ingenier�a industrial'),
	   ('Sistemas y computaci�n');

/*CARRERAS*/
INSERT INTO carrera (fk_departamento, nombre_carrera, abreviatura_carrera)
values (4,'Ingenier�a en Sistemas Computacionales', 'ISX'),
	   (2,'Ingenier�a Electr�nica', 'ELX'),
	   (2,'Ingenier�a Electromec�nica', 'EMX'),
	   (1,'Ingenier�a en Gesti�n Empresarial', 'GE9'),
	   (3,'Ingenier�a Industrial', 'IIX'),
	   (3,'Ingenier�a en Log�stica', 'LOX'),
	   (2,'Ingenier�a Mecatr�nica', 'MCX'),
	   (4,'Ingenier�a en Tecnolog�as de la Informaci�n y Comunicaciones', 'TIX');
	   
/*ROL*/
INSERT INTO rol
values (1, 'administrador'),
	   (2, 'maestro'),
	   (3, 'jefe'),
	   (4, 'jefe_maestro');
	   
/*USUARIOS*/
INSERT INTO usuario (clave_usuario, titulo, apellido_paterno, apellido_materno, nombre, usuario, contrasena, telefono, horas, correo, fk_carrera, fk_rol) VALUES 
('001', 'DR.', 'MOSI�O', 'JUAN', 'FRANCISCO', 'fmosi�o001', '1234', '477 180 1001', 5, 'fmosi�o001@leon.tecnm.mx', 1, 2),
('002', 'DR.', 'CARPIO', 'VALADEZ', 'JUAN MARTIN', 'jcarpio002', '1234', '477 180 1002', 5, 'jcarpio002@leon.tecnm.mx', 1, 2),
('003', 'DR.', 'SANTIAGO', 'MONTERO', 'RA�L', 'rsantiago003', '1234', '477 180 1003', 5, 'rsantiago003@leon.tecnm.mx', 1, 2),
('004', 'DR.', 'ZAMUDIO', 'RODRIGUEZ', 'VICTOR MANUEL', 'vzamudio004', '1234', '477 180 1004', 5, 'vzamudio004@leon.tecnm.mx', 1, 2),
('005', 'DRA.', 'BALTAZAR', 'FLORES', 'MARIA DEL ROSARIO', 'mbaltazar005', '1234', '477 180 1005', 5, 'mbaltazar005@leon.tecnm.mx', 1, 2),
('006', 'ING.', 'HERN�NDEZ', 'RODR�GUEZ', 'JOS� FERNANDO', 'jhern�ndez006', '1234', '477 180 1006', 5, 'jhern�ndez006@leon.tecnm.mx', 1, 2),
('007', 'ING.', 'SAUCEDO', 'TORRES', 'MAR�A MINERVA', 'msaucedo007', '1234', '477 180 1007', 5, 'msaucedo007@leon.tecnm.mx', 1, 2),
('008', 'ING.', 'VIGUERAS', 'MONTA�O', 'IVAN', 'ivigueras008', '1234', '477 180 1008', 5, 'ivigueras008@leon.tecnm.mx', 1, 2),
('009', 'ING.', 'MORALES', 'REYES', 'OSCAR ANDRES', 'omorales009', '1234', '477 180 1009', 5, 'omorales009@leon.tecnm.mx', 1, 2),
('010', 'ING.', 'PE�A', 'L�PEZ', 'MIGUEL �NGEL', 'mpe�a010', '1234', '477 180 1010', 5, 'mpe�a010@leon.tecnm.mx', 1, 2),
('011', 'ING.', 'GALLEGOS', 'MU�OZ', 'LUIS ROBERTO', 'lgallegos011', '1234', '477 180 1011', 5, 'lgallegos011@leon.tecnm.mx', 1, 2),
('012', 'ING.', 'GARCIA', 'ORNELAS', 'DOMINGO', 'dgarcia012', '1234', '477 180 1012', 5, 'dgarcia012@leon.tecnm.mx', 1, 2),
('013', 'ING.', 'CASTILLO', 'MART�NEZ', 'PATRICIA MARIA', 'pcastillo013', '1234', '477 180 1013', 5, 'pcastillo013@leon.tecnm.mx', 1, 2),
('014', 'ING.', 'BERMUDEZ', 'GUADALUPE', 'EFRAIN', 'ebermudez014', '1234', '477 180 1014', 5, 'ebermudez014@leon.tecnm.mx', 1, 2),
('015', 'ING.', 'AGUILA', 'REYES', 'ANTONIO', 'aaguila015', '1234', '477 180 1015', 5, 'aaguila015@leon.tecnm.mx', 1, 4),
('016', 'ING.', 'CARPIO', 'FLORES', 'JOSE GERARDO', 'jcarpio016', '1234', '477 180 1016', 5, 'jcarpio016@leon.tecnm.mx', 1, 2),
('017', 'ING.', 'GUTIERREZ', 'AYALA', 'LUIS EDUARDO', 'lgutierrez017', '1234', '477 180 1017', 5, 'lgutierrez017@leon.tecnm.mx', 1, 2),
('018', 'ING.', 'SAEZ DE NANCLARES', 'RODRIGUEZ', 'RUTH', 'rsaezdenanclares018', '1234', '477 180 1018', 5, 'rsaezdenanclares018@leon.tecnm.mx', 1, 2),
('019', 'ING.', 'MARTINEZ', 'TREJO', 'DENY', 'dmartinez019', '1234', '477 180 1019', 5, 'dmartinez019@leon.tecnm.mx', 1, 2),
('020', 'ING.', 'GALVAN', 'JARAMILLO', 'PAOLA VIRGINIA', 'pgalvan020', '1234', '477 180 1020', 5, 'pgalvan020@leon.tecnm.mx', 1, 2),
('021', 'ING.', 'RODRIGUEZ', 'RENTERIA', 'JOSE ALEJANDRO', 'jrodriguez021', '1234', '477 180 1021', 5, 'jrodriguez021@leon.tecnm.mx', 1, 2),
('022', 'ING.', 'MARTINEZ', 'AGUILAR', 'ANA COLUMBA ZURITA', 'amartinez022', '1234', '477 180 1022', 5, 'amartinez022@leon.tecnm.mx', 1, 2),
('023', 'ING.', 'MARTINEZ', 'ARIAS', 'JOSE ELIAS', 'jmartinez023', '1234', '477 180 1023', 5, 'jmartinez023@leon.tecnm.mx', 1, 2),
('024', 'ING.', 'GUEVARA', 'RANGEL', 'LAURA PATRICIA', 'lguevara024', '1234', '477 180 1024', 5, 'lguevara024@leon.tecnm.mx', 1, 2),
('025', 'ING.', 'MARIN', 'GONZALEZ', 'EUGENIO CONRADO', 'emarin025', '1234', '477 180 1025', 5, 'emarin025@leon.tecnm.mx', 1, 2),
('026', 'ING.', 'GARCIA', 'TRUJILLO', 'ALEJANDRO', 'agarcia026', '1234', '477 180 1026', 5, 'agarcia026@leon.tecnm.mx', 1, 2),
('027', 'ING.', 'MEDINA', 'L�PEZ', 'DENISSE', 'dmedina027', '1234', '477 180 1027', 5, 'dmedina027@leon.tecnm.mx', 1, 2),
('028', 'ING.', 'TRUJILLO', 'CORONA', 'RUBEN', 'rtrujillo028', '1234', '477 180 1028', 5, 'rtrujillo028@leon.tecnm.mx', 1, 2),
('029', 'ING.', 'GODINEZ', 'CABRERA', 'HECTOR FEDERICO', 'hgodinez029', '1234', '477 180 1029', 5, 'hgodinez029@leon.tecnm.mx', 1, 2),
('030', 'ING.', 'GUIZAR', 'RUIZ', 'JUAN IGNACIO', 'jguizar030', '1234', '477 180 1030', 5, 'jguizar030@leon.tecnm.mx', 1, 2),
('031', 'ING.', 'RUIZ', 'GAYTAN', 'LUZ DEL CARMEN', 'lruiz031', '1234', '477 180 1031', 5, 'lruiz031@leon.tecnm.mx', 1, 2),
('032', 'ING.', 'SILVA', 'TOVAR', 'CIRINO', 'csilva032', '1234', '477 180 1032', 5, 'csilva032@leon.tecnm.mx', 1, 2),
('033', 'ING.', 'ORNELAS', 'RODRIGUEZ', 'MANUEL', 'mornelas033', '1234', '477 180 1033', 5, 'mornelas033@leon.tecnm.mx', 1, 2),
('034', 'ING.', 'GASCA', 'GONZALEZ', 'JOSE ALFREDO', 'jgasca034', '1234', '477 180 1034', 5, 'jgasca034@leon.tecnm.mx', 1, 2),
('035', 'ING.', 'LEVY', 'ROJAS', 'CARLOS RAFAEL', 'clevy035', '1234', '477 180 1035', 5, 'clevy035@leon.tecnm.mx', 1, 2),
('036', 'ING.', 'PEREZ', 'PINTOR', 'EDUARDO JOSE', 'eperez036', '1234', '477 180 1036', 5, 'eperez036@leon.tecnm.mx', 1, 2),
('037', 'ING.', 'JUAREZ', 'GUERRA', 'LAURA', 'ljuarez037', '1234', '477 180 1037', 5, 'ljuarez037@leon.tecnm.mx', 1, 2),
('038', 'ING.', 'ARELLANO', 'VERA', 'MARIA DE LOS ANGELES', 'marellano038', '1234', '477 180 1038', 5, 'marellano038@leon.tecnm.mx', 1, 2),
('039', 'ING.', 'HERNANDEZ', 'CARRANZA', 'ANGELICA BENITA', 'ahernandez039', '1234', '477 180 1039', 5, 'ahernandez039@leon.tecnm.mx', 1, 2),
('040', 'ING.', 'AGUILERA', 'CRUZ', 'JUAN CARLOS', 'jaguilera040', '1234', '477 180 1040', 5, 'jaguilera040@leon.tecnm.mx', 1, 2),
('041', 'ING.', 'SANDOVAL', 'SOLIS', 'MA. CONCEPCION', 'msandoval041', '1234', '477 180 1041', 5, 'msandoval041@leon.tecnm.mx', 1, 2),
('042', 'ING.', 'GAMI�O', 'GUERRERO', 'ADOLFO', 'agami�o042', '1234', '477 180 1042', 5, 'agami�o042@leon.tecnm.mx', 1, 2),
('043', 'ING.', 'TAPIA', 'IBARRA', 'MA. VERONICA', 'mtapia043', '1234', '477 180 1043', 5, 'mtapia043@leon.tecnm.mx', 1, 2),
('044', 'ING.', 'MURILLO', 'RUIZ', 'JUAN PABLO', 'jmurillo044', '1234', '477 180 1044', 5, 'jmurillo044@leon.tecnm.mx', 1, 2),
('045', 'ING.', 'MANZANARES', 'CUADROS', 'JAVIER IVAN', 'jmanzanares045', '1234', '477 180 1045', 5, 'jmanzanares045@leon.tecnm.mx', 1, 2),
('046', 'ING.', 'SUAREZ', 'Y GOMEZ', 'JOSE LUIS FERNANDO', 'jsuarez046', '1234', '477 180 1046', 5, 'jsuarez046@leon.tecnm.mx', 1, 2),
('047', 'ING.', 'MARTINEZ', 'PRADO', 'EDNA MILITZA', 'emartinez047', '1234', '477 180 1047', 5, 'emartinez047@leon.tecnm.mx', 1, 2),
('048', 'LIC.', 'RODR�GUEZ', 'MU�OZ', 'GUSTAVO ADOLFO', 'grodr�guez048', '1234', '477 180 1048', 5, 'grodr�guez048@leon.tecnm.mx', 1, 2),
('049', 'LIC.', 'TRUJILLO', 'CASTELLANOS', 'CARLOS ALBERTO', 'ctrujillo049', '1234', '477 180 1049', 5, 'ctrujillo049@leon.tecnm.mx', 1, 2),
('050', 'LIC.', 'RAMIREZ', 'ALVAREZ', 'IRMA DE JESUS', 'iramirez050', '1234', '477 180 1050', 5, 'iramirez050@leon.tecnm.mx', 1, 2),
('051', 'LIC.', 'MORENO', 'REAL', 'ROXANA NOEMI', 'rmoreno051', '1234', '477 180 1051', 5, 'rmoreno051@leon.tecnm.mx', 1, 2),
('052', 'LIC.', 'CASTELLANOS', 'NOLASCO', 'ELIZABETH', 'ecastellanos052', '1234', '477 180 1052', 5, 'ecastellanos052@leon.tecnm.mx', 1, 2),
('053', 'LIC.', 'ORTIZ', 'GAUCIN', 'ANGELICA MARIA', 'aortiz053', '1234', '477 180 1053', 5, 'aortiz053@leon.tecnm.mx', 1, 2),
('054', 'LIC.', 'LUGO', 'PEDROZA', 'DAVID EVERARDO', 'dlugo054', '1234', '477 180 1054', 5, 'dlugo054@leon.tecnm.mx', 1, 2),
('055', 'LIC.', 'PUGA', 'SOBERANES', 'HECTOR JOSE', 'hpuga055', '1234', '477 180 1055', 5, 'hpuga055@leon.tecnm.mx', 1, 2),
('056', 'M.C.', 'ROCHA', 'SANCHEZ', 'MARTHA ALICIA', 'mrocha056', '1234', '477 180 1056', 5, 'mrocha056@leon.tecnm.mx', 1, 2),
('057', 'M.C.', 'LINO', 'RAMIREZ', 'CARLOS', 'clino057', '1234', '477 180 1057', 5, 'clino057@leon.tecnm.mx', 1, 2),
('058', 'MTRA.', 'P�REZ', 'FLORES', 'ANG�LICA JOSEFINA', 'ap�rez058', '1234', '477 180 1058', 5, 'ap�rez058@leon.tecnm.mx', 1, 2),
('059', 'MTRA.', 'S�NCHEZ', 'CANO', 'MA. CONCEPCI�N ROC�O', 'ms�nchez059', '1234', '477 180 1059', 5, 'ms�nchez059@leon.tecnm.mx', 1, 2),
('060', 'M.C.', 'PARADA', 'S�NCHEZ', 'LILIANA', 'lparada060', '1234', '477 180 1060', 5, 'lparada060@leon.tecnm.mx', 1, 1);
 
/*JEFES CARRERA*/
INSERT INTO jefe_carrera (fk_usuario, fk_carrera)
values (1, 1),
	   (1, 2);

/*MATERIAS*/
INSERT INTO materia (clave_materia, nombre, fk_carrera, semestre, horas_t, horas_p, creditos) VALUES
('ACF0901', 'C�LCULO DIFERENCIAL', 1, 1, 3, 2, 5),
('AED1285', 'FUNDAMENTOS DE PROGRAMACI�N', 1, 1, 2, 3, 5),
('AEF1041', 'MATEM�TICAS DISCRETAS', 1, 1, 3, 2, 5),
('SCH1024', 'TALLER DE ADMINISTRACI�N', 1, 1, 1, 3, 4),
('ACC0906', 'FUNDAMENTOS DE INVESTIGACI�N', 1, 1, 2, 2, 4),
('ACA0907', 'TALLER DE �TICA', 1, 1, 0, 4, 4),
('ACF0902', 'C�LCULO INTEGRAL', 1, 2, 3, 2, 5),
('ACF0903', '�LGEBRA LINEAL', 1, 2, 3, 2, 5),
('AED1286', 'PROGRAMACI�N ORIENTADA A OBJETOS', 1, 2, 2, 3, 5),
('AEC1008', 'CONTABILIDAD FINANCIERA', 1, 2, 2, 2, 4),
('AEC1058', 'QU�MICA', 1, 2, 2, 2, 4),
('AEF1052', 'PROBABILIDAD Y ESTAD�STICA', 1, 2, 3, 2, 5),
('ACF0904', 'C�LCULO VECTORIAL', 1, 3, 3, 2, 5),
('AED1026', 'ESTRUCTURA DE DATOS', 1, 3, 2, 3, 5),
('SCF1006', 'F�SICA GENERAL', 1, 3, 3, 2, 5),
('SCC1013', 'INVESTIGACI�N DE OPERACIONES', 1, 3, 2, 2, 4),
('SCC1005', 'CULTURA EMPRESARIAL', 1, 3, 2, 2, 4),
('ACD0908', 'DESARROLLO SUSTENTABLE', 1, 3, 2, 3, 5),
('ACF0905', 'ECUACIONES DIFERENCIALES', 1, 4, 3, 2, 5),
('SCD1027', 'T�PICOS AVANZADOS DE PROGRAMACI�N', 1, 4, 2, 3, 5),
('SCD1018', 'PRINCIPIOS EL�CTRICOS Y APLICACIONES DIGITALES', 1, 4, 2, 3, 5),
('AEF1031', 'FUNDAMENTOS DE BASE DE DATOS', 1, 4, 3, 2, 5),
('SCD1022', 'SIMULACI�N', 1, 4, 2, 3, 5),
('SCC1017', 'M�TODOS NUM�RICOS', 1, 4, 2, 2, 4),
('SCD1003', 'ARQUITECTURA DE COMPUTADORAS', 1, 5, 2, 3, 5),
('SCA1025', 'TALLER DE BASE DE DATOS', 1, 5, 0, 4, 4),
('SCC1010', 'GRAFICACI�N', 1, 5, 2, 2, 4),
('AEC1034', 'FUNDAMENTOS DE TELECOMUNICACIONES', 1, 5, 2, 2, 4),
('SCC1007', 'FUNDAMENTOS DE INGENIER�A DE SOFTWARE', 1, 5, 2, 2, 4),
('AEC1061', 'SISTEMAS OPERATIVOS', 1, 5, 2, 2, 4),
('SCC1014', 'LENGUAJES DE INTERFAZ', 1, 6, 2, 2, 4),
('SCB1001', 'ADMINISTRACI�N DE BASE DE DATOS', 1, 6, 1, 4, 5),
('SCD1021', 'REDES DE COMPUTADORAS', 1, 6, 2, 3, 5),
('SCA1026', 'TALLER DE SISTEMAS OPERATIVOS', 1, 6, 0, 4, 4),
('SCD1011', 'INGENIER�A DE SOFTWARE', 1, 6, 2, 3, 5),
('SCD1015', 'LENGUAJES Y AUT�MATAS I', 1, 6, 2, 3, 5),
('SCC1023', 'SISTEMAS PROGRAMABLES', 1, 7, 2, 2, 4),
('DAD1401', 'BASES DE DATOS AVANZADAS', 1, 7, 2, 3, 5),
('SCD1004', 'CONMUTACI�N Y ENRUTAMIENTO EN REDES DE DATOS', 1, 7, 2, 3, 5),
('SCG1009', 'GESTI�N DE PROYECTOS DE SOFTWARE', 1, 7, 3, 3, 6),
('SCD1016', 'LENGUAJES Y AUT�MATAS II', 1, 7, 2, 3, 5),
('ACA0909', 'TALLER DE INVESTIGACI�N I', 1, 7, 0, 4, 4),
('SCA1002', 'ADMINISTRACI�N DE REDES', 1, 8, 0, 4, 4),
('ACA0910', 'TALLER DE INVESTIGACI�N II', 1, 8, 0, 4, 4),
('SCC1019', 'PROGRAMACI�N L�GICA Y FUNCIONAL', 1, 8, 2, 2, 4),
('AEB1055', 'PROGRAMACI�N WEB', 1, 8, 1, 4, 5),
('DAD1402', 'DESARROLLO DE APLICACIONES EMPRESARIALES', 1, 8, 2, 3, 5),
('SCC1012', 'INTELIGENCIA ARTIFICIAL', 1, 9, 2, 2, 4),
('DAD1403', 'PROGRAMACI�N WEB AVANZADA', 1, 9, 2, 3, 5),
('DAD1404', 'ARQUITECTURA DE APLICACIONES EMPRESARIALES', 1, 9, 2, 3, 5),
('DAB1405', 'DESARROLLO DE APLICACIONES PARA DISPOSITIVOS M�VILES', 1, 9, 2, 3, 5),
('EMH1016', 'INTRODUCCI�N A LA PROGRAMACI�N', 3, 1, 2, 2, 4),
('AEF1390', 'DIBUJO ELECTROMEC�NICO', 3, 2, 3, 2, 5),
('AEC1047', 'METROLOG�A Y NORMALIZACI�N', 3, 2, 2, 2, 4),
('EME1012', 'EST�TICA', 3, 2, 2, 2, 4),
('EMJ1021', 'MEC�NICA DE MATERIALES', 3, 3, 3, 3, 6),
('aeq1387', 'COMUNICACI�N HUMANA', 2, 1, 2, 1, 3),
('AEF1042', 'MEC�NICA CL�SICA', 2, 1, 3, 2, 5),
('ETD1021', 'MEDICIONES EL�CTRICAS', 2, 2, 3, 2, 5),
('ETF1027', 'T�PICOS SELECTOS DE F�SICA', 2, 2, 3, 2, 5),
('ETF1020', 'MARCO LEGAL DE LA EMPRESA', 2, 4, 2, 1, 3),
('ETD1025', 'PROGRAMACI�N VISUAL', 2, 4, 3, 2, 5),
('GEF0910', 'FUNDAMENTOS DE QU�MICA', 4, 1, 3, 2, 5),
('GEE0918', 'LEGISLACI�N LABORAL', 4, 1, 3, 2, 5),
('AEF1074', 'FUNDAMENTOS DE GESTI�N EMPRESARIAL', 4, 1, 3, 2, 5),
('AEB1082', 'SOFTWARE DE APLICACI�N EJECUTIVO', 4, 2, 3, 2, 5),
('LOC0913', 'INTRODUCCI�N A LA INGENIER�A EN LOG�STICA', 6, 1, 2, 2, 4),
('LOC0903', 'CADENA DE SUMINISTRO', 6, 2, 2, 2, 4),
('LOC0914', 'FUNDAMENTOS DE DERECHO', 6, 2, 2, 2, 4),
('TIP1017', 'INTRODUCCI�N A LAS TICS', 8, 1, 2, 1, 3),
('TIC1002', 'ADMINISTRACI�N GERENCIAL', 8, 2, 2, 2, 4),
('TIF1009', 'CONTABILIDAD Y COSTOS', 8, 2, 3, 2, 5),
('TIF1020', 'MATEM�TICAS DISCRETAS II', 8, 2, 3, 2, 5),
('TIE1018', 'MATEM�TICAS APLICADAS A COMUNICACIONES', 8, 3, 2, 2, 4),
('INN1008', 'DIBUJO INDUSTRIAL', 5, 1, 3, 3, 6),
('INH1029', 'TALLER DE HERRAMIENTAS INTELECTUALES', 5, 1, 2, 2, 4),
('INC1009', 'ELECTRICIDAD Y ELECTR�NICA INDUSTRIAL', 5, 2, 2, 2, 4);	   
	
INSERT INTO materia (fk_carrera, clave_materia, nombre, semestre, horas_t, horas_p, creditos)
values (1, 'AEF1041', 'MATEM�TICAS DISCRETAS', 1, 3, 2, 5),
	   (1, 'AED1285', 'FUNDAMENTOS DE PROGRAMACI�N', 1, 2, 3, 5),
	   (3, 'EMH1016', 'INTRODUCCI�N A LA PROGRAMACI�N', 1, 2, 2, 4),
	   (1, 'ACF0901', 'C�LCULO DIFERENCIAL', 1, 3, 2, 5);
	   
/*HORAS*/
INSERT INTO hora
values (1, '07:00-08:40'),
	   (2, '07:00-07:50'),
	   (3, '07:50-08:40'),
	   (4, '08:45-10:25'),
	   (5, '08:45-09:35'),
	   (6, '09:35-10:25'),
	   (7, '10:30-12:10'),
	   (8, '10:30-11:20'),
	   (9, '11:20-12:10'),
	   (10, '12:15-13:55'),
	   (11, '12:15-13:05'),
	   (12, '13:05-13:55');

/*GRUPOS*/
INSERT INTO grupo (fk_usuario, fk_materia, clave_grupo,grupo,aula,periodo,turno,alumnos)
values(1, 1,'4007','G01','A','D1','Agosto-Diciembre/2020','Matutino',34);

/*HORARIOS*/
INSERT INTO horario (fk_grupo, fk_hora, dia)
values(1, 4, 2),
	  (1, 4, 4),
	  (1, 6, 5);

	   