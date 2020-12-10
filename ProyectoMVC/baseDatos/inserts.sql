USE DATABASE proyectomvc;

/*DEPARTAMENTOS*/
INSERT INTO departamento (departamento)
values ('Ciencias económico administrativas'),
	   ('Metal mecánica'),
	   ('Ingeniería industrial'),
	   ('Sistemas y computación');

/*CARRERAS*/
INSERT INTO carrera (fk_departamento, nombre_carrera, abreviatura_carrera)
values (4,'Ingeniería en Sistemas Computacionales', 'ISX'),
	   (2,'Ingeniería Electrónica', 'ELX'),
	   (2,'Ingeniería Electromecánica', 'EMX'),
	   (1,'Ingeniería en Gestión Empresarial', 'GE9'),
	   (3,'Ingeniería Industrial', 'IIX'),
	   (3,'Ingeniería en Logística', 'LOX'),
	   (2,'Ingeniería Mecatrónica', 'MCX'),
	   (4,'Ingeniería en Tecnologías de la Información y Comunicaciones', 'TIX');
	   
/*ROL*/
INSERT INTO rol
values (1, 'administrador'),
	   (2, 'maestro'),
	   (3, 'jefe'),
	   (4, 'jefe_maestro');
	   
/*USUARIOS*/
INSERT INTO usuario (clave_usuario, titulo, apellido_paterno, apellido_materno, nombre, usuario, contrasena, telefono, horas, correo, fk_carrera, fk_rol) VALUES 
('001', 'DR.', 'MOSIÑO', 'JUAN', 'FRANCISCO', 'fmosiño001', '1234', '477 180 1001', 5, 'fmosiño001@leon.tecnm.mx', 1, 2),
('002', 'DR.', 'CARPIO', 'VALADEZ', 'JUAN MARTIN', 'jcarpio002', '1234', '477 180 1002', 5, 'jcarpio002@leon.tecnm.mx', 1, 2),
('003', 'DR.', 'SANTIAGO', 'MONTERO', 'RAÚL', 'rsantiago003', '1234', '477 180 1003', 5, 'rsantiago003@leon.tecnm.mx', 1, 2),
('004', 'DR.', 'ZAMUDIO', 'RODRIGUEZ', 'VICTOR MANUEL', 'vzamudio004', '1234', '477 180 1004', 5, 'vzamudio004@leon.tecnm.mx', 1, 2),
('005', 'DRA.', 'BALTAZAR', 'FLORES', 'MARIA DEL ROSARIO', 'mbaltazar005', '1234', '477 180 1005', 5, 'mbaltazar005@leon.tecnm.mx', 1, 2),
('006', 'ING.', 'HERNÁNDEZ', 'RODRÍGUEZ', 'JOSÉ FERNANDO', 'jhernández006', '1234', '477 180 1006', 5, 'jhernández006@leon.tecnm.mx', 1, 2),
('007', 'ING.', 'SAUCEDO', 'TORRES', 'MARÍA MINERVA', 'msaucedo007', '1234', '477 180 1007', 5, 'msaucedo007@leon.tecnm.mx', 1, 2),
('008', 'ING.', 'VIGUERAS', 'MONTAÑO', 'IVAN', 'ivigueras008', '1234', '477 180 1008', 5, 'ivigueras008@leon.tecnm.mx', 1, 2),
('009', 'ING.', 'MORALES', 'REYES', 'OSCAR ANDRES', 'omorales009', '1234', '477 180 1009', 5, 'omorales009@leon.tecnm.mx', 1, 2),
('010', 'ING.', 'PEÑA', 'LÓPEZ', 'MIGUEL ÁNGEL', 'mpeña010', '1234', '477 180 1010', 5, 'mpeña010@leon.tecnm.mx', 1, 2),
('011', 'ING.', 'GALLEGOS', 'MUÑOZ', 'LUIS ROBERTO', 'lgallegos011', '1234', '477 180 1011', 5, 'lgallegos011@leon.tecnm.mx', 1, 2),
('012', 'ING.', 'GARCIA', 'ORNELAS', 'DOMINGO', 'dgarcia012', '1234', '477 180 1012', 5, 'dgarcia012@leon.tecnm.mx', 1, 2),
('013', 'ING.', 'CASTILLO', 'MARTÍNEZ', 'PATRICIA MARIA', 'pcastillo013', '1234', '477 180 1013', 5, 'pcastillo013@leon.tecnm.mx', 1, 2),
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
('027', 'ING.', 'MEDINA', 'LÓPEZ', 'DENISSE', 'dmedina027', '1234', '477 180 1027', 5, 'dmedina027@leon.tecnm.mx', 1, 2),
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
('042', 'ING.', 'GAMIÑO', 'GUERRERO', 'ADOLFO', 'agamiño042', '1234', '477 180 1042', 5, 'agamiño042@leon.tecnm.mx', 1, 2),
('043', 'ING.', 'TAPIA', 'IBARRA', 'MA. VERONICA', 'mtapia043', '1234', '477 180 1043', 5, 'mtapia043@leon.tecnm.mx', 1, 2),
('044', 'ING.', 'MURILLO', 'RUIZ', 'JUAN PABLO', 'jmurillo044', '1234', '477 180 1044', 5, 'jmurillo044@leon.tecnm.mx', 1, 2),
('045', 'ING.', 'MANZANARES', 'CUADROS', 'JAVIER IVAN', 'jmanzanares045', '1234', '477 180 1045', 5, 'jmanzanares045@leon.tecnm.mx', 1, 2),
('046', 'ING.', 'SUAREZ', 'Y GOMEZ', 'JOSE LUIS FERNANDO', 'jsuarez046', '1234', '477 180 1046', 5, 'jsuarez046@leon.tecnm.mx', 1, 2),
('047', 'ING.', 'MARTINEZ', 'PRADO', 'EDNA MILITZA', 'emartinez047', '1234', '477 180 1047', 5, 'emartinez047@leon.tecnm.mx', 1, 2),
('048', 'LIC.', 'RODRÍGUEZ', 'MUÑOZ', 'GUSTAVO ADOLFO', 'grodríguez048', '1234', '477 180 1048', 5, 'grodríguez048@leon.tecnm.mx', 1, 2),
('049', 'LIC.', 'TRUJILLO', 'CASTELLANOS', 'CARLOS ALBERTO', 'ctrujillo049', '1234', '477 180 1049', 5, 'ctrujillo049@leon.tecnm.mx', 1, 2),
('050', 'LIC.', 'RAMIREZ', 'ALVAREZ', 'IRMA DE JESUS', 'iramirez050', '1234', '477 180 1050', 5, 'iramirez050@leon.tecnm.mx', 1, 2),
('051', 'LIC.', 'MORENO', 'REAL', 'ROXANA NOEMI', 'rmoreno051', '1234', '477 180 1051', 5, 'rmoreno051@leon.tecnm.mx', 1, 2),
('052', 'LIC.', 'CASTELLANOS', 'NOLASCO', 'ELIZABETH', 'ecastellanos052', '1234', '477 180 1052', 5, 'ecastellanos052@leon.tecnm.mx', 1, 2),
('053', 'LIC.', 'ORTIZ', 'GAUCIN', 'ANGELICA MARIA', 'aortiz053', '1234', '477 180 1053', 5, 'aortiz053@leon.tecnm.mx', 1, 2),
('054', 'LIC.', 'LUGO', 'PEDROZA', 'DAVID EVERARDO', 'dlugo054', '1234', '477 180 1054', 5, 'dlugo054@leon.tecnm.mx', 1, 2),
('055', 'LIC.', 'PUGA', 'SOBERANES', 'HECTOR JOSE', 'hpuga055', '1234', '477 180 1055', 5, 'hpuga055@leon.tecnm.mx', 1, 2),
('056', 'M.C.', 'ROCHA', 'SANCHEZ', 'MARTHA ALICIA', 'mrocha056', '1234', '477 180 1056', 5, 'mrocha056@leon.tecnm.mx', 1, 2),
('057', 'M.C.', 'LINO', 'RAMIREZ', 'CARLOS', 'clino057', '1234', '477 180 1057', 5, 'clino057@leon.tecnm.mx', 1, 2),
('058', 'MTRA.', 'PÉREZ', 'FLORES', 'ANGÉLICA JOSEFINA', 'apérez058', '1234', '477 180 1058', 5, 'apérez058@leon.tecnm.mx', 1, 2),
('059', 'MTRA.', 'SÁNCHEZ', 'CANO', 'MA. CONCEPCIÓN ROCÍO', 'msánchez059', '1234', '477 180 1059', 5, 'msánchez059@leon.tecnm.mx', 1, 2),
('060', 'M.C.', 'PARADA', 'SÁNCHEZ', 'LILIANA', 'lparada060', '1234', '477 180 1060', 5, 'lparada060@leon.tecnm.mx', 1, 1);
 
/*JEFES CARRERA*/
INSERT INTO jefe_carrera (fk_usuario, fk_carrera)
values (1, 1),
	   (1, 2);

/*MATERIAS*/
INSERT INTO materia (clave_materia, nombre, fk_carrera, semestre, horas_t, horas_p, creditos) VALUES
('ACF0901', 'CÁLCULO DIFERENCIAL', 1, 1, 3, 2, 5),
('AED1285', 'FUNDAMENTOS DE PROGRAMACIÓN', 1, 1, 2, 3, 5),
('AEF1041', 'MATEMÁTICAS DISCRETAS', 1, 1, 3, 2, 5),
('SCH1024', 'TALLER DE ADMINISTRACIÓN', 1, 1, 1, 3, 4),
('ACC0906', 'FUNDAMENTOS DE INVESTIGACIÓN', 1, 1, 2, 2, 4),
('ACA0907', 'TALLER DE ÉTICA', 1, 1, 0, 4, 4),
('ACF0902', 'CÁLCULO INTEGRAL', 1, 2, 3, 2, 5),
('ACF0903', 'ÁLGEBRA LINEAL', 1, 2, 3, 2, 5),
('AED1286', 'PROGRAMACIÓN ORIENTADA A OBJETOS', 1, 2, 2, 3, 5),
('AEC1008', 'CONTABILIDAD FINANCIERA', 1, 2, 2, 2, 4),
('AEC1058', 'QUÍMICA', 1, 2, 2, 2, 4),
('AEF1052', 'PROBABILIDAD Y ESTADÍSTICA', 1, 2, 3, 2, 5),
('ACF0904', 'CÁLCULO VECTORIAL', 1, 3, 3, 2, 5),
('AED1026', 'ESTRUCTURA DE DATOS', 1, 3, 2, 3, 5),
('SCF1006', 'FÍSICA GENERAL', 1, 3, 3, 2, 5),
('SCC1013', 'INVESTIGACIÓN DE OPERACIONES', 1, 3, 2, 2, 4),
('SCC1005', 'CULTURA EMPRESARIAL', 1, 3, 2, 2, 4),
('ACD0908', 'DESARROLLO SUSTENTABLE', 1, 3, 2, 3, 5),
('ACF0905', 'ECUACIONES DIFERENCIALES', 1, 4, 3, 2, 5),
('SCD1027', 'TÓPICOS AVANZADOS DE PROGRAMACIÓN', 1, 4, 2, 3, 5),
('SCD1018', 'PRINCIPIOS ELÉCTRICOS Y APLICACIONES DIGITALES', 1, 4, 2, 3, 5),
('AEF1031', 'FUNDAMENTOS DE BASE DE DATOS', 1, 4, 3, 2, 5),
('SCD1022', 'SIMULACIÓN', 1, 4, 2, 3, 5),
('SCC1017', 'MÉTODOS NUMÉRICOS', 1, 4, 2, 2, 4),
('SCD1003', 'ARQUITECTURA DE COMPUTADORAS', 1, 5, 2, 3, 5),
('SCA1025', 'TALLER DE BASE DE DATOS', 1, 5, 0, 4, 4),
('SCC1010', 'GRAFICACIÓN', 1, 5, 2, 2, 4),
('AEC1034', 'FUNDAMENTOS DE TELECOMUNICACIONES', 1, 5, 2, 2, 4),
('SCC1007', 'FUNDAMENTOS DE INGENIERÍA DE SOFTWARE', 1, 5, 2, 2, 4),
('AEC1061', 'SISTEMAS OPERATIVOS', 1, 5, 2, 2, 4),
('SCC1014', 'LENGUAJES DE INTERFAZ', 1, 6, 2, 2, 4),
('SCB1001', 'ADMINISTRACIÓN DE BASE DE DATOS', 1, 6, 1, 4, 5),
('SCD1021', 'REDES DE COMPUTADORAS', 1, 6, 2, 3, 5),
('SCA1026', 'TALLER DE SISTEMAS OPERATIVOS', 1, 6, 0, 4, 4),
('SCD1011', 'INGENIERÍA DE SOFTWARE', 1, 6, 2, 3, 5),
('SCD1015', 'LENGUAJES Y AUTÓMATAS I', 1, 6, 2, 3, 5),
('SCC1023', 'SISTEMAS PROGRAMABLES', 1, 7, 2, 2, 4),
('DAD1401', 'BASES DE DATOS AVANZADAS', 1, 7, 2, 3, 5),
('SCD1004', 'CONMUTACIÓN Y ENRUTAMIENTO EN REDES DE DATOS', 1, 7, 2, 3, 5),
('SCG1009', 'GESTIÓN DE PROYECTOS DE SOFTWARE', 1, 7, 3, 3, 6),
('SCD1016', 'LENGUAJES Y AUTÓMATAS II', 1, 7, 2, 3, 5),
('ACA0909', 'TALLER DE INVESTIGACIÓN I', 1, 7, 0, 4, 4),
('SCA1002', 'ADMINISTRACIÓN DE REDES', 1, 8, 0, 4, 4),
('ACA0910', 'TALLER DE INVESTIGACIÓN II', 1, 8, 0, 4, 4),
('SCC1019', 'PROGRAMACIÓN LÓGICA Y FUNCIONAL', 1, 8, 2, 2, 4),
('AEB1055', 'PROGRAMACIÓN WEB', 1, 8, 1, 4, 5),
('DAD1402', 'DESARROLLO DE APLICACIONES EMPRESARIALES', 1, 8, 2, 3, 5),
('SCC1012', 'INTELIGENCIA ARTIFICIAL', 1, 9, 2, 2, 4),
('DAD1403', 'PROGRAMACIÓN WEB AVANZADA', 1, 9, 2, 3, 5),
('DAD1404', 'ARQUITECTURA DE APLICACIONES EMPRESARIALES', 1, 9, 2, 3, 5),
('DAB1405', 'DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES', 1, 9, 2, 3, 5),
('EMH1016', 'INTRODUCCIÓN A LA PROGRAMACIÓN', 3, 1, 2, 2, 4),
('AEF1390', 'DIBUJO ELECTROMECÁNICO', 3, 2, 3, 2, 5),
('AEC1047', 'METROLOGÍA Y NORMALIZACIÓN', 3, 2, 2, 2, 4),
('EME1012', 'ESTÁTICA', 3, 2, 2, 2, 4),
('EMJ1021', 'MECÁNICA DE MATERIALES', 3, 3, 3, 3, 6),
('aeq1387', 'COMUNICACIÓN HUMANA', 2, 1, 2, 1, 3),
('AEF1042', 'MECÁNICA CLÁSICA', 2, 1, 3, 2, 5),
('ETD1021', 'MEDICIONES ELÉCTRICAS', 2, 2, 3, 2, 5),
('ETF1027', 'TÓPICOS SELECTOS DE FÍSICA', 2, 2, 3, 2, 5),
('ETF1020', 'MARCO LEGAL DE LA EMPRESA', 2, 4, 2, 1, 3),
('ETD1025', 'PROGRAMACIÓN VISUAL', 2, 4, 3, 2, 5),
('GEF0910', 'FUNDAMENTOS DE QUÍMICA', 4, 1, 3, 2, 5),
('GEE0918', 'LEGISLACIÓN LABORAL', 4, 1, 3, 2, 5),
('AEF1074', 'FUNDAMENTOS DE GESTIÓN EMPRESARIAL', 4, 1, 3, 2, 5),
('AEB1082', 'SOFTWARE DE APLICACIÓN EJECUTIVO', 4, 2, 3, 2, 5),
('LOC0913', 'INTRODUCCIÓN A LA INGENIERÍA EN LOGÍSTICA', 6, 1, 2, 2, 4),
('LOC0903', 'CADENA DE SUMINISTRO', 6, 2, 2, 2, 4),
('LOC0914', 'FUNDAMENTOS DE DERECHO', 6, 2, 2, 2, 4),
('TIP1017', 'INTRODUCCIÓN A LAS TICS', 8, 1, 2, 1, 3),
('TIC1002', 'ADMINISTRACIÓN GERENCIAL', 8, 2, 2, 2, 4),
('TIF1009', 'CONTABILIDAD Y COSTOS', 8, 2, 3, 2, 5),
('TIF1020', 'MATEMÁTICAS DISCRETAS II', 8, 2, 3, 2, 5),
('TIE1018', 'MATEMÁTICAS APLICADAS A COMUNICACIONES', 8, 3, 2, 2, 4),
('INN1008', 'DIBUJO INDUSTRIAL', 5, 1, 3, 3, 6),
('INH1029', 'TALLER DE HERRAMIENTAS INTELECTUALES', 5, 1, 2, 2, 4),
('INC1009', 'ELECTRICIDAD Y ELECTRÓNICA INDUSTRIAL', 5, 2, 2, 2, 4);	   
	
INSERT INTO materia (fk_carrera, clave_materia, nombre, semestre, horas_t, horas_p, creditos)
values (1, 'AEF1041', 'MATEMÁTICAS DISCRETAS', 1, 3, 2, 5),
	   (1, 'AED1285', 'FUNDAMENTOS DE PROGRAMACIÓN', 1, 2, 3, 5),
	   (3, 'EMH1016', 'INTRODUCCIÓN A LA PROGRAMACIÓN', 1, 2, 2, 4),
	   (1, 'ACF0901', 'CÁLCULO DIFERENCIAL', 1, 3, 2, 5);
	   
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

	   