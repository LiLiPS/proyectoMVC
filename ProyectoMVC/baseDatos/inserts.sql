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

INSERT INTO usuario (fk_carrera, fk_rol, clave_usuario, titulo, nombre, apellido_paterno, apellido_materno, usuario, contrasena, horas, telefono, correo) 
values(1, 4, 'U01', 'ING.', 'ANTONIO', 'AGUILA', 'REYES', 'aaguila01', '01123', 5, '4772165196', 'antonio.aguila@leon.tecnm.mx'),
	  (1, 2, 'U02', 'ING.', 'EFRAIN', 'BERMUDEZ', 'GUADALUPE', 'ebermudez02', '02123', 5, '4773829292', 'efrain.bermudez@leon.tecnm.mx'),
	  (1, 2, 'U03', 'ING.', 'JOSÉ FERNANDO', 'HERNÁNDEZ', 'RODRÍGUEZ', 'jfhernandez03', '03123', 5, '4773829287', 'josef.hernandez@leon.tecnm.mx'),
	  (1, 1, 'U04', 'ING.', 'LILIANA', 'PARADA', 'SÁNCHEZ', 'admin04', '04123', 5, '4773928296', 'lili.parada@leon.tecnm.mx'),	  
	  (1, 2, 'U04', 'ING.', 'MARÍA MINERVA', 'SAUCEDO', 'TORRES ', 'mmsaucedo04', '04123', 5, '4775879898', 'minerva@leon.tecnm.mx'),
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
/*2, 1,'4007','G01','A','D1','','08:45-10:25','','08:45-10:25','09:35-10:25','Agosto-Diciembre/2020','Matutino',34*/
INSERT INTO grupo (fk_usuario, fk_materia, clave_grupo,grupo,aula,periodo,turno,alumnos)
values(1, 1,'4007','G01','A','D1','Agosto-Diciembre/2020','Matutino',34);

/*HORARIOS*/
INSERT INTO horario (fk_grupo, fk_hora, dia)
values(1, 4, 2),
	  (1, 4, 4),
	  (1, 6, 5);

	   