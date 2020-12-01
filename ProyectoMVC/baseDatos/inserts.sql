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
INSERT INTO usuario (fk_carrera, fk_rol, clave_usuario, titulo, nombre, apellido_paterno, apellido_materno, usuario, contrasena, horas, telefono, correo) 
values(1, 4, 'U01', 'ING.', 'ANTONIO', 'AGUILA', 'REYES', 'aaguila01', '01123', 5, '4772165196', 'antonio.aguila@leon.tecnm.mx'),
	  (1, 2, 'U02', 'ING.', 'EFRAIN', 'BERMUDEZ', 'GUADALUPE', 'ebermudez02', '02123', 5, '4773829292', 'efrain.bermudez@leon.tecnm.mx'),
	  (1, 2, 'U03', 'ING.', 'JOSÉ FERNANDO', 'HERNÁNDEZ', 'RODRÍGUEZ', 'jfhernandez03', '03123', 5, '4773829287', 'josef.hernandez@leon.tecnm.mx'),
	  ('U04', 'ING.', 'MARÍA MINERVA', 'SAUCEDO', 'TORRES ', 'mmsaucedo04', '04123', 5, 'maestro'),
	  ('U05', 'ING.', 'JOSE GERARDO', 'CARPIO', 'FLORES', 'jgcarpio05', '05123', 5, 'maestro'),
	  ('U06', 'ING.', 'LUIS EDUARDO', 'GUTIERREZ', 'AYALA', 'legutierrez06', '06123', 5, 'maestro'),
	  ('U07', 'ING.', 'RUTH', 'SAEZ DE NANCLARES', 'RODRIGUEZ', 'rsaez07', '07123', 5, 'maestro'),
	  ('U08', 'ING.', 'DENY', 'MARTINEZ', 'TREJO', 'dmartinez08', '08123', 5, 'maestro'),
	  ('U09', 'ING.', 'PAOLA VIRGINIA', 'GALVAN', 'JARAMILLO', 'pvgalvan09', '09123', 5, 'maestro'),
	  ('U10', 'ING.', 'JOSE ALEJANDRO', 'RODRIGUEZ', 'RENTERIA', 'jarodriguez10', '10123', 5, 'maestro'),
	  ('U11', 'LIC.', 'IRMA DE JESUS', 'RAMIREZ', 'ALVAREZ', 'iramirez11', '11123', 5, 'maestro'),
	  ('U12', 'ING.', 'ANA COLUMBA ZURITA', 'MARTINEZ', 'AGUILAR', 'aczmartinez12', '12123', 5, 'maestro'),
	  ('U13', 'ING.', 'JOSE ELIAS', 'MARTINEZ', 'ARIAS', 'jemartinez13', '13123', 5, 'maestro'),
	  ('U14', 'ING.', 'LAURA PATRICIA', 'GUEVARA', 'RANGEL', 'lpguevara14', '14123', 5, 'maestro'),
	  ('U15', 'LIC.', 'ROXANA NOEMI', 'MORENO', 'REAL', 'rnmoreno15', '15123', 5, 'maestro'),
	  ('U16', 'ING.', 'EUGENIO CONRADO', 'MARIN', 'GONZALEZ', 'ecmarin16', '16123', 5, 'maestro'),
	  ('U17', 'ING.', 'IVAN', 'VIGUERAS', 'MONTAÑO', 'ivigueras17', '17123', 5, 'maestro'),
	  ('U18', 'ING.', 'ALEJANDRO', 'GARCIA', 'TRUJILLO', 'agarcia18', '18123', 5, 'maestro'),
	  ('U19', 'ING.', 'DENISSE', 'MEDINA', 'LÓPEZ', 'dmedina19', '19123', 5, 'maestro'),
	  ('U20', 'LIC.', 'ELIZABETH', 'CASTELLANOS', 'NOLASCO', 'ecastellanos20', '20123', 5, 'maestro'),
	  ('U21', 'ING.', 'RUBEN', 'TRUJILLO', 'CORONA', 'rtrujillo21', '21123', 5, 'maestro'),
	  ('U22', 'M.C.', 'MARTHA ALICIA', 'ROCHA', 'SANCHEZ', 'marocha22', '22123', 5, 'maestro'),
	  ('U23', 'ING.', 'HECTOR FEDERICO', 'GODINEZ', 'CABRERA', 'hfgodinez23', '23123', 5, 'maestro'),
	  ('U24', 'ING.', 'JUAN IGNACIO', 'GUIZAR', 'RUIZ', 'jiguizar24', '24123', 5, 'maestro'),
	  ('U25', 'ING.', 'LUZ DEL CARMEN', 'RUIZ', 'GAYTAN', 'lcruiz25', '25123', 5, 'maestro'),
	  ('U26', 'ING.', 'CIRINO', 'SILVA', 'TOVAR', 'csilva26', '26123', 5, 'maestro'),
	  ('U27', 'ING.', 'MANUEL', 'ORNELAS', 'RODRIGUEZ', 'mornelas27', '27123', 5, 'maestro'),
	  ('U28', 'DR.', 'JUAN FRANCISCO', 'MOSIÑO', '', 'jfmosino28', '28123', 5, 'maestro'),
	  ('U29', 'ING.', 'OSCAR ANDRES', 'MORALES', 'REYES', 'oamorales29', '29123', 5, 'maestro'),
	  ('U30', 'MTRA.', 'ANGÉLICA JOSEFINA', 'PÉREZ', 'FLORES', 'ajperez30', '30123', 5, 'maestro'),
	  ('U31', 'LIC.', 'ANGELICA MARIA', 'ORTIZ', 'GAUCIN', 'amortiz31', '31123', 5, 'maestro'),
	  ('U32', 'LIC.', 'DAVID EVERARDO', 'LUGO', 'PEDROZA', 'delugo32', '32123', 5, 'maestro'),
	  ('U33', 'LIC.', 'HECTOR JOSE', 'PUGA', 'SOBERANES', 'hjpuga33', '33123', 5, 'maestro'),
	  ('U34', 'ING.', 'JOSE ALFREDO', 'GASCA', 'GONZALEZ', 'jagasca34', '34123', 5, 'maestro'),
	  ('U35', 'ING.', 'CARLOS RAFAEL', 'LEVY', 'ROJAS', 'cflevy35', '35123', 5, 'maestro'),
	  ('U36', 'ING.', 'EDUARDO JOSE', 'PEREZ', 'PINTOR', 'ejperez36', '36123', 5, 'maestro'),
	  ('U37', 'DRA.', 'MARIA DEL ROSARIO', 'BALTAZAR', 'FLORES', 'mbaltazar37', '37123', 5, 'maestro'),
	  ('U38', 'ING.', 'LAURA', 'JUAREZ', 'GUERRA', 'ljuarez38', '38123', 5, 'maestro'),
	  ('U39', 'DR.', 'JUAN MARTIN', 'CARPIO', 'VALADEZ', 'jmcarpio39', '39123', 5, 'maestro'),
	  ('U40', 'ING.', 'MARIA DE LOS ANGELES', 'ARELLANO', 'VERA', 'maarellano40', '40123', 5, 'maestro'),
	  ('U41', 'MTRA.', 'MA. CONCEPCIÓN ROCÍO', 'SÁNCHEZ', 'CANO', 'masanchez41', '41123', 5, 'maestro'),
	  ('U42', 'LIC.', 'GUSTAVO ADOLFO', 'RODRÍGUEZ', 'MUÑOZ', 'garodriguez42', '42123', 5, 'maestro'),
	  ('U43', 'ING.', 'IVAN', 'VIGUERAS', 'MONTAÑO', 'ivigueras43', '43123', 5, 'maestro'),
	  ('U44', 'ING.', 'ANGELICA BENITA', 'HERNANDEZ', 'CARRANZA', 'abhernandez44', '44123', 5, 'maestro'),
	  ('U45', 'ING.', 'MIGUEL ÁNGEL', 'PEÑA', 'LÓPEZ', 'mapena45', '45123', 5, 'maestro'),
	  ('U46', 'DR.', 'RAÚL', 'SANTIAGO', 'MONTERO', 'rsantiago46', '46123', 5, 'maestro'),
	  ('U47', 'DR.', 'VICTOR MANUEL', 'ZAMUDIO', 'RODRIGUEZ', 'vmzamudio47', '47123', 5, 'maestro'),
	  ('U48', 'ING.', 'JUAN CARLOS', 'AGUILERA', 'CRUZ', 'jcaguilera48', '48123', 5, 'maestro'),
	  ('U49', 'ING.', 'LUIS ROBERTO', 'GALLEGOS', 'MUÑOZ', 'lrgallegos49', '49123', 5, 'maestro'),
	  ('U50', 'ING.', 'DOMINGO', 'GARCIA', 'ORNELAS', 'dgarcia50', '50123', 5, 'maestro'),
	  ('U51', 'ING.', 'MA. CONCEPCION', 'SANDOVAL', 'SOLIS', 'masandoval51', '51123', 5, 'maestro'),
	  ('U52', 'ING.', 'PATRICIA MARIA', 'CASTILLO', 'MARTÍNEZ', 'pmcastillo52', '52123', 5, 'maestro'),
	  ('U53', 'LIC.', 'CARLOS ALBERTO', 'TRUJILLO', 'CASTELLANOS', 'catrujillo53', '53123', 5, 'maestro'),
	  ('U54', 'ING.', 'ADOLFO', 'GAMIÑO', 'GUERRERO', 'agamino54', '54123', 5, 'maestro'),
	  ('U55', 'ING.', 'MA. VERONICA', 'TAPIA', 'IBARRA', 'matapia55', '55123', 5, 'maestro'),
	  ('U56', 'ING.', 'JUAN PABLO', 'MURILLO', 'RUIZ', 'jpmurillo56', '56123', 5, 'maestro'),
	  ('U57', 'ING.', 'JAVIER IVAN', 'MANZANARES', 'CUADROS', 'jimanzanares57', '57123', 5, 'maestro'),
	  ('U58', 'M.C.', 'CARLOS', 'LINO', 'RAMIREZ', 'clino58', '58123', 5, 'maestro'),
	  ('U59', 'ING.', 'JOSE LUIS FERNANDO', 'SUAREZ Y GOMEZ', '', 'jflsuarez59', '59123', 5, 'maestro'),
	  ('U60', 'ING.', 'EDNA MILITZA', 'MARTINEZ', 'PRADO', 'emmartinez60', '60123', 5, 'maestro'),
	  ('U00', 'ING.', 'JUAN', 'PEREZ', 'LÓPEZ', 'admin', '00123', , 'administrador');
	  
/*JEFES CARRERA*/
INSERT INTO jefe_carrera (fk_usuario, fk_carrera)
values (1, 1),
	   (1, 2);

/*MATERIAS*/
INSERT INTO materia (fk_carrera, clave_materia, nombre, semestre, horas_t, horas_p, creditos)
values (1, 'AEF1041', 'MATEMÁTICAS DISCRETAS', 1, 3, 2, 5),
	   (1, 'AED1285', 'FUNDAMENTOS DE PROGRAMACIÓN', 1, 2, 3, 5),
	   (3, 'EMH1016', 'INTRODUCCIÓN A LA PROGRAMACIÓN', 1, 2, 2, 4);