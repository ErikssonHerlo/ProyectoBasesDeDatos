--INSERT TO PLAN VUELO
INSERT INTO mydb.Plan_Vuelo(es_temporal,dias,distancia_millas,tipo_avion) VALUES
(1,'Lunes,Martes,Miercoles',10,'F10'),
(0,'Lunes,Miercoles,Viernes',15,'F20'),
(0,'Lunes,Sabado',20,'F5'),
(0,'Sabado,Domingo',5,'F10'),
(0,'Domingo,Lunes,Martes',3,'F5'),
(0,'Lunes,Miercoles,Jueves',10,'F20'),
(0,'Lunes,Jueves',20,'F10'),
(1,'Jueves,Viernes',5,'F2'),
(1,'Viernes,Sabado',15,'F5'),
(1,'Sabado,Domingo',25,'F3');

--INSERT TO PLAN_TEMPORAL
INSERT INTO mydb.Plan_Temporal VALUES
(1,'2022-04-04','2022-05-05',0),
(8,'2022-01-01','2022-02-02',0),
(9,'2022-02-02','2022-03-03',0),
(10,'2022-03-03','2022-04-04',0);


--INSERT TO AVION
INSERT INTO mydb.Avion VALUES
(1,'F2',20,5,'Disponible','2022-05-14','2010-06-07','2010-01-01'),
(2,'F3',25,5,'Disponible','2022-03-11','2011-02-01','2011-01-02'),
(3,'F4',30,5,'Disponible','2022-02-10','2012-03-02','2012-01-03'),
(4,'F5',20,5,'Disponible','2022-01-01','2013-02-03','2013-01-04'),
(5,'F6',25,5,'Disponible','2022-04-04','2014-02-04','2014-01-05'),
(6,'F7',30,5,'Disponible','2022-05-07','2015-06-05','2015-01-06'),
(7,'F8',20,5,'Disponible','2022-01-19','2011-08-06','2011-01-10'),
(8,'F9',25,5,'Disponible','2022-01-20','2011-10-07','2011-01-11'),
(9,'F10',30,5,'Disponible','2022-02-05','2012-11-17','2012-01-12'),
(10,'F20',35,5,'Disponible','2022-04-03','2013-05-27','2013-01-13');

--INSERT TO AEROPUERTO
INSERT INTO mydb.Aeropuerto VALUES
('ABC','Aeropuerto de Albacete','España','Castilla-La Mancha'),
('BUD','Aeropuerto de Budapest-Ferenc Liszt','Hungría','Budapest'),
('BOG','Aeropuerto Internacional El Dorado','Colombia','Bogotá'),
('GUA','Aeropuerto Internacional La Aurora','Guatemala','Guatemala'),
('PBR','Aeropuerto Internacional La Tierra de Dios','Guatemala','Puerto Barrios'),
('MEX','Aeropuerto Internacional Benito Juárez','México','México'),
('HNL','Aeropuerto Internacional de Honolulu','Estados Unidos','Hawái'),
('TSE','Aeropuerto Internacional de Astaná','Kazajistán','Provincia de Akmola'),
('ZAZ','Aeropuerto de Zaragoza','España','Aragón'),
('FRS','Aeropuerto Internacional Mundo Maya','Guatemala','Petén');

--INSERT TO Asignacion_Puerta
INSERT INTO mydb.Asignacion_Puerta VALUES
(1,'GUA',1,'12:00:00','12:30:00',NULL),(1,'HNL',0,NULL,NULL,'14:00:00'),
(2,'HNL',1,'12:00:00','12:30:00',NULL),(2,'GUA',0,NULL,NULL,'14:00:00'),
(3,'BUD',1,'09:00:00','09:30:00',NULL),(3,'B0G',0,NULL,NULL,'16:00:00'),
(4,'BOG',1,'09:00:00','09:30:00',NULL),(4,'BUD',0,NULL,NULL,'16:00:00'),
(5,'ABC',1,'11:00:00','11:30:00',NULL),(5,'PBR',0,NULL,NULL,'13:30:00'),
(6,'PBR',1,'11:00:00','11:30:00',NULL),(6,'ABC',0,NULL,NULL,'13:30:00'),
(7,'MEX',1,'08:00:00','08:30:00',NULL),(7,'TSE',0,NULL,NULL,'12:00:00'),
(8,'TSE',1,'08:00:00','08:30:00',NULL),(8,'MEX',0,NULL,NULL,'12:00:00'),
(9,'ZAZ',1,'12:00:00','12:30:00',NULL),(9,'FRS',0,NULL,NULL,'14:00:00'),
(10,'FRS',1,'12:00:00','12:30:00',NULL),(10,'ZAZ',0,NULL,NULL,'14:00:00');

--INSERT TO NACIONALIDAD
INSERT INTO mydb.Nacionalidad VALUES 
('Guatemala','Guatemalteco'),
('El Salvador','Salvadoreño'),
('Estados Unidos','Estadounidense'),
('España','Español'),
('Colombia','Colombiano'),
('Venezuela','Venezolano'),
('Mexico','Mexicano'),
('Costa Rica','Costarricense'),
('Panama','Panameño'),
('Perú','Peruano');

--INSERT TO PERSONA
INSERT INTO mydb.Persona VALUES
('1143583675355','Willow G. Arias','phasellus@yahoo.com'),
('2144865650652','Stone W. Soler','dis.parturient@protonmail.ca'),
('1694116817314','Lacota G. Crespo','fermentum.arcu@icloud.couk'),
('9454573809543','Irma X. Hidalgo','aliquet@google.edu'),
('6707158046335','Sylvester R. Martinez','ipsum.sodales@icloud.couk'),
('6214716285673','Xantha K. Santana','tristique.aliquet@protonmail.edu'),
('9729144369074','Rinah G. Marin','volutpat.nulla.dignissim@protonmail.couk'),
('5511441718364','Skyler S. Ferrer','ridiculus.mus.proin@icloud.couk'),
('4198269416366','Uriel M. Gonzalez','porta.elit@outlook.net'),
('9228567211692','Colette D. Santana','quis.arcu.vel@aol.com');
INSERT INTO mydb.Persona VALUES
('5534561843481','Cecilia U. Martin','molestie.sodales.mauris@icloud.net'),
('6754286819443','Maisie O. Sanz','eget.odio.aliquam@icloud.ca'),
('1374039243562','Priscilla K. Jimenez','in.at@outlook.couk'),
('7257576736747','Gregory R. Crespo','fames.ac@aol.net'),
('7829416812110','Libby B. Crespo','vitae.nibh@yahoo.ca'),
('8857767582404','Geraldine N. Molina','adipiscing@outlook.couk'),
('1956533983321','Sonya K. Hidalgo','volutpat.ornare.facilisis@icloud.couk'),
('1396824522981','Zahir P. Ibañez','senectus.et@aol.couk'),
('7167859572557','Channing A. Medina','semper.et@icloud.org'),
('3535866888912','Celeste M. Montero','a.dui@hotmail.edu');
INSERT INTO mydb.Persona VALUES
('4876353918195','Hayfa R. Fernandez','sapien@icloud.net'),
('4956237345980','Keely M. Muﾑoz','nunc@google.com'),
('1604556735997','Francesca C. Moya','ornare@aol.com'),
('5212350170852','Cathleen I. Carmona','vitae.velit@google.com'),
('9247891862762','Chelsea K. Peña','amet.dapibus@outlook.ca'),
('1840632318142','Illana E. Moya','quisque.nonummy@google.net'),
('8302774030734','Josiah R. Calvo','aliquam.iaculis.lacus@hotmail.org'),
('9121151445935','Daniel X. Marin','netus@outlook.couk'),
('6225862771775','Carlos T. Carrasco','mi@yahoo.edu'),
('2524183738240','Fredericka P. Bravo','etiam.imperdiet.dictum@hotmail.com');
INSERT INTO mydb.Persona VALUES
('3572146338349','Odysseus M. Leon','egestas.a.dui@google.net'),
('0615006307487','Silas Q. Vila','ante.nunc@yahoo.net'),
('8531128593686','Asher O. Leon','quis.tristique@aol.ca'),
('6671746813837','Abra Q. Alvarez','ipsum@outlook.couk'),
('5250522482145','Noelle E. Andres','duis.at@icloud.edu'),
('7044227845628','Tate I. Medina','sed@google.couk'),
('2384145291167','Valentine D. Pardo','sit.amet.ultricies@aol.org'),
('8683532778023','Moses M. Perez','turpis.nulla.aliquet@outlook.com'),
('7807787016426','Lee B. Sanchez','dictum.cursus.nunc@protonmail.org'),
('8333482522171','Holly L. Carrasco','blandit.congue.in@outlook.net');
INSERT INTO mydb.Persona VALUES
('2517458840347','Gisela D. Suarez','vulputate.dui@google.edu'),
('1348286552331','Alexandra M. Gil','eget.tincidunt@protonmail.ca'),
('3255038414883','Serina C. Mora','tellus.non@icloud.ca'),
('3741181072234','Eugenia I. Suarez','ipsum.curabitur.consequat@hotmail.ca'),
('6831176882463','Daniel S. Moya','ipsum.dolor.sit@google.net'),
('0961962698226','Sawyer I. Torres','aliquet@google.org'),
('7898217495695','Carolyn W. Carrasco','non@aol.org'),
('7025237831735','Kamal Y. Soto','luctus.curabitur@yahoo.net'),
('3948658086384','Kylee T. Fernandez','facilisis@protonmail.edu'),
('6131285445774','Hamish X. Gallego','ridiculus.mus.proin@icloud.couk');

--INSERT TO Asignacion Nacionalidad
INSERT INTO mydb.Asignacion_Nacionalidad VALUES
('1143583675355',1),
('1143583675355',2),
('2144865650652',3),
('2144865650652',4),
('1694116817314',1),
('9454573809543',1),
('6707158046335',1),
('6214716285673',2),
('9729144369074',4),
('5511441718364',5),
('4198269416366',6),
('9228567211692',7);
INSERT INTO mydb.Asignacion_Nacionalidad VALUES
('5534561843481',1),
('6754286819443',1),
('1374039243562',2),
('7257576736747',2),
('7829416812110',3),
('8857767582404',3),
('1956533983321',5),
('1396824522981',5),
('7167859572557',6),
('3535866888912',7);
INSERT INTO mydb.Asignacion_Nacionalidad VALUES
('4876353918195',8),
('4956237345980',8),
('1604556735997',8),
('5212350170852',1),
('9247891862762',1),
('1840632318142',1),
('8302774030734',1),
('9121151445935',1),
('6225862771775',1),
('2524183738240',1);
INSERT INTO mydb.Asignacion_Nacionalidad VALUES
('3572146338349',1),
('0615006307487',3),
('8531128593686',3),
('6671746813837',3),
('5250522482145',2),
('7044227845628',3),
('2384145291167',3),
('8683532778023',3),
('7807787016426',3),
('8333482522171',3);
INSERT INTO mydb.Asignacion_Nacionalidad VALUES
('2517458840347',4),
('1348286552331',4),
('3255038414883',4),
('3741181072234',1),
('6831176882463',1),
('0961962698226',1),
('7898217495695',1),
('7025237831735',1),
('3948658086384',1),
('6131285445774',1);


--INSERT TO Asignacion Telefono
INSERT INTO mydb.Telefono VALUES
('11435836','1143583675355'),
('21448656','2144865650652'),
('16941168','1694116817314'),
('94545738','9454573809543'),
('67071580','6707158046335'),
('62147162','6214716285673'),
('97291443','9729144369074'),
('55114417','5511441718364'),
('41982694','4198269416366'),
('92285672','9228567211692');
INSERT INTO mydb.Telefono VALUES
('55345618','5534561843481'),
('67542868','6754286819443'),
('13740392','1374039243562'),
('72575767','7257576736747'),
('78294168','7829416812110'),
('88577675','8857767582404'),
('19565339','1956533983321'),
('13968245','1396824522981'),
('71678595','7167859572557'),
('35358668','3535866888912');
INSERT INTO mydb.Telefono VALUES
('48763539','4876353918195'),
('49562373','4956237345980'),
('16045567','1604556735997'),
('52123501','5212350170852'),
('92478918','9247891862762'),
('18406323','1840632318142'),
('83027740','8302774030734'),
('91211514','9121151445935'),
('62258627','6225862771775'),
('25241837','2524183738240');
INSERT INTO mydb.Telefono VALUES
('35721463','3572146338349'),
('06150063','0615006307487'),
('85311285','8531128593686'),
('66717468','6671746813837'),
('52505224','5250522482145'),
('70442278','7044227845628'),
('23841452','2384145291167'),
('86835327','8683532778023'),
('78077870','7807787016426'),
('83334825','8333482522171');
INSERT INTO mydb.Telefono VALUES
('251745884','2517458840347'),
('134828655','1348286552331'),
('325503841','3255038414883'),
('374118107','3741181072234'),
('683117688','6831176882463'),
('096196269','0961962698226'),
('789821749','7898217495695'),
('702523783','7025237831735'),
('394865808','3948658086384'),
('613128544','6131285445774');

--INSERT TO DOCUMENTOS
INSERT INTO mydb.Documentos VALUES
('1143583675355','G-1839','Carné IGSS'),
('2144865650652','G-2841','Carné IGSS'),
('1694116817314','G-3852','Carné IGSS'),
('9454573809543','G-4863','Carné IGSS'),
('6707158046335','G-5874','Carné IGSS'),
('6214716285673','G-6885','Carné IGSS'),
('9729144369074','G-7896','Carné IGSS'),
('5511441718364','G-8807','Carné IGSS'),
('4198269416366','G-0818','Carné IGSS'),
('9228567211692','G-0029','Carné IGSS');

--INSERT TO USUARIOS
INSERT INTO mydb.Usuario VALUES
('willow','1995-05-06','1143583675355','encryptedPassword1','F',0,0,0),
('stone','1991-07-08','2144865650652','encryptedPassword2','M',0,0,0),
('lacota','1985-01-01','1694116817314','encryptedPassword3','F',0,0,0),
('irma','1980-02-02','9454573809543','encryptedPassword1','F',0,0,0),
('sylv','1990-01-01','6707158046335','encryptedPassword1','M',0,0,0),
('xantha','1989-07-07','6214716285673','encryptedPassword1','F',0,0,0),
('rinah','1976-07-09','9729144369074','encryptedPassword1','F',0,0,0),
('skyler','1999-08-02','5511441718364','encryptedPassword1','F',0,0,0),
('uriel','2000-01-01','4198269416366','encryptedPassword1','M',0,0,0),
('colette','1995-09-01','9228567211692','encryptedPassword1','F',0,0,0);

--INSERTS TO METODOPAGO
INSERT INTO mydb.Metodo_Pago VALUES
('124241546015','Credito'),
('861585852632','Debito'),
('054116016127','Credito'),
('169342431337','Debito'),
('888086448747','Credito'),
('042902292351','Debito'),
('187563556141','Debito'),
('125104865062','Credito'),
('718542889321','Debito'),
('732221260183','Debito')
('374212422793','Credito'),
('612115614845','Debito'),
('594456206515','Debito'),
('167288833753','Credito'),
('533993872124','Credito'),
('485241271520','Credito'),
('128944646273','Credito'),
('216260523615','Debito'),
('325590614468','Credito'),
('359785581873','Debito')
('237351648166','Credito'),
('158574193274','Debito'),
('181062522132','Credito'),
('074916522532','Debito'),
('955146212575','Debito'),
('591445321876','Credito'),
('825554375668','Credito'),
('118132586612','Debito'),
('361340593646','Debito'),
('356368282676','Debito');

--INSERTOS TO ASIGNACION_METODO
INSERT INTO mydb.Asignacion_Metodo VALUES
('124241546015','Credito','willow'),
('861585852632','Debito','willow'),
('054116016127','Credito','stone'),
('169342431337','Debito','stone'),
('888086448747','Credito','lacota'),
('042902292351','Debito','irma'),
('187563556141','Debito','sylv'),
('125104865062','Credito','sylv'),
('718542889321','Debito','xantha'),
('732221260183','Debito','rinah')
('374212422793','Credito','skyler'),
('612115614845','Debito','skyler'),
('594456206515','Debito','uriel'),
('167288833753','Credito','uriel'),
('533993872124','Credito','colette'),
('485241271520','Credito','colette');

--INSERT TO CUENTA MILLAS
INSERT INTO mydb.Cuenta_Millas VALUES
('Normal',NULL,1,0.25,0,0,0),
('Oro',1,1.5,0.50,8,250,2),
('Platino',2,2,1,12,250,2);

--INSERT TO BENEFICIO_CUENTA
INSERT INTO mydb.Beneficio_Cuenta VALUES
(2,'Pelicula',1,'Se le permite la renta de una pelicula de cortesía'),
(3,'Pelicula',1,'Se le permite la renta de una pelicula de cortesía'),
(3,'Documentada',1,'Se le permite una maleta documentada de 50lbs de cortesía');

--INSERT TO HISTORIAL_MILLAS
INSERT INTO mydb.Historial_Millas VALUES
('willow',1,'2015-04-03',1,0,0,0),
('stone',1,'2014-05-05',1,0,0,0),
('lacota',1,'2017-08-09',1,0,0,0),
('irma',1,'2017-09-09',1,0,0,0),
('sylv',1,'2017-07-07',1,0,0,0),
('xantha',1,'2015-01-01',1,0,0,0),
('rinah',1,'2014-03-03',1,0,0,0),
('skyler',1,'2013-05-05',1,0,0,0),
('uriel',1,'2012-07-09',1,0,0,0),
('colette',1,'2011-05-04',1,0,0,0);

--INSERT TO VACUNAS
INSERT INTO mydb.Vacuna VALUES
(1,1,'Parvovirus'),
(2,1,'Influenza'),
(3,1,'Rabia'),
(4,1,'Epilori'),
(5,1,'Nocivori'),
(6,1,'Inventoriviri'),
(7,1,'Sarcasiviri'),
(8,1,'Sarna'),
(9,1,'Astigmatidea'),
(10,1,'Pigmantidea');

--INSERT TO PELICULAS
INSERT INTO mydb.Pelicula VALUES
('Eterno resplandor','Melodrama protagonizado por Jim Carrey','Melodrama','B+',57.00,167),
('La mascara','Comedia protagonizado por Jim Carrey','Comedia','B+',50.00,187),
('Swiss Army Man','Peculiar pelicula de Daniel Radcliff','Comedia','C+',53.00,197),
('Los Vengadores','Exito del 2010','Accion','A+',80.00,207),
('Lost in translation','Melodrama protagonizado por Scarlett Johansson','Melodrama','B+',45.00,137),
('Spiderman 1','Exito del 2001 dirigida por Sam Raimi y protagonizada por Tobey Mcguire','Accion','A+',77.00,127),
('Evil Dead 1','Opera Prima de Sam Raimi','Accion','B+',67.00,117),
('La isla siniestra','Thriller psicologico protagonizado por Dicaprio','Thriller Psicologico','C+',87.00,97),
('Baby driver','Pelicula de persecusiones en autos','Accion','B+',57.00,90),
('Resolucion','Thriller Psicologico donde nada es como se muestra','Thriller Psicologico','C+',27.00,130);

--INSERT TO CARTELERA
INSERT INTO mydb.Cartelera VALUES
('2021-08-01','2021-08-30'),
('2021-09-01','2021-09-30'),
('2021-10-01','2021-10-30'),
('2021-11-01','2021-11-30'),
('2021-12-01','2021-12-30'),
('2022-01-01','2022-01-30'),
('2022-02-01','2022-02-29'),
('2022-03-01','2022-03-30'),
('2022-04-01','2022-04-30'),
('2022-05-01','2022-05-30');

--INSERT TO CARTELERA
INSERT INTO mydb.Asignacion_Cartelera VALUES
(1,10,15.00),
(2,10,15.00),
(3,10,15.00),
(4,10,15.00),
(5,10,15.00),
(6,10,15.00),
(7,10,15.00),
(8,10,15.00),
(9,10,15.00),
(10,10,15.00);

INSERT INTO mydb.Actor VALUES
('Jim Carrey',60),
('Tobey Maguire',46),
('Mark Ruffalo',54),
('Arnold Schwarzenegger',74),
('Tom Hiddleston',41),
('Leonardo DiCaprio',47),
('Bruce Campbell',66),
('Jake Gyllenhaal',41),
('Benedict Cumberbatch',45),
('Chris Evans',40);

--INSERT INTO PERSONAJE
INSERT INTO mydb.Personaje VALUES 
(1,3,'Doctor Quiensabe'),
(2,1,'La máscara/Steve Ickins'),
(1,1,'John'),
(4,3,'Doctor Banner/Hulk'),
(4,5,'Loki'),
(4,10,'Capitan America'),
(4,9,'Doctor Strange/Steven Strange'),
(6,2,'Peter Parker/Spiderman'),
(6,7,'Misterio'),
(8,3,'Detective Mike'),
(8,6,'Detective Steven'),
(7,7,'Ash'),
(10,4,'Sujeto 1');

--Precios_globales
INSERT INTO mydb.Precio_Global VALUES 
('wifi','Precio del wifi actual para todos los vuelos',40.00),
('maleta1','Precio de la primera maleta que lleve el pasajero',50.00),
('maleta2','Precio de la segunda maleta que lleve el pasajero',75.00),
('maleta3','Precio de la tercera maleta que lleve el pasajero',100.00),
('mascotaCabina','Precio de la mascota en cabina',50.00),
('aseguranza','Porcentaje que se saca del boleto original',0.50),
('supervisor','Costo de supervisor',50.00);

--Restricciones
INSERT INTO mydb.Restriccion VALUES
('pesoDocumentadas','Limite de peso para maletas documentadas en lbs',50),
('maximoMaletas','Limite máximo de maletas por boleto',3),
('pesoMascota','Limite máximo de mascota en cabina',30);

--INSERT clases
INSERT INTO mydb.Clase(nombre_clase,posicion_avion,ultimos_asientos,agotado_adulto,agotado_infantil,precio_infantil,precio_adulto,descuento_ida_vuelta) VALUES
('Primera','Primeras filas',3,0.06,0.05,500,550,0.05),
('Business','Filas despues de PC',3,0.045,0.05,400,450,0.05),
('Economy','Ultimas filas',5,0.1,0.1,300,350,0.05),
('Basica','Ultimas filas',5,0.1,0.1,200,300,0.05);

--INSERT beneficio clase
INSERT INTO mydb.Beneficio_Clase VALUES 
('cambios','Tarifa para cambios'),
('documentadas','Numero de maletas documentadas que ofrece de cortesía la clase'),
('mano','Numero de maletas de mano que ofrece de cortesía la clase'),
('eleccion','Eleccion de asiento por parte del pasajero'),
('devoluciones','El pasajero puede hacer devoluciones');

--INSERT DE asignacion_clase
INSERT INTO mydb.Asignacion_Clase VALUES
(1,1),(1,2),(1,3),(1,4),
(2,1),(2,2),(2,3),(2,4),
(3,1),(3,2),(3,3),(3,4),
(4,1),(4,2),(4,3),(4,4),
(5,1),(5,2),(5,3),(5,4),
(6,1),(6,2),(6,3),(6,4),
(7,1),(7,2),(7,3),(7,4),
(8,1),(8,2),(8,3),(8,4),
(9,1),(9,2),(9,3),(9,4),
(10,1),(10,2),(10,3),(10,4);

--INSERT asignacion beneficio
INSERT INTO mydb.Asignacion_Beneficio VALUES
('cambios',1,0),
('cambios',2,0),
('cambios',3,1),
('cambios',4,1),
('documentadas',1,2),
('documentadas',2,1),
('documentadas',3,0),
('documentadas',4,0),
('mano',1,1),
('mano',2,1),
('mano',3,0),
('mano',4,0),
('devoluciones',1,1),
('devoluciones',2,1),
('devoluciones',3,0),
('devoluciones',4,0),
('eleccion',1,1),
('eleccion',2,1),
('eleccion',3,1),
('eleccion',4,0);

--INSERT PUESTOS
INSERT INTO mydb.Puesto VALUES
('Azafata','Encargada de atender a los pasajeros',30,1),
('Auxiliar de tierra','Encargado de atender a los pasajeros en el mostrador',45,0),
('Tecnico de operaciones aeroportuarias','Personal auxiliar encargado de diferentes servicios como puede ser la venta de billetes, handling, el embarque de pasajeros, atención al público en información o reclamaciones',45,0),
('Piloto','Encargado de conducir el avion',150,1),
('Despachador de vuelos','Encargado de que el vuelo esté preparado para el despegue de forma rápida y que cumpla los requisitos de salud y seguridad',45,0),
('Agente de servicios aeroportuarios','Encargados de verificar y controlar las diferentes secciones de las terminales',55,0),
('Tecnico administrativo','Encargado de llevar toda la gestión administrativa de aprovisionamientos, vuelos, información, registros, etc',70,0),
('Ingeniero','Encargado de ingeniarselas',90,1);

--INSERT EMPLEADOS
INSERT INTO mydb.Empleado VALUES
('P0001','5534561843481',1,'1998-07-21','Piloto'),
('P0002','6754286819443',1,'1988-02-11','Piloto'),
('P0003','1374039243562',1,'1987-03-01','Piloto'),
('P0004','7257576736747',1,'1992-04-02','Piloto'),
('P0005','7829416812110',1,'1993-05-03','Piloto'),
('P0006','8857767582404',1,'1994-02-13','Piloto'),
('P0007','1956533983321',1,'1995-01-14','Piloto'),
('P0008','1396824522981',1,'1996-02-21','Piloto'),
('P0009','7167859572557',1,'1992-03-22','Piloto'),
('P0010','3535866888912',1,'1992-06-11','Piloto');
INSERT INTO mydb.Empleado VALUES
('A0001','4876353918195',1,'1997-07-21','Azafata'),
('A0002','4956237345980',1,'1987-02-11','Azafata'),
('A0003','1604556735997',1,'1986-03-01','Azafata'),
('A0004','5212350170852',1,'1991-04-02','Azafata'),
('A0005','9247891862762',1,'1992-05-03','Azafata'),
('A0006','1840632318142',1,'1993-02-13','Azafata'),
('A0007','8302774030734',1,'1994-01-14','Azafata'),
('A0008','9121151445935',1,'1995-02-21','Azafata'),
('A0009','6225862771775',1,'1991-03-22','Azafata'),
('A0010','2524183738240',1,'1991-06-11','Azafata');
INSERT INTO mydb.Empleado VALUES
('I0001','4876353918195',1,'1997-07-21','Ingeniero'),
('I0002','4956237345980',1,'1987-02-11','Ingeniero'),
('I0003','1604556735997',1,'1986-03-01','Ingeniero'),
('AT001','5212350170852',0,'1991-04-02','Auxiliar de tierra'),
('TO001','9247891862762',0,'1992-05-03','Tecnico de operaciones aeroportuarias'),
('DV001','1840632318142',0,'1993-02-13','Despachador de vuelos'),
('AS001','8302774030734',0,'1994-01-14','Agente de servicios aeroportuarios'),
('TA001','9121151445935',0,'1995-02-21','Tecnico administrativo'),
('AT002','6225862771775',0,'1991-03-22','Auxiliar de tierra'),
('AT003','2524183738240',0,'1991-06-11','Auxiliar de tierra');

--INSERTANDO PILOTOS
INSERT INTO mydb.Piloto VALUES
('P0001',1),
('P0002',6),
('P0003',4),
('P0004',5),
('P0005',2),
('P0006',3),
('P0007',8),
('P0008',10),
('P0009',8),
('P0010',5);

--INSERTANDO HORARIOS
INSERT INTO mydb.Horario(cantidad_horas,cantidad_dias) VALUES
(8,5),(4,7),
(12,3),(8,3),
(8,4),(8,6),
(4,4),(4,6),
(6,4),(6,6);

--INSERTANDO HORARIOS DESIGNADOS
INSERT INTO mydb.Horario_Designado VALUES
('P0001',1),('P0002',2),('P0003',3),('P0004',4),('P0005',5),
('P0006',6),('P0007',7),('P0008',8),('P0009',9),('P0010',10),
('A0001',1),('A0002',2),('A0003',3),('A0004',4),('A0005',5),
('A0006',6),('A0007',7),('A0008',8),('A0009',9),('A0010',10),
('I0001',1),('I0002',2),('I0003',3),('AT001',4),('TO001',5),
('DV001',6),('AS001',7),('TA001',8),('AT002',9),('AT003',10);

--INSERTANDO Solicitudes
INSERT INTO mydb.Solicitud_Vacacion(id_empleado,dias_solicitud,
fecha_inicio_solicitud,aceptada) VALUES
('A0001',3,'2022-01-15',1),
('A0002',1,'2022-01-15',1),
('A0003',2,'2022-01-15',1),
('A0004',4,'2022-01-15',1),
('A0005',2,'2022-01-15',1),
('A0006',1,'2022-01-15',1),
('A0007',1,'2022-01-15',1),
('A0008',2,'2022-01-15',1),
('A0009',3,'2022-01-15',1),
('A0010',2,'2022-01-15',1);

--INSERTANDO Faltas
INSERT INTO mydb.Periodo_Falta(id_empleado,por_enfermedad,
total_dias,fecha_inicio_falta) VALUES
('A0001',1,3,'2022-01-25'),
('A0002',1,1,'2022-01-25'),
('A0003',0,2,'2022-01-25'),
('A0004',1,4,'2022-01-25'),
('A0005',0,2,'2022-01-25'),
('A0006',0,1,'2022-01-25'),
('A0007',0,1,'2022-01-25'),
('A0008',1,2,'2022-01-25'),
('A0009',0,3,'2022-01-25'),
('A0010',1,2,'2022-01-25');

--INSERTANDO PAGOS
INSERT INTO mydb.Pago_Salario(id_empleado,fecha_pago) VALUES
('P0001','2022-01-30'),
('P0002','2022-01-30'),
('P0003','2022-01-30'),
('P0004','2022-01-30'),
('P0005','2022-01-30'),
('P0006','2022-01-30'),
('P0007','2022-01-30'),
('P0008','2022-01-30'),
('P0009','2022-01-30'),
('P0010','2022-01-30'),
('A0001','2022-01-30'),
('A0002','2022-01-30'),
('A0003','2022-01-30'),
('A0004','2022-01-30'),
('A0005','2022-01-30'),
('A0006','2022-01-30'),
('A0007','2022-01-30'),
('A0008','2022-01-30'),
('A0009','2022-01-30'),
('A0010','2022-01-30'),
('I0001','2022-01-30'),
('I0002','2022-01-30'),
('I0003','2022-01-30'),
('AT001','2022-01-30'),
('AT002','2022-01-30'),
('AT003','2022-01-30'),
('TO001','2022-01-30'),
('TA001','2022-01-30'),
('DV003','2022-01-30'),
('AS003','2022-01-30');
INSERT INTO mydb.Pago_Salario(id_empleado,fecha_pago) VALUES
('P0001','2022-02-30'),
('P0002','2022-02-30'),
('P0003','2022-02-30'),
('P0004','2022-02-30'),
('P0005','2022-02-30'),
('P0006','2022-02-30'),
('P0007','2022-02-30'),
('P0008','2022-02-30'),
('P0009','2022-02-30'),
('P0010','2022-02-30'),
('A0001','2022-02-30'),
('A0002','2022-02-30'),
('A0003','2022-02-30'),
('A0004','2022-02-30'),
('A0005','2022-02-30'),
('A0006','2022-02-30'),
('A0007','2022-02-30'),
('A0008','2022-02-30'),
('A0009','2022-02-30'),
('A0010','2022-02-30'),
('I0001','2022-02-30'),
('I0002','2022-02-30'),
('I0003','2022-02-30'),
('AT001','2022-02-30'),
('AT002','2022-02-30'),
('AT003','2022-02-30'),
('TO001','2022-02-30'),
('TA001','2022-02-30'),
('DV003','2022-02-30'),
('AS003','2022-02-30');
INSERT INTO mydb.Pago_Salario(id_empleado,fecha_pago) VALUES
('P0001','2022-03-30'),
('P0002','2022-03-30'),
('P0003','2022-03-30'),
('P0004','2022-03-30'),
('P0005','2022-03-30'),
('P0006','2022-03-30'),
('P0007','2022-03-30'),
('P0008','2022-03-30'),
('P0009','2022-03-30'),
('P0010','2022-03-30'),
('A0001','2022-03-30'),
('A0002','2022-03-30'),
('A0003','2022-03-30'),
('A0004','2022-03-30'),
('A0005','2022-03-30'),
('A0006','2022-03-30'),
('A0007','2022-03-30'),
('A0008','2022-03-30'),
('A0009','2022-03-30'),
('A0010','2022-03-30'),
('I0001','2022-03-30'),
('I0002','2022-03-30'),
('I0003','2022-03-30'),
('AT001','2022-03-30'),
('AT002','2022-03-30'),
('AT003','2022-03-30'),
('TO001','2022-03-30'),
('TA001','2022-03-30'),
('DV003','2022-03-30'),
('AS003','2022-03-30');
INSERT INTO mydb.Pago_Salario(id_empleado,fecha_pago) VALUES
('P0001','2022-04-30'),
('P0002','2022-04-30'),
('P0003','2022-04-30'),
('P0004','2022-04-30'),
('P0005','2022-04-30'),
('P0006','2022-04-30'),
('P0007','2022-04-30'),
('P0008','2022-04-30'),
('P0009','2022-04-30'),
('P0010','2022-04-30'),
('A0001','2022-04-30'),
('A0002','2022-04-30'),
('A0003','2022-04-30'),
('A0004','2022-04-30'),
('A0005','2022-04-30'),
('A0006','2022-04-30'),
('A0007','2022-04-30'),
('A0008','2022-04-30'),
('A0009','2022-04-30'),
('A0010','2022-04-30'),
('I0001','2022-04-30'),
('I0002','2022-04-30'),
('I0003','2022-04-30'),
('AT001','2022-04-30'),
('AT002','2022-04-30'),
('AT003','2022-04-30'),
('TO001','2022-04-30'),
('TA001','2022-04-30'),
('DV003','2022-04-30'),
('AS003','2022-04-30');
--INSERTS TO Vuelo
INSERT INTO mydb.Vuelo VALUES 
(1,9,'P0001',1,1,'2022-04-10'),
(2,10,'P0001',1,2,'2022-03-24'),
(3,4,'P0001',3,1,'2022-02-02'),
(4,9,'P0004',1,3,'2022-01-01'),
(5,4,'P0004',3,1,'2022-04-02'),
(6,10,'P0005',1,1'2021-07-17'),
(7,9,'P0006',5,8,'2021-10-10'),
(8,1,'P0007',5,9,'2022-01-04'),
(9,4,'P0002',1,5,'2022-03-05'),
(10,2,'P0010',6,7,'2022-04-12'),
(1,9,'P0001',1,1,'2022-04-20'),
(2,10,'P0009',1,2,'2022-02-15'),
(3,4,'P0009',3,1,'2022-02-25'),
(4,9,'P0005',1,3,'2022-01-23'),
(5,4,'P0005',3,1,'2022-01-18'),
(6,10,'P0007',1,1'2022-01-29'),
(7,9,'P0008',5,8,'2022-02-10'),
(8,1,'P0008',5,9,'2022-01-14'),
(9,4,'P0001',1,5,'2022-03-15'),
(10,2,'P0001',6,7,'2022-04-22');
--INSERTS TO Tripulacion
INSERT INTO mydb.Tripulacion VALUES 
('P0001',1,400.00),
('P0001',2,400.00),
('P0001',3,400.00),
('P0004',4,200.00),
('P0004',5,200.00),
('P0005',6,150.00),
('P0006',7,100.00),
('P0007',8,200.00),
('P0002',9,150.00),
('P0010',10,350.00),
('P0001',11,400.00),
('P0009',12,250.00),
('P0009',13,250.00),
('P0005',14,150.00),
('P0005',15,150.00),
('P0007',16,200.00),
('P0008',17,125.00),
('P0008',18,125.00),
('P0001',19,400.00),
('P0001',20,400.00);

INSERT INTO mydb.Tripulacion VALUES 
('A0001',1,100.00),
('A0001',2,100.00),
('A0001',3,100.00),
('A0004',4,100.00),
('A0004',5,100.00),
('A0005',6,50.00),
('A0006',7,100.00),
('A0007',8,100.00),
('A0002',9,50.00),
('A0010',10,100.00),
('A0001',11,100.00),
('A0009',12,150.00),
('A0009',13,150.00),
('A0005',14,80.00),
('A0005',15,100.00),
('A0007',16,100.00),
('A0008',17,75.00),
('A0008',18,75.00),
('A0001',19,100.00),
('A0001',20,150.00);

--INSERT TO Estado_Vuelo
INSERT INTO mydb.Estado_Vuelo VALUES
(1,'Retrasado','12:00:00',NULL),(1,'Abordando','12:30:00',NULL),
(1,'Despegando','13:00:00',NULL),(1,'Aterrizando','14:30:00',NULL),
(1,'Desembarcando','15:00:00',NULL),(1,'Completado','15:30:00',NULL),
(2,'Abordando','12:30:00',NULL),
(2,'Despegando','13:00:00',NULL),(2,'Aterrizando','14:30:00',NULL),
(2,'Desembarcando','15:00:00',NULL),(2,'Completado','15:30:00',NULL),
(3,'Retrasado','12:00:00',NULL),(3,'Abordando','12:30:00',NULL),
(3,'Despegando','13:00:00',NULL),(3,'Aterrizando','14:30:00',NULL),
(3,'Desembarcando','15:00:00',NULL),(3,'Completado','15:30:00',NULL),
(4,'Cancelado','12:00:00',NULL),
(6,'Cancelado','12:00:00',NULL),
(7,'Cancelado','12:00:00',NULL),
(8,'Cancelado','12:00:00',NULL),
(9,'Cancelado','12:00:00',NULL),
(10,'Cancelado','12:00:00',NULL),
(11,'Abordando','12:30:00',NULL),
(11,'Despegando','13:00:00',NULL),(11,'Aterrizando','14:30:00',NULL),
(11,'Desembarcando','15:00:00',NULL),(11,'Completado','15:30:00',NULL),
(12,'Abordando','12:30:00',NULL),
(12,'Despegando','13:00:00',NULL),(12,'Aterrizando','14:30:00',NULL),
(12,'Desembarcando','15:00:00',NULL),(12,'Completado','15:30:00',NULL),
(13,'Retrasado','12:00:00',NULL),(13,'Abordando','12:30:00',NULL),
(13,'Despegando','13:00:00',NULL),(13,'Aterrizando','14:30:00',NULL),
(13,'Desembarcando','15:00:00',NULL),(13,'Completado','15:30:00',NULL),
(14,'Retrasado','12:00:00',NULL),(14,'Abordando','12:30:00',NULL),
(14,'Despegando','13:00:00',NULL),(14,'Aterrizando','14:30:00',NULL),
(14,'Desembarcando','15:00:00',NULL),(14,'Completado','15:30:00',NULL),
(16,'Retrasado','12:00:00',NULL),(16,'Abordando','12:30:00',NULL),
(16,'Despegando','13:00:00',NULL),(16,'Aterrizando','14:30:00',NULL),
(16,'Desembarcando','15:00:00',NULL),(16,'Completado','15:30:00',NULL),
(18,'Retrasado','12:00:00',NULL),(18,'Abordando','12:30:00',NULL),
(18,'Despegando','13:00:00',NULL),(18,'Aterrizando','14:30:00',NULL),
(18,'Desembarcando','15:00:00',NULL),(18,'Completado','15:30:00',NULL),
(15,'Cancelado','12:00:00',NULL),
(17,'Cancelado','12:00:00',NULL),
(19,'Cancelado','12:00:00',NULL),
(20,'Cancelado','12:00:00',NULL);

--INSERT ENCUESTA
INSERT INTO mydb.Encuesta VALUES
(1,'willow',5,5,5,''),
(1,'stone',5,5,5,''),
(2,'lacota',5,5,5,''),
(3,'irma',5,5,5,''),
(11,'sylv',5,5,5,''),
(12,'xantha',5,5,5,''),
(12,'rinah',5,5,5,''),
(12,'skyler',5,5,5,''),
(13'uriel',5,5,5,''),
(14,'colette',5,5,5,'');


--INSERT bebidas
INSERT INTO mydb.Bebida(nombre_bebida,tipo_bebida,costo_bebida) VALUES
('Quetzalteca','Alcoholica',6.00),
('Heineken','Alcoholica',18.00),
('Cabro','Alcoholica',20.00),
('Kerns','Jugo',8.00),
('Coca Cola','Gaseosa',5.00),
('7up','Gaseosa',5.00),
('Sprite','Gaseosa',5.00),
('Pepsi','Gaseosa',5.00),
('De la granja','Jugo',10.00),
('Tampico','Jugo',6.00);

--INSERT bebidas
INSERT INTO mydb.Comida(nombre_comida,costo_comida) VALUES
('Galleta',4.00),
('Pastel',7.00),
('Palomitas',10.00),
('Nueces',2.00),
('Manias',2.00),
('Semillas varias',2.00),
('Chocolate',7.00),
('Tortrix',1.00),
('Jalapeño',1.00),
('Nachos',1.00);

--INSERT menu
INSERT INTO mydb.Menu (es_gratis,id_avion) VALUES 
(0,1),(1,1),(1,1),(1,1),(1,1),
(0,2),(1,2),(1,2),(1,2),(1,2),
(0,3),(1,3),(1,3),(1,3),(1,3),
(0,4),(1,4),(1,4),(1,4),(1,4),
(0,5),(1,5),(1,5),(1,5),(1,5),
(0,6),(1,6),(1,6),(1,6),(1,6),
(0,7),(1,7),(1,7),(1,7),(1,7),
(0,8),(1,8),(1,8),(1,8),(1,8);

--INSERT menu_gratis
INSERT INTO mydb.Menu_Gratis (id_menu,codigo_clase,intervalo_tiempo) VALUES 
(2,1,2),(3,2,2),(4,3,2),(5,4,2),
(7,1,2),(8,2,2),(9,3,2),(10,4,2),
(12,1,2),(13,2,2),(14,3,2),(15,4,2),
(17,1,2),(18,2,2),(19,3,2),(20,4,2),
(22,1,2),(23,2,2),(24,3,2),(25,4,2),
(27,1,2),(28,2,2),(29,3,2),(30,4,2),
(32,1,2),(33,2,2),(34,3,2),(35,4,2),
(37,1,2),(38,2,2),(39,3,2),(40,4,2);

INSERT INTO mydb.Inventario_Bebida(id_bebida,id_menu,cantidad_bebida,fecha_abastecimiento,existencias) VALUES
(1,2,10,'2022-01-01',10);

INSERT INTO mydb.Inventario_Comida(id_comida,id_menu,cantidad_comida,fecha_abastecimiento,existencias) VALUES
(2,2,21,'2022-01-01',21);

INSERT INTO mydb.Distribucion_Asiento VALUES
(1,1,2,4),
(1,2,3,4),
(1,3,3,4),
(1,4,3,4);

INSERT INTO mydb.Distribucion_Asiento VALUES
(2,1,2,3),
(2,2,3,3),
(2,3,3,3),
(2,4,3,3);

INSERT INTO mydb.Asiento(id_avion,id_clase,alias) VALUES
(1,1,'A1'),(1,1,'B1'),(1,1,'C1'),(1,1,'D1'),
(1,1,'A2'),(1,1,'B2'),(1,1,'C2'),(1,1,'D2'),
(1,2,'A3'),(1,2,'B3'),(1,2,'C3'),(1,2,'D3'),
(1,2,'A4'),(1,2,'B4'),(1,2,'C4'),(1,2,'D4'),
(1,2,'A5'),(1,2,'B5'),(1,2,'C5'),(1,2,'D5'),
(1,3,'A6'),(1,3,'B6'),(1,3,'C6'),(1,3,'D6'),
(1,3,'A7'),(1,3,'B7'),(1,3,'C7'),(1,3,'D7'),
(1,3,'A8'),(1,3,'B8'),(1,3,'C8'),(1,3,'D8'),
(1,4,'A9'),(1,4,'B9'),(1,4,'C9'),(1,4,'D9'),
(1,4,'A10'),(1,4,'B10'),(1,4,'C10'),(1,4,'D10'),
(1,4,'A11'),(1,4,'B11'),(1,4,'C11'),(1,4,'D11');

INSERT INTO mydb.Asiento(id_avion,id_clase,alias) VALUES
(2,1,'A1'),(2,1,'B1'),(2,1,'C1'),
(2,1,'A2'),(2,1,'B2'),(2,1,'C2'),
(2,2,'A3'),(2,2,'B3'),(2,2,'C3'),
(2,2,'A4'),(2,2,'B4'),(2,2,'C4'),
(2,2,'A5'),(2,2,'B5'),(2,2,'C5'),
(2,3,'A6'),(2,3,'B6'),(2,3,'C6'),
(2,3,'A7'),(2,3,'B7'),(2,3,'C7'),
(2,3,'A8'),(2,3,'B8'),(2,3,'C8'),
(2,4,'A9'),(2,4,'B9'),(2,4,'C9'),
(2,4,'A10'),(2,4,'B10'),(2,4,'C10'),
(2,4,'A11'),(2,4,'B11'),(2,4,'C11');