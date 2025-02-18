#*******************************************************************************************
#	CREACIÓN Y USO DE LA BASE DE DATOS 'DatosConcello'
#*******************************************************************************************
DROP DATABASE IF EXISTS DatosConcello;
CREATE DATABASE DatosConcello;
USE	DatosConcello;
#*******************************************************************************************
#	CREACIÓN DE LA TABLA DE LA BASE DE DATOS
# 		No te olvides de los Constraint de Clave Primaria, Clave Única y comprobar que la superficie no sea nula, vacía ni negativa
#		No te olvides de crear un índice del campo Nombre
#*******************************************************************************************
CREATE TABLE datos(
Concello 			int,
Nombre				varchar(40),
Superficie			double,
Mujeres				int,
Hombres				int,
Comarca				varchar(40),
Provincia			varchar(40) 
);

Alter table datos 	modify 	Concello 	int 			NOT NULL,
					modify	Nombre		varchar	(40)	NOT NULL,
					modify	Superficie	double			NOT NULL,
					modify	Mujeres		int				NOT NULL,
                    modify	Hombres		int				NOT NULL,
                    modify	Comarca		varchar	(30)	NOT NULL,
                    modify	Provincia 	varchar	(30)	NOT NULL;
                    
Alter table datos   add constraint PK_Datos 	PRIMARY KEY (Concello),
					modify nombre varchar(40) 	UNIQUE;
                    
Alter table datos	add constraint Comprobar_Concello_Mayor_Cero 	CHECK(Concello>0),
					add constraint Comprobar_Nombre_NN 				CHECK(Nombre!= null),
					add constraint Comprobar_Superficie_Mayor_Cero 	CHECK(Superficie>0),
                    add constraint Comprobar_Mujeres_Mayor_Cero 	CHECK(Mujeres>0),
					add constraint Comprobar_Hombres_Mayor_Cero 	CHECK(Hombres>0),
                    add constraint Comprobar_Comarca_NN 			CHECK(Comarca!=null),
                    add constraint Comprobar_Provincia_NN 			CHECK(Provincia!=null);
				
/*
-- Query: select * from DatosConcello
*/

#------------------------------------------------------------------------------------------------
#  1. Modifica estos INSERT de los Concellos para permitir la incorporación de todos los datos asociados.
#	Recuerda emplear TODAS las formas de agregar datos.
#------------------------------------------------------------------------------------------------
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1000,'Arzúa',155.48,2983,2981,'Arzúa','A Coruña');

# INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1001,'Boimorto',82.34,971,972,'Arzúa','A Coruña');
INSERT INTO datos VALUES (1001,'Boimorto',82.34,971,972,'Arzúa','A Coruña');

# INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1002,'O Pino',132.15,2290,2349,'Arzúa','A Coruña');
# INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1003,'Touro',115.34,1765,1730,'Arzúa','A Coruña');
# INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1004,'Boiro',86.58,9749,9206,'Barbanza','A Coruña');
INSERT INTO datos 
					VALUES (1002,'O Pino',132.15,2290,2349,'Arzúa','A Coruña'),(1003,'Touro',115.34,1765,1730,'Arzúa','A Coruña'),(1004,'Boiro',86.58,9749,9206,'Barbanza','A Coruña');
                    
# INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1005,'A Pobra do Caramiñal',32.51,4748,4543,'Barbanza','A Coruña');
INSERT INTO datos set Concello =1005,	Nombre= 'A Pobra do Caramiñal',	Superficie=32.51, Mujeres=4748,	Hombres =4543, Comarca='Barbanza',	Provincia='A Coruña';
	
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1006,'Rizanxo',58.79,5622,5382,'Barbanza','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1007,'Ribeira',68.83,13605,13234,'Barbanza','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1008,'A Baña',98.19,1792,1597,'A Barcala','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1009,'Negreira',115.10,3507,3268,'A Barcala','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1010,'Cabana de Bergantiños',100.23,2163,2022,'Bergantiños','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1011,'Carballo',186.09,16067,15347,'Bergantiños','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1012,'Coristanco',141.28,3054,2824,'Bergantiños','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1013,'A Laracha',125.95,5852,5669,'Bergantiños','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1014,'Laxe',36.78,1493,1511,'Bergantiños','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1015,'Malpica de Bergantiños',61.22,2727,2605,'Bergantiños','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1016,'Ponteceso',91.97,2727,2730,'Bergantiños','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1017,'Aranga',119.59,892,941,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1018,'Betanzos',24.21,6843,6187,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1019,'Coirós',33.60,944,929,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1020,'Curtis',116.70,2033,2048,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1021,'Irixoa',68.59,663,677,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1022,'Miño',32.97,3209,3214,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1023,'Oza-Cesuras',151.62,2559,2611,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1024,'Paderne',39.83,1208,1185,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1025,'Vilarmaior',30.35,593,626,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1026,'Vilasantar',59.17,576,643,'Betanzos','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1027,'Abegondo',83.90,2793,2701,'A Coruña','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1028,'Arteixo',93.68,16622,16272,'A Coruña','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1029,'Bergondo',32.72,3486,3331,'A Coruña','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1030,'Cambre',40.74,12630,11986,'A Coruña','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1031,'Carral',48.03,3342,3232,'A Coruña','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1032,'A Coruña',37.83,131662,113806,'A Coruña','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1033,'Culleredo',61.73,15938,14820,'A Coruña','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1034,'Oleiros',43.66,19091,17831,'A Coruña','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1035,'Sada',27.49,8376,8006,'A Coruña','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1036,'Cabanas',30.30,1714,1645,'Eume','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1037,'A Capela',58.00,625,617,'Eume','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1038,'Monfero',171.67,931,977,'Eume','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1039,'Pontedueme',29.26,4004,3683,'Eume','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1040,'Pontes de García Rodríguez',249.37,5132,4900,'Eume','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1041,'Ares',18.31,3046,2951,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1042,'Cedeira',85.42,3326,3324,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1043,'Fene',26.31,6718,6114,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1044,'Ferrol',82.65,34312,30473,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1045,'Moeche',48.50,627,573,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1046,'Mugardos',12.77,2684,2542,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1047,'Narón',66.91,20062,18851,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1048,'Neda',24.46,2581,2451,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1049,'San Sadurniño',98.98,1417,1395,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1050,'As Somozas',70.91,529,547,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1051,'Valdomiño',88.22,3515,3357,'Ferrol','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1052,'Cee',57.45,3951,3617,'Fisterra','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1053,'Corcubión',6.52,811,795,'Fisterra','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1054,'Dumbría',125.19,1522,1405,'Fisterra','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1055,'Fisterra',29.43,2321,2393,'Fisterra','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1056,'Muxía',121.19,2371,2193,'Fisterra','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1057,'Carnota',70.90,2033,1821,'Muros','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1058,'Muros',72.91,4351,4048,'Muros','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1059,'Lousame',93.65,1617,1618,'Noia','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1060,'Noia',37.21,7430,6810,'Noia','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1061,'Outes',99.74,3193,2957,'Noia','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1062,'Porto do Son',94.58,4598,4557,'Noia','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1063,'Cerceda',111.27,2530,2466,'Ordes','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1064,'Frades',81.56,1171,1135,'Ordes','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1065,'Mesía',107.21,1246,1233,'Ordes','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1066,'Ordes',157.23,6445,6160,'Ordes','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1067,'Oroso',72.59,3812,3718,'Ordes','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1068,'Tordoia',124.55,1694,1534,'Ordes','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1069,'Trazo',101.30,1556,1503,'Ordes','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1070,'Cariño',47.19,1908,1855,'Ortegal','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1071,'Cerdido',52.72,547,528,'Ortegal','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1072,'Mañon',82.21,663,646,'Ortegal','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1073,'Ortiguiera',209.60,2891,2594,'Ortegal','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1074,'Ames',80.10,16614,15379,'Santiago','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1075,'Boqueixón',73.18,2136,2050,'Santiago','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1076,'Brión',74.73,4130,3817,'Santiago','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1077,'Santiago de Compostela',220.01,52353,45505,'Santiago','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1078,'Teo',79.25,9591,9187,'Santiago','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1079,'Val do Dubra',108.64,1987,1829,'Santiago','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1080,'VEdra',52.78,2554,2478,'Santiago','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1081,'Dobro',36.12,1406,1304,'O Sar','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1082,'Padrón',48.37,4306,4011,'O Sar','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1083,'Rois',92.93,2348,2145,'O Sar','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1084,'Melide',101.30,3766,3661,'Terra de Melide','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1085,'Santiso',67.39,735,794,'Terra de Melide','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1086,'Sobrado',120.57,855,923,'Terra de Melide','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1087,'Toques',77.93,537,564,'Terra de Melide','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1088,'Camariñas',51.60,2672,2552,'Terra de Soneira','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1089,'Vimianzo',187.27,3577,3348,'Terra de Soneira','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1090,'Zas',133.29,2276,2108,'Terra de Soneira','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1091,'Mazaricos',187.30,1997,1809,'Xallas','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1092,'Santa Comba',203.70,4821,4538,'Xallas','A Coruña');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1093,'Baralla',141.16,1166,1279,'Os Ancares','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1094,'Becerreá',172.05,1412,1414,'Os Ancares','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1095,'Cervantes',277.63,546,742,'Os Ancares','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1096,'Navia de Suarna',243.85,457,584,'Os Ancares','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1097,'As Nogais',110.34,477,541,'Os Ancares','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1098,'Pedrafita do Cebreiro',104.91,431,512,'Os Ancares','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1099,'Carballedo',138.85,1058,1065,'Chantada','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1100,'Chantada',176.73,4203,3931,'Chantada','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1101,'Taboada',146.67,1400,1289,'Chantada','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1102,'Baleira',168.82,549,641,'A Fonsagrada','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1103,'A Fonsagrada',438.42,1577,1751,'A Fonsagrada','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1104,'Negueira de Muñiz',72.27,103,120,'A Fonsagrada','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1105,'Castroverde',174.15,1266,1343,'Lugo','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1106,'O Corgo',157.39,1674,1766,'Lugo','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1107,'Friol',292.29,1808,1874,'Lugo','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1108,'Guntín',154.78,1284,1354,'Lugo','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1109,'Lugo',329.78,52574,45039,'Lugo','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1110,'Outiero de Rei',134.20,2531,2685,'Lugo','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1111,'Portomarín',115.10,665,717,'Lugo','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1112,'Rábade',5.17,770,754,'Lugo','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1113,'Alfoz',77.50,829,781,'A Mariña Central','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1114,'Burela',7.78,4711,4717,'A Mariña Central','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1115,'Foz',100.29,5198,4880,'A Mariña Central','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1116,'Lourenzá',62.64,1097,1032,'A Mariña Central','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1117,'Mondoñedo',142.69,1851,1629,'A Mariña Central','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1118,'O Valadouro',110.45,1025,935,'A Mariña Central','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1119,'Cervo',77.86,2121,2071,'A Mariña Occidental','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1120,'Ourol',142.07,478,506,'A Mariña Occidental','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1121,'O Vicedo',75.96,845,812,'A Mariña Occidental','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1122,'Viveiro',109.34,7827,7485,'A Mariña Occidental','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1123,'Xove',89.12,1636,1724,'A Mariña Occidental','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1124,'Barreiros',72.42,1543,1458,'A Mariña Oriental','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1125,'A Pontenova',135.80,1149,1058,'A Mariña Oriental','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1126,'Ribadeo',109.14,5194,4677,'A Mariña Oriental','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1127,'Trabada',82.59,576,538,'A Mariña Oriental','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1128,'Meira',46.55,855,876,'Meira','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1129,'Pol',125.90,818,816,'Meira','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1130,'Ribeira de Piquín',72.99,243,270,'Meira','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1131,'Riotorto',66.33,606,607,'Meira','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1132,'Folgoso do courel',193.32,477,512,'Quiroga','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1133,'Quiroga',317.38,1670,1481,'Quiroga','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1134,'Ribas do Sil',67.78,465,481,'Quiroga','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1135,'O Incio',146.09,750,771,'Sarria','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1136,'Láncara',121.61,1246,1305,'Sarria','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1137,'Paradela',121.12,862,861,'Sarria','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1138,'O Páramo',74.80,672,675,'Sarria','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1139,'Samos',136.77,574,648,'Sarria','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1140,'Sarria',184.62,6811,6446,'Sarria','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1141,'Triacastela',51.18,314,313,'Sarria','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1142,'Abadín',196.04,1153,1144,'Terra Chá','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1143,'Begonte',126.80,1484,1492,'Terra Chá','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1144,'Castro de Rei',176.97,2577,2533,'Terra Chá','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1145,'Cospeito',144.79,2232,2142,'Terra Chá','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1146,'Guitiriz',293.97,2720,2735,'Terra Chá','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1147,'Muras',163.82,301,310,'Terra Chá','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1148,'A Pastoriza',174.99,1444,1474,'Terra Chá','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1149,'Vilalba',379.36,7278,6728,'Terra Chá','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1150,'Xermade',166.27,901,867,'Terra Chá','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1151,'Bóveda',91.11,689,718,'Terra de Lemos','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1152,'Monforte de Lemos',199.52,9567,8675,'Terra de Lemos','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1153,'Pantón',143.24,1224,1205,'Terra de Lemos','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1154,'A Pobra do Brollón',176.71,821,794,'Terra de Lemos','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1155,'O Saviñao',196.55,1784,1805,'Terra de Lemos','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1156,'Sober',133.35,1143,1100,'Terra de Lemos','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1157,'Antas de Ulla',103.60,981,954,'A Ulloa','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1158,'Monterroso',114.59,1791,1771,'A Ulloa','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1159,'Palas de Rei',199.68,1637,1679,'A Ulloa','Lugo');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1160,'Allariz',86.00,3180,3134,'Allariz-Maceda','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1161,'Baños de Molgas',67.64,740,743,'Allariz-Maceda','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1162,'Maceda',101.93,1433,1416,'Allariz-Maceda','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1163,'Paderne de Allariz',38.76,699,674,'Allariz-Maceda','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1164,'Xunqueira de Ambía',60.21,677,689,'Allariz-Maceda','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1165,'Xunqueira de Espadanedo',27.65,373,365,'Allariz-Maceda','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1166,'Bande',98.96,735,755,'Baixa Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1167,'Entrimo',84.52,589,539,'Baixa Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1168,'Lobeira',68.88,386,383,'Baixa Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1169,'Lobios',168.38,834,838,'Baixa Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1170,'Muíños',109.56,715,732,'Baixa Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1171,'Beariz',55.97,531,440,'O Carballiño','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1172,'Boborás',87.82,1154,1052,'O Carballiño','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1173,'O Carballiño',54.33,7449,6462,'O Carballiño','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1174,'O Irixo',121.05,727,674,'O Carballiño','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1175,'Maside',40.04,1368,1350,'O Carballiño','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1176,'Piñor',52.69,565,597,'O Carballiño','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1177,'Punxín',17.08,364,340,'O Carballiño','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1178,'San Amaro',29.03,546,502,'O Carballiño','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1179,'San Cristovo de Cea',94.44,1056,1016,'O Carballiño','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1180,'Baltar',94.71,423,496,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1181,'Os Blancos',47.56,341,404,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1182,'Calvos de Randín',97.87,350,367,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1183,'Porqueira',43.40,446,381,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1184,'Rairiz de Veiga',72.11,598,625,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1185,'Sandiás',52.84,616,565,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1186,'Sarreaus',77.29,567,547,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1187,'Trasmiras',56.74,629,632,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1188,'Vilar de Barrio',106.74,622,636,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1189,'Vilar de Santos',20.70,407,384,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1190,'Xinzo de Limia',132.67,4939,4682,'A Limia','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1191,'Amoeiro',39.68,1154,1179,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1192,'Barbadás',30.24,5627,5395,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1193,'Coles',38.11,1531,1594,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1194,'Esgos',37.79,545,564,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1195,'Nogueira de Ramuín',98.31,1014,1053,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1196,'Ourense',84.55,57188,47408,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1197,'Pereiro de Aguiar',60.89,3117,3353,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1198,'A Peroxa',54.52,920,906,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1199,'San Cibrao das Viñas',39.48,2728,2781,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1200,'Taboadela',25.19,714,738,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1201,'Toén',58.29,1156,1218,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1202,'Vilamarín',56.09,904,978,'Ourense','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1203,'A Arnoia',20.69,479,473,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1204,'Avión',121.13,948,790,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1205,'Beade',6.40,181,198,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1206,'Carballeda de Avia',46.37,639,610,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1207,'Castrelo de Miño',39.74,653,668,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1208,'Cenlle',29.03,552,542,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1209,'Cortegada',26.89,538,523,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1210,'Leiro',38.25,767,743,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1211,'Melón',53.25,587,548,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1212,'Ribadavia',25.16,2554,2451,'O Ribadeo','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1213,'Castro Caldelas',87.61,583,599,'Terra de Caldelas','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1214,'Montederramo',135.57,327,378,'Terra de Caldelas','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1215,'Parada de Sil',62.43,256,288,'Terra de Caldelas','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1216,'A Teixeira',27.64,164,172,'Terra de Caldelas','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1217,'A Bola',34.90,567,508,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1218,'Cartelle',94.29,1305,1265,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1219,'Celanova',66.31,2999,2653,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1220,'Gomesende',28.31,351,342,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1221,'A Merca',50.99,971,968,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1222,'Padrenda',57.04,854,799,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1223,'Pontedeva',9.86,250,241,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1224,'Quintela de Leirado',31.26,342,272,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1225,'Ramirás',40.66,802,705,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1226,'Verea',94.23,473,441,'Terra de Celanova','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1227,'Chandrexa de Queixa',171.81,219,263,'Terra de Trives','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1228,'Manzaneda',114.57,431,415,'Terra de Trives','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1229,'A Pobra de Trives',84.20,1015,1000,'Terra de Trives','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1230,'San Xoán de Río',61.14,243,262,'Terra de Trives','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1231,'O Barco de Valdeorras',85.43,6888,6496,'Valdeorras','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1232,'O Bolo',91.17,408,420,'Valdeorras','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1233,'Carballeda de Valdeorras',222.69,701,759,'Valdeorras','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1234,'Larouco',23.69,219,208,'Valdeorras','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1235,'Petín',30.48,443,436,'Valdeorras','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1236,'A Rúa',35.91,2136,2109,'Valdeorras','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1237,'Rubiá',100.79,708,682,'Valdeorras','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1238,'A Veiga',290.49,434,452,'Valdeorras','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1239,'Vilamartín de Valdeorras',88.26,897,940,'Valdeorras','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1240,'Catrelo do Val',122.05,490,489,'Verín','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1241,'Cualedro',117.77,779,860,'Verín','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1242,'Laza',215.91,590,632,'Verín','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1243,'Monterrei',119.14,1221,1280,'Verín','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1244,'Oímbra',71.48,777,936,'Verín','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1245,'Riós',114.27,710,749,'Verín','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1246,'Verín',94.11,7100,6544,'Verín','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1247,'Vilardevós',152.55,843,938,'Verín','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1248,'A Gudiña',171.42,607,625,'Viana','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1249,'A Mezquita',104.27,478,528,'Viana','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1250,'Viana do Bolo',270.41,1372,1415,'Viana','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1251,'Vilariño de Conso',200.23,220,293,'Viana','Ourense');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1252,'A Guarda',20.50,5095,4896,'O Baixo Miño','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1253,'Oia',83.30,1567,1537,'O Baixo Miño','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1254,'O Rosal',44.13,3237,3139,'O Baixo Miño','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1255,'Tomiño',106.61,6838,6892,'O Baixo Miño','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1256,'Tui',68.32,8952,8446,'O Baixo Miño','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1257,'Caldas de Reis',68.25,5060,4728,'Caldas','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1258,'Catoira',29.44,1712,1604,'Caldas','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1259,'Cuntis',79.88,2429,2214,'Caldas','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1260,'Moraña',41.24,2123,1998,'Caldas','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1261,'Pontecesures',6.69,1570,1511,'Caldas','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1262,'Portas',22.71,1475,1385,'Caldas','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1263,'Valga',40.64,2933,2835,'Caldas','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1264,'Mondariz',82.33,2217,2177,'O Condado','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1265,'Mondariz-Balneario',2.31,332,343,'O Condado','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1266,'As Neves',65.84,1920,1850,'O Condado','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1267,'Ponteareas',125.53,11821,11121,'O Condado','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1268,'Salvaterra do Miño',62.54,5021,5027,'O Condado','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1269,'Agolada',147.85,1113,1115,'Deza','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1270,'Dozón',74.10,507,550,'Deza','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1271,'Lalín',326.96,10344,9855,'Deza','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1272,'Rodeiro',154.91,1169,1192,'Deza','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1273,'Silleda',167.96,4549,4296,'Deza','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1274,'Vila de Cruces',154.96,2566,2531,'Deza','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1275,'Bueu',30.84,6098,5889,'O Morrazo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1276,'Cangas',38.08,13443,13265,'O Morrazo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1277,'Marín',36.66,12153,12095,'O Morrazo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1278,'Moaña',35.06,10027,9469,'O Morrazo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1279,'Arbo',42.66,1249,1350,'A Paradanta','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1280,'A Cañiza',105.04,2603,2512,'A Paradanta','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1281,'Covelo',134.70,1191,1264,'A Paradanta','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1282,'Crecente',57.46,1009,952,'A Paradanta','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1283,'Barro',37.55,1844,1778,'Pontevedra','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1284,'Campo Lameiro',63.77,938,831,'Pontevedra','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1285,'Cerdedo-Cotobade',213.27,2939,2780,'Pontevedra','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1286,'A Lama',111.76,1215,1195,'Pontevedra','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1287,'Poio',33.93,8684,8546,'Pontevedra','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1288,'Ponte Caldelas',87.00,2863,2685,'Pontevedra','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1289,'Pontevedra',118.47,43800,39314,'Pontevedra','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1290,'Vilaboa',36.90,3040,2915,'Pontevedra','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1291,'Cambados',23.44,7073,6600,'O Salnés','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1292,'O Grove',21.89,5450,5249,'O Salnés','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1293,'A Illa de Arousa',6.91,2516,2435,'O Salnés','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1294,'Meaño',27.77,2723,2591,'O Salnés','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1295,'Meis',52.39,2485,2311,'O Salnés','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1296,'Ribadumia',19.71,2641,2516,'O Salnés','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1297,'Sanxenxo',45.08,8924,8711,'O Salnés','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1298,'Vilagarcía de Arousa',44.24,19546,17999,'O Salnés','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1299,'Vilanova de Arousa',33.65,5310,4996,'O Salnés','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1300,'A Estrada',280.74,10525,9736,'Tabeirós-Terra de Montes','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1301,'Forcarei',169.66,1711,1557,'Tabeirós-Terra de Montes','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1302,'Baiona',34.47,6243,6043,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1303,'Fornelo de Montes',79.01,828,766,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1304,'Gondomar',74.51,7483,7437,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1305,'Mos',53.29,7692,7498,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1306,'Nigrán',34.77,9148,8857,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1307,'Pazos de Borbén',49.99,1516,1459,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1308,'O Porriño',61.17,10297,9915,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1309,'Redondela',52.08,15042,14150,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1310,'Salceda de Caselas',35.92,4614,4635,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1311,'Soutomaior',24.99,3749,3733,'Vigo','Pontevedra');
INSERT INTO datos (`Concello`,`Nombre`,`Superficie`,`Mujeres`,`Hombres`,`Comarca`,`Provincia`) VALUES (1312,'Vigo',109.06,155203,138634,'Vigo','Pontevedra');

SELECT * FROM datos order by mujeres desc;

#------------------------------------------------------------------------------------------------
#  2. Borra todos los datos
#------------------------------------------------------------------------------------------------
-- DELETE FROM datos;

#------------------------------------------------------------------------------------------------
#  3. Borrar todos los Concellos cuyo nombre empiece por 'a'
#------------------------------------------------------------------------------------------------
-- Delete from datos where Nombre like 'a%';

#------------------------------------------------------------------------------------------------
#  4. Borra todos los Concellos cuya Comarca NO empiece por vocal
#------------------------------------------------------------------------------------------------
-- DELETE FROM datos where Comarca regexp '^[^aeiouáéíóúü]';
#------------------------------------------------------------------------------------------------
#  5. Borra el Concello con mayor población
#------------------------------------------------------------------------------------------------
-- SELECT * FROM datos order by Mujeres desc limit 1;
#------------------------------------------------------------------------------------------------
#  6. Borra los tres Concellos con mayor densidad de población
#------------------------------------------------------------------------------------------------
Select Nombre,((hombres + mujeres)/superficie) as 'Densidad(km/m2)',concello,superficie from datos order by ((hombres + mujeres)/superficie) desc limit 3; 
#------------------------------------------------------------------------------------------------
#  7. Borra los Concellos que empiecen por 'B'
#------------------------------------------------------------------------------------------------
SELECT * FROM datos where Nombre regexp'^[B]';
#------------------------------------------------------------------------------------------------
#  8. Borra los diez primeros Concellos que acaben por 's'
#------------------------------------------------------------------------------------------------
SELECT * FROM datos where Nombre regexp'[s]$';
#------------------------------------------------------------------------------------------------
#  9. Borra los cinco últimos Concellos ordenados en función de su superficie
#------------------------------------------------------------------------------------------------       
Select * from datos order by superficie desc limit 5;	
#------------------------------------------------------------------------------------------------
# 10. La población de las mujeres de Galicia se multiplica por 10
#------------------------------------------------------------------------------------------------       
	Update datos set mujeres=mujeres*10;
    Select * from datos order by mujeres desc;
#------------------------------------------------------------------------------------------------
# 11. La población de los hombres aumenta en un 37 % en Pontevedra.
#------------------------------------------------------------------------------------------------       
	Update datos set hombres=hombres*1.37 where nombre ='Pontevedra';
#------------------------------------------------------------------------------------------------
# 12. El Alcalde Caballero decide cambiar el nombre de la ciudad de Vigo por Teis
#------------------------------------------------------------------------------------------------       
	Update datos set nombre='Teis' where nombre ='Vigo';
    Update datos set comarca='Teis' where comarca ='Vigo';
#------------------------------------------------------------------------------------------------
# 13. Los siete Concellos de Lugo con mayor número de hombres, decrementa cada uno su población de mujeres en el número de hombres
#------------------------------------------------------------------------------------------------       
	Select * from datos where comarca='Lugo' order by hombres desc limit 7;
    Update datos set mujeres = mujeres-hombres where comarca='Lugo' order by hombres desc limit 7;

#------------------------------------------------------------------------------------------------
# 14. La población de los siete Concellos más importantes de Galicia está duplicada y se ha de corregir
#------------------------------------------------------------------------------------------------
Update datos set mujeres = mujeres/2, hombres=hombres/2;
Select * from datos order by mujeres +hombres desc limit 7;
       
	