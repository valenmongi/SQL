/* En el presente script se recopilan todos los desarrollos realizados al momento en el curso de SQL
llevado a cabo por Coder House*/

/* 1. Creacion de las tablas */

create schema if not exists sector_glp_argentina;

create table if not exists localidad(
id_localidad int not null primary key auto_increment,
Provincia varchar(255) not null,
Localidad varchar(255) not null);


create table if not exists categoria(
id_categoria int not null primary key auto_increment,
Actividad_principal varchar(255) not null);


create table if not exists empresa(
id_empresa int not null primary key auto_increment,
Razon_social varchar(255) not null,
CUIL int not null,
localidad varchar(255),
Direccion varchar(255),
id_localidad int not null,
foreign key (id_localidad) references localidad (id_localidad));

create table if not exists empresa_categoria(
id_empresa int not null,
id_categoria int not null,
foreign key (id_empresa) references empresa (id_empresa),
foreign key (id_categoria) references categoria (id_categoria));


create table if not exists venta(
id_venta int not null primary key auto_increment,
Año int not null,
Mes int not null,
id_empresa_venta int not null,
id_empresa_compra int not null,
id_categoria_venta int not null,
id_categoria_compra int not null,
foreign key (id_empresa_venta) references empresa (id_empresa),
foreign key (id_empresa_compra) references empresa (id_empresa),
foreign key (id_categoria_venta) references categoria (id_categoria),
foreign key (id_categoria_compra) references categoria (id_categoria));


create table if not exists producto(
id_producto int not null primary key auto_increment,
Tipo_producto varchar(255) not null,
Precio_sin_iva int not null,
Precio_con_iva int not null);


create table if not exists detalle_venta(
id_detalle_venta int not null primary key auto_increment,
Planta_carga varchar(255) not null,
Volumen int not null,
id_producto int not null,
id_venta int not null,
id_localidad int not null,
foreign key (id_producto) references producto (id_producto),
foreign key (id_venta) references venta (id_venta),
foreign key (id_localidad) references localidad (id_localidad));


/* 2. Importación de datos */


INSERT INTO categoria (`id_categoria`,`Actividad_principal`) VALUES (1,'Distribuidora');
INSERT INTO categoria (`id_categoria`,`Actividad_principal`) VALUES (2,'Productor');
INSERT INTO categoria (`id_categoria`,`Actividad_principal`) VALUES (3,'Fraccionadora');



INSERT INTO producto (`id_producto`,`Tipo_producto`,`Precio_sin_iva`,`Precio_con_iva`) VALUES (1,'Butano',91,100);
INSERT INTO producto (`id_producto`,`Tipo_producto`,`Precio_sin_iva`,`Precio_con_iva`) VALUES (2,'Propano',300,332);
INSERT INTO producto (`id_producto`,`Tipo_producto`,`Precio_sin_iva`,`Precio_con_iva`) VALUES (3,'Mezcla',91,100);
INSERT INTO producto (`id_producto`,`Tipo_producto`,`Precio_sin_iva`,`Precio_con_iva`) VALUES (4,'Propileno',9895,10934);



INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (1,'BUENOS AIRES','CHIVILCOY');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (2,'MISIONES','ELDORADO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (3,'SANTA FE','RECONQUISTA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (4,'BUENOS AIRES','GENERAL SAN MARTIN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (5,'BUENOS AIRES','PEHUAJO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (6,'BUENOS AIRES','BURZACO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (7,'FORMOSA','FORMOSA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (8,'MISIONES','PUERTO ESPERANZA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (9,'MISIONES','PUERTO IGUAZU');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (10,'SANTA FE','ARMSTRONG');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (11,'CÃ“RDOBA','VILLA CARLOS PAZ');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (12,'MISIONES','OBERA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (13,'BUENOS AIRES','NECOCHEA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (14,'BUENOS AIRES','RAMALLO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (15,'MISIONES','JARDIN AMERICA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (16,'BUENOS AIRES','BANFIELD');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (17,'BUENOS AIRES','GENERAL LAVALLE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (18,'BUENOS AIRES','LINCOLN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (19,'SANTA FE','CASILDA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (20,'BUENOS AIRES','JAUREGUI JOSE MARIA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (21,'BUENOS AIRES','RAMOS MEJIA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (22,'CORRIENTES','GOYA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (23,'RIO NEGRO','VIEDMA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (24,'BUENOS AIRES','ISIDRO CASANOVA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (25,'CHACO','MAKALLE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (26,'BUENOS AIRES','BENAVIDEZ');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (27,'CORRIENTES','PASO DE LOS LIBRES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (28,'SANTA FE','ALVEAR');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (29,'LA RIOJA','CHILECITO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (30,'CÃ“RDOBA','EL QUEBRACHAL');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (31,'CATAMARCA','BELEN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (32,'BUENOS AIRES','GRAND BOURG');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (33,'SANTIAGO DEL ESTERO','AÃ‘ATUYA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (34,'MISIONES','2 DE MAYO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (35,'MISIONES','MONTECARLO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (36,'MISIONES','LEANDRO N ALEM');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (37,'CÃ“RDOBA','GENERAL FOTHERINGHAM');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (38,'CÃ“RDOBA','HERNANDO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (39,'CHUBUT','EL HOYO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (40,'CÃ“RDOBA','EMBALSE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (41,'CÃ“RDOBA','ALMAFUERTE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (42,'BUENOS AIRES','LISANDRO OLMOS ETCHEVERRY');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (43,'CÃ“RDOBA','LAS PERDICES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (44,'CÃ“RDOBA','LABOULAYE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (45,'CÃ“RDOBA','PORTEÃ‘A');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (46,'MISIONES','PUERTO RICO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (47,'CÃ“RDOBA','CORDOBA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (48,'ENTRE RIOS','GUALEGUAY');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (49,'SANTA FE','MONTE VERA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (50,'CÃ“RDOBA','VILLA CURA BROCHERO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (51,'BUENOS AIRES','LANUS');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (52,'CÃ“RDOBA','VILLA NUEVA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (53,'BUENOS AIRES','CORONEL BRANDSEN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (54,'CHACO','CHARATA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (55,'RIO NEGRO','CIPOLLETTI');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (56,'MISIONES','BERNARDO DE IRIGOYEN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (57,'ENTRE RIOS','PARANA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (58,'SANTIAGO DEL ESTERO','SANTIAGO DEL ESTERO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (59,'SANTA FE','RECREO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (60,'ENTRE RIOS','GUALEGUAYCHU');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (61,'SANTA FE','VILLA CAÃ‘AS');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (62,'BUENOS AIRES','PILAR');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (63,'MENDOZA','BOWEN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (64,'CÃ“RDOBA','MAYU SUMAJ');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (65,'BUENOS AIRES','MERCEDES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (66,'BUENOS AIRES','ROQUE PEREZ');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (67,'BUENOS AIRES','BERNAL OESTE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (68,'BUENOS AIRES','PERGAMINO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (69,'SANTA FE','LAGUNA PAIVA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (70,'BUENOS AIRES','BALCARCE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (71,'BUENOS AIRES','MAR DEL PLATA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (72,'TUCUMAN','CONCEPCION');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (73,'BUENOS AIRES','9 DE ABRIL');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (74,'SANTA FE','SAN JAVIER');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (75,'SAN LUIS','MERLO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (76,'SANTIAGO DEL ESTERO','NUEVA ESPERANZA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (77,'BUENOS AIRES','FLORENCIO VARELA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (78,'CÃ“RDOBA','RIO TERCERO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (79,'SANTA FE','TOTORAS');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (80,'CORRIENTES','ITUZAINGO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (81,'BUENOS AIRES','GENERAL RODRIGUEZ');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (82,'SANTA FE','RAFAELA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (83,'FORMOSA','EL COLORADO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (84,'BUENOS AIRES','GENERAL BELGRANO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (85,'MISIONES','POSADAS');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (86,'TIERRA DEL FUEGO','USHUAIA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (87,'SALTA','SALTA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (88,'BUENOS AIRES','LUJAN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (89,'SAN JUAN','MEDANO DE ORO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (90,'BUENOS AIRES','SANTA TERESITA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (91,'ENTRE RIOS','CONCORDIA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (92,'CORRIENTES','CORRIENTES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (93,'BUENOS AIRES','JUNIN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (94,'LA RIOJA','LA RIOJA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (95,'MENDOZA','SAN RAFAEL');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (96,'CÃ“RDOBA','SANTA MARIA DE PUNILLA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (97,'BUENOS AIRES','CLAYPOLE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (98,'BUENOS AIRES','SAN ANDRES DE GILES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (99,'MENDOZA','TUNUYAN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (100,'ENTRE RIOS','VILLAGUAY ESTE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (101,'CÃ“RDOBA','VILLA ESQUIU');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (102,'ENTRE RIOS','FEDERAL');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (103,'BUENOS AIRES','MERLO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (104,'BUENOS AIRES','MALVINAS ARGENTINAS');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (105,'JUJUY','EL CARMEN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (106,'RIO NEGRO','BARILOCHE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (107,'BUENOS AIRES','TANDIL');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (108,'BUENOS AIRES','BERISSO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (109,'BUENOS AIRES','BARADERO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (110,'BUENOS AIRES','CORONEL DORREGO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (111,'LA PAMPA','GENERAL PICO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (112,'MENDOZA','LUJAN DE CUYO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (113,'CHACO','PRESIDENCIA ROQUE SAENZ PEÃ‘A');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (114,'BUENOS AIRES','VERONICA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (115,'BUENOS AIRES','SAN JUSTO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (116,'MENDOZA','MAIPU');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (117,'CHACO','QUITILIPI');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (118,'SANTIAGO DEL ESTERO','MACO YANDA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (119,'CÃ“RDOBA','CRUZ DEL EJE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (120,'SANTA FE','CAPITAN BERMUDEZ');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (121,'BUENOS AIRES','TRUJUI');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (122,'SANTA FE','ROSARIO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (123,'ENTRE RIOS','CHAJARI');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (124,'CÃ“RDOBA','RIO CEBALLOS');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (125,'CHACO','RESISTENCIA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (126,'CÃ“RDOBA','VILLA MARIA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (127,'SAN JUAN','RIVADAVIA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (128,'SAN JUAN','POCITO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (129,'BUENOS AIRES','LOBOS');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (130,'TUCUMAN','SAN PABLO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (131,'BUENOS AIRES','BERAZATEGUI');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (132,'JUJUY','SAN SALVADOR DE JUJUY');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (133,'CHUBUT','PASO DEL SAPO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (134,'BUENOS AIRES','OLAVARRIA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (135,'BUENOS AIRES','CARLOS CASARES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (136,'CÃ“RDOBA','VILLA GENERAL BELGRANO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (137,'SAN LUIS','VILLA MERCEDES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (138,'MENDOZA','PALMIRA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (139,'CÃ“RDOBA','SAN FRANCISCO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (140,'SANTA FE','ROLDAN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (141,'TUCUMAN','SAN MIGUEL DE TUCUMAN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (142,'BUENOS AIRES','ALEJANDRO KORN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (143,'CATAMARCA','SUMALAO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (144,'BUENOS AIRES','SAN CLEMENTE DEL TUYU');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (145,'BUENOS AIRES','LA PLATA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (146,'TUCUMAN','AGUILARES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (147,'BUENOS AIRES','MAYOR BURATOVICH');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (148,'SANTA FE','SANTO TOME');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (149,'CÃ“RDOBA','SALSIPUEDES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (150,'LA PAMPA','SANTA ROSA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (151,'BUENOS AIRES','VILLA MARTELLI');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (152,'CÃ“RDOBA','ALTA GRACIA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (153,'BUENOS AIRES','LAS FLORES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (154,'MISIONES','SAN VICENTE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (155,'CÃ“RDOBA','RIO CUARTO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (156,'BUENOS AIRES','11 DE SEPTIEMBRE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (157,'CÃ“RDOBA','VICUÃ‘A MACKENNA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (158,'TUCUMAN','BANDA DEL RIO SALI');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (159,'BUENOS AIRES','PONTEVEDRA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (160,'SANTA FE','CERES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (161,'SANTA FE','GOBERNADOR CRESPO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (162,'SANTA FE','VILLA CONSTITUCION');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (163,'BUENOS AIRES','ZARATE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (164,'NEUQUÃ‰N','PLOTTIER');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (165,'BUENOS AIRES','CAMPANA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (166,'SANTA CRUZ','RIO GALLEGOS');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (167,'BUENOS AIRES','DOCK SUD');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (168,'NEUQUÃ‰N','EL PORTON');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (169,'RIO NEGRO','CATRIEL');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (170,'NEUQUÃ‰N','NEUQUEN');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (171,'SALTA','GENERAL GUEMES');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (172,'NEUQUÃ‰N','CUTRAL CO');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (173,'NEUQUÃ‰N','SENILLOSA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (174,'TIERRA DEL FUEGO','RIO GRANDE');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (175,'BUENOS AIRES','BAHIA BLANCA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (176,'NEUQUÃ‰N','PLAZA HUINCUL');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (177,'BUENOS AIRES','ENSENADA');
INSERT INTO localidad (`id_localidad`,`Provincia`,`Localidad`) VALUES (178,'SANTA CRUZ','CAÃ‘ADON SECO');


ALTER TABLE empresa MODIFY CUIL BIGINT NOT NULL; 
select * from empresa;

INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (1,'BUENOS AIRES','CHIVILCOY');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (2,'MISIONES','ELDORADO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (3,'SANTA FE','RECONQUISTA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (4,'BUENOS AIRES','GENERAL SAN MARTIN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (5,'BUENOS AIRES','PEHUAJO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (6,'BUENOS AIRES','BURZACO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (7,'FORMOSA','FORMOSA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (8,'MISIONES','PUERTO ESPERANZA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (9,'MISIONES','PUERTO IGUAZU');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (10,'SANTA FE','ARMSTRONG');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (11,'CÃ“RDOBA','VILLA CARLOS PAZ');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (12,'MISIONES','OBERA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (13,'BUENOS AIRES','NECOCHEA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (14,'BUENOS AIRES','RAMALLO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (15,'MISIONES','JARDIN AMERICA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (16,'BUENOS AIRES','BANFIELD');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (17,'BUENOS AIRES','GENERAL LAVALLE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (18,'BUENOS AIRES','LINCOLN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (19,'SANTA FE','CASILDA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (20,'BUENOS AIRES','JAUREGUI JOSE MARIA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (21,'BUENOS AIRES','RAMOS MEJIA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (22,'CORRIENTES','GOYA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (23,'RIO NEGRO','VIEDMA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (24,'BUENOS AIRES','ISIDRO CASANOVA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (25,'CHACO','MAKALLE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (26,'BUENOS AIRES','BENAVIDEZ');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (27,'CORRIENTES','PASO DE LOS LIBRES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (28,'SANTA FE','ALVEAR');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (29,'LA RIOJA','CHILECITO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (30,'CÃ“RDOBA','EL QUEBRACHAL');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (31,'CATAMARCA','BELEN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (32,'BUENOS AIRES','GRAND BOURG');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (33,'SANTIAGO DEL ESTERO','AÃ‘ATUYA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (34,'MISIONES','2 DE MAYO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (35,'MISIONES','MONTECARLO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (36,'MISIONES','LEANDRO N ALEM');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (37,'CÃ“RDOBA','GENERAL FOTHERINGHAM');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (38,'CÃ“RDOBA','HERNANDO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (39,'CHUBUT','EL HOYO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (40,'CÃ“RDOBA','EMBALSE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (41,'CÃ“RDOBA','ALMAFUERTE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (42,'BUENOS AIRES','LISANDRO OLMOS ETCHEVERRY');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (43,'CÃ“RDOBA','LAS PERDICES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (44,'CÃ“RDOBA','LABOULAYE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (45,'CÃ“RDOBA','PORTEÃ‘A');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (46,'MISIONES','PUERTO RICO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (47,'CÃ“RDOBA','CORDOBA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (48,'ENTRE RIOS','GUALEGUAY');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (49,'SANTA FE','MONTE VERA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (50,'CÃ“RDOBA','VILLA CURA BROCHERO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (51,'BUENOS AIRES','LANUS');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (52,'CÃ“RDOBA','VILLA NUEVA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (53,'BUENOS AIRES','CORONEL BRANDSEN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (54,'CHACO','CHARATA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (55,'RIO NEGRO','CIPOLLETTI');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (56,'MISIONES','BERNARDO DE IRIGOYEN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (57,'ENTRE RIOS','PARANA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (58,'SANTIAGO DEL ESTERO','SANTIAGO DEL ESTERO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (59,'SANTA FE','RECREO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (60,'ENTRE RIOS','GUALEGUAYCHU');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (61,'SANTA FE','VILLA CAÃ‘AS');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (62,'BUENOS AIRES','PILAR');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (63,'MENDOZA','BOWEN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (64,'CÃ“RDOBA','MAYU SUMAJ');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (65,'BUENOS AIRES','MERCEDES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (66,'BUENOS AIRES','ROQUE PEREZ');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (67,'BUENOS AIRES','BERNAL OESTE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (68,'BUENOS AIRES','PERGAMINO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (69,'SANTA FE','LAGUNA PAIVA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (70,'BUENOS AIRES','BALCARCE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (71,'BUENOS AIRES','MAR DEL PLATA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (72,'TUCUMAN','CONCEPCION');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (73,'BUENOS AIRES','9 DE ABRIL');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (74,'SANTA FE','SAN JAVIER');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (75,'SAN LUIS','MERLO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (76,'SANTIAGO DEL ESTERO','NUEVA ESPERANZA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (77,'BUENOS AIRES','FLORENCIO VARELA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (78,'CÃ“RDOBA','RIO TERCERO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (79,'SANTA FE','TOTORAS');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (80,'CORRIENTES','ITUZAINGO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (81,'BUENOS AIRES','GENERAL RODRIGUEZ');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (82,'SANTA FE','RAFAELA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (83,'FORMOSA','EL COLORADO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (84,'BUENOS AIRES','GENERAL BELGRANO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (85,'MISIONES','POSADAS');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (86,'TIERRA DEL FUEGO','USHUAIA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (87,'SALTA','SALTA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (88,'BUENOS AIRES','LUJAN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (89,'SAN JUAN','MEDANO DE ORO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (90,'BUENOS AIRES','SANTA TERESITA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (91,'ENTRE RIOS','CONCORDIA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (92,'CORRIENTES','CORRIENTES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (93,'BUENOS AIRES','JUNIN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (94,'LA RIOJA','LA RIOJA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (95,'MENDOZA','SAN RAFAEL');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (96,'CÃ“RDOBA','SANTA MARIA DE PUNILLA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (97,'BUENOS AIRES','CLAYPOLE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (98,'BUENOS AIRES','SAN ANDRES DE GILES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (99,'MENDOZA','TUNUYAN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (100,'ENTRE RIOS','VILLAGUAY ESTE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (101,'CÃ“RDOBA','VILLA ESQUIU');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (102,'ENTRE RIOS','FEDERAL');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (103,'BUENOS AIRES','MERLO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (104,'BUENOS AIRES','MALVINAS ARGENTINAS');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (105,'JUJUY','EL CARMEN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (106,'RIO NEGRO','BARILOCHE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (107,'BUENOS AIRES','TANDIL');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (108,'BUENOS AIRES','BERISSO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (109,'BUENOS AIRES','BARADERO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (110,'BUENOS AIRES','CORONEL DORREGO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (111,'LA PAMPA','GENERAL PICO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (112,'MENDOZA','LUJAN DE CUYO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (113,'CHACO','PRESIDENCIA ROQUE SAENZ PEÃ‘A');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (114,'BUENOS AIRES','VERONICA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (115,'BUENOS AIRES','SAN JUSTO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (116,'MENDOZA','MAIPU');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (117,'CHACO','QUITILIPI');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (118,'SANTIAGO DEL ESTERO','MACO YANDA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (119,'CÃ“RDOBA','CRUZ DEL EJE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (120,'SANTA FE','CAPITAN BERMUDEZ');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (121,'BUENOS AIRES','TRUJUI');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (122,'SANTA FE','ROSARIO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (123,'ENTRE RIOS','CHAJARI');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (124,'CÃ“RDOBA','RIO CEBALLOS');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (125,'CHACO','RESISTENCIA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (126,'CÃ“RDOBA','VILLA MARIA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (127,'SAN JUAN','RIVADAVIA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (128,'SAN JUAN','POCITO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (129,'BUENOS AIRES','LOBOS');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (130,'TUCUMAN','SAN PABLO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (131,'BUENOS AIRES','BERAZATEGUI');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (132,'JUJUY','SAN SALVADOR DE JUJUY');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (133,'CHUBUT','PASO DEL SAPO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (134,'BUENOS AIRES','OLAVARRIA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (135,'BUENOS AIRES','CARLOS CASARES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (136,'CÃ“RDOBA','VILLA GENERAL BELGRANO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (137,'SAN LUIS','VILLA MERCEDES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (138,'MENDOZA','PALMIRA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (139,'CÃ“RDOBA','SAN FRANCISCO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (140,'SANTA FE','ROLDAN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (141,'TUCUMAN','SAN MIGUEL DE TUCUMAN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (142,'BUENOS AIRES','ALEJANDRO KORN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (143,'CATAMARCA','SUMALAO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (144,'BUENOS AIRES','SAN CLEMENTE DEL TUYU');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (145,'BUENOS AIRES','LA PLATA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (146,'TUCUMAN','AGUILARES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (147,'BUENOS AIRES','MAYOR BURATOVICH');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (148,'SANTA FE','SANTO TOME');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (149,'CÃ“RDOBA','SALSIPUEDES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (150,'LA PAMPA','SANTA ROSA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (151,'BUENOS AIRES','VILLA MARTELLI');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (152,'CÃ“RDOBA','ALTA GRACIA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (153,'BUENOS AIRES','LAS FLORES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (154,'MISIONES','SAN VICENTE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (155,'CÃ“RDOBA','RIO CUARTO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (156,'BUENOS AIRES','11 DE SEPTIEMBRE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (157,'CÃ“RDOBA','VICUÃ‘A MACKENNA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (158,'TUCUMAN','BANDA DEL RIO SALI');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (159,'BUENOS AIRES','PONTEVEDRA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (160,'SANTA FE','CERES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (161,'SANTA FE','GOBERNADOR CRESPO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (162,'SANTA FE','VILLA CONSTITUCION');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (163,'BUENOS AIRES','ZARATE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (164,'NEUQUÃ‰N','PLOTTIER');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (165,'BUENOS AIRES','CAMPANA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (166,'SANTA CRUZ','RIO GALLEGOS');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (167,'BUENOS AIRES','DOCK SUD');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (168,'NEUQUÃ‰N','EL PORTON');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (169,'RIO NEGRO','CATRIEL');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (170,'NEUQUÃ‰N','NEUQUEN');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (171,'SALTA','GENERAL GUEMES');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (172,'NEUQUÃ‰N','CUTRAL CO');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (173,'NEUQUÃ‰N','SENILLOSA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (174,'TIERRA DEL FUEGO','RIO GRANDE');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (175,'BUENOS AIRES','BAHIA BLANCA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (176,'NEUQUÃ‰N','PLAZA HUINCUL');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (177,'BUENOS AIRES','ENSENADA');
INSERT INTO empresa (`id_localidad`,`Provincia`,`Localidad`) VALUES (178,'SANTA CRUZ','CAÃ‘ADON SECO');


select * from empresa_categoria;

INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (1,2);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (2,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (3,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (4,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (5,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (6,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (7,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (8,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (9,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (10,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (11,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (12,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (13,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (14,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (15,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (16,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (17,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (18,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (19,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (20,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (21,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (22,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (23,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (24,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (25,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (26,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (27,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (28,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (29,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (30,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (31,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (32,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (33,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (34,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (35,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (36,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (37,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (38,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (39,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (40,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (41,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (42,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (43,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (44,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (45,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (46,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (47,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (48,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (49,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (50,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (51,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (52,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (53,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (54,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (55,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (56,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (57,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (58,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (59,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (60,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (61,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (62,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (63,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (64,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (65,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (66,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (67,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (68,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (69,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (70,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (71,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (72,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (73,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (74,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (75,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (76,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (77,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (78,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (79,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (80,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (81,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (82,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (83,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (84,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (85,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (86,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (87,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (88,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (89,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (90,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (91,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (92,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (93,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (94,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (95,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (96,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (97,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (98,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (99,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (100,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (101,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (102,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (103,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (104,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (105,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (106,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (107,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (108,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (109,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (110,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (111,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (112,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (113,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (114,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (115,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (116,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (117,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (118,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (119,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (120,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (121,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (122,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (123,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (124,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (125,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (126,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (127,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (128,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (129,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (130,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (131,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (132,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (133,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (134,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (135,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (136,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (137,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (138,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (139,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (140,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (141,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (142,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (143,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (144,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (145,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (146,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (147,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (148,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (149,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (150,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (151,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (152,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (153,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (154,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (155,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (156,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (157,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (158,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (159,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (160,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (161,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (162,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (163,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (164,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (165,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (166,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (167,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (168,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (169,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (170,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (171,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (172,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (173,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (174,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (175,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (176,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (177,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (178,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (179,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (180,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (181,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (182,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (183,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (184,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (185,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (186,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (187,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (188,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (189,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (190,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (191,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (192,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (193,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (194,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (195,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (196,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (197,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (198,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (199,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (200,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (201,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (202,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (203,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (204,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (205,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (206,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (207,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (208,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (209,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (210,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (211,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (212,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (213,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (214,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (215,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (216,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (217,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (218,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (219,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (220,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (221,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (222,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (223,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (224,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (225,3);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (226,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (227,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (228,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (229,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (230,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (231,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (232,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (233,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (234,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (235,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (236,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (237,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (238,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (239,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (240,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (241,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (242,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (243,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (244,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (245,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (246,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (247,1);
INSERT INTO empresa_categoria (`id_empresa`,`id_categoria`) VALUES (248,1);


select * from venta;

INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1,2014,1,228,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (3,2014,1,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (4,2014,1,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (6,2014,1,228,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (7,2014,1,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (8,2014,1,228,242,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (9,2014,1,228,235,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (10,2014,1,228,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (12,2014,1,228,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (13,2014,1,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (21,2014,1,228,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (22,2014,1,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (23,2014,1,228,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (25,2014,1,228,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (26,2014,1,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (27,2014,1,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (28,2014,1,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (29,2014,1,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (30,2014,1,228,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (31,2014,1,229,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (33,2014,1,229,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (34,2014,1,229,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (36,2014,1,229,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (37,2014,1,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (39,2014,1,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (40,2014,1,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (41,2014,1,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (42,2014,1,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (43,2014,1,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (46,2014,1,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (50,2014,1,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (53,2014,1,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (54,2014,1,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (55,2014,1,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (56,2014,1,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (57,2014,1,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (58,2014,1,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (61,2014,1,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (62,2014,1,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (63,2014,1,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (64,2014,1,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (65,2014,1,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (66,2014,1,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (72,2014,1,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (73,2014,1,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (74,2014,1,227,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (82,2014,1,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (83,2014,1,230,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (84,2014,1,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (85,2014,1,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (86,2014,1,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (87,2014,1,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (94,2014,1,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (95,2014,1,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (99,2014,1,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (100,2014,1,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (101,2014,1,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (102,2014,1,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (103,2014,1,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (108,2014,1,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (109,2014,1,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (110,2014,1,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (113,2014,1,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (115,2014,1,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (125,2014,1,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (126,2014,1,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (127,2014,1,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (129,2014,1,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (133,2014,1,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (138,2014,1,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (139,2014,1,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (140,2014,1,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (141,2014,1,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (147,2014,1,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (150,2014,1,230,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (151,2014,1,230,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (152,2014,1,230,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (155,2014,1,243,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (158,2014,1,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (159,2014,1,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (160,2014,1,226,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (161,2014,1,226,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (162,2014,1,226,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (163,2014,1,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (164,2014,1,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (165,2014,1,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (166,2014,1,237,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (167,2014,1,237,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (168,2014,1,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (169,2014,1,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (172,2014,1,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (173,2014,1,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (174,2014,1,234,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (177,2014,1,234,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (178,2014,1,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (179,2014,1,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (182,2014,1,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (183,2014,1,234,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (185,2014,1,234,242,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (186,2014,1,234,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (189,2014,1,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (192,2014,1,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (193,2014,1,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (196,2014,1,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (198,2014,1,242,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (199,2014,1,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (201,2014,1,242,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (202,2014,1,242,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (204,2014,1,233,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (205,2014,1,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (207,2014,1,233,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (208,2014,1,233,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (211,2014,1,233,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (212,2014,1,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (213,2014,1,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (214,2014,1,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (217,2014,1,233,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (220,2014,1,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (222,2014,1,233,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (226,2014,1,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (235,2014,1,232,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (237,2014,1,232,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (244,2014,1,238,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (245,2014,1,238,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (246,2014,1,238,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (247,2014,1,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (252,2014,1,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (253,2014,1,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (254,2014,1,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (255,2014,1,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (256,2014,1,238,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (260,2014,1,238,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (262,2014,1,238,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (263,2014,1,238,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (267,2014,1,240,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (268,2014,1,240,235,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (269,2014,1,246,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (272,2014,1,246,99,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (274,2014,1,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (277,2014,1,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (279,2014,1,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (281,2014,1,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (283,2014,1,231,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (287,2014,2,228,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (288,2014,2,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (289,2014,2,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (291,2014,2,228,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (292,2014,2,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (293,2014,2,228,242,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (294,2014,2,228,235,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (295,2014,2,228,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (296,2014,2,228,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (303,2014,2,228,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (304,2014,2,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (305,2014,2,228,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (307,2014,2,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (308,2014,2,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (309,2014,2,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (310,2014,2,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (311,2014,2,228,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (313,2014,2,229,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (315,2014,2,229,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (317,2014,2,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (318,2014,2,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (319,2014,2,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (320,2014,2,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (321,2014,2,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (326,2014,2,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (330,2014,2,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (331,2014,2,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (332,2014,2,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (333,2014,2,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (334,2014,2,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (335,2014,2,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (336,2014,2,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (337,2014,2,227,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (339,2014,2,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (340,2014,2,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (341,2014,2,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (342,2014,2,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (343,2014,2,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (348,2014,2,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (349,2014,2,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (350,2014,2,227,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (356,2014,2,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (357,2014,2,230,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (358,2014,2,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (359,2014,2,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (360,2014,2,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (365,2014,2,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (366,2014,2,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (367,2014,2,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (369,2014,2,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (370,2014,2,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (371,2014,2,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (372,2014,2,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (373,2014,2,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (374,2014,2,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (379,2014,2,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (380,2014,2,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (381,2014,2,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (382,2014,2,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (390,2014,2,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (391,2014,2,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (392,2014,2,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (393,2014,2,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (401,2014,2,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (403,2014,2,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (404,2014,2,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (405,2014,2,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (406,2014,2,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (408,2014,2,230,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (411,2014,2,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (412,2014,2,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (416,2014,2,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (417,2014,2,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (418,2014,2,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (423,2014,2,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (424,2014,2,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (428,2014,2,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (429,2014,2,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (434,2014,2,230,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (435,2014,2,230,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (438,2014,2,243,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (442,2014,2,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (443,2014,2,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (444,2014,2,226,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (445,2014,2,226,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (446,2014,2,226,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (447,2014,2,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (448,2014,2,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (449,2014,2,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (450,2014,2,237,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (451,2014,2,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (452,2014,2,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (454,2014,2,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (455,2014,2,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (456,2014,2,234,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (459,2014,2,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (460,2014,2,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (461,2014,2,234,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (468,2014,2,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (471,2014,2,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (472,2014,2,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (475,2014,2,242,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (477,2014,2,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (483,2014,2,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (485,2014,2,242,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (487,2014,2,242,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (489,2014,2,233,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (490,2014,2,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (495,2014,2,233,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (496,2014,2,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (497,2014,2,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (498,2014,2,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (503,2014,2,233,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (505,2014,2,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (511,2014,2,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (519,2014,2,232,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (521,2014,2,232,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (531,2014,2,238,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (532,2014,2,238,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (533,2014,2,238,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (534,2014,2,238,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (535,2014,2,238,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (536,2014,2,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (537,2014,2,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (546,2014,2,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (547,2014,2,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (548,2014,2,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (549,2014,2,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (550,2014,2,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (551,2014,2,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (552,2014,2,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (553,2014,2,238,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (554,2014,2,238,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (563,2014,2,238,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (564,2014,2,238,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (568,2014,2,240,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (569,2014,2,240,235,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (570,2014,2,240,235,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (571,2014,2,246,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (575,2014,2,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (577,2014,2,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (579,2014,2,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (581,2014,2,231,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (583,2014,3,228,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (585,2014,3,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (587,2014,3,228,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (588,2014,3,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (589,2014,3,228,242,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (590,2014,3,228,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (592,2014,3,228,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (601,2014,3,228,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (602,2014,3,228,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (604,2014,3,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (605,2014,3,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (606,2014,3,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (609,2014,3,229,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (611,2014,3,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (612,2014,3,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (613,2014,3,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (614,2014,3,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (615,2014,3,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (622,2014,3,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (623,2014,3,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (624,2014,3,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (625,2014,3,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (626,2014,3,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (627,2014,3,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (628,2014,3,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (629,2014,3,227,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (630,2014,3,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (631,2014,3,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (632,2014,3,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (633,2014,3,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (636,2014,3,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (637,2014,3,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (638,2014,3,227,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (639,2014,3,230,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (646,2014,3,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (647,2014,3,230,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (648,2014,3,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (649,2014,3,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (650,2014,3,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (651,2014,3,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (659,2014,3,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (660,2014,3,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (663,2014,3,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (664,2014,3,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (665,2014,3,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (666,2014,3,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (667,2014,3,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (668,2014,3,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (673,2014,3,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (674,2014,3,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (675,2014,3,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (676,2014,3,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (682,2014,3,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (683,2014,3,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (684,2014,3,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (685,2014,3,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (694,2014,3,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (695,2014,3,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (698,2014,3,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (699,2014,3,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (700,2014,3,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (703,2014,3,230,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (705,2014,3,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (709,2014,3,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (710,2014,3,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (711,2014,3,230,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (716,2014,3,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (717,2014,3,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (722,2014,3,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (723,2014,3,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (727,2014,3,230,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (728,2014,3,230,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (729,2014,3,230,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (731,2014,3,243,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (734,2014,3,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (735,2014,3,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (736,2014,3,226,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (737,2014,3,226,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (738,2014,3,226,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (739,2014,3,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (740,2014,3,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (741,2014,3,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (742,2014,3,237,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (743,2014,3,237,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (744,2014,3,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (746,2014,3,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (747,2014,3,234,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (750,2014,3,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (752,2014,3,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (753,2014,3,234,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (755,2014,3,234,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (759,2014,3,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (762,2014,3,242,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (763,2014,3,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (764,2014,3,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (766,2014,3,242,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (768,2014,3,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (769,2014,3,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (772,2014,3,242,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (773,2014,3,242,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (775,2014,3,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (777,2014,3,242,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (779,2014,3,242,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (783,2014,3,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (785,2014,3,233,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (788,2014,3,233,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (789,2014,3,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (790,2014,3,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (791,2014,3,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (795,2014,3,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (796,2014,3,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (802,2014,3,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (807,2014,3,235,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (814,2014,3,232,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (824,2014,3,238,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (825,2014,3,238,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (826,2014,3,238,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (827,2014,3,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (833,2014,3,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (834,2014,3,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (835,2014,3,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (836,2014,3,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (839,2014,3,238,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (842,2014,3,238,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (843,2014,3,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (846,2014,3,238,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (847,2014,3,238,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (851,2014,3,238,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (856,2014,3,240,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (860,2014,3,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (863,2014,3,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (865,2014,3,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (867,2014,3,231,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (868,2014,3,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (870,2014,3,231,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (872,2014,4,228,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (874,2014,4,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (875,2014,4,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (876,2014,4,228,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (877,2014,4,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (878,2014,4,228,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (879,2014,4,228,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (886,2014,4,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (887,2014,4,228,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (889,2014,4,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (890,2014,4,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (891,2014,4,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (892,2014,4,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (893,2014,4,228,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (896,2014,4,229,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (897,2014,4,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (898,2014,4,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (899,2014,4,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (900,2014,4,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (901,2014,4,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (902,2014,4,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (907,2014,4,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (908,2014,4,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (909,2014,4,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (911,2014,4,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (912,2014,4,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (913,2014,4,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (914,2014,4,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (915,2014,4,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (916,2014,4,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (917,2014,4,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (918,2014,4,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (919,2014,4,227,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (920,2014,4,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (925,2014,4,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (926,2014,4,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (927,2014,4,227,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (936,2014,4,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (937,2014,4,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (938,2014,4,230,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (939,2014,4,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (940,2014,4,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (941,2014,4,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (949,2014,4,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (950,2014,4,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (951,2014,4,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (954,2014,4,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (955,2014,4,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (956,2014,4,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (957,2014,4,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (958,2014,4,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (959,2014,4,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (961,2014,4,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (974,2014,4,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (975,2014,4,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (976,2014,4,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (979,2014,4,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (980,2014,4,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (982,2014,4,230,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (988,2014,4,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (989,2014,4,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (991,2014,4,230,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (994,2014,4,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (995,2014,4,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (998,2014,4,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (999,2014,4,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1002,2014,4,230,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1003,2014,4,230,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1004,2014,4,230,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1006,2014,4,243,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1010,2014,4,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1011,2014,4,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1012,2014,4,226,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1013,2014,4,226,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1014,2014,4,226,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1015,2014,4,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1016,2014,4,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1017,2014,4,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1019,2014,4,237,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1020,2014,4,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1022,2014,4,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1023,2014,4,234,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1026,2014,4,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1028,2014,4,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1029,2014,4,234,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1034,2014,4,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1037,2014,4,242,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1038,2014,4,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1039,2014,4,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1042,2014,4,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1043,2014,4,242,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1045,2014,4,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1046,2014,4,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1049,2014,4,242,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1050,2014,4,242,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1054,2014,4,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1056,2014,4,242,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1058,2014,4,242,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1061,2014,4,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1062,2014,4,233,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1063,2014,4,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1065,2014,4,233,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1066,2014,4,233,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1067,2014,4,233,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1070,2014,4,233,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1071,2014,4,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1072,2014,4,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1073,2014,4,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1076,2014,4,233,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1080,2014,4,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1081,2014,4,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1087,2014,4,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1088,2014,4,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1089,2014,4,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1090,2014,4,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1092,2014,4,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1093,2014,4,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1112,2014,4,238,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1113,2014,4,238,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1114,2014,4,238,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1115,2014,4,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1121,2014,4,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1122,2014,4,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1123,2014,4,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1124,2014,4,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1125,2014,4,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1128,2014,4,238,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1132,2014,4,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1136,2014,4,238,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1137,2014,4,238,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1138,2014,4,238,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1142,2014,4,238,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1144,2014,4,238,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1145,2014,4,238,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1147,2014,4,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1148,2014,4,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1155,2014,4,246,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1157,2014,4,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1160,2014,4,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1163,2014,4,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1165,2014,4,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1167,2014,4,231,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1169,2014,5,228,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1171,2014,5,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1173,2014,5,228,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1174,2014,5,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1175,2014,5,228,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1176,2014,5,228,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1185,2014,5,228,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1186,2014,5,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1187,2014,5,228,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1189,2014,5,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1190,2014,5,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1191,2014,5,228,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1195,2014,5,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1197,2014,5,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1198,2014,5,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1199,2014,5,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1200,2014,5,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1201,2014,5,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1206,2014,5,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1207,2014,5,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1208,2014,5,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1209,2014,5,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1210,2014,5,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1211,2014,5,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1212,2014,5,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1213,2014,5,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1214,2014,5,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1215,2014,5,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1216,2014,5,227,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1217,2014,5,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1218,2014,5,227,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1219,2014,5,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1220,2014,5,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1221,2014,5,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1222,2014,5,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1223,2014,5,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1231,2014,5,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1232,2014,5,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1233,2014,5,227,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1243,2014,5,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1244,2014,5,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1245,2014,5,230,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1246,2014,5,230,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1247,2014,5,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1248,2014,5,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1249,2014,5,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1250,2014,5,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1251,2014,5,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1259,2014,5,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1260,2014,5,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1261,2014,5,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1264,2014,5,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1265,2014,5,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1266,2014,5,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1267,2014,5,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1269,2014,5,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1270,2014,5,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1272,2014,5,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1279,2014,5,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1280,2014,5,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1281,2014,5,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1287,2014,5,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1294,2014,5,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1295,2014,5,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1296,2014,5,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1298,2014,5,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1299,2014,5,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1300,2014,5,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1302,2014,5,230,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1303,2014,5,230,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1314,2014,5,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1316,2014,5,230,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1322,2014,5,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1326,2014,5,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1328,2014,5,230,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1329,2014,5,230,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1332,2014,5,243,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1335,2014,5,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1336,2014,5,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1337,2014,5,226,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1338,2014,5,226,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1339,2014,5,226,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1340,2014,5,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1342,2014,5,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1343,2014,5,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1345,2014,5,237,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1346,2014,5,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1348,2014,5,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1349,2014,5,234,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1352,2014,5,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1354,2014,5,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1355,2014,5,234,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1357,2014,5,234,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1362,2014,5,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1365,2014,5,242,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1366,2014,5,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1367,2014,5,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1369,2014,5,242,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1370,2014,5,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1371,2014,5,242,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1372,2014,5,242,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1374,2014,5,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1375,2014,5,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1378,2014,5,242,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1379,2014,5,242,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1384,2014,5,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1386,2014,5,242,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1388,2014,5,242,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1390,2014,5,242,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1393,2014,5,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1395,2014,5,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1397,2014,5,233,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1398,2014,5,233,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1402,2014,5,233,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1403,2014,5,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1404,2014,5,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1405,2014,5,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1408,2014,5,233,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1409,2014,5,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1410,2014,5,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1415,2014,5,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1416,2014,5,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1417,2014,5,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1422,2014,5,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1423,2014,5,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1424,2014,5,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1426,2014,5,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1427,2014,5,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1432,2014,5,235,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1440,2014,5,232,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1449,2014,5,238,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1450,2014,5,238,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1451,2014,5,238,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1452,2014,5,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1457,2014,5,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1458,2014,5,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1459,2014,5,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1460,2014,5,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1461,2014,5,238,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1464,2014,5,238,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1466,2014,5,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1469,2014,5,238,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1470,2014,5,238,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1471,2014,5,238,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1476,2014,5,238,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1478,2014,5,238,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1481,2014,5,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1482,2014,5,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1489,2014,5,240,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1491,2014,5,246,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1493,2014,5,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1496,2014,5,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1498,2014,5,231,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1499,2014,5,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1501,2014,5,231,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1503,2014,5,231,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1506,2014,6,228,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1508,2014,6,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1510,2014,6,228,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1511,2014,6,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1512,2014,6,228,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1513,2014,6,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1521,2014,6,228,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1522,2014,6,228,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1524,2014,6,228,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1525,2014,6,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1526,2014,6,228,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1527,2014,6,229,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1530,2014,6,229,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1531,2014,6,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1532,2014,6,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1533,2014,6,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1534,2014,6,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1535,2014,6,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1536,2014,6,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1538,2014,6,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1539,2014,6,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1540,2014,6,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1544,2014,6,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1545,2014,6,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1546,2014,6,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1547,2014,6,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1548,2014,6,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1549,2014,6,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1550,2014,6,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1551,2014,6,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1552,2014,6,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1553,2014,6,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1555,2014,6,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1556,2014,6,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1557,2014,6,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1558,2014,6,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1559,2014,6,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1560,2014,6,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1561,2014,6,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1562,2014,6,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1563,2014,6,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1564,2014,6,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1569,2014,6,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1570,2014,6,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1571,2014,6,227,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1580,2014,6,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1581,2014,6,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1582,2014,6,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1583,2014,6,230,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1584,2014,6,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1585,2014,6,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1586,2014,6,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1587,2014,6,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1588,2014,6,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1589,2014,6,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1590,2014,6,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1597,2014,6,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1598,2014,6,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1599,2014,6,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1601,2014,6,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1602,2014,6,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1603,2014,6,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1604,2014,6,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1605,2014,6,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1606,2014,6,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1607,2014,6,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1609,2014,6,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1615,2014,6,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1619,2014,6,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1625,2014,6,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1626,2014,6,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1627,2014,6,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1631,2014,6,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1632,2014,6,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1633,2014,6,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1634,2014,6,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1635,2014,6,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1638,2014,6,230,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1639,2014,6,230,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1649,2014,6,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1650,2014,6,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1651,2014,6,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1652,2014,6,230,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1664,2014,6,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1665,2014,6,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1667,2014,6,230,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1668,2014,6,230,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1670,2014,6,243,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1674,2014,6,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1675,2014,6,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1676,2014,6,226,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1677,2014,6,226,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1678,2014,6,226,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1679,2014,6,226,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1680,2014,6,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1681,2014,6,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1682,2014,6,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1684,2014,6,237,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1685,2014,6,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1687,2014,6,234,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1690,2014,6,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1692,2014,6,234,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1694,2014,6,234,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1699,2014,6,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1702,2014,6,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1703,2014,6,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1705,2014,6,242,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1706,2014,6,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1707,2014,6,242,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1710,2014,6,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1713,2014,6,242,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1714,2014,6,242,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1717,2014,6,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1719,2014,6,242,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1720,2014,6,242,235,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1723,2014,6,242,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1727,2014,6,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1729,2014,6,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1734,2014,6,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1735,2014,6,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1736,2014,6,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1739,2014,6,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1741,2014,6,233,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1742,2014,6,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1743,2014,6,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1746,2014,6,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1747,2014,6,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1752,2014,6,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1753,2014,6,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1754,2014,6,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1756,2014,6,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1757,2014,6,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1763,2014,6,235,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1784,2014,6,238,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1785,2014,6,238,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1786,2014,6,238,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1787,2014,6,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1792,2014,6,238,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1793,2014,6,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1794,2014,6,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1796,2014,6,238,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1800,2014,6,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1801,2014,6,238,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1806,2014,6,238,230,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1807,2014,6,238,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1808,2014,6,238,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1813,2014,6,238,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1815,2014,6,238,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1818,2014,6,238,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1819,2014,6,238,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1830,2014,6,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1833,2014,6,231,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1835,2014,6,231,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1836,2014,6,231,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1842,2014,7,228,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1844,2014,7,228,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1846,2014,7,228,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1847,2014,7,228,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1848,2014,7,228,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1855,2014,7,228,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1856,2014,7,228,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1862,2014,7,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1863,2014,7,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1864,2014,7,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1865,2014,7,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1867,2014,7,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1868,2014,7,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1869,2014,7,227,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1873,2014,7,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1876,2014,7,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1877,2014,7,227,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1879,2014,7,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1880,2014,7,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1881,2014,7,227,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1882,2014,7,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1883,2014,7,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1884,2014,7,227,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1885,2014,7,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1886,2014,7,227,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1887,2014,7,227,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1888,2014,7,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1889,2014,7,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1890,2014,7,227,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1896,2014,7,227,245,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1897,2014,7,227,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1898,2014,7,227,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1907,2014,7,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1908,2014,7,230,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1909,2014,7,230,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1910,2014,7,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1911,2014,7,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1917,2014,7,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1918,2014,7,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1919,2014,7,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1920,2014,7,230,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1922,2014,7,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1923,2014,7,230,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1924,2014,7,230,36,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1925,2014,7,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1926,2014,7,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1927,2014,7,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1929,2014,7,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1934,2014,7,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1935,2014,7,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1936,2014,7,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1939,2014,7,230,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1940,2014,7,230,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1946,2014,7,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1947,2014,7,230,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1950,2014,7,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1951,2014,7,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1952,2014,7,230,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1953,2014,7,230,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1955,2014,7,230,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1956,2014,7,230,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1961,2014,7,230,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1963,2014,7,230,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1970,2014,7,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1971,2014,7,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1972,2014,7,230,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1974,2014,7,230,238,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1980,2014,7,230,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1983,2014,7,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1984,2014,7,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1985,2014,7,230,157,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1989,2014,7,230,241,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1990,2014,7,230,244,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1992,2014,7,243,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1996,2014,7,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1997,2014,7,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1998,2014,7,226,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (1999,2014,7,226,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2000,2014,7,226,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2001,2014,7,226,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2002,2014,7,226,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2004,2014,7,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2005,2014,7,226,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2007,2014,7,237,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2008,2014,7,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2010,2014,7,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2011,2014,7,234,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2014,2014,7,234,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2016,2014,7,234,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2017,2014,7,234,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2018,2014,7,234,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2021,2014,7,234,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2026,2014,7,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2029,2014,7,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2030,2014,7,242,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2032,2014,7,242,228,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2033,2014,7,242,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2034,2014,7,242,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2037,2014,7,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2038,2014,7,242,48,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2041,2014,7,242,42,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2042,2014,7,242,239,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2044,2014,7,242,247,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2047,2014,7,242,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2049,2014,7,242,248,1,1);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2052,2014,7,242,80,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2056,2014,7,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2062,2014,7,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2063,2014,7,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2064,2014,7,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2068,2014,7,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2070,2014,7,233,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2071,2014,7,233,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2072,2014,7,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2073,2014,7,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2076,2014,7,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2077,2014,7,233,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2082,2014,7,233,122,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2084,2014,7,233,94,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2090,2014,7,235,98,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2094,2014,7,235,66,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2095,2014,7,235,25,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2113,2014,7,238,1,1,2);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2114,2014,7,238,21,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2115,2014,7,238,211,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2116,2014,7,238,129,1,3);
INSERT INTO venta (`id_venta`,`AÃ±o`,`Mes`,`id_empresa_venta`,`id_empresa_compra`,`id_categoria_venta`,`id_categoria_compra`) VALUES (2121,2014,7,238,25,1,3);



ALTER TABLE detalle_venta DROP foreign key id_localidad;
select * from detalle_venta;


INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (1,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',182,1,1);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (2,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',184,1,287);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (3,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',92,1,583);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (4,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',24,1,872);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (5,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',228,1,1169);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (6,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',114,1,1506);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (7,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',182,1,1842);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (8,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',157,1,2172);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (9,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,2187);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (10,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',48,1,2492);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (11,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',120,1,2798);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (12,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,2816);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (13,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',184,1,3106);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (14,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,3122);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (15,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',23,1,3409);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (16,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,3423);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (17,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',203,1,3695);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (18,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,3712);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (19,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',68,1,3997);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (20,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,4012);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (21,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',23,1,4287);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (22,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,4305);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (23,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',160,1,4615);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (24,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',226,1,4946);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (25,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',67,1,5260);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (26,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,5275);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (27,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',369,1,5584);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (28,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,5600);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (29,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',24,1,5988);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (30,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,6003);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (31,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',275,1,6334);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (32,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,6350);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (33,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',137,1,6668);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (34,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,6683);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (35,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',90,1,7023);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (36,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,7036);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (37,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',69,1,7342);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (38,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',135,1,7650);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (39,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,7665);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (40,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',48,1,7917);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (41,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',188,1,8185);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (42,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',93,1,8477);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (43,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,8493);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (44,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',162,1,8801);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (45,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,8815);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (46,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',184,1,9170);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (47,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,9184);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (48,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',248,1,9552);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (49,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,9566);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (50,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',133,1,9929);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (51,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',435,1,10254);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (52,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',44,1,10570);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (53,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,10586);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (54,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',23,1,11149);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (55,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,3);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (56,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,4);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (57,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,288);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (58,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,289);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (59,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,585);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (60,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,874);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (61,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,875);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (62,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,1171);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (63,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',366,1,1508);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (64,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,1844);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (65,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,2174);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (66,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,2493);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (67,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,2800);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (68,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,2817);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (69,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,3108);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (70,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,3697);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (71,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,3999);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (72,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,4289);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (73,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,4617);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (74,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,4948);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (75,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,5261);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (76,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,5585);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (77,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,5586);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (78,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,5989);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (79,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,6336);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (80,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,1,6670);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (81,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,7652);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (82,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,9931);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (83,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,10256);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (84,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,10572);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (85,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',420,1,6);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (86,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',326,1,291);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (87,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',447,1,587);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (88,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',349,1,876);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (89,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',658,1,1173);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (90,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',775,1,1510);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (91,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',650,1,1846);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (92,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',753,1,2176);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (93,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,2188);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (94,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',411,1,2495);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (95,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,2507);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (96,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',362,1,2802);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (97,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,2819);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (98,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',279,1,3109);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (99,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,3123);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (100,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',535,1,3412);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (101,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',317,1,3699);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (102,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,3714);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (103,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',525,1,4001);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (104,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,4014);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (105,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',168,1,4291);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (106,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',453,1,4619);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (107,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',636,1,4950);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (108,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',751,1,5263);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (109,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',854,1,5588);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (110,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',736,1,5991);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (111,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,6005);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (112,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',210,1,6338);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (113,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,6351);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (114,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',490,1,6672);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (115,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',537,1,7025);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (116,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',614,1,7344);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (117,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',310,1,7654);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (118,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',325,1,7920);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (119,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',517,1,8188);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (120,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',219,1,8480);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (121,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,8495);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (122,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',116,1,8804);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (123,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,8817);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (124,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',330,1,9173);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (125,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,9186);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (126,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',387,1,9555);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (127,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,9568);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (128,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',416,1,9933);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (129,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',375,1,10258);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (130,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,10268);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (131,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',353,1,10574);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (132,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',499,1,10872);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (133,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',641,1,11153);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (134,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',482,1,7);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (135,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,22);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (136,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',198,1,292);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (137,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,304);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (138,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',403,1,588);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (139,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',107,1,877);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (140,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,886);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (141,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',705,1,1174);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (142,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,1186);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (143,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',374,1,1511);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (144,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',863,1,1847);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (145,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',624,1,2177);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (146,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',456,1,2496);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (147,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',248,1,2803);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (148,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,2820);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (149,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',90,1,3110);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (150,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,3124);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (151,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',333,1,3413);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (152,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',536,1,3700);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (153,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',92,1,4002);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (154,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',269,1,4292);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (155,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',639,1,4620);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (156,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',131,1,4951);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (157,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1354,1,5264);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (158,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',205,1,5589);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (159,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,5602);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (160,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',347,1,5992);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (161,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',892,1,6339);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (162,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',583,1,6673);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (163,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',542,1,7026);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (164,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',548,1,7655);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (165,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',46,1,7921);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (166,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',411,1,8189);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (167,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',293,1,8481);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (168,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',549,1,8805);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (169,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',386,1,9174);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (170,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',978,1,9556);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (171,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',227,1,9934);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (172,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',432,1,10259);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (173,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',389,1,10575);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (174,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',176,1,10873);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (175,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',265,1,11154);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (176,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,8);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (177,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,293);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (178,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,589);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (179,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,7922);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (180,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,8190);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (181,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,10576);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (182,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,10874);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (183,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,9);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (184,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,294);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (185,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1100,1,10);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (186,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,25);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (187,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1174,1,295);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (188,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',620,1,590);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (189,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',437,1,878);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (190,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1117,1,1175);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (191,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',959,1,1512);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (192,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1043,1,1848);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (193,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1777,1,2178);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (194,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1119,1,2497);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (195,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',721,1,2804);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (196,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,2823);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (197,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',980,1,3111);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (198,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,3128);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (199,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',109,1,3414);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (200,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',627,1,3701);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (201,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',641,1,4003);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (202,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,4018);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (203,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',713,1,4293);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (204,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,4309);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (205,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',939,1,4621);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (206,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1096,1,4952);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (207,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1205,1,5265);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (208,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,5278);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (209,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1382,1,5590);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (210,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,5605);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (211,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1307,1,5993);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (212,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,6008);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (213,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1107,1,6340);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (214,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1121,1,6674);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (215,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',714,1,7027);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (216,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',786,1,7345);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (217,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',623,1,7656);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (218,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1605,1,7923);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (219,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',926,1,8191);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (220,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,8200);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (221,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',158,1,8482);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (222,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1510,1,8806);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (223,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,8819);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (224,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',887,1,9175);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (225,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,9188);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (226,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',886,1,9557);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (227,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,9570);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (228,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1329,1,9935);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (229,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,9946);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (230,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',943,1,10260);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (231,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1125,1,10577);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (232,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',1576,1,10875);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (233,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',581,1,11155);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (234,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,11165);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (235,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,12);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (236,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,296);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (237,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,592);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (238,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,879);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (239,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,1176);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (240,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,2510);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (241,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,2805);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (242,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,2806);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (243,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,3129);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (244,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,4294);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (246,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,26);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (247,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,27);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (248,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,307);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (249,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,308);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (250,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,604);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (251,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,889);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (252,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,890);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (254,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,1524);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (255,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,2192);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (256,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,2193);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (258,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,3427);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (260,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,3719);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (261,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,4310);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (263,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,4634);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (265,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,4964);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (266,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,9947);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (268,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,10271);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (269,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,10589);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (270,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,2,21);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (271,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,2,303);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (272,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',0,2,601);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (273,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',40,2,1185);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (274,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',313,2,1521);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (275,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',62,2,1855);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (276,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',249,2,2186);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (277,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',180,2,2506);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (278,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',60,2,2815);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (279,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',60,2,3121);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (280,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',40,2,3422);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (281,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',63,2,3711);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (282,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',42,2,4011);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (283,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',61,2,4304);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (284,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',65,2,4631);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (285,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',34,2,4961);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (286,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',80,2,5274);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (287,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',243,2,5599);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (288,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',83,2,6002);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (289,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',186,2,6349);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (290,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',147,2,6682);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (291,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',182,2,23);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (292,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',267,2,305);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (293,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',248,2,602);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (294,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',203,2,887);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (295,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',310,2,1187);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (296,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',221,2,1522);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (297,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',261,2,1856);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (298,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',133,2,2189);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (299,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',158,2,2508);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (300,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',158,2,2821);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (301,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',304,2,3125);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (302,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',179,2,3424);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (303,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',203,2,3715);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (304,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',269,2,4016);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (305,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',250,2,4307);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (306,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',180,2,4632);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (307,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',271,2,4962);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (308,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',110,2,5276);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (309,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',45,2,5603);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (310,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',178,2,6006);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (311,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',271,2,6352);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (312,'PLANTA CONDOR, SANTA CRUZ |Oper:Petrobras Argentina S.A.| ',106,2,6684);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (313,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,28);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (314,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,29);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (315,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,309);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (316,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,310);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (317,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,605);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (318,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,606);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (319,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,891);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (320,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,892);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (321,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,1189);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (322,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,1190);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (323,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,1525);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (324,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,1526);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (325,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,2194);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (326,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,2195);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (327,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,2511);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (328,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,2825);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (329,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,2826);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (330,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,3130);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (331,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,3131);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (332,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,3428);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (333,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,3429);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (334,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,3720);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (335,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,3721);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (336,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,4311);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (337,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,4312);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (338,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,4635);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (339,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,4636);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (340,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,4965);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (341,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,4966);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (342,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,6010);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (343,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,6011);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (344,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,6354);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (345,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,6355);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (346,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,6686);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (347,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,6687);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (348,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,7039);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (349,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,7040);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (350,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,7352);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (351,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,7353);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (352,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,7667);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (353,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,7668);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (354,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,7932);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (355,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,7933);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (356,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,8201);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (357,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,8202);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (358,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,8497);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (359,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,8498);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (360,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,8820);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (361,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,8821);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (362,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,9191);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (363,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,9192);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (364,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,9572);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (365,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,9573);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (366,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,9948);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (367,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,9949);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (368,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,10272);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (369,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,10273);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (370,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,10590);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (371,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,10591);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (372,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,10884);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (373,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,10885);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (374,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,11151);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (375,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,11167);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (376,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,11168);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (377,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,30);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (378,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,311);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (379,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,893);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (380,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,1191);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (381,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,3430);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (382,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,3722);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (383,'PUERTO GENERAL SAN MARTIN, SANTA FE |Oper:Petrobras Argentina S.A.| ',0,4,4967);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (384,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,4968);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (385,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,6012);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (386,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,6356);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (387,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,7934);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (388,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,8203);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (389,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,9574);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (390,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,9950);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (391,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,10592);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (392,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,4,11169);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (393,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',45,1,8800);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (394,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,3718);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (395,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,2,5607);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (396,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,8484);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (397,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,8807);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (398,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,9176);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (399,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,9558);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (400,'REF BAHIA BLANCA |Oper:Petrobras Argentina S.A.| ',0,1,9936);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (401,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',714,1,86);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (402,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',46,1,87);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (403,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',47,3,110);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (404,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',429,1,360);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (405,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',92,3,382);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (406,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',22,2,406);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (407,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',619,1,650);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (408,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',92,1,651);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (409,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',47,3,676);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (410,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',45,2,700);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (411,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',735,1,941);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (412,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',65,2,980);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (413,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',69,1,1250);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (414,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',795,1,1251);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (415,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',64,3,1281);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (416,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',21,2,1300);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (417,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',44,1,1588);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (418,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',24,1,1589);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (419,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',850,1,1590);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (420,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',22,2,1634);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (421,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',22,2,1635);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (422,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',1024,1,1911);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (423,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',89,3,1936);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (424,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',66,2,1953);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (425,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',983,1,2254);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (426,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',43,1,2255);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (427,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',47,3,2279);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (428,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',727,1,2571);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (429,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',692,1,2881);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (430,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',45,2,2915);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (431,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',569,1,3184);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (432,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',43,2,3217);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (433,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',22,2,3218);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (434,'BELGRANO, LA MATANZA |Oper:YPF SOCIEDAD ANONIMA| ',20,2,3219);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (435,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',123,1,3487);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (436,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',276,1,3488);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (437,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,3,3513);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (438,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',107,2,3536);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (439,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',43,2,3537);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (440,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,2,3538);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (441,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',409,1,3778);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (442,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',142,1,3779);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (443,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',23,2,3826);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (444,'BELGRANO, LA MATANZA |Oper:YPF SOCIEDAD ANONIMA| ',43,2,3827);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (445,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',478,1,4081);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (446,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4082);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (447,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',93,3,4104);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (448,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',23,2,4124);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (449,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',22,2,4125);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (450,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',22,2,4126);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (451,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',453,1,4378);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (452,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',48,1,4379);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (453,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',135,3,4405);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (454,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',42,2,4429);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (455,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',22,2,4430);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (456,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',117,1,4699);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (457,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4700);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (458,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',608,1,4701);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (459,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,4749);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (460,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',903,1,5027);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (461,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',23,1,5028);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (462,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,5063);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (463,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',1141,1,5331);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (464,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,5377);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (465,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,5378);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (466,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',134,1,5672);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (467,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',890,1,5673);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (468,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',46,1,5674);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (469,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',69,3,5720);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (470,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,5740);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (471,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,2,5741);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (472,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',903,1,6072);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (473,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',93,3,6100);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (474,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',753,1,6415);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (475,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',93,3,6438);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (476,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,6459);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (477,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',712,1,6766);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (478,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',44,1,6767);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (479,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',161,3,6795);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (480,'BELGRANO, LA MATANZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,6814);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (481,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,6815);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (482,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',789,1,7106);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (483,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,3,7130);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (484,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,7147);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (485,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',545,1,7423);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (486,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,7424);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (487,'BELGRANO, LA MATANZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,7465);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (488,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,7466);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (489,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',610,1,7733);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (490,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,7765);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (491,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',497,1,7998);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (492,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',114,3,8018);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (493,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',652,1,8263);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (494,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',545,1,8562);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (495,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',92,3,8585);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (496,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,8601);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (497,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',166,1,8884);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (498,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',771,1,8885);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (499,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',115,3,8910);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (500,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,8931);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (501,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',68,1,9261);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (502,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',914,1,9262);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (503,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',118,1,9263);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (504,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',69,3,9290);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (505,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,9312);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (506,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,9313);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (507,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',46,1,9648);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (508,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',116,1,9649);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (509,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',377,1,9650);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (510,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',165,1,9651);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (511,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',18,1,9652);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (512,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',245,3,9685);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (513,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,9713);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (514,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,9714);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (515,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',112,1,9998);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (516,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',92,1,9999);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (517,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',571,1,10000);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (518,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',70,1,10001);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (519,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,3,10030);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (520,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',948,1,10332);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (521,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,10364);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (522,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',1032,1,10655);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (523,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',69,3,10675);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (524,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,10687);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (525,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',870,1,10943);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (526,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,3,10962);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (527,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,10974);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (528,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',388,1,11226);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (529,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,11256);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (530,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',363,1,11519);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (531,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',181,3,11542);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (532,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,11560);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (533,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',513,1,11785);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (534,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',68,3,11807);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (535,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',632,1,12028);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (536,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',45,3,12057);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (537,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',527,1,12320);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (538,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,3,12347);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (539,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,12367);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (540,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',549,1,12623);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (541,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',45,1,12624);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (542,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,12676);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (543,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',23,1,12941);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (544,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',545,1,12942);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (545,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',459,3,12975);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (546,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13005);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (547,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',45,1,13269);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (548,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',454,1,13270);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (549,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',116,1,13271);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (550,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',22,3,13307);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (551,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13324);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (552,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13325);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (553,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',207,1,13571);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (554,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',93,1,13572);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (555,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',114,3,13600);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (556,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',390,1,13869);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (557,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,1,13870);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (558,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',68,3,13900);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (559,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13914);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (560,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',251,1,14145);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (561,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',23,1,14146);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (562,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',110,1,14147);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (563,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',137,3,14184);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (564,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,14212);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (565,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',495,1,14458);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (566,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,14502);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (567,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',519,1,14744);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (568,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,14784);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (569,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,14785);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (570,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',317,1,15018);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (571,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',68,3,15044);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (572,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,15063);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (573,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,15064);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (574,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',342,1,15285);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (575,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,3,15308);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (576,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,15328);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (577,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',343,1,15545);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (578,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',22,3,15572);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (579,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,15593);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (580,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',524,1,15793);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (581,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',46,3,15815);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (582,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,15836);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (583,'BELGRANO, LA MATANZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,15837);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (584,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',481,1,16074);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (585,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',161,3,16096);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (586,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,16116);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (587,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',638,1,16371);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (588,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',203,3,16397);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (589,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,16426);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (590,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',591,1,16682);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (591,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',413,3,16707);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (592,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,16733);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (593,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,16734);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (594,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',481,1,16973);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (595,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',161,3,16998);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (596,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',384,1,17261);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (597,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',91,3,17282);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (598,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,17301);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (599,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',593,1,17529);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (600,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,3,17551);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (601,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,17571);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (602,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,17572);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (603,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',361,1,17811);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (604,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',204,3,17838);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (605,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,17863);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (606,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,17864);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (607,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',496,1,18093);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (608,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,18129);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (609,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',388,1,18350);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (610,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',90,3,18373);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (611,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,18396);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (612,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,18397);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (613,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',365,1,18603);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (614,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',160,3,18628);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (615,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',390,1,18859);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (616,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',394,3,18882);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (617,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',480,1,19122);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (618,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',46,1,19123);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (619,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',91,1,19124);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (620,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',486,3,19160);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (621,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,19176);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (622,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',411,1,19405);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (623,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',69,1,19406);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (624,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',389,3,19435);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (625,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',68,1,19690);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (626,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',573,1,19691);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (627,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',523,3,19725);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (628,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',993,1,19992);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (629,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',22,1,19993);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (630,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',419,3,20023);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (631,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,20040);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (632,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',914,1,20278);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (633,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',21,3,20308);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (634,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,20321);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (635,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',505,1,20540);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (636,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,3,20562);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (637,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,20578);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (638,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',710,1,20807);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (639,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,20848);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (640,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',752,1,21074);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (641,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,21110);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (642,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',986,1,21331);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (643,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,21373);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (644,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,21374);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (645,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',564,1,21598);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (646,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',68,1,21599);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (647,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',95,1,21600);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (648,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,21638);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (649,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',569,1,21846);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (650,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',190,1,21847);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (651,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,21887);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (652,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',616,1,22100);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (653,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',420,1,22101);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (654,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',318,1,22355);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (655,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',135,1,22356);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (656,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',330,1,22357);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (657,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',274,1,22358);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (658,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',0,2,22406);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (659,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',23,1,22642);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (660,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',211,1,22643);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (661,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',139,1,22644);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (662,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',462,1,22645);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (663,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',69,1,22913);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (664,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',734,1,22914);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (665,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',324,1,22915);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (666,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',1093,1,23171);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (667,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',577,1,23172);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (668,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',23,1,23173);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (669,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,23222);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (670,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',138,1,23430);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (671,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',297,1,23431);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (672,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',775,1,23432);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (673,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',411,1,23690);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (674,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',46,1,23691);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (675,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',402,1,23692);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (676,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',251,1,23693);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (677,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',45,1,23961);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (678,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',48,1,23962);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (679,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',612,1,23963);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (680,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',342,1,24228);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (681,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',69,1,24229);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (682,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',138,3,24267);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (683,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,24296);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (684,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',23,1,24510);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (685,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,24547);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (686,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,24548);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (687,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',278,1,24765);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (688,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',570,1,24766);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (689,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,24802);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (690,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,24803);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (691,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',277,1,25009);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (692,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',24,1,25010);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (693,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',456,1,25011);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (694,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,25047);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (695,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',69,1,25243);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (696,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',481,1,25244);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (697,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',567,1,25484);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (698,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',912,1,25728);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (699,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',274,1,25729);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (700,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,25768);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (701,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',621,1,25991);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (702,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',592,1,25992);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (703,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,26044);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (704,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',92,1,26262);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (705,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',481,1,26263);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (706,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',550,1,26264);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (707,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,26326);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (708,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',91,1,26551);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (709,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',459,1,26552);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (710,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',656,3,26584);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (711,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,26611);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (712,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',757,1,26836);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (713,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,26874);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (714,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',410,1,27089);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (715,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',164,1,27090);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (716,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,27130);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (717,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,27131);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (718,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',610,1,27345);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (719,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',23,1,27346);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (720,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,27387);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (721,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',138,1,27595);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (722,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,27635);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (723,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,27636);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (724,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,94);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (725,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,95);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (726,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,365);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (727,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,366);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (728,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,367);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (729,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,659);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (730,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,660);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (731,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,949);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (732,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,950);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (733,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,951);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (734,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1259);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (735,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1260);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (736,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1261);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (737,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1597);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (738,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1598);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (739,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1599);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (740,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1917);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (741,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1918);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (742,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1919);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (743,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,2,1961);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (744,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,2261);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (745,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,2262);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (746,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,2263);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (747,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,2,2305);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (748,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,2577);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (749,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,2578);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (750,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,2887);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (751,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,2888);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (752,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,2889);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (753,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,3190);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (754,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,3191);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (755,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,3192);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (756,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,3496);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (757,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,3497);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (758,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,3498);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (759,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,3784);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (760,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,3785);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (761,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4087);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (762,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4088);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (763,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4089);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (764,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4385);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (765,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4386);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (766,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4387);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (767,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4708);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (768,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,4709);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (769,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,5034);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (770,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,5035);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (771,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,5036);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (772,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,5337);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (773,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,5338);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (774,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,5339);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (775,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,5687);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (776,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,5688);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (777,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,5689);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (778,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,5724);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (779,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,6078);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (780,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,6079);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (781,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,6080);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (782,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,6421);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (783,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,6422);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (784,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,6774);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (785,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,7112);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (786,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,7113);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (787,'CENTENARIO, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,7430);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (788,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,7739);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (789,'COMPLEJOS CERRI - BAHIA BLANCA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,8004);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (790,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,8568);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (791,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,8894);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (792,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,9269);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (793,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,9658);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (794,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,10007);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (795,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,10340);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (796,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,10661);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (797,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,10949);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (798,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,11234);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (799,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,11546);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (800,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,11547);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (801,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,11811);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (802,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,12035);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (803,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,12036);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (804,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,12351);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (805,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,12633);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (806,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,12634);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (807,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,12684);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (808,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,12951);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (809,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,13280);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (810,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,13281);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (811,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,13332);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (812,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,13580);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (813,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,13581);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (814,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,13880);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (815,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,13881);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (816,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,14155);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (817,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,14156);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (818,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,14217);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (819,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,14218);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (820,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,14465);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (821,'LOMA NEGRA, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,1,14466);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (822,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,14768);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (823,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,15313);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (824,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,15577);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (825,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,15820);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (826,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,16101);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (827,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,16404);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (828,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,16689);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (829,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,17005);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (830,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,17006);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (831,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,17286);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (832,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,17287);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (833,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,17555);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (834,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,17556);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (835,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,1,17818);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (836,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,1,17819);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (837,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,18632);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (838,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,18885);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (839,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,19163);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (840,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,19164);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (841,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,19165);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (842,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,19440);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (843,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,19731);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (844,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,19732);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (845,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,20026);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (846,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,20027);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (847,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,20310);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (848,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,20311);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (849,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,20312);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (850,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,20565);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (851,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,20566);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (852,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,20567);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (853,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,20832);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (854,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,20833);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (855,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,21095);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (856,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,21096);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (857,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,21356);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (858,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,3,21357);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (859,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,21358);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (860,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,21626);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (861,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,21876);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (862,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,2,21893);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (863,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,22128);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (864,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,22129);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (865,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,22392);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (866,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,22393);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (867,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,22682);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (868,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,22683);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (869,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,22951);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (870,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,22952);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (871,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,22968);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (872,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,2,22969);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (873,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,23207);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (874,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,23467);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (875,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,23735);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (876,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,24273);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (877,'SAN SEBASTIAN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,24536);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (878,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,24537);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (879,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,24792);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (880,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,25036);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (881,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,25269);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (882,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,25507);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (883,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,25756);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (884,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,26030);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (885,'SAN SEBASTIAN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,26031);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (886,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,26032);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (887,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,26302);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (888,'SAN SEBASTIAN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,26303);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (889,'SAN SEBASTIAN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,26588);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (890,'SAN SEBASTIAN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,26866);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (891,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,26867);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (892,'SAN SEBASTIAN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,27117);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (893,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,27118);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (894,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,27136);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (895,'SAN SEBASTIAN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,27375);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (896,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,27376);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (897,'SAN SEBASTIAN |Oper:YPF SOCIEDAD ANONIMA| ',0,3,27625);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (898,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,3,27626);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (899,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,27640);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (900,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,1,1920);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (901,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',114,1,8896);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (902,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',141,3,8915);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (903,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,3,9692);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (904,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',139,1,11527);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (905,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',71,3,11548);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (906,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',212,1,11792);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (907,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',142,1,12038);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (908,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',94,3,12061);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (909,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',188,1,12328);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (910,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',46,3,12352);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (911,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',326,1,12636);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (912,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',70,3,12659);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (913,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',488,1,12953);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (914,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',582,3,12981);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (915,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13013);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (916,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13014);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (917,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',94,1,13284);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (918,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',46,3,13310);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (919,'EL PORTON, NEUQUEN |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13333);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (920,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13334);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (921,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13335);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (922,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13336);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (923,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',282,1,13583);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (924,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',94,3,13605);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (925,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,13626);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (926,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',189,1,13883);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (927,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',142,3,13903);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (928,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13924);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (929,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,13925);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (930,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',23,1,14159);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (931,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',230,1,14160);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (932,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',186,3,14193);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (933,'LUJAN DE CUYO, MENDOZA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,14219);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (934,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',139,1,14468);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (935,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',237,3,14487);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (936,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,14510);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (937,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,14511);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (938,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',327,3,14769);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (939,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,14791);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (940,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',136,1,15026);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (941,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',48,3,15049);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (942,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,15068);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (943,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,15069);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (944,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',0,2,15070);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (945,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',94,1,15293);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (946,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',141,3,15314);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (947,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',24,1,15554);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (948,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',282,3,15578);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (949,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,15598);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (950,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',282,3,15821);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (951,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',372,3,16102);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (952,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',492,3,16406);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (953,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,16434);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (954,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',585,3,16714);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (955,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,16742);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (956,'LOMA NEGRA, NEUQUEN |Oper:YSUR ENERGÃA ARGENTINA S.R.L. | ',0,2,16743);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (957,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',374,3,17008);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (958,'ESTACION FERNANDEZ ORO |Oper:YPF SOCIEDAD ANONIMA| ',0,2,17031);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (959,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',355,1,17268);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (960,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',280,1,17536);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (961,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',207,1,17822);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (962,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',91,3,17844);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (963,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',296,1,18100);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (964,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',161,1,18358);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (965,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',45,3,18380);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (966,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',184,1,18611);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (967,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',46,3,18633);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (968,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',372,1,18866);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (969,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',24,1,19135);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (970,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',316,1,19136);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (971,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',208,1,19414);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (972,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',299,3,19441);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (973,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',45,1,19701);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (974,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',163,1,19702);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (975,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',349,3,19733);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (976,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',374,1,20000);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (977,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',257,3,20028);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (978,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',493,1,20284);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (979,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',303,1,20545);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (980,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',11,1,20812);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (981,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',239,1,20813);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (982,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',46,3,20834);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (983,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',306,1,21079);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (984,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',324,1,21336);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (985,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',305,1,21606);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (986,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',307,1,21855);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (987,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',304,1,22107);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (988,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',47,1,22368);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (989,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',454,1,22369);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (990,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',593,1,22655);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (991,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',24,1,22656);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (992,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',94,1,22926);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (993,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',589,1,22927);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (994,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',580,1,23182);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (995,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',285,1,23183);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (996,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',501,1,23442);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (997,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',241,1,23443);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (998,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',329,1,23705);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (999,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',260,1,23706);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (1000,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',24,1,23707);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (1001,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',0,2,23752);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (1002,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',94,1,23976);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (1003,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',71,1,23977);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (1004,'DOCK SUD |Oper:YPF SOCIEDAD ANONIMA| ',72,1,23978);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (1005,'REFINERIA MONTE CRISTO |Oper:YPF SOCIEDAD ANONIMA| ',144,1,23979);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (1006,'SAN LORENZO, SANTA FE |Oper:YPF SOCIEDAD ANONIMA| ',47,1,24239);
INSERT INTO detalle_venta (`id_detalle_venta`,`Planta_carga`,`Volumen`,`id_producto`,`id_venta`) VALUES (1007,'REFINERIA LA PLATA |Oper:YPF SOCIEDAD ANONIMA| ',167,1,24240);


/* 3. Creación de Vistas */

/* 3.1 Volumen vendido por producto, por año */

create view productos as 
	(select 
		prod.id_producto, 
		prod.Tipo_producto 
	from producto prod);
    
create view ventas_años as 
	(select 
		vent.id_venta, 
		vent.Año,
        vent.id_empresa_venta
	from venta vent);
    
create view detalles_ventas_años as 
	(select 
		det.id_detalle_venta, 
		det.Volumen,
        det.id_producto,
        det.id_venta
	from detalle_venta det);

create view detalles_ventas_en_años as
	(select id_detalle_venta, Volumen, id_producto, g.id_venta, Año
	from detalles_ventas_años p inner join ventas_años g on (p.id_venta = g.id_venta));

create view detalles_ventas_en_años_productos as
	(select  Volumen,  Año, Tipo_producto
		from detalles_ventas_en_años p inner join productos g on (p.id_producto = g.id_producto));

create view ventas_por_año as
	(select Año, Tipo_producto, sum(Volumen) as 'Volumen_total'
	from detalles_ventas_en_años_productos
	group by Año, Tipo_producto);
    

/* 3.2 Cantidad de empresas por categoria */

create view detalle_empresa_categoria as 
	(select  g.id_categoria,  Actividad_principal, id_empresa
			from categoria p inner join empresa_categoria g on (p.id_categoria = g.id_categoria));

create view cantidad_empresas_categoria as 
	(select Actividad_principal, count(*) as 'Cantidad_empresas'
	from detalle_empresa_categoria
	group by id_categoria);
    

/* 3.3 Empresas con mas ventas por año */

select * from ventas_años;

create view ventas_empresa_año as
	(select   Año, id_venta, Razon_social 
	from ventas_años p inner join empresa g on (p.id_empresa_venta = g.id_empresa));
 
 
create view cantidad_ventas_empresa as
	(select Año, Razon_social, count(*) as 'Cantidad_ventas_empresas'
		from ventas_empresa_año
		group by Año, Razon_social
        order by  Año, Cantidad_ventas_empresas desc);
        
select * from cantidad_ventas_empresa;


/* 3.4 Empresas de la provincia de Córdoba */

create view empresas_cordoba as
	(select   Razon_social, Provincia
	from empresa p inner join localidad g on (p.id_localidad = g.id_localidad)
	where Provincia like 'cordoba');


/* 3.5 Localidad con mas empresas */

create view empresas_por_localidad as
	(select   p.Localidad, Razon_social
	from empresa p inner join localidad g on (p.id_localidad = g.id_localidad));
    
create view cantidad_empresas_por_localidad as
	(select Localidad, count(*) as 'Cantidad_empresas_localidad'
	from empresas_por_localidad
	group by Localidad
	order by  Cantidad_empresas_localidad desc);
    
select * from cantidad_empresas_por_localidad
where Cantidad_empresas_localidad > 1;



/* 4. Funciones */


/* 4.1 Funcion para seleccionar empresa y descubrir actividad principal vinculada a la misma */

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `empresas_categoria`(empresa VARCHAR(50)) RETURNS char(255) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	declare categoria char(255);
    set categoria = ifnull((select  Actividad_principal
			from detalle_razon_social_categoria p inner join categoria g on (p.id_categoria = g.id_categoria) 
            where p.Razon_social like CONCAT("%",empresa,"%")), 'Empresa no Existente');
RETURN categoria;
END
*/

select empresas_categoria('ecogas') as Categoria_Empresa;

/* Calculo del monto de la venta (ingreso) - Precio con IVA y Volumen de la venta*/

/* 4.2 Funcion para calcular el monto de una venta */
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `calculo_ingreso`(precio_con_iva INT, volumen int) RETURNS int
    NO SQL
BEGIN
	DECLARE ingreso FLOAT;
    SET ingreso = (precio_con_iva*volumen);
RETURN ingreso;
END
*/

select calculo_ingreso(170, 5000) AS Monto_venta;



/* 5. Stored Procedures */

/* 5.1 El primer store procedure permite ordenar la vista 'cantidad de venta por empresa' por cada campo y 
elegir el orden (asc para orden ascendente y desc para un ordenamiento descendente) */

call ordenar_ventas_empresas('Año, Cantidad_ventas_empresas', 'asc'); 

/* script primer store procedure
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_precios`()
BEGIN
    set @actualizar = 'update sector_glp_argentina.producto  set Precio_sin_iva = Precio_sin_iva * 1.47, Precio_con_iva = Precio_con_iva * 1.47';
    prepare runSQL from @actualizar;
    execute runSQL;
    deallocate prepare runSQL;
END
*/

/* 5.2 El segundo store procedure permite actualizar los precios con y sin iva de los producto, 
con la inflación acumulada del primer semestre del año */

call actualizar_precios();

select * from sector_glp_argentina.producto;

/* script segundo store procedure
CREATE DEFINER=`root`@`localhost` PROCEDURE `ordenar_ventas_empresas`(IN campo CHAR(50), IN orden CHAR(20))
BEGIN
	if campo <> '' then
		set @orden_ventas = concat('ORDER BY ', campo, ' ', orden);
	else
		set @orden_ventas = '';
	end if;
    set @ventas = concat('SELECT * FROM sector_glp_argentina.ventas_empresa ', @orden_ventas);
    prepare runSQL from @ventas;
    execute runSQL;
    deallocate prepare runSQL;
END
*/


/* 6. Triggers */


/* 6.1 Creacion sentencia Before y After en la Tabla Venta */

/*  6.1.1 Tabla para registrar los movimientos de delete realizados en la tabla venta [BEFORE] */

create table DEL_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger DEL_BEF_venta
before delete on venta
for each row
insert into DEL_venta_movimiento
values (current_date(), current_time(), user());

/* 6.1.2 Tabla para registrar los movimientos de insert realizados en la tabla venta [AFTER] */

create table INS_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger INS_AFT_venta
after insert on venta
for each row
insert into INS_venta_movimiento
values (current_date(), current_time(), user());

select * from sector_glp_argentina.venta where id_venta = 50;

insert into venta
values( 200000 , 2019, 12, 200, 148, 1, 2);

delete from venta
where id_venta = 200000;

select * from INS_venta_movimiento;

select * from DEL_venta_movimiento;

/* 6.2 Creacion sentencia Before y After en la Tabla Detalle Venta */

/* 6.2.1 Tabla para registrar los movimientos de delete realizados en la tabla Detalle venta [BEFORE] */

create table DEL_det_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger DEL_BEF_det_venta
before delete on detalle_venta
for each row
insert into DEL_det_venta_movimiento
values (current_date(), current_time(), user());

/* 6.2.2 Tabla para registrar los movimientos de insert realizados en la tabla venta [AFTER] */

create table INS_det_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger INS_AFT_det_venta
after insert on detalle_venta
for each row
insert into INS_det_venta_movimiento
values (current_date(), current_time(), user());

select * from sector_glp_argentina.detalle_venta where id_detalle_venta = 50;

insert into detalle_venta
values( 200000 , 'El barrio mas popular', 5000, 4, 5000);

delete from detalle_venta
where id_detalle_venta = 200000;

select * from INS_det_venta_movimiento;

select * from DEL_det_venta_movimiento;


/* 7. Usuarios */

/* 7.1 Creación de usuario con permiso de solo lectura, y sin clave de acceso */

/* Se crea el usuario de solo lectura con el nombre de 'read_only' */
CREATE USER read_only@localhost;

select * from mysql.user where user='read_only';
show grants for read_only@localhost;

/* Se otorga solo permiso de consulta al usuario 'read_only' en todo el schema 'sector_glp_argentina' */

GRANT select ON sector_glp_argentina.* TO read_only@localhost;

/* 7.2 Creación de usuario con permiso de edición y con clave de acceso */

/* Se crea el usuario 'full_user' con posibilidad las siguientes posibilidades: lectura de datos, inserción y modificación*/
CREATE USER full_user@localhost IDENTIFIED BY 'ABCde12345';

select * from mysql.user where user='full_user';
show grants for full_user@localhost;

/* Se otorga solo permiso de consulta, inserción y modificación al usuario 'full_user' en todas las tablas del schema 'sector_glp_argentina' */

GRANT select, insert, update ON sector_glp_argentina.* TO full_user@localhost;


/* 8. TCL */

/* 8.1 Script para eliminar un registro de la tabla empresas */

/*Seteamos el autocommit en 0 para poder editar */
SELECT @@AUTOCOMMIT;

SET SQL_SAFE_UPDATES = 0;

/* 8.1.1 Script para insertar datos en la tabla venta y luego hacemos commit del cambio */

START TRANSACTION;
	insert into venta
    values ( NULL, 2022, 07, 170, 50, 1, 3);
ROLLBACK;
COMMIT;

select * from sector_glp_argentina.venta WHERE Año = 2022 and mes = 07;

/* 8.2 Script para insertar datos en la tabla detalle venta y luego hacer un savepoint de los primeros 4 datos insertador */

START TRANSACTION;
	insert into detalle_venta values ( NULL, 'LOS PATOS', 500, 1, 20000);
    insert into detalle_venta values ( NULL, 'USPALLATA', 756, 3, 20001);
	insert into detalle_venta values ( NULL, 'MALARGÜE', 956, 2, 20002);
	insert into detalle_venta values ( NULL, 'SAN RAFAEL', 896, 2, 20003);
    savepoint carga_1;
	insert into detalle_venta values ( NULL, 'MENDOZA', 987, 1, 20004);
    insert into detalle_venta values ( NULL, 'GODOY CRUZ', 754, 2, 20005);
	insert into detalle_venta values ( NULL, 'LAS FLORES', 357, 3, 20006);
	insert into detalle_venta values ( NULL, 'JUNIN', 581, 3, 20007);
    savepoint carga_2;
ROLLBACK TO carga_1;
COMMIT;