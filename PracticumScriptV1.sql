/*
Tabla temporal, con esta tabla sirve para hacer la importacion de datos en myphpadmin con el csv generado

DROP TABLE temporal;
 
CREATE TABLE temporal (
  id_Persona VARCHAR(26) NOT NULL UNIQUE,
  anio VARCHAR(4) NOT NULL,
  mes VARCHAR(2) NOT NULL,
  provincia VARCHAR(2) NOT NULL ,
  canton VARCHAR(4) NOT NULL,
  area VARCHAR(10) NOT NULL,
  genero VARCHAR(10) NOT NULL,
  edad VARCHAR(2) NOT NULL,
  estado_civil VARCHAR(17) NOT NULL,
  nivel_de_instruccion VARCHAR(30) NOT NULL,
  etnia VARCHAR(19) NOT NULL,
  ingreso_laboral VARCHAR(6) NULL,
  condicion_actividad VARCHAR(52) NOT NULL,
  sectorizacion VARCHAR(49) NULL,
  grupo_ocupacion VARCHAR(57) NULL,
  rama_actividad VARCHAR(63) NULL,
  factor_expansion VARCHAR(17) NOT NULL);
*/
/*
DROP TABLE persona;
DROP TABLE provincia;
DROP TABLE canton;
*/
CREATE TABLE provincia (
  provincia VARCHAR(2) NOT NULL ,
  nombreProvincia VARCHAR(30) NOT NULL,
PRIMARY KEY (provincia));

CREATE TABLE canton (
  canton VARCHAR(4) NOT NULL ,
  nombreCanton VARCHAR(30) NOT NULL,
PRIMARY KEY (canton));

CREATE TABLE persona (
  id_Persona VARCHAR(26) NOT NULL,
  anio VARCHAR(4) NOT NULL,
  mes VARCHAR(2) NOT NULL,
  provincia VARCHAR(2) NOT NULL ,
  canton VARCHAR(4) NOT NULL,
  area VARCHAR(10) NOT NULL,
  genero VARCHAR(10) NOT NULL,
  edad integer,
  estado_civil VARCHAR(17) NOT NULL,
  nivel_de_instruccion VARCHAR(30) NOT NULL,
  etnia VARCHAR(19) NOT NULL,
  ingreso_laboral VARCHAR(16),
  condicion_actividad VARCHAR(52) NOT NULL,
  sectorizacion VARCHAR(30) NULL,
  grupo_ocupacion VARCHAR(57) NULL,
  rama_actividad VARCHAR(62) NULL,
  factor_expansion VARCHAR(16),
  PRIMARY KEY (id_Persona),
  FOREIGN KEY (provincia) references provincia(provincia),
  FOREIGN KEY (canton) references canton(canton));
  
/*Provincias*/
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('01','AZUAY');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('02','BOLIVAR');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('03','CAÑAR');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('04','CARCHI');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('05','COTOPAXI');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('06','CHIMBORAZO');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('07','EL ORO');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('08','ESMERALDAS');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('09','GUAYAS');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('10','IMBABURA');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('11','LOJA');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('12','LOS RIOS');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('13','MANABI');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('14','MORONA SANTIAGO');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('15','NAPO');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('16','PASTAZA');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('17','PICHINCHA');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('18','TUNGURAHUA');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('19','ZAMORA CHINCHIPE');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('20','GALAPAGOS');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('21','SUCUMBIOS');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('22','ORELLANA');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('23','SANTO DOMINGO DE LOS TSÁCHILAS');
INSERT INTO provincia (provincia, nombreProvincia) VALUES ('24','SANTA ELENA');

/*Cantones*/
INSERT INTO canton (canton, nombreCanton) VALUES ('0101','CUENCA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0102','GIRON');
INSERT INTO canton (canton, nombreCanton) VALUES ('0103','GUALACEO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0104','NABON');
INSERT INTO canton (canton, nombreCanton) VALUES ('0105','PAUTE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0106','PUCARA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0107','SAN FERNANDO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0108','SANTA ISABEL');
INSERT INTO canton (canton, nombreCanton) VALUES ('0109','SIGSIG');
INSERT INTO canton (canton, nombreCanton) VALUES ('0110','OÑA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0111','CHORDELEG');
INSERT INTO canton (canton, nombreCanton) VALUES ('0112','EL PAN');
INSERT INTO canton (canton, nombreCanton) VALUES ('0113','SEVILLA DE ORO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0114','GUACHAPALA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0115','CAMILO PONCE ENRIQUEZ');
INSERT INTO canton (canton, nombreCanton) VALUES ('0201','GUARANDA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0202','CHILLANES');
INSERT INTO canton (canton, nombreCanton) VALUES ('0203','CHIMBO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0204','ECHEANDIA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0205','SAN MIGUEL');
INSERT INTO canton (canton, nombreCanton) VALUES ('0206','CALUMA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0207','LAS NAVES');
INSERT INTO canton (canton, nombreCanton) VALUES ('0301','AZOGUES');
INSERT INTO canton (canton, nombreCanton) VALUES ('0302','BIBLIAN');
INSERT INTO canton (canton, nombreCanton) VALUES ('0303','CAÑAR');
INSERT INTO canton (canton, nombreCanton) VALUES ('0304','LA TRONCAL');
INSERT INTO canton (canton, nombreCanton) VALUES ('0305','EL TAMBO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0306','DELEG');
INSERT INTO canton (canton, nombreCanton) VALUES ('0307','SUSCAL');
INSERT INTO canton (canton, nombreCanton) VALUES ('0401','TULCAN');
INSERT INTO canton (canton, nombreCanton) VALUES ('0402','BOLIVAR');
INSERT INTO canton (canton, nombreCanton) VALUES ('0403','ESPEJO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0404','MIRA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0405','MONTUFAR');
INSERT INTO canton (canton, nombreCanton) VALUES ('0406','SAN PEDRO DE HUACA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0501','LATACUNGA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0502','LA MANA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0503','PANGUA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0504','PUJILI');
INSERT INTO canton (canton, nombreCanton) VALUES ('0505','SALCEDO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0506','SAQUISILI');
INSERT INTO canton (canton, nombreCanton) VALUES ('0507','SIGCHOS');
INSERT INTO canton (canton, nombreCanton) VALUES ('0601','RIOBAMBA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0602','ALAUSI');
INSERT INTO canton (canton, nombreCanton) VALUES ('0603','COLTA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0604','CHAMBO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0605','CHUNCHI');
INSERT INTO canton (canton, nombreCanton) VALUES ('0606','GUAMOTE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0607','GUANO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0608','PALLATANGA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0609','PENIPE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0610','CUMANDA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0701','MACHALA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0702','ARENILLAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('0703','ATAHUALPA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0704','BALSAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('0705','CHILLA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0706','EL GUABO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0707','HUAQUILLAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('0708','MARCABELI');
INSERT INTO canton (canton, nombreCanton) VALUES ('0709','PASAJE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0710','PIÑAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('0711','PORTOVELO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0712','SANTA ROSA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0713','ZARUMA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0714','LAS LAJAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('0801','ESMERALDAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('0802','ELOY ALFARO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0803','MUISNE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0804','QUININDE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0805','SAN LORENZO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0806','ATACAMES');
INSERT INTO canton (canton, nombreCanton) VALUES ('0807','RIO VERDE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0901','GUAYAQUIL');
INSERT INTO canton (canton, nombreCanton) VALUES ('0902','ALFREDO BAQUERIZO MORENO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0903','BALAO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0904','BALZAR');
INSERT INTO canton (canton, nombreCanton) VALUES ('0905','COLIMES');
INSERT INTO canton (canton, nombreCanton) VALUES ('0906','DAULE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0907','DURAN');
INSERT INTO canton (canton, nombreCanton) VALUES ('0908','EL EMPALME');
INSERT INTO canton (canton, nombreCanton) VALUES ('0909','EL TRIUNFO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0910','MILAGRO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0911','NARANJAL');
INSERT INTO canton (canton, nombreCanton) VALUES ('0912','NARANJITO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0913','PALESTINA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0914','PEDRO CARBO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0916','SAMBORONDON');
INSERT INTO canton (canton, nombreCanton) VALUES ('0918','SANTA LUCIA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0919','SALITRE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0920','SAN JACINTO DE YAGUACHI');
INSERT INTO canton (canton, nombreCanton) VALUES ('0921','PLAYAS (GENERAL VILLAMIL)');
INSERT INTO canton (canton, nombreCanton) VALUES ('0922','SIMON BOLIVAR');
INSERT INTO canton (canton, nombreCanton) VALUES ('0923','CORONEL MARCELINO MARIDUEÑA');
INSERT INTO canton (canton, nombreCanton) VALUES ('0924','LOMAS DE SARGENTILLO');
INSERT INTO canton (canton, nombreCanton) VALUES ('0925','NOBOL (VICENTE PIEDRAHITA)');
INSERT INTO canton (canton, nombreCanton) VALUES ('0927','GENERAL ANTONIO ELIZALDE');
INSERT INTO canton (canton, nombreCanton) VALUES ('0928','ISIDRO AYORA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1001','IBARRA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1002','ANTONIO ANTE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1003','COTACACHI');
INSERT INTO canton (canton, nombreCanton) VALUES ('1004','OTAVALO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1005','PIMAMPIRO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1006','SAN MIGUEL DE URCUQUI');
INSERT INTO canton (canton, nombreCanton) VALUES ('1101','LOJA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1102','CALVAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('1103','CATAMAYO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1104','CELICA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1105','CHAHUARPAMBA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1106','ESPINDOLA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1107','GONZANAMA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1108','MACARA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1109','PALTAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('1110','PUYANGO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1111','SARAGURO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1112','SOZORANGA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1113','ZAPOTILLO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1114','PINDAL');
INSERT INTO canton (canton, nombreCanton) VALUES ('1115','QUILANGA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1116','OLMEDO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1201','BABAHOYO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1202','BABA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1203','MONTALVO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1204','PUEBLO VIEJO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1205','QUEVEDO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1206','URDANETA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1207','VENTANAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('1208','VINCES');
INSERT INTO canton (canton, nombreCanton) VALUES ('1209','PALENQUE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1210','BUENA FE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1211','VALENCIA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1212','MOCACHE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1213','QUINSALOMA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1301','PORTOVIEJO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1302','BOLIVAR');
INSERT INTO canton (canton, nombreCanton) VALUES ('1303','CHONE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1304','EL CARMEN');
INSERT INTO canton (canton, nombreCanton) VALUES ('1305','FLAVIO ALFARO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1306','JIPIJAPA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1307','JUNIN');
INSERT INTO canton (canton, nombreCanton) VALUES ('1312','ROCAFUERTE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1308','MANTA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1309','MONTECRISTI');
INSERT INTO canton (canton, nombreCanton) VALUES ('1310','PAJAN');
INSERT INTO canton (canton, nombreCanton) VALUES ('1311','PICHINCHA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1313','SANTA ANA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1314','SUCRE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1315','TOSAGUA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1316','24 DE MAYO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1317','PEDERNALES');
INSERT INTO canton (canton, nombreCanton) VALUES ('1318','OLMEDO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1319','PUERTO LOPEZ');
INSERT INTO canton (canton, nombreCanton) VALUES ('1320','JAMA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1321','JARAMIJO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1322','SAN VICENTE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1401','MORONA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1402','GUALAQUIZA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1403','LIMON - INDANZA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1404','PALORA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1405','SANTIAGO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1406','SUCUA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1407','HUAMBOYA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1408','SAN JUAN BOSCO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1409','TAISHA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1410','LOGROÑO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1411','PABLO SEXTO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1412','TIWINTZA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1501','TENA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1503','ARCHIDONA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1504','EL CHACO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1507','QUIJOS');
INSERT INTO canton (canton, nombreCanton) VALUES ('1509','CARLOS JULIO AROSEMENA T.');
INSERT INTO canton (canton, nombreCanton) VALUES ('1601','PASTAZA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1602','MERA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1603','SANTA CLARA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1604','ARAJUNO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1701','QUITO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1702','CAYAMBE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1703','MEJIA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1704','PEDRO MONCAYO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1705','RUMIÑAHUI');
INSERT INTO canton (canton, nombreCanton) VALUES ('1707','SAN MIGUEL DE LOS BANCOS');
INSERT INTO canton (canton, nombreCanton) VALUES ('1708','PEDRO VICENTE MALDONADO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1709','PUERTO QUITO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1801','AMBATO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1802','BAÑOS DE AGUA SANTA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1803','CEVALLOS');
INSERT INTO canton (canton, nombreCanton) VALUES ('1804','MOCHA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1805','PATATE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1806','QUERO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1807','SAN PEDRO DE PELILEO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1808','SANTIAGO DE PILLARO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1809','TISALEO');
INSERT INTO canton (canton, nombreCanton) VALUES ('1901','ZAMORA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1902','CHINCHIPE');
INSERT INTO canton (canton, nombreCanton) VALUES ('1903','NANGARITZA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1904','YACUAMBI');
INSERT INTO canton (canton, nombreCanton) VALUES ('1905','YANTZAZA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1906','EL PANGUI');
INSERT INTO canton (canton, nombreCanton) VALUES ('1907','CENTINELA DEL CONDOR');
INSERT INTO canton (canton, nombreCanton) VALUES ('1908','PALANDA');
INSERT INTO canton (canton, nombreCanton) VALUES ('1909','PAQUISHA');
INSERT INTO canton (canton, nombreCanton) VALUES ('2001','SAN CRISTOBAL');
INSERT INTO canton (canton, nombreCanton) VALUES ('2002','ISABELA');
INSERT INTO canton (canton, nombreCanton) VALUES ('2003','SANTA CRUZ');
INSERT INTO canton (canton, nombreCanton) VALUES ('2101','LAGO AGRIO');
INSERT INTO canton (canton, nombreCanton) VALUES ('2102','GONZALO PIZARRO');
INSERT INTO canton (canton, nombreCanton) VALUES ('2103','PUTUMAYO');
INSERT INTO canton (canton, nombreCanton) VALUES ('2104','SHUSHUFINDI');
INSERT INTO canton (canton, nombreCanton) VALUES ('2105','SUCUMBIOS');
INSERT INTO canton (canton, nombreCanton) VALUES ('2106','CASCALES');
INSERT INTO canton (canton, nombreCanton) VALUES ('2107','CUYABENO');
INSERT INTO canton (canton, nombreCanton) VALUES ('2201','FRANCISCO DE ORELLANA');
INSERT INTO canton (canton, nombreCanton) VALUES ('2202','AGUARICO');
INSERT INTO canton (canton, nombreCanton) VALUES ('2203','LA JOYA DE LOS SACHAS');
INSERT INTO canton (canton, nombreCanton) VALUES ('2204','LORETO');
INSERT INTO canton (canton, nombreCanton) VALUES ('2301','SANTO DOMINGO');
INSERT INTO canton (canton, nombreCanton) VALUES ('2302','LA CONCORDIA');
INSERT INTO canton (canton, nombreCanton) VALUES ('2401','SANTA ELENA');
INSERT INTO canton (canton, nombreCanton) VALUES ('2402','LA LIBERTAD');
INSERT INTO canton (canton, nombreCanton) VALUES ('2403','SALINAS');

/*
Insercion desde la tabla temporal a la tabla persona
*/

INSERT INTO persona
SELECT 
id_Persona,
anio,
mes,
provincia,
canton,
SUBSTRING_INDEX(area , ' - ', -1) AS area,
SUBSTRING_INDEX(genero , ' - ', -1) AS genero,
CAST(edad AS UNSIGNED)  as edad,
SUBSTRING_INDEX(estado_civil , ' - ', -1) AS estado_civil,
SUBSTRING_INDEX(nivel_de_instruccion , ' - ', -1) AS nivel_de_instruccion,
SUBSTRING_INDEX(etnia , ' - ', -1) AS etnia,
ingreso_laboral,
SUBSTRING_INDEX(condicion_actividad , ' - ', -1)  AS condicion_actividad,
case when sectorizacion = '' then '' else SUBSTRING_INDEX(sectorizacion , ' - ', -1)end  AS sectorizacion,
case when grupo_ocupacion = '' then '' else SUBSTRING_INDEX(grupo_ocupacion , ' - ', -1)end AS grupo_ocupacion,
case when rama_actividad = '' then '' else SUBSTRING_INDEX(rama_actividad , ' - ', -1)end AS rama_actividad,
CAST(REPLACE(factor_expansion,',','.' ) AS DECIMAL(16,11))  AS factor_expansion
FROM temporal;

/*
Creacion de Usuario invitado y permisos hacer:
cosultas(SELECT) , disparador (TRIGGERS), referencias (REFERENCES) Y executor(EXECUTE) (EVENT
 */
create user 'invitado' identified by '123456';
grant event, execute, reference, trigger, select on bduoc.* to "invitado" with grant option;



/*
Instrucciones
Para obtener el conjunto de datos, en Exel se limpio las primeras filas y se exporto en csv con separador ',' y en UTF8
Instalación de XAMPP y MYSQL WORKBENCH configuración para phpmyadmin y mysql para la importación de los datos
Para la importación de datos se uso una tabla temporal que se creo en MYSQL
Para importación de datos se uso PHPMYADMIN, con el archivo csv y se insertaron todos los datos al servidor local
Con el Script se crea la tabla PROVINCIA, CANTONES y PERSONA, se le asigna las claves foráneas y primarias
también en el Script tomando los datos de la tabla TEMPORAL se importa a la tabla PERSONA
Se crea un usuario 'Invitado' con su respectiva contraseña y despues se le aplica los permisos.

*/
