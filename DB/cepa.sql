-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.31 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.0.0.6037
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour cepa
CREATE DATABASE IF NOT EXISTS `cepa` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cepa`;

-- Listage de la structure de la table cepa. calle
CREATE TABLE IF NOT EXISTS `calle` (
  `id_calle` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `id_sector` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_calle`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.calle : ~4 rows (environ)
/*!40000 ALTER TABLE `calle` DISABLE KEYS */;
INSERT INTO `calle` (`id_calle`, `descripcion`, `id_sector`) VALUES
	(1, 'Manzana A', 1),
	(2, 'Manzana B', 1),
	(3, 'Brizas universitarias', 1),
	(4, 'Alfredo 2', 1);
/*!40000 ALTER TABLE `calle` ENABLE KEYS */;

-- Listage de la structure de la table cepa. cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_tercero` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`,`id_tercero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.cliente : ~0 rows (environ)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Listage de la structure de la table cepa. cobro
CREATE TABLE IF NOT EXISTS `cobro` (
  `id_prestamos` varchar(50) DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `pagado` int(11) DEFAULT NULL,
  `nopagado` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.cobro : ~2 rows (environ)
/*!40000 ALTER TABLE `cobro` DISABLE KEYS */;
INSERT INTO `cobro` (`id_prestamos`, `balance`, `pagado`, `nopagado`, `estado`) VALUES
	('CEPA#49686', 3162.5, 1, 1, 'En Proceso...'),
	('CEPA#38519', 1000, 2, 0, 'En Proceso...');
/*!40000 ALTER TABLE `cobro` ENABLE KEYS */;

-- Listage de la structure de la table cepa. detalle_cobro
CREATE TABLE IF NOT EXISTS `detalle_cobro` (
  `id_prestamos` varchar(50) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quincena` int(11) DEFAULT NULL,
  `cuota` float DEFAULT NULL,
  `reduccion` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.detalle_cobro : ~5 rows (environ)
/*!40000 ALTER TABLE `detalle_cobro` DISABLE KEYS */;
INSERT INTO `detalle_cobro` (`id_prestamos`, `fecha`, `quincena`, `cuota`, `reduccion`) VALUES
	('CEPA#49686', '2018-09-16 10:49:16', 1, 750, 2250),
	('CEPA#49686', '2018-10-01 00:00:00', 2, 0, 0),
	('CEPA#38519', '2018-08-22 00:00:00', 1, 0, 0),
	('CEPA#38519', '2018-09-10 00:00:00', 1, 300, 0),
	('CEPA#38519', '2018-09-25 00:00:00', 2, 300, 1100);
/*!40000 ALTER TABLE `detalle_cobro` ENABLE KEYS */;

-- Listage de la structure de la table cepa. direccion
CREATE TABLE IF NOT EXISTS `direccion` (
  `id_direccion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) DEFAULT NULL,
  `id_calle` int(11) DEFAULT NULL,
  `tp_direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_direccion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.direccion : ~6 rows (environ)
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` (`id_direccion`, `descripcion`, `id_calle`, `tp_direccion`) VALUES
	(1, 'Edif 28 Apt 3B', 1, 'Casa'),
	(2, 'Edif 28 Apt 3B', 1, 'Casa'),
	(3, 'Edif 28 Apt 3B', 1, 'Casa'),
	(4, 'Apt. C15', 4, 'Casa'),
	(5, 'Casa 385', 3, 'Casa'),
	(6, '5, TRES B', 3, 'Otro');
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;

-- Listage de la structure de la table cepa. empleado
CREATE TABLE IF NOT EXISTS `empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `id_tercero` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`,`id_tercero`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.empleado : ~4 rows (environ)
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` (`id_empleado`, `id_tercero`, `fecha_registro`, `estado`) VALUES
	(6, 5, '2018-09-16 02:07:54', b'1'),
	(7, 6, '2018-09-16 02:11:47', b'1'),
	(9, 8, '2018-09-16 02:26:11', b'1'),
	(10, 9, '2018-09-16 02:32:41', b'1');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;

-- Listage de la structure de la table cepa. empresa
CREATE TABLE IF NOT EXISTS `empresa` (
  `id_epmresa` int(11) NOT NULL AUTO_INCREMENT,
  `id_tercero` int(11) DEFAULT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_epmresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.empresa : ~0 rows (environ)
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;

-- Listage de la structure de la table cepa. especiales
CREATE TABLE IF NOT EXISTS `especiales` (
  `id_especial` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) DEFAULT NULL,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_especial`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.especiales : ~3 rows (environ)
/*!40000 ALTER TABLE `especiales` DISABLE KEYS */;
INSERT INTO `especiales` (`id_especial`, `documento`, `valor`) VALUES
	(1, 'PP4325293', 15),
	(2, '', 12),
	(3, 'CH3381527', 15);
/*!40000 ALTER TABLE `especiales` ENABLE KEYS */;

-- Listage de la structure de la procédure cepa. Insert_calle
DELIMITER //
CREATE PROCEDURE `Insert_calle`(
	IN `descripcion` varchar(100),
	IN `id_sector` int


)
insert into calle(descripcion,id_sector) values(descripcion,id_sector) on duplicate key update 
descripcion=values(descripcion),id_sector=values(id_sector)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_cliente
DELIMITER //
CREATE PROCEDURE `Insert_cliente`(
	IN `id_cliente` int,
	IN `id_tercero` int,
	IN `estado` bit






)
insert into cliente(id_cliente,id_tercero,estado) values(id_cliente,id_tercero,estado)
 on duplicate key update estado=values(estado)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_cobro
DELIMITER //
CREATE PROCEDURE `Insert_cobro`(
id_prestamos varchar(50),
balance float,
pagado int,
nopagado int,
estado varchar(50)
)
insert into cobro(id_prestamos,balance,pagado,nopagado,estado) values(id_prestamos,balance,pagado,nopagado,estado)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_detalle_cobro
DELIMITER //
CREATE PROCEDURE `Insert_detalle_cobro`(
	IN `id_prestamos` varchar(50),
	IN `quincena` int,
	IN `cuota` float
,
	IN `reduccion` FLOAT
)
insert into detalle_cobro(id_prestamos,quincena,cuota,reduccion) values(id_prestamos,quincena,cuota,reduccion)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_direccion
DELIMITER //
CREATE PROCEDURE `Insert_direccion`(
	IN `descripcion` varchar(500),
	IN `id_calle` int,
	IN `tp_direccion` varchar(100)


)
insert into direccion(descripcion,id_calle,tp_direccion) values(descripcion,id_calle,tp_direccion) on duplicate key
update descripcion=values(descripcion),id_calle=values(id_calle),tp_direccion=values(tp_direccion)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_empleado
DELIMITER //
CREATE PROCEDURE `Insert_empleado`(
	IN `id_tercero` int,
	IN `estado` bit




)
insert into empleado(id_tercero,estado) values(id_tercero,estado)
on duplicate key update estado=values(estado)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_empresa
DELIMITER //
CREATE PROCEDURE `Insert_empresa`(
	IN `id_tercero` int,
	IN `estado` bit




)
insert into empresa(id_tercero,estado) values(id_tercero,estado) on duplicate key update 
estado=values(estado)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_especiales
DELIMITER //
CREATE PROCEDURE `Insert_especiales`(
	IN `documento` VARCHAR(50),
	IN `valor` int


)
insert into especiales(documento,valor) values(documento,valor) on duplicate key update valor=values(valor)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_lista
DELIMITER //
CREATE PROCEDURE `Insert_lista`(
	IN `id_tercero` int,
	IN `documento` varchar(60)

)
insert into lista(id_tercero,documento) values(id_tercero,documento)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_mail
DELIMITER //
CREATE PROCEDURE `Insert_mail`(
	IN `descripcion` varchar(200)
 

)
insert into mail(descripcion) values(descripcion) on duplicate key update descripcion=values(descripcion)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_municipio
DELIMITER //
CREATE PROCEDURE `Insert_municipio`(
	IN `id_municipio` int,
	IN `descripcion` varchar(100),
	IN `id_provincia` int


)
insert into municipio(id_municipio,descripcion,id_provincia) values(id_municipio,descripcion,id_provincia) on duplicate key update 
descripcion=values(descripcion),id_provincia=values(id_provincia)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_negra
DELIMITER //
CREATE PROCEDURE `Insert_negra`(
	IN `valor` int
 
)
insert into negra(valor) values(valor) on duplicate key update valor=values(valor)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_persona
DELIMITER //
CREATE PROCEDURE `Insert_persona`(
id_tercero int,
apellido varchar(500),
nacimiento varchar(60),
sexo varchar(60),
sangre varchar(10),
estado_civil varchar(50)
)
insert into persona(id_tercero,apellido,nacimiento,sexo,sangre,estado_civil) values(id_tercero,apellido,nacimiento,sexo,sangre,estado_civil)
 on duplicate key update apellido=values(apellido),estado_civil=values(estado_civil)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_prestamos
DELIMITER //
CREATE PROCEDURE `Insert_prestamos`(
	IN `id_prestamos` varchar(10),
	IN `id_cliente` int,
	IN `documento` varchar(50),
	IN `numero` varchar(60),
	IN `referencia` varchar(200),
	IN `ref_dir` varchar(500),
	IN `ref_tel` varchar(30),
	IN `monto` float,
	IN `interes` int,
	IN `cuota` float,
	IN `nota` text,
	IN `usuario` VARCHAR(50),
	IN `estado` varchar(60)


)
insert into prestamos(id_prestamos,id_cliente,documento,numero,referencia,ref_dir,ref_tel,monto,interes,cuota,nota,usuario,estado)
 values(id_prestamos,id_cliente,documento,numero,referencia,ref_dir,ref_tel,monto,interes,cuota,nota,usuario,estado)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_sector
DELIMITER //
CREATE PROCEDURE `Insert_sector`(
	IN `descripcion` varchar(100),
	IN `id_municipio` int

)
insert into sector(descripcion,id_municipio) values(descripcion,id_municipio) on duplicate key update 
descripcion=values(descripcion),id_municipio=values(id_municipio)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_tasa
DELIMITER //
CREATE PROCEDURE `Insert_tasa`(
	IN `monto` int

)
insert into tasa(monto) values(monto) on duplicate key update 
monto=values(monto)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_telefono
DELIMITER //
CREATE PROCEDURE `Insert_telefono`(
	IN `descripcion` varchar(30),
	IN `tptelefono` VARCHAR(50)

)
insert into telefono(descripcion,tptelefono) values(descripcion,tptelefono) on duplicate key update 
 descripcion=values(descripcion),tptelefono=values(tptelefono)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_tercero
DELIMITER //
CREATE PROCEDURE `Insert_tercero`(
	IN `nombre` varchar(500),
	IN `documento` varchar(100),
	IN `tp_documento` varchar(100)



)
insert into tercero(nombre,documento,tp_documento) values(nombre,documento,tp_documento) on duplicate key update 
nombre=values(nombre),documento=values(documento),tp_documento=values(tp_documento)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_tercero_vs_direccion
DELIMITER //
CREATE PROCEDURE `Insert_tercero_vs_direccion`(
	IN `id_tercero` int,
	IN `id_direccion` int


)
insert into tercero_vs_direccion(id_tercero,id_direccion) values(id_tercero,id_direccion) on duplicate key update
id_tercero=values(id_tercero),id_direccion=values(id_direccion)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_tercero_vs_mail
DELIMITER //
CREATE PROCEDURE `Insert_tercero_vs_mail`(
	IN `id_tercero` int,
	IN `id_mail` int


)
insert into tercero_vs_mail(id_tercero,id_mail) values(id_tercero,id_mail) on duplicate key update 
id_tercero=values(id_tercero),id_mail=values(id_mail)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_tercero_vs_telefono
DELIMITER //
CREATE PROCEDURE `Insert_tercero_vs_telefono`(
	IN `id_tercero` int,
	IN `id_telefono` int


)
insert into tercero_vs_telefono(id_tercero,id_telefono) values(id_tercero,id_telefono) on duplicate key update 
id_tercero=values(id_tercero),id_telefono=values(id_telefono)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_tipo
DELIMITER //
CREATE PROCEDURE `Insert_tipo`(
	IN `id_tercero` int,
	IN `estado` varchar(50)

)
insert into tipo(id_tercero,estado) values(id_tercero,estado) on duplicate key update estado=values(estado)//
DELIMITER ;

-- Listage de la structure de la procédure cepa. Insert_usuario
DELIMITER //
CREATE PROCEDURE `Insert_usuario`(
	IN `id_tercero` int,
	IN `nivel_acceso` varchar(100),
	IN `nombre` varchar(100),
	IN `contrasena` varchar(100),
	IN `estado` bit


)
insert into usuario(id_tercero,nivel_acceso,nombre,contrasena,estado) values(id_tercero,nivel_acceso,nombre,AES_ENCRYPT(contrasena,'llave'),estado) 
on duplicate key update nivel_acceso=values(nivel_acceso),nombre=values(nombre),estado=values(estado)//
DELIMITER ;

-- Listage de la structure de la table cepa. lista
CREATE TABLE IF NOT EXISTS `lista` (
  `id_lista` int(11) NOT NULL AUTO_INCREMENT,
  `id_tercero` int(11) NOT NULL,
  `documento` varchar(60) NOT NULL,
  PRIMARY KEY (`id_lista`,`id_tercero`,`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.lista : ~0 rows (environ)
/*!40000 ALTER TABLE `lista` DISABLE KEYS */;
/*!40000 ALTER TABLE `lista` ENABLE KEYS */;

-- Listage de la structure de la table cepa. mail
CREATE TABLE IF NOT EXISTS `mail` (
  `id_mail` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_mail`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.mail : ~5 rows (environ)
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` (`id_mail`, `descripcion`) VALUES
	(1, 'marcelinmac@gmail.com'),
	(2, 'macceaum@gmail.com'),
	(3, 'alexnancy90@gmail.com'),
	(4, 'bidolecrayon@gmail.com'),
	(5, 'droseedavidsonpaul@gmail.com');
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;

-- Listage de la structure de la table cepa. municipio
CREATE TABLE IF NOT EXISTS `municipio` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `id_provincia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.municipio : ~11 rows (environ)
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` (`id_municipio`, `descripcion`, `id_provincia`) VALUES
	(1, 'Azua de Compotela', 1),
	(2, 'Estebanía', 1),
	(3, 'Guayabal', 1),
	(4, 'Las Charcas', 1),
	(5, 'Las Yayas de Viajamas', 1),
	(6, 'Padre de las Casas', 1),
	(7, 'Peralta', 1),
	(8, 'Pueblo Viejo', 1),
	(9, 'Sabana Yegua', 1),
	(10, 'Tabana Arriba', 1),
	(11, 'Santiago de los Caballeros', 28);
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;

-- Listage de la structure de la table cepa. negra
CREATE TABLE IF NOT EXISTS `negra` (
  `id_lista` int(11) NOT NULL AUTO_INCREMENT,
  `valor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lista`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.negra : ~0 rows (environ)
/*!40000 ALTER TABLE `negra` DISABLE KEYS */;
INSERT INTO `negra` (`id_lista`, `valor`) VALUES
	(1, 5);
/*!40000 ALTER TABLE `negra` ENABLE KEYS */;

-- Listage de la structure de la table cepa. pais
CREATE TABLE IF NOT EXISTS `pais` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.pais : ~0 rows (environ)
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` (`id_pais`, `descripcion`) VALUES
	(1, 'República Dominicana');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;

-- Listage de la structure de la table cepa. persona
CREATE TABLE IF NOT EXISTS `persona` (
  `id_tercero` int(11) NOT NULL,
  `apellido` varchar(500) DEFAULT NULL,
  `nacimiento` varchar(60) DEFAULT NULL,
  `sexo` varchar(60) DEFAULT NULL,
  `sangre` varchar(10) DEFAULT NULL,
  `estado_civil` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tercero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.persona : ~4 rows (environ)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`id_tercero`, `apellido`, `nacimiento`, `sexo`, `sangre`, `estado_civil`) VALUES
	(5, 'Marcelin', 'sábado 14 ene 1989', 'Hombre', 'O+', 'Casado(a)'),
	(6, 'ALEXANDRE', 'jueves 04 abr 1991', 'Mujer', 'A+', 'Comprometido(a)'),
	(8, 'Philemon', 'viernes 31 jul 1987', 'Hombre', 'B+', 'Otros'),
	(9, 'Paul', 'sábado 15 ago 1992', 'Hombre', 'AB+', 'Casado(a)');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;

-- Listage de la structure de la table cepa. prestamos
CREATE TABLE IF NOT EXISTS `prestamos` (
  `id_prestamos` varchar(10) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `numero` varchar(60) DEFAULT NULL,
  `referencia` varchar(200) DEFAULT NULL,
  `ref_dir` varchar(500) DEFAULT NULL,
  `ref_tel` varchar(30) DEFAULT NULL,
  `monto` float DEFAULT NULL,
  `interes` int(11) DEFAULT NULL,
  `cuota` float DEFAULT NULL,
  `nota` text,
  `usuario` varchar(50) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estado` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_prestamos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.prestamos : ~2 rows (environ)
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` (`id_prestamos`, `id_cliente`, `documento`, `numero`, `referencia`, `ref_dir`, `ref_tel`, `monto`, `interes`, `cuota`, `nota`, `usuario`, `fecha`, `estado`) VALUES
	('CEPA#38519', 5, 'Pasaporte', 'PP45637273', 'Myrlove Audate', 'Pekin, calle 12', '8094484251', 2000, 15, 300, 'A cambio de un pasaporte', 'Ing. Macceau Marcelin', '2018-08-22 00:00:00', 'Realizado'),
	('CEPA#49686', 8, 'Pasaporte', 'CH7845965', 'Davidson Osee', 'Brizas Universitaria', '(809) 438 2640', 5000, 15, 412.5, 'Este prestamos tiene como garantia un pasaporte', 'Ing. Macceau Marcelin', '2018-09-16 10:49:16', 'Realizado');
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;

-- Listage de la structure de la table cepa. provincia
CREATE TABLE IF NOT EXISTS `provincia` (
  `id_provincia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.provincia : ~31 rows (environ)
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` (`id_provincia`, `descripcion`, `id_pais`) VALUES
	(1, 'Azua', 1),
	(2, 'Baoruco', 1),
	(3, 'Barahona', 1),
	(4, 'Dajabón', 1),
	(5, 'Duarte', 1),
	(6, 'El Seibo', 1),
	(7, 'Elías Piña', 1),
	(8, 'Espaillat', 1),
	(9, 'Hato Mayor', 1),
	(10, 'Hermanas Mirabal', 1),
	(11, 'Independencia', 1),
	(12, 'La Altagracia', 1),
	(13, 'La Romana', 1),
	(14, 'La Vega', 1),
	(15, 'María Trinidad Sanchez', 1),
	(16, 'Monseñor Nouel', 1),
	(17, 'Montecristi', 1),
	(18, 'Monte Plata', 1),
	(19, 'Pedernales', 1),
	(20, 'Peravia', 1),
	(21, 'Puerto Plata', 1),
	(22, 'Sámana', 1),
	(23, 'San Crístobal', 1),
	(24, 'San Jose de Ocoa', 1),
	(25, 'San Juan', 1),
	(26, 'San Pedro de Macorís', 1),
	(27, 'Sánchez Ramírez', 1),
	(28, 'Santiago', 1),
	(29, 'Santiago Rodríguez', 1),
	(30, 'Santo Domingo', 1),
	(31, 'Valverde', 1);
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;

-- Listage de la structure de la table cepa. sector
CREATE TABLE IF NOT EXISTS `sector` (
  `id_sector` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sector`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.sector : ~5 rows (environ)
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` (`id_sector`, `descripcion`, `id_municipio`) VALUES
	(1, 'Villa Olimpica', 11),
	(2, 'Licey', 11),
	(3, 'Las Flores', 11),
	(4, 'Pekin', 11),
	(5, 'Correa', 11);
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;

-- Listage de la structure de la table cepa. tasa
CREATE TABLE IF NOT EXISTS `tasa` (
  `id_tasa` int(11) NOT NULL AUTO_INCREMENT,
  `monto` int(11) DEFAULT NULL,
  `fecha_aplicable` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tasa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.tasa : ~0 rows (environ)
/*!40000 ALTER TABLE `tasa` DISABLE KEYS */;
INSERT INTO `tasa` (`id_tasa`, `monto`, `fecha_aplicable`) VALUES
	(1, 20, '2018-09-16 05:18:53');
/*!40000 ALTER TABLE `tasa` ENABLE KEYS */;

-- Listage de la structure de la table cepa. telefono
CREATE TABLE IF NOT EXISTS `telefono` (
  `id_telefono` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  `tptelefono` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_telefono`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.telefono : ~4 rows (environ)
/*!40000 ALTER TABLE `telefono` DISABLE KEYS */;
INSERT INTO `telefono` (`id_telefono`, `descripcion`, `tptelefono`) VALUES
	(1, '(829) 372 5263', 'Casa'),
	(2, '(809) 889 6012', 'Casa'),
	(3, '(809) 403 4878', 'Personal'),
	(4, '(809) 438 2640', 'Personal');
/*!40000 ALTER TABLE `telefono` ENABLE KEYS */;

-- Listage de la structure de la table cepa. tercero
CREATE TABLE IF NOT EXISTS `tercero` (
  `id_tercero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) DEFAULT NULL,
  `documento` varchar(100) NOT NULL,
  `tp_documento` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_tercero`,`documento`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.tercero : ~4 rows (environ)
/*!40000 ALTER TABLE `tercero` DISABLE KEYS */;
INSERT INTO `tercero` (`id_tercero`, `nombre`, `documento`, `tp_documento`) VALUES
	(5, 'Macceau', 'PP4325293', 'Pasaporte'),
	(6, 'Nancy', 'PP3087036', 'Pasaporte'),
	(8, 'Samuel', 'CH3381527', 'Pasaporte'),
	(9, 'Osee Davidson ', 'SA4449542', 'Pasaporte');
/*!40000 ALTER TABLE `tercero` ENABLE KEYS */;

-- Listage de la structure de la table cepa. tercero_vs_direccion
CREATE TABLE IF NOT EXISTS `tercero_vs_direccion` (
  `id_terdir` int(11) NOT NULL AUTO_INCREMENT,
  `id_tercero` int(11) DEFAULT NULL,
  `id_direccion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_terdir`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.tercero_vs_direccion : ~4 rows (environ)
/*!40000 ALTER TABLE `tercero_vs_direccion` DISABLE KEYS */;
INSERT INTO `tercero_vs_direccion` (`id_terdir`, `id_tercero`, `id_direccion`) VALUES
	(2, 5, 3),
	(3, 6, 4),
	(4, 8, 5),
	(5, 9, 6);
/*!40000 ALTER TABLE `tercero_vs_direccion` ENABLE KEYS */;

-- Listage de la structure de la table cepa. tercero_vs_mail
CREATE TABLE IF NOT EXISTS `tercero_vs_mail` (
  `id_termail` int(11) NOT NULL AUTO_INCREMENT,
  `id_tercero` int(11) DEFAULT NULL,
  `id_mail` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_termail`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.tercero_vs_mail : ~5 rows (environ)
/*!40000 ALTER TABLE `tercero_vs_mail` DISABLE KEYS */;
INSERT INTO `tercero_vs_mail` (`id_termail`, `id_tercero`, `id_mail`) VALUES
	(3, 5, 1),
	(4, 5, 2),
	(5, 6, 3),
	(6, 8, 4),
	(7, 9, 5);
/*!40000 ALTER TABLE `tercero_vs_mail` ENABLE KEYS */;

-- Listage de la structure de la table cepa. tercero_vs_telefono
CREATE TABLE IF NOT EXISTS `tercero_vs_telefono` (
  `id_tertel` int(11) NOT NULL AUTO_INCREMENT,
  `id_tercero` int(11) DEFAULT NULL,
  `id_telefono` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tertel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.tercero_vs_telefono : ~4 rows (environ)
/*!40000 ALTER TABLE `tercero_vs_telefono` DISABLE KEYS */;
INSERT INTO `tercero_vs_telefono` (`id_tertel`, `id_tercero`, `id_telefono`) VALUES
	(2, 5, 1),
	(3, 6, 2),
	(4, 8, 3),
	(5, 9, 4);
/*!40000 ALTER TABLE `tercero_vs_telefono` ENABLE KEYS */;

-- Listage de la structure de la table cepa. tipo
CREATE TABLE IF NOT EXISTS `tipo` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `id_tercero` int(11) NOT NULL DEFAULT '0',
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`,`id_tercero`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.tipo : ~4 rows (environ)
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` (`id_tipo`, `id_tercero`, `estado`) VALUES
	(1, 5, 'Especial'),
	(2, 6, 'Especial'),
	(3, 8, 'Especial'),
	(4, 9, 'Especial');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;

-- Listage de la structure de la table cepa. usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_tercero` int(11) NOT NULL,
  `nivel_acceso` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`,`id_tercero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Listage des données de la table cepa.usuario : ~2 rows (environ)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `id_tercero`, `nivel_acceso`, `nombre`, `contrasena`, `estado`) VALUES
	(1, 6, 'Bajo', 'alexandrenancy@cepa.com', '9à]ÿ&:g+oep]2h> Sw“]ùÄ"úB\n´', b'1'),
	(2, 9, 'Alto', 'empresariopaul@cepa.com', 'gmýÔ>UëÃŸD/¼¶•«', b'1');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
