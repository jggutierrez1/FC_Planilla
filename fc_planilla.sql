/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `fc_planilla` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `fc_planilla`;

DROP TABLE IF EXISTS `agentes_credito`;
CREATE TABLE IF NOT EXISTS `agentes_credito` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `acre_id` int(11) NOT NULL DEFAULT 0,
  `acre_codigo` char(12) DEFAULT NULL,
  `acre_inactivo` int(11) DEFAULT 0,
  `acre_nombre` varchar(80) DEFAULT NULL,
  `acre_ruc` varchar(30) DEFAULT NULL,
  `acre_direccion` tinytext DEFAULT NULL,
  `acre_telefono1` varchar(20) DEFAULT NULL,
  `acre_telefono2` varchar(20) DEFAULT NULL,
  `acre_contacto` varchar(80) DEFAULT NULL,
  `acre_webpage` varchar(200) DEFAULT NULL,
  `acre_email` varchar(120) DEFAULT NULL,
  `acre_fecha_ingreso` date DEFAULT NULL,
  `acre_notas` tinytext DEFAULT NULL,
  `acre_usuario_modif` char(20) DEFAULT NULL,
  `acre_usuario_alta` char(20) DEFAULT NULL,
  `acre_fecha_modif` datetime DEFAULT NULL,
  `acre_fecha_alta` datetime DEFAULT NULL,
  PRIMARY KEY (`autoinc`),
  KEY `nombre` (`acre_nombre`),
  KEY `codigo` (`acre_codigo`),
  KEY `acre_id` (`acre_id`),
  KEY `acre_inactivo` (`acre_inactivo`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `agentes_credito` DISABLE KEYS */;
INSERT INTO `agentes_credito` (`autoinc`, `acre_id`, `acre_codigo`, `acre_inactivo`, `acre_nombre`, `acre_ruc`, `acre_direccion`, `acre_telefono1`, `acre_telefono2`, `acre_contacto`, `acre_webpage`, `acre_email`, `acre_fecha_ingreso`, `acre_notas`, `acre_usuario_modif`, `acre_usuario_alta`, `acre_fecha_modif`, `acre_fecha_alta`) VALUES
	(3, 1, '000001', 0, 'ALLBANK CORP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(4, 2, '000002', 0, 'BAC INTERNATIONAL BANK, INC.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(5, 3, '000003', 0, 'BALBOA BANK & TRUST CORP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(6, 4, '000004', 0, 'BANCO ALIADO S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(7, 5, '000005', 0, 'BANCO AZTECA (PANAMÁ), S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(8, 6, '000006', 0, 'BANCO BAC DE PANAMÁ, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(9, 7, '000007', 0, 'BANCO BOLIVARIANO (PANAMÁ), S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(10, 8, '000008', 0, 'BANCO CITIBANK (PANAMÁ,) S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(11, 9, '000009', 0, 'BANCO DAVIVIENDA (PANAMÁ) S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(12, 10, '000010', 0, 'BANCO DE BOGOTÁ, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(13, 11, '000011', 0, 'BANCO DEL PACÍFICO (PANAMÁ), S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(14, 12, '000012', 0, 'BANCO DELTA, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(15, 13, '000013', 0, 'BANCO FICOHSA (PANAMÁ), S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(16, 14, '000014', 0, 'BANCO G&T CONTINENTAL (PANAMÁ) S.A. (BMF)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(17, 15, '000015', 0, 'BANCO HIPOTECARIO NACIONAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(18, 16, '000016', 0, 'BANCO GENERAL, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(19, 17, '000017', 0, 'BANCO INTERNACIONAL DE COSTA RICA, S.A (BICSA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(20, 18, '000018', 0, 'BANCO LA HIPOTECARIA, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(21, 19, '000019', 0, 'BANCO LAFISE PANAMÁ S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(22, 20, '000020', 0, 'BANCO LATINOAMERICANO DE COMERCIO EXTERIOR, S.A. (BLADEX)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(23, 21, '000021', 0, 'BANCO NACIONAL DE PANAMÁ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(24, 22, '000022', 0, 'BANCO PANAMÁ, S.A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(25, 23, '000023', 0, 'BANCO PANAMEÑO DE LA VIVIENDA, S.A. (BANVIVIENDA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(26, 24, '000024', 0, 'BANCO PICHINCHA PANAMÁ, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(27, 25, '000025', 0, 'BANCO PRIVAL, S.A. (ESPAÑOL) O PRIVAL BANK, S.A. (EN INGLÉS)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(28, 26, '000026', 0, 'BANCO UNIVERSAL, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(29, 27, '000027', 0, 'BANCOLOMBIA S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(30, 28, '000028', 0, 'BANESCO S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(31, 29, '000029', 0, 'BANISI, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(32, 30, '000030', 0, 'BANISTMO S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(33, 31, '000031', 0, 'BANK LEUMI-LE ISRAEL B.M.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(34, 32, '000032', 0, 'BANK OF CHINA LIMITED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(35, 33, '000033', 0, 'BBP BANK S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(36, 34, '000034', 0, 'BCT BANK INTERNATIONAL S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(37, 35, '000035', 0, 'CAJA DE AHORROS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(38, 36, '000036', 0, 'CAPITAL BANK INC.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(39, 37, '000037', 0, 'CITIBANK, N.A. SUCURSAL PANAMÁ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(40, 38, '000038', 0, 'CREDICORP BANK S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(41, 39, '000039', 0, 'FPB BANK INC.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(42, 40, '000040', 0, 'GLOBAL BANK CORPORATION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(43, 41, '000041', 0, 'KOREA EXCHANGE BANK, LTD.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(44, 42, '000042', 0, 'MEGA INTERNATIONAL COMMERCIAL BANK CO. LTD.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(45, 43, '000043', 0, 'MERCANTIL BANK (PANAMÁ), S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(46, 44, '000044', 0, 'METROBANK, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(47, 45, '000045', 0, 'MIBANCO, S.A.BMF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(48, 46, '000046', 0, 'MMG BANK CORPORATION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(49, 47, '000047', 0, 'MULTIBANK INC.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(50, 48, '000048', 0, 'PRODUBANK (PANAMÁ) S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(51, 49, '000049', 0, 'ST. GEORGES BANK & COMPANY, INC.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(52, 50, '000050', 0, 'THE BANK OF NOVA SCOTIA (PANAMÁ), S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(53, 51, '000051', 0, 'THE BANK OF NOVA SCOTIA (SCOTIABANK)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(54, 52, '000052', 0, 'TOWERBANK INTERNATIONAL INC.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL),
	(55, 53, '000053', 0, 'UNIBANK, S.A.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, NULL);
/*!40000 ALTER TABLE `agentes_credito` ENABLE KEYS */;

DROP TABLE IF EXISTS `base64_data`;
CREATE TABLE IF NOT EXISTS `base64_data` (
  `c` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `val` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40000 ALTER TABLE `base64_data` DISABLE KEYS */;
INSERT INTO `base64_data` (`c`, `val`) VALUES
	('A', 0),
	('B', 1),
	('C', 2),
	('D', 3),
	('E', 4),
	('F', 5),
	('G', 6),
	('H', 7),
	('I', 8),
	('J', 9),
	('K', 10),
	('L', 11),
	('M', 12),
	('N', 13),
	('O', 14),
	('P', 15),
	('Q', 16),
	('R', 17),
	('S', 18),
	('T', 19),
	('U', 20),
	('V', 21),
	('W', 22),
	('X', 23),
	('Y', 24),
	('Z', 25),
	('a', 26),
	('b', 27),
	('c', 28),
	('d', 29),
	('e', 30),
	('f', 31),
	('g', 32),
	('h', 33),
	('i', 34),
	('j', 35),
	('k', 36),
	('l', 37),
	('m', 38),
	('n', 39),
	('o', 40),
	('p', 41),
	('q', 42),
	('r', 43),
	('s', 44),
	('t', 45),
	('u', 46),
	('v', 47),
	('w', 48),
	('x', 49),
	('y', 50),
	('z', 51),
	('0', 52),
	('1', 53),
	('2', 54),
	('3', 55),
	('4', 56),
	('5', 57),
	('6', 58),
	('7', 59),
	('8', 60),
	('9', 61),
	('+', 62),
	('/', 63),
	('=', 0);
/*!40000 ALTER TABLE `base64_data` ENABLE KEYS */;

DROP TABLE IF EXISTS `calendario_decimo`;
CREATE TABLE IF NOT EXISTS `calendario_decimo` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` char(50) DEFAULT NULL,
  `dia` int(2) NOT NULL DEFAULT 0,
  `mes` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`autoinc`),
  KEY `dia` (`dia`),
  KEY `mes` (`mes`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `calendario_decimo` DISABLE KEYS */;
INSERT INTO `calendario_decimo` (`autoinc`, `Descripcion`, `dia`, `mes`) VALUES
	(1, 'Primera   Partida XIII', 15, 4),
	(2, 'Segunda Partida XIII', 15, 8),
	(3, 'Tercera   Partida XIII', 15, 12);
/*!40000 ALTER TABLE `calendario_decimo` ENABLE KEYS */;

DROP TABLE IF EXISTS `empresas`;
CREATE TABLE IF NOT EXISTS `empresas` (
  `emp_autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(3) DEFAULT NULL,
  `emp_descripcion` char(85) NOT NULL DEFAULT '',
  `emp_ruc` char(85) NOT NULL DEFAULT '',
  `emp_dv` char(10) NOT NULL DEFAULT '',
  `emp_abrev` char(4) NOT NULL DEFAULT '',
  `emp_carpeta_reportes` varchar(120) NOT NULL DEFAULT '',
  `emp_telefono1` char(12) NOT NULL DEFAULT '',
  `emp_telefono2` char(12) NOT NULL DEFAULT '',
  `emp_fax` char(12) NOT NULL DEFAULT '',
  `emp_direccion` text DEFAULT NULL,
  `emp_apartado` text DEFAULT NULL,
  `emp_email` char(100) NOT NULL DEFAULT '',
  `separa_mil` char(1) NOT NULL DEFAULT ',',
  `separa_dec` char(1) NOT NULL DEFAULT '.',
  `emp_imagen` blob DEFAULT NULL,
  `emp_imagen_path` varchar(120) NOT NULL DEFAULT '',
  `emp_inactivo` int(1) unsigned NOT NULL DEFAULT 0,
  `emp_fecha_alta` datetime NOT NULL DEFAULT '2010-01-01 00:00:00',
  `emp_fecha_modif` datetime NOT NULL DEFAULT '2010-01-01 00:00:00',
  `emp_horas_sem_codigo` char(2) DEFAULT NULL,
  `emp_horas_sem` int(4) NOT NULL DEFAULT 0,
  `u_usuario_alta` char(20) NOT NULL DEFAULT 'ANONIMO',
  `u_usuario_modif` char(20) NOT NULL DEFAULT 'ANONIMO',
  PRIMARY KEY (`emp_autoinc`),
  UNIQUE KEY `emp_id` (`emp_id`),
  KEY `emp_descripcion` (`emp_descripcion`),
  KEY `emp_inactivo` (`emp_inactivo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` (`emp_autoinc`, `emp_id`, `emp_descripcion`, `emp_ruc`, `emp_dv`, `emp_abrev`, `emp_carpeta_reportes`, `emp_telefono1`, `emp_telefono2`, `emp_fax`, `emp_direccion`, `emp_apartado`, `emp_email`, `separa_mil`, `separa_dec`, `emp_imagen`, `emp_imagen_path`, `emp_inactivo`, `emp_fecha_alta`, `emp_fecha_modif`, `emp_horas_sem_codigo`, `emp_horas_sem`, `u_usuario_alta`, `u_usuario_modif`) VALUES
	(1, 1, 'COOPERATIVA DE AHORRO Y CREDITO EMPLEADOS DEL IDAAN,  R. L.', 'ABCD', '', 'ABC', '', '', '', '', NULL, NULL, '', ',', '.', NULL, '', 0, '2013-06-30 22:20:30', '2019-06-11 10:49:45', '02', 44, 'ADMIN', 'ADMIN');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;

DROP TABLE IF EXISTS `gen_calendario`;
CREATE TABLE IF NOT EXISTS `gen_calendario` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `fer_codigo` char(3) DEFAULT NULL,
  `fer_nombre` varchar(50) DEFAULT NULL,
  `fer_recargo` decimal(12,2) DEFAULT 0.00,
  `fer_fecha` date DEFAULT NULL,
  `fer_fecha_exacta` int(1) DEFAULT 0,
  `fer_fecha_variabl` int(1) DEFAULT 0,
  `fer_feriado` int(1) DEFAULT 0,
  `fer_nolaboral` int(1) DEFAULT 0,
  `fer_inactivo` int(1) DEFAULT 0,
  `fer_usuario_modif` char(20) DEFAULT NULL,
  `fer_usuario_alta` char(20) DEFAULT NULL,
  `fer_fecha_modif` datetime DEFAULT NULL,
  `fer_fecha_alta` datetime DEFAULT NULL,
  `fer_notas` mediumtext DEFAULT NULL,
  PRIMARY KEY (`autoinc`),
  UNIQUE KEY `fer_codigo` (`fer_codigo`),
  KEY `fer_nombre` (`fer_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `gen_calendario` DISABLE KEYS */;
INSERT INTO `gen_calendario` (`autoinc`, `fer_codigo`, `fer_nombre`, `fer_recargo`, `fer_fecha`, `fer_fecha_exacta`, `fer_fecha_variabl`, `fer_feriado`, `fer_nolaboral`, `fer_inactivo`, `fer_usuario_modif`, `fer_usuario_alta`, `fer_fecha_modif`, `fer_fecha_alta`, `fer_notas`) VALUES
	(1, '01', 'Año Nuevo', 150.00, '2019-01-01', 1, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(2, '02', 'Día de los Mártires', 150.00, '2019-01-09', 1, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(3, '03', 'Martes de Carnaval', 150.00, '2019-03-05', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(4, '04', 'Viernes Santo', 150.00, '2019-04-19', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(5, '05', 'Día del Trabajador', 150.00, '2019-05-01', 1, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(6, '06', 'Día de la Separación de Panamá de Colombia', 150.00, '2019-11-03', 1, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(7, '07', 'Movimiento Separatista en Colón', 150.00, '2019-11-05', 1, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(8, '08', 'Grito de Independencia', 150.00, '2019-11-10', 1, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(9, '09', 'Día de la Independencia de Panamá de España', 150.00, '2019-11-28', 1, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(10, '10', 'Día de la Madre', 150.00, '2019-12-08', 1, 0, 1, 1, 0, 'ADMIN', NULL, '2019-06-11 10:29:29', NULL, NULL),
	(11, '11', 'Navidad', 150.00, '2019-12-25', 1, 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL),
	(12, '12', 'Toma posesion de Presidente de la republica', 150.00, '2019-07-01', 0, 1, 1, 1, 0, 'ADMIN', NULL, '2019-06-11 08:28:01', NULL, NULL);
/*!40000 ALTER TABLE `gen_calendario` ENABLE KEYS */;

DROP TABLE IF EXISTS `gen_calendario_decimo`;
CREATE TABLE IF NOT EXISTS `gen_calendario_decimo` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `dec_codigo` char(2) DEFAULT NULL,
  `dec_descripcion` char(50) DEFAULT NULL,
  `dec_dia` int(2) NOT NULL DEFAULT 0,
  `dec_mes` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`autoinc`),
  UNIQUE KEY `dec_codigo` (`dec_codigo`),
  KEY `dia` (`dec_dia`),
  KEY `mes` (`dec_mes`),
  KEY `dec_descripcion` (`dec_descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `gen_calendario_decimo` DISABLE KEYS */;
INSERT INTO `gen_calendario_decimo` (`autoinc`, `dec_codigo`, `dec_descripcion`, `dec_dia`, `dec_mes`) VALUES
	(1, '01', 'Primera   Partida XIII', 15, 4),
	(2, '02', 'Segunda Partida XIII', 15, 8),
	(3, '03', 'Tercera   Partida XIII', 15, 12);
/*!40000 ALTER TABLE `gen_calendario_decimo` ENABLE KEYS */;

DROP TABLE IF EXISTS `gen_corregimientos`;
CREATE TABLE IF NOT EXISTS `gen_corregimientos` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `cod_prov` char(2) NOT NULL DEFAULT '0',
  `cod_corr` char(4) NOT NULL DEFAULT '0',
  `nom_corr` varchar(60) NOT NULL DEFAULT '0',
  `region` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`autoinc`),
  KEY `cod_prov` (`cod_prov`),
  KEY `cod_corr` (`cod_corr`),
  KEY `nom_corr` (`nom_corr`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `gen_corregimientos` DISABLE KEYS */;
INSERT INTO `gen_corregimientos` (`autoinc`, `cod_prov`, `cod_corr`, `nom_corr`, `region`) VALUES
	(1, '01', '1', 'Bocas del Toro', 1),
	(2, '01', '2', 'Changuinola', 1),
	(3, '01', '3', 'Chiriquí Grande ', 1),
	(4, '01', '4', 'Almirante ', 2),
	(5, '02', '5', 'Aguadulce ', 1),
	(6, '02', '6', 'Antón ', 1),
	(7, '02', '7', 'La Pintada ', 2),
	(8, '02', '8', 'Natá ', 1),
	(9, '02', '9', 'Olá ', 2),
	(10, '02', '10', 'Penonomé ', 1),
	(11, '03', '11', 'Colón ', 1),
	(12, '03', '12', 'Chagres ', 2),
	(13, '03', '13', 'Donoso ', 1),
	(14, '03', '14', 'Portobelo ', 1),
	(15, '03', '15', 'Santa Isabel ', 1),
	(16, '03', '16', 'Omar Torrijos Herrera ', 2),
	(17, '04', '17', 'Alanje ', 2),
	(18, '04', '18', 'Barú ', 1),
	(19, '04', '19', 'Boquerón ', 1),
	(20, '04', '20', 'Boquete ', 1),
	(21, '04', '21', 'Bugaba ', 1),
	(22, '04', '22', 'David ', 1),
	(23, '04', '23', 'Dolega ', 1),
	(24, '04', '24', 'Gualaca ', 2),
	(25, '04', '25', 'Remedios ', 2),
	(26, '04', '26', 'Renacimiento ', 2),
	(27, '04', '27', 'San Félix ', 1),
	(28, '04', '28', 'Tierras Altas ', 2),
	(29, '04', '29', 'San Lorenzo ', 2),
	(30, '04', '30', 'Tolé ', 2),
	(31, '05', '31', 'Chepigana ', 2),
	(32, '05', '32', 'Pinogana ', 2),
	(33, '05', '33', 'Santa Fe ', 2),
	(34, '06', '34', 'Chitré ', 1),
	(35, '06', '35', 'Las Minas ', 2),
	(36, '06', '36', 'Los Pozos ', 2),
	(37, '06', '37', 'Ocú ', 2),
	(38, '06', '38', 'Parita ', 1),
	(39, '06', '39', 'Santa María ', 1),
	(40, '06', '40', 'Pesé ', 1),
	(41, '07', '41', 'Guararé', 1),
	(42, '07', '42', 'Las Tablas ', 1),
	(43, '07', '43', 'Los Santos ', 1),
	(44, '07', '44', 'Macaracas ', 2),
	(45, '07', '45', 'Pedasí ', 1),
	(46, '07', '46', 'Pocrí ', 2),
	(47, '07', '47', 'Tonosí ', 2),
	(48, '08', '48', 'Balboa ', 2),
	(49, '08', '49', 'Chimán ', 2),
	(50, '08', '50', 'Chepo ', 1),
	(51, '08', '51', 'Taboga ', 1),
	(52, '08', '52', 'Panamá ', 1),
	(53, '08', '53', 'San Miguelito ', 1),
	(54, '10', '54', 'Arraiján ', 1),
	(55, '10', '55', 'Capira ', 1),
	(56, '10', '56', 'Chame ', 1),
	(57, '10', '57', 'San Carlos ', 1),
	(58, '10', '58', 'La Chorrera ', 1),
	(59, '09', '59', 'Atalaya ', 1),
	(60, '09', '60', 'Calobre ', 2),
	(61, '09', '61', 'Cañazas ', 2),
	(62, '09', '62', 'La Mesa ', 2),
	(63, '09', '63', 'Las Palmas ', 2),
	(64, '09', '64', 'Mariato ', 2),
	(65, '09', '65', 'Montijo ', 2),
	(66, '09', '66', 'Río de Jesús ', 2),
	(67, '09', '67', 'San Francisco ', 2),
	(68, '09', '68', 'Santa Fe ', 2),
	(69, '09', '69', 'Santiago ', 1),
	(70, '09', '70', 'Soná ', 2),
	(71, '11', '71', 'Besiko ', 2),
	(72, '11', '72', 'Jirondai ', 2),
	(73, '11', '73', 'Kankintú ', 2),
	(74, '11', '74', 'Kusapín ', 2),
	(75, '11', '75', 'Mironó ', 2),
	(76, '11', '76', 'Muná ', 2),
	(77, '11', '77', 'Nole Duima ', 2),
	(78, '11', '78', 'Ñurum ', 2),
	(79, '11', '79', 'Santa Catalina o Calovébora ', 2),
	(80, '12', '80', 'Cémaco ', 2),
	(81, '12', '81', 'Sambú ', 2);
/*!40000 ALTER TABLE `gen_corregimientos` ENABLE KEYS */;

DROP TABLE IF EXISTS `gen_feriados`;
CREATE TABLE IF NOT EXISTS `gen_feriados` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `fer_codigo` char(2) DEFAULT NULL,
  `fer_nombre` varchar(50) DEFAULT NULL,
  `fer_recargo` decimal(12,2) DEFAULT 0.00,
  `fer_fecha` date DEFAULT NULL,
  `fer_fecha_exacta` int(1) DEFAULT 0,
  `fer_fecha_variabl` int(1) DEFAULT 0,
  PRIMARY KEY (`autoinc`),
  UNIQUE KEY `fer_codigo` (`fer_codigo`),
  KEY `fer_nombre` (`fer_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `gen_feriados` DISABLE KEYS */;
INSERT INTO `gen_feriados` (`autoinc`, `fer_codigo`, `fer_nombre`, `fer_recargo`, `fer_fecha`, `fer_fecha_exacta`, `fer_fecha_variabl`) VALUES
	(1, '01', 'Año Nuevo', 150.00, '2019-01-01', 0, 0),
	(2, '02', 'Día de los Mártires', 150.00, '2019-01-09', 0, 0),
	(3, '03', 'Martes de Carnaval', 150.00, '2019-03-05', 0, 1),
	(4, '04', 'Viernes Santo', 150.00, '2019-04-19', 0, 1),
	(5, '05', 'Día del Trabajador', 150.00, '2019-05-01', 0, 0),
	(6, '06', 'Día de la Separación de Panamá de Colombia', 150.00, '2019-11-03', 0, 0),
	(7, '07', 'Movimiento Separatista en Colón', 150.00, '2019-11-05', 0, 0),
	(8, '08', 'Grito de Independencia', 150.00, '2019-11-10', 0, 0),
	(9, '09', 'Día de la Independencia de Panamá de España', 150.00, '2019-11-28', 0, 0),
	(10, '10', 'Día de la Madre', 150.00, '2019-12-08', 0, 0),
	(11, '11', 'Navidad', 150.00, '2019-12-25', 0, 0),
	(12, '12', 'Toma posesion de Presidente de la republica', 150.00, '2019-07-01', 1, 1);
/*!40000 ALTER TABLE `gen_feriados` ENABLE KEYS */;

DROP TABLE IF EXISTS `gen_frecuencia_pago`;
CREATE TABLE IF NOT EXISTS `gen_frecuencia_pago` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `frec_codigo` int(4) DEFAULT NULL,
  `frec_tipo` int(1) DEFAULT NULL,
  `frec_descripcion` varchar(80) DEFAULT '0',
  `frec_dia_ini` int(4) DEFAULT 0,
  `frec_dia_fin` int(4) DEFAULT 0,
  `frec_ult_dia_mes` int(1) DEFAULT 0,
  `frec_dias` int(4) DEFAULT 0,
  `frec_inactivo` int(1) DEFAULT 0,
  `frec_usuario_modif` char(20) DEFAULT NULL,
  `frec_usuario_alta` char(20) DEFAULT NULL,
  `frec_fecha_modif` datetime DEFAULT NULL,
  `frec_fecha_alta` datetime DEFAULT NULL,
  PRIMARY KEY (`autoinc`),
  UNIQUE KEY `frec_codigo` (`frec_codigo`),
  KEY `frec_descripcion` (`frec_descripcion`),
  KEY `frec_tipo` (`frec_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `gen_frecuencia_pago` DISABLE KEYS */;
INSERT INTO `gen_frecuencia_pago` (`autoinc`, `frec_codigo`, `frec_tipo`, `frec_descripcion`, `frec_dia_ini`, `frec_dia_fin`, `frec_ult_dia_mes`, `frec_dias`, `frec_inactivo`, `frec_usuario_modif`, `frec_usuario_alta`, `frec_fecha_modif`, `frec_fecha_alta`) VALUES
	(1, 1, 1, 'Primera quincena', 1, 15, 0, 15, 0, NULL, NULL, NULL, NULL),
	(2, 2, 1, 'Segunda quincena', 16, 31, 1, 15, 0, 'ADMIN', NULL, '2019-06-11 13:09:16', NULL),
	(3, 3, 2, 'Mensual', 1, 30, 1, 30, 0, 'ADMIN', NULL, '2019-06-11 13:09:23', NULL),
	(4, 4, 3, 'Semanal', 1, 6, 0, 6, 0, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `gen_frecuencia_pago` ENABLE KEYS */;

DROP TABLE IF EXISTS `gen_impuestos_fijos`;
CREATE TABLE IF NOT EXISTS `gen_impuestos_fijos` (
  `autoinc` int(3) NOT NULL AUTO_INCREMENT,
  `emp_id` int(3) DEFAULT 0,
  `porc_seg` decimal(6,3) DEFAULT 0.000,
  `porc_edu` decimal(6,3) DEFAULT 0.000,
  `monto_isr1_desde` decimal(12,2) DEFAULT 0.00,
  `monto_isr1_hasta` decimal(12,2) DEFAULT 0.00,
  `porc_isr1` decimal(6,3) DEFAULT 0.000,
  `monto_isr2_desde` decimal(12,2) DEFAULT 0.00,
  `monto_isr2_hasta` decimal(12,2) DEFAULT 0.00,
  `porc_isr2` decimal(6,3) DEFAULT 0.000,
  `monto_isr3_desde` decimal(12,2) DEFAULT 0.00,
  `monto_isr3_hasta` decimal(12,2) DEFAULT 0.00,
  `porc_isr3` decimal(6,3) DEFAULT 0.000,
  PRIMARY KEY (`autoinc`),
  KEY `emp_id` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `gen_impuestos_fijos` DISABLE KEYS */;
INSERT INTO `gen_impuestos_fijos` (`autoinc`, `emp_id`, `porc_seg`, `porc_edu`, `monto_isr1_desde`, `monto_isr1_hasta`, `porc_isr1`, `monto_isr2_desde`, `monto_isr2_hasta`, `porc_isr2`, `monto_isr3_desde`, `monto_isr3_hasta`, `porc_isr3`) VALUES
	(1, 0, 9.750, 1.250, 0.00, 11000.00, 0.000, 11001.00, 55000.00, 15.000, 55001.00, 99999999.00, 25.000);
/*!40000 ALTER TABLE `gen_impuestos_fijos` ENABLE KEYS */;

DROP TABLE IF EXISTS `gen_provincias`;
CREATE TABLE IF NOT EXISTS `gen_provincias` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `prov_codigo` char(3) NOT NULL DEFAULT '0',
  `prov_nombre` varchar(60) NOT NULL DEFAULT '0',
  PRIMARY KEY (`autoinc`),
  UNIQUE KEY `prov_codigo` (`prov_codigo`),
  KEY `prov_nombre` (`prov_nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `gen_provincias` DISABLE KEYS */;
INSERT INTO `gen_provincias` (`autoinc`, `prov_codigo`, `prov_nombre`) VALUES
	(1, '01', 'BOCAS DEL TORO'),
	(2, '02', 'COCLÉ'),
	(3, '03', 'COLÓN'),
	(4, '04', 'CHIRIQUÍ'),
	(5, '05', 'DARIÉN'),
	(6, '06', 'HERRERA'),
	(7, '07', 'LOS SANTOS'),
	(8, '08', 'PANAMÁ'),
	(9, '10', 'PANAMÁ OESTE'),
	(10, '09', 'VERAGUAS'),
	(11, '11', 'COMARCA NGÄBE BUGLÉ'),
	(12, '12', 'COMARCA EMBERÁ-WOUNAAN');
/*!40000 ALTER TABLE `gen_provincias` ENABLE KEYS */;

DROP TABLE IF EXISTS `gen_tipo_jornadas`;
CREATE TABLE IF NOT EXISTS `gen_tipo_jornadas` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `jor_codigo` int(4) NOT NULL DEFAULT 0,
  `jor_descripcion` varchar(60) NOT NULL DEFAULT '0',
  `jor_hora_ini` time NOT NULL DEFAULT '00:00:00',
  `jor_hora_fin` time NOT NULL DEFAULT '00:00:00',
  `jor_horas_por_dias` decimal(12,2) NOT NULL DEFAULT 0.00,
  `jor_horas_por_sem` int(4) NOT NULL DEFAULT 0,
  `jor_horas_lim_dia` int(4) NOT NULL DEFAULT 0,
  `jor_horas_lim_sem` int(4) NOT NULL DEFAULT 0,
  `jor_horas_lim_exec_porc` double(12,2) NOT NULL DEFAULT 0.00,
  `jor_recargo` double(12,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`autoinc`),
  KEY `jor_codigo` (`jor_codigo`),
  KEY `jor_descripcion` (`jor_descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `gen_tipo_jornadas` DISABLE KEYS */;
INSERT INTO `gen_tipo_jornadas` (`autoinc`, `jor_codigo`, `jor_descripcion`, `jor_hora_ini`, `jor_hora_fin`, `jor_horas_por_dias`, `jor_horas_por_sem`, `jor_horas_lim_dia`, `jor_horas_lim_sem`, `jor_horas_lim_exec_porc`, `jor_recargo`) VALUES
	(1, 1, 'Jornada diurna', '06:00:00', '18:00:00', 8.00, 48, 4, 10, 75.00, 25.00),
	(2, 2, 'Jornada nocturna', '18:00:00', '06:00:00', 7.00, 42, 4, 10, 75.00, 50.00),
	(3, 3, 'Jornada mixta', '00:00:00', '00:00:00', 7.50, 45, 4, 10, 75.00, 75.00);
/*!40000 ALTER TABLE `gen_tipo_jornadas` ENABLE KEYS */;

DROP TABLE IF EXISTS `nume_trans`;
CREATE TABLE IF NOT EXISTS `nume_trans` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `no_empresa` int(11) NOT NULL DEFAULT 0,
  `no_personal` int(11) NOT NULL DEFAULT 0,
  `no_acreedor` int(11) NOT NULL DEFAULT 0,
  `no_nomina_tmp` int(11) NOT NULL DEFAULT 0,
  `no_calendario` int(11) NOT NULL DEFAULT 0,
  `no_frec_pago` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`autoinc`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `nume_trans` DISABLE KEYS */;
INSERT INTO `nume_trans` (`autoinc`, `no_empresa`, `no_personal`, `no_acreedor`, `no_nomina_tmp`, `no_calendario`, `no_frec_pago`) VALUES
	(1, 1, 27, 53, 1, 12, 0);
/*!40000 ALTER TABLE `nume_trans` ENABLE KEYS */;

DROP TABLE IF EXISTS `personal`;
CREATE TABLE IF NOT EXISTS `personal` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `per_emp_id` int(3) DEFAULT NULL,
  `per_id` int(11) NOT NULL DEFAULT 0,
  `per_num` char(12) DEFAULT '0',
  `per_nip` char(20) DEFAULT '0',
  `per_num_css` char(20) DEFAULT '0',
  `per_clave_isr` char(6) DEFAULT NULL,
  `per_titulo` char(20) DEFAULT '0',
  `per_status` int(1) DEFAULT 0,
  `per_sexo` char(1) DEFAULT 'N',
  `per_nom_primer` char(30) DEFAULT NULL,
  `per_nom_segundo` char(30) DEFAULT NULL,
  `per_apell_paterno` char(30) DEFAULT NULL,
  `per_apelli_materno` char(30) DEFAULT NULL,
  `per_direccion` text DEFAULT NULL,
  `per_fecha_nac` date DEFAULT NULL,
  `per_telef1` varchar(50) DEFAULT NULL,
  `per_telef2` varchar(50) DEFAULT NULL,
  `per_telef_movil` varchar(50) DEFAULT NULL,
  `per_correo_electr` varchar(50) DEFAULT NULL,
  `per_nacionalidad` varchar(50) DEFAULT NULL,
  `per_fecha_ingreso` date DEFAULT NULL,
  `per_fecha_finrela` date DEFAULT NULL,
  `per_image_file` varchar(255) DEFAULT NULL,
  `per_fecha_salida` date DEFAULT NULL,
  `per_salario_base` decimal(12,2) DEFAULT 0.00,
  `per_horas_sem_valor` int(4) DEFAULT 0,
  `per_horas_sem_codigo` char(2) DEFAULT '0',
  `per_salario_hora` decimal(12,2) DEFAULT 0.00,
  `per_por_comision` decimal(4,2) DEFAULT 0.00,
  `per_estado_civil` char(2) DEFAULT 'N',
  `per_desc_por_pagar` decimal(12,2) DEFAULT 0.00,
  `per_num_dependientes` int(5) DEFAULT 0,
  `per_fecha_ult_pago` date DEFAULT NULL,
  `per_mont_ult_pago` decimal(12,2) DEFAULT 0.00,
  `per_contacto_nom` char(35) DEFAULT NULL,
  `per_contacto_movil` char(25) DEFAULT NULL,
  `per_contacto_telefono` char(12) DEFAULT NULL,
  `per_contacto_email` char(120) DEFAULT NULL,
  `per_notas` char(120) DEFAULT NULL,
  `per_usuario_modif` char(20) DEFAULT NULL,
  `per_usuario_alta` char(20) DEFAULT NULL,
  `per_fecha_modif` datetime DEFAULT NULL,
  `per_fecha_alta` datetime DEFAULT NULL,
  PRIMARY KEY (`autoinc`),
  KEY `per_id` (`per_id`),
  KEY `per_emp_id` (`per_emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` (`autoinc`, `per_emp_id`, `per_id`, `per_num`, `per_nip`, `per_num_css`, `per_clave_isr`, `per_titulo`, `per_status`, `per_sexo`, `per_nom_primer`, `per_nom_segundo`, `per_apell_paterno`, `per_apelli_materno`, `per_direccion`, `per_fecha_nac`, `per_telef1`, `per_telef2`, `per_telef_movil`, `per_correo_electr`, `per_nacionalidad`, `per_fecha_ingreso`, `per_fecha_finrela`, `per_image_file`, `per_fecha_salida`, `per_salario_base`, `per_horas_sem_valor`, `per_horas_sem_codigo`, `per_salario_hora`, `per_por_comision`, `per_estado_civil`, `per_desc_por_pagar`, `per_num_dependientes`, `per_fecha_ult_pago`, `per_mont_ult_pago`, `per_contacto_nom`, `per_contacto_movil`, `per_contacto_telefono`, `per_contacto_email`, `per_notas`, `per_usuario_modif`, `per_usuario_alta`, `per_fecha_modif`, `per_fecha_alta`) VALUES
	(1, 1, 1, '000001', '8-815-195', '8-815-195', 'A00', '0', 0, 'M', 'Barahona', NULL, 'Albany', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700.00, 44, '02', 0.00, 0.00, 'N', 94.95, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, 'ADMIN', NULL, '2019-06-10 15:39:46', NULL),
	(2, 1, 2, '000002', '2-98-2155', '213-8877', 'C03', '0', 0, 'M', 'Cortez', NULL, 'Bolivar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 750.00, 0, '0', 0.00, 0.00, 'N', 60.50, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 1, 3, '000003', '8-306-653', '83-8349', 'A00', '0', 0, 'F', 'Trejos', NULL, 'Nedelka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1050.00, 0, '0', 0.00, 0.00, 'N', 101.24, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 1, 4, '000004', '8-921-1961', '8-921-1961', 'A00', '0', 0, 'M', 'Diaz', NULL, 'Roderick', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 750.00, 0, '0', 0.00, 0.00, 'N', 0.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 1, 5, '000005', '4-750-2478', '4-750-2478', 'A00', '0', 0, 'F', 'Gonzalez', NULL, 'Katherine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 750.00, 0, '0', 0.00, 0.00, 'N', 10.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 1, 6, '000006', '2-160-753', '2-160-753', 'A00', '0', 0, 'F', 'Gonzalez', NULL, 'Maria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 604.42, 0, '0', 0.00, 0.00, 'N', 126.61, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 1, 7, '000007', '9-125-787', '181-7582', 'C01', '0', 0, 'F', 'Gonzalez', NULL, 'Varinia de', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1100.00, 0, '0', 0.00, 0.00, 'N', 78.44, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 1, 8, '000008', '8-926-731', '8-926-731', 'A00', '0', 0, 'M', 'Concepcion', NULL, 'Dario', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700.00, 0, '0', 0.00, 0.00, 'N', 0.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 1, 9, '000009', '9-138-385', '10-5222', 'A00', '0', 0, 'F', 'De Iguala', NULL, 'Brunilda I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700.00, 0, '0', 0.00, 0.00, 'N', 66.45, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 1, 10, '000010', '8-426-890', '125-4795', 'A00', '0', 0, 'M', 'De Gracia', NULL, 'Martin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1100.00, 0, '0', 0.00, 0.00, 'N', 0.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 1, 11, '000011', '8-872-967', '8-872-967', 'A00', '0', 0, 'F', 'Jarvis', NULL, 'Thyani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700.00, 0, '0', 0.00, 0.00, 'N', 0.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 1, 12, '000012', '8-843-1153', '8-843-1153', 'A00', '0', 0, 'F', 'Macis', NULL, 'Angie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1100.00, 0, '0', 0.00, 0.00, 'N', 186.99, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 1, 13, '000013', '8-417-137', '315-5058', 'A00', '0', 0, 'M', 'Madrid', NULL, 'Sebastian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1100.00, 0, '0', 0.00, 0.00, 'N', 99.98, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 1, 14, '000014', '8-843-646', '8-843-646', 'A00', '0', 0, 'F', 'Martinez', NULL, 'Melina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700.00, 0, '0', 0.00, 0.00, 'N', 70.97, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 1, 15, '000015', '8-465-809', '405-9223', 'A00', '0', 0, 'F', 'Mendoza', NULL, 'Karina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1300.00, 0, '0', 0.00, 0.00, 'N', 110.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 1, 16, '000016', '8-911-1730', '8-911-1730', 'A00', '0', 0, 'F', 'Medina', NULL, 'Yulissa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 800.00, 0, '0', 0.00, 0.00, 'N', 99.62, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 1, 17, '000017', '8-777-12', '8-777-12', 'A00', '0', 0, 'F', 'Montero', NULL, 'Keyla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 850.00, 0, '0', 0.00, 0.00, 'N', 70.14, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 1, 18, '000018', '8-975.137', '8-975-137', 'A00', '0', 0, 'F', 'Perez', NULL, 'Nathalie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 950.00, 0, '0', 0.00, 0.00, 'N', 85.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 1, 19, '000019', '8-876-1582', '8-876-1582', 'A00', '0', 0, 'F', 'Ponce', NULL, 'Guadalupe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700.00, 0, '0', 0.00, 0.00, 'N', 71.06, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 1, 20, '000020', '8-821-1615', '8-821-1615', 'A00', '0', 0, 'F', 'Quiros', NULL, 'Sueliz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1200.00, 0, '0', 0.00, 0.00, 'N', 94.93, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 1, 21, '000021', '8-235-9085', '231-3235', 'A00', '0', 0, 'F', 'Ramos', NULL, 'Ana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 725.00, 0, '0', 0.00, 0.00, 'N', 61.74, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 1, 22, '000022', '9-199-678', '9-199-678', 'A00', '0', 0, 'M', 'Rodriguez', NULL, 'Simon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700.00, 0, '0', 0.00, 0.00, 'N', 60.73, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 1, 23, '000023', '2-137-775', '202-6885', 'C05', '0', 0, 'M', 'Sanchez', NULL, 'Aparicio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1250.00, 0, '0', 0.00, 0.00, 'N', 350.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 1, 24, '000024', '8-835-2375', '8-835-2375', 'A00', '0', 0, 'F', 'Lowe', NULL, 'Naczuly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700.00, 0, '0', 0.00, 0.00, 'N', 127.20, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 1, 25, '000025', '4-147-2709', '4-147-2709', 'A00', '0', 0, 'F', 'Rodriguez', NULL, 'Mitzila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 650.00, 0, '0', 0.00, 0.00, 'N', 19.97, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, 1, 26, '000026', '4-762-574', '4-762-574', 'A00', '0', 0, 'F', 'Batista', NULL, 'Katherine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 650.00, 0, '0', 0.00, 0.00, 'N', 0.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, 1, 27, '000027', '8-795-882', '8-795-882', 'A00', '0', 0, 'F', 'Espinosa', NULL, 'Yamilett', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 650.00, 0, '0', 0.00, 0.00, 'N', 0.00, 0, NULL, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;

DROP TABLE IF EXISTS `personal_contacto`;
CREATE TABLE IF NOT EXISTS `personal_contacto` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `per_id` int(11) NOT NULL DEFAULT 0,
  `nombre` char(80) NOT NULL DEFAULT '0',
  `parentesco` char(30) NOT NULL DEFAULT '0',
  `telefono1` char(30) NOT NULL DEFAULT '0',
  `telefono2` char(30) NOT NULL DEFAULT '0',
  `movil` char(30) NOT NULL DEFAULT '0',
  `correo` varchar(80) NOT NULL DEFAULT '0',
  `notas` text NOT NULL DEFAULT '0',
  PRIMARY KEY (`autoinc`),
  KEY `nombre` (`nombre`),
  KEY `per_id` (`per_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `personal_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_contacto` ENABLE KEYS */;

DROP TABLE IF EXISTS `personal_deduc`;
CREATE TABLE IF NOT EXISTS `personal_deduc` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `dedu_id` int(3) DEFAULT NULL,
  `dedu_emp_id` int(3) DEFAULT NULL,
  `dedu_per_id` int(11) DEFAULT 0,
  `dedu_acre_id` int(11) DEFAULT NULL,
  `deduc_descripcion` varchar(80) DEFAULT NULL,
  `deduc_tipo` int(2) DEFAULT 0,
  `dedu_mont_deuda` decimal(12,2) DEFAULT 0.00,
  `deduc_fecha_inicio` date DEFAULT NULL,
  `deduc_fecha_fin` date DEFAULT NULL,
  `dedu_mont_mens` decimal(12,2) DEFAULT 0.00,
  `dedu_mont_pagad` decimal(12,2) DEFAULT 0.00,
  `dedu_usuario_modif` char(20) DEFAULT NULL,
  `dedu_usuario_alta` char(20) DEFAULT NULL,
  `dedu_fecha_modif` datetime DEFAULT NULL,
  `dedu_fecha_alta` datetime DEFAULT NULL,
  PRIMARY KEY (`autoinc`),
  KEY `per_id` (`dedu_per_id`),
  KEY `dedu_acre_id` (`dedu_acre_id`),
  KEY `dedu_emp_id` (`dedu_emp_id`),
  KEY `deduc_tipo` (`deduc_tipo`),
  KEY `dedu_id` (`dedu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `personal_deduc` DISABLE KEYS */;
INSERT INTO `personal_deduc` (`autoinc`, `dedu_id`, `dedu_emp_id`, `dedu_per_id`, `dedu_acre_id`, `deduc_descripcion`, `deduc_tipo`, `dedu_mont_deuda`, `deduc_fecha_inicio`, `deduc_fecha_fin`, `dedu_mont_mens`, `dedu_mont_pagad`, `dedu_usuario_modif`, `dedu_usuario_alta`, `dedu_fecha_modif`, `dedu_fecha_alta`) VALUES
	(1, 1, 1, 1, 1, 'Hipoteca', 1, 50000.00, '2019-06-10', '2030-06-10', 250.00, 0.00, NULL, NULL, NULL, '2019-05-10 06:07:10'),
	(2, NULL, NULL, 1, 2, NULL, 1, 7000.00, '2019-06-10', '2030-06-10', 125.00, 0.00, NULL, NULL, NULL, NULL),
	(3, NULL, NULL, 1, 3, NULL, 1, 2000.00, '2019-06-10', '2030-06-10', 230.00, 0.00, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `personal_deduc` ENABLE KEYS */;

DROP TABLE IF EXISTS `planilla_horas_sem`;
CREATE TABLE IF NOT EXISTS `planilla_horas_sem` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `horas_sem_codigo` char(2) DEFAULT NULL,
  `horas_sem_valor` int(3) NOT NULL DEFAULT 0,
  `horas_sem_descr` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`autoinc`),
  UNIQUE KEY `horas_sem_codigo` (`horas_sem_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `planilla_horas_sem` DISABLE KEYS */;
INSERT INTO `planilla_horas_sem` (`autoinc`, `horas_sem_codigo`, `horas_sem_valor`, `horas_sem_descr`) VALUES
	(1, '01', 48, 'Lunes a Sábado completo'),
	(2, '02', 44, 'Lunes a Sábado ½ día'),
	(3, '03', 40, 'Lunes a Viernes');
/*!40000 ALTER TABLE `planilla_horas_sem` ENABLE KEYS */;

DROP TABLE IF EXISTS `planilla_rem`;
CREATE TABLE IF NOT EXISTS `planilla_rem` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `plar_id` int(11) NOT NULL DEFAULT 0,
  `plar_fecha` datetime DEFAULT NULL,
  `plar_fecha_ini` datetime DEFAULT NULL,
  `plar_fecha_fin` datetime DEFAULT NULL,
  `plar_usuario_modif` char(20) DEFAULT NULL,
  `plar_usuario_alta` char(20) DEFAULT NULL,
  `plar_fecha_modif` datetime DEFAULT NULL,
  `plar_fecha_alta` datetime DEFAULT NULL,
  PRIMARY KEY (`autoinc`),
  KEY `plar_id` (`plar_id`),
  KEY `plar_fecha` (`plar_fecha`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `planilla_rem` DISABLE KEYS */;
INSERT INTO `planilla_rem` (`autoinc`, `plar_id`, `plar_fecha`, `plar_fecha_ini`, `plar_fecha_fin`, `plar_usuario_modif`, `plar_usuario_alta`, `plar_fecha_modif`, `plar_fecha_alta`) VALUES
	(1, 1, '2019-06-10 14:30:24', '2019-05-15 08:00:00', '2019-05-30 05:00:00', 'ADMIN', 'ADMIN', '2019-06-10 14:30:57', '2019-06-10 14:30:58');
/*!40000 ALTER TABLE `planilla_rem` ENABLE KEYS */;

DROP TABLE IF EXISTS `planilla_rem_deta_tmp`;
CREATE TABLE IF NOT EXISTS `planilla_rem_deta_tmp` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `plan_plar_id` int(11) NOT NULL DEFAULT 0,
  `plan_per_num_css` char(20) DEFAULT NULL,
  `plan_per_id` int(11) DEFAULT NULL,
  `plan_per_nip` char(20) DEFAULT NULL,
  `plan_nombre` varchar(50) DEFAULT NULL,
  `plan_per_clave_isr` char(6) DEFAULT NULL,
  `plan_per_salario_base` decimal(12,2) DEFAULT 0.00,
  `plan_per_salario_quinc` decimal(12,2) DEFAULT 0.00,
  `plan_per_salario_hora` decimal(12,2) DEFAULT 0.00,
  `plan_per_horas_des` decimal(12,2) DEFAULT 0.00,
  `plan_per_horas_ext` decimal(12,2) DEFAULT 0.00,
  `plan_calc_isr` decimal(12,2) DEFAULT 0.00,
  `plan_calc_seg_soc` decimal(12,2) DEFAULT 0.00,
  `plan_calc_seg_educ` decimal(12,2) DEFAULT 0.00,
  `plan_per_desc_por_pagar` decimal(12,2) DEFAULT 0.00,
  `plan_calc_tota_deduc` decimal(12,2) DEFAULT 0.00,
  `plan_calc_sal_neto` decimal(12,2) DEFAULT 0.00,
  PRIMARY KEY (`autoinc`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `planilla_rem_deta_tmp` DISABLE KEYS */;
INSERT INTO `planilla_rem_deta_tmp` (`autoinc`, `plan_plar_id`, `plan_per_num_css`, `plan_per_id`, `plan_per_nip`, `plan_nombre`, `plan_per_clave_isr`, `plan_per_salario_base`, `plan_per_salario_quinc`, `plan_per_salario_hora`, `plan_per_horas_des`, `plan_per_horas_ext`, `plan_calc_isr`, `plan_calc_seg_soc`, `plan_calc_seg_educ`, `plan_per_desc_por_pagar`, `plan_calc_tota_deduc`, `plan_calc_sal_neto`) VALUES
	(1, 1, '8-815-195', 1, '8-815-195', 'Barahona,Albany', 'A00', 700.00, 350.00, 0.00, 0.00, 0.00, 0.00, 34.13, 4.38, 94.95, 133.46, 216.54),
	(2, 1, '213-8877', 2, '2-98-2155', 'Cortez,Bolivar', 'C03', 750.00, 375.00, 0.00, 0.00, 0.00, 0.00, 36.56, 4.69, 60.50, 101.75, 273.25),
	(3, 1, '83-8349', 3, '8-306-653', 'Trejos,Nedelka', 'A00', 1050.00, 525.00, 0.00, 0.00, 0.00, 14.55, 51.19, 6.56, 101.24, 173.54, 351.46),
	(4, 1, '8-921-1961', 4, '8-921-1961', 'Diaz,Roderick', 'A00', 750.00, 375.00, 0.00, 0.00, 0.00, 0.00, 36.56, 4.69, 0.00, 41.25, 333.75),
	(5, 1, '4-750-2478', 5, '4-750-2478', 'Gonzalez,Katherine', 'A00', 750.00, 375.00, 0.00, 0.00, 0.00, 0.00, 36.56, 4.69, 10.00, 51.25, 323.75),
	(6, 1, '2-160-753', 6, '2-160-753', 'Gonzalez,Maria', 'A00', 604.42, 302.21, 0.00, 0.00, 0.00, 0.00, 29.47, 3.78, 126.61, 159.86, 142.35),
	(7, 1, '181-7582', 7, '9-125-787', 'Gonzalez,Varinia de', 'C01', 1100.00, 550.00, 0.00, 0.00, 0.00, 19.04, 53.63, 6.88, 78.44, 157.99, 392.01),
	(8, 1, '8-926-731', 8, '8-926-731', 'Concepcion,Dario', 'A00', 700.00, 350.00, 0.00, 0.00, 0.00, 0.00, 34.13, 4.38, 0.00, 38.51, 311.49),
	(9, 1, '10-5222', 9, '9-138-385', 'De Iguala,Brunilda I', 'A00', 700.00, 350.00, 0.00, 0.00, 0.00, 0.00, 34.13, 4.38, 66.45, 104.96, 245.04),
	(10, 1, '125-4795', 10, '8-426-890', 'De Gracia,Martin', 'A00', 1100.00, 550.00, 0.00, 0.00, 0.00, 20.24, 53.63, 6.88, 0.00, 80.75, 469.25),
	(11, 1, '8-872-967', 11, '8-872-967', 'Jarvis,Thyani', 'A00', 700.00, 350.00, 0.00, 0.00, 0.00, 0.00, 34.13, 4.38, 0.00, 38.51, 311.49),
	(12, 1, '8-843-1153', 12, '8-843-1153', 'Macis,Angie', 'A00', 1100.00, 550.00, 0.00, 0.00, 0.00, 14.83, 53.63, 6.88, 186.99, 262.33, 287.67),
	(13, 1, '315-5058', 13, '8-417-137', 'Madrid,Sebastian', 'A00', 1100.00, 550.00, 0.00, 0.00, 0.00, 19.04, 53.63, 6.88, 99.98, 179.53, 370.47),
	(14, 1, '8-843-646', 14, '8-843-646', 'Martinez,Melina', 'A00', 700.00, 350.00, 0.00, 0.00, 0.00, 0.00, 34.13, 4.38, 70.97, 109.48, 240.52),
	(15, 1, '405-9223', 15, '8-465-809', 'Mendoza,Karina', 'A00', 1300.00, 650.00, 0.00, 0.00, 0.00, 63.26, 63.38, 8.13, 110.00, 244.77, 405.23),
	(16, 1, '8-911-1730', 16, '8-911-1730', 'Medina,Yulissa', 'A00', 800.00, 400.00, 0.00, 0.00, 0.00, 0.00, 39.00, 5.00, 99.62, 143.62, 256.38),
	(17, 1, '8-777-12', 17, '8-777-12', 'Montero,Keyla', 'A00', 850.00, 425.00, 0.00, 0.00, 0.00, 0.00, 41.44, 5.31, 70.14, 116.89, 308.11),
	(18, 1, '8-975-137', 18, '8-975.137', 'Perez,Nathalie', 'A00', 950.00, 475.00, 0.00, 0.00, 0.00, 7.79, 46.31, 5.94, 85.00, 145.04, 329.96),
	(19, 1, '8-876-1582', 19, '8-876-1582', 'Ponce,Guadalupe', 'A00', 700.00, 350.00, 0.00, 0.00, 0.00, 0.00, 34.13, 4.38, 71.06, 109.57, 240.43),
	(20, 1, '8-821-1615', 20, '8-821-1615', 'Quiros,Sueliz', 'A00', 1200.00, 600.00, 0.00, 0.00, 0.00, 28.32, 58.50, 7.50, 94.93, 189.25, 410.75),
	(21, 1, '231-3235', 21, '8-235-9085', 'Ramos,Ana', 'A00', 725.00, 362.50, 0.00, 0.00, 0.00, 0.00, 35.34, 4.53, 61.74, 101.61, 260.89),
	(22, 1, '9-199-678', 22, '9-199-678', 'Rodriguez,Simon', 'A00', 700.00, 350.00, 0.00, 0.00, 0.00, 0.00, 34.13, 4.38, 60.73, 99.24, 250.76),
	(23, 1, '202-6885', 23, '2-137-775', 'Sanchez,Aparicio', 'C05', 1250.00, 625.00, 0.00, 0.00, 0.00, 30.29, 60.94, 7.81, 350.00, 449.04, 175.96),
	(24, 1, '8-835-2375', 24, '8-835-2375', 'Lowe,Naczuly', 'A00', 700.00, 350.00, 0.00, 0.00, 0.00, 0.00, 34.13, 4.38, 127.20, 165.71, 184.29),
	(25, 1, '4-147-2709', 25, '4-147-2709', 'Rodriguez,Mitzila', 'A00', 650.00, 325.00, 0.00, 0.00, 0.00, 0.00, 31.69, 4.06, 19.97, 55.72, 269.28),
	(26, 1, '4-762-574', 26, '4-762-574', 'Batista,Katherine', 'A00', 650.00, 325.00, 0.00, 0.00, 0.00, 0.00, 31.69, 4.06, 0.00, 35.75, 289.25),
	(27, 1, '8-795-882', 27, '8-795-882', 'Espinosa,Yamilett', 'A00', 650.00, 325.00, 0.00, 0.00, 0.00, 0.00, 31.69, 4.06, 0.00, 35.75, 289.25);
/*!40000 ALTER TABLE `planilla_rem_deta_tmp` ENABLE KEYS */;

DROP TABLE IF EXISTS `planilla_tmp`;
CREATE TABLE IF NOT EXISTS `planilla_tmp` (
  `autoinc` int(11) NOT NULL AUTO_INCREMENT,
  `plan_per_num_css` char(20) DEFAULT NULL,
  `plan_per_id` int(11) DEFAULT NULL,
  `plan_per_nip` char(20) DEFAULT NULL,
  `plan_nombre` varchar(50) DEFAULT NULL,
  `plan_per_clave_isr` char(6) DEFAULT NULL,
  `plan_per_salario_base` decimal(12,2) DEFAULT 0.00,
  `plan_per_salario_quinc` decimal(12,2) DEFAULT 0.00,
  `plan_calc_isr` decimal(12,2) DEFAULT 0.00,
  `plan_calc_seg_soc` decimal(12,2) DEFAULT 0.00,
  `plan_calc_seg_educ` decimal(12,2) DEFAULT 0.00,
  `plan_per_desc_por_pagar` decimal(12,2) DEFAULT 0.00,
  `plan_calc_tota_deduc` decimal(12,2) DEFAULT 0.00,
  `plan_calc_sal_neto` decimal(12,2) DEFAULT 0.00,
  PRIMARY KEY (`autoinc`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `planilla_tmp` DISABLE KEYS */;
INSERT INTO `planilla_tmp` (`autoinc`, `plan_per_num_css`, `plan_per_id`, `plan_per_nip`, `plan_nombre`, `plan_per_clave_isr`, `plan_per_salario_base`, `plan_per_salario_quinc`, `plan_calc_isr`, `plan_calc_seg_soc`, `plan_calc_seg_educ`, `plan_per_desc_por_pagar`, `plan_calc_tota_deduc`, `plan_calc_sal_neto`) VALUES
	(1, '8-815-195', 1, '8-815-195', 'Barahona,Albany', 'A00', 700.00, 350.00, 0.00, 34.13, 4.38, 94.95, 133.46, 216.54),
	(2, '213-8877', 2, '2-98-2155', 'Cortez,Bolivar', 'C03', 750.00, 375.00, 0.00, 36.56, 4.69, 60.50, 101.75, 273.25),
	(3, '83-8349', 3, '8-306-653', 'Trejos,Nedelka', 'A00', 1050.00, 525.00, 14.55, 51.19, 6.56, 101.24, 173.54, 351.46),
	(4, '8-921-1961', 4, '8-921-1961', 'Diaz,Roderick', 'A00', 750.00, 375.00, 0.00, 36.56, 4.69, 0.00, 41.25, 333.75),
	(5, '4-750-2478', 5, '4-750-2478', 'Gonzalez,Katherine', 'A00', 750.00, 375.00, 0.00, 36.56, 4.69, 10.00, 51.25, 323.75),
	(6, '2-160-753', 6, '2-160-753', 'Gonzalez,Maria', 'A00', 604.42, 302.21, 0.00, 29.47, 3.78, 126.61, 159.86, 142.35),
	(7, '181-7582', 7, '9-125-787', 'Gonzalez,Varinia de', 'C01', 1100.00, 550.00, 19.04, 53.63, 6.88, 78.44, 157.99, 392.01),
	(8, '8-926-731', 8, '8-926-731', 'Concepcion,Dario', 'A00', 700.00, 350.00, 0.00, 34.13, 4.38, 0.00, 38.51, 311.49),
	(9, '10-5222', 9, '9-138-385', 'De Iguala,Brunilda I', 'A00', 700.00, 350.00, 0.00, 34.13, 4.38, 66.45, 104.96, 245.04),
	(10, '125-4795', 10, '8-426-890', 'De Gracia,Martin', 'A00', 1100.00, 550.00, 20.24, 53.63, 6.88, 0.00, 80.75, 469.25),
	(11, '8-872-967', 11, '8-872-967', 'Jarvis,Thyani', 'A00', 700.00, 350.00, 0.00, 34.13, 4.38, 0.00, 38.51, 311.49),
	(12, '8-843-1153', 12, '8-843-1153', 'Macis,Angie', 'A00', 1100.00, 550.00, 14.83, 53.63, 6.88, 186.99, 262.33, 287.67),
	(13, '315-5058', 13, '8-417-137', 'Madrid,Sebastian', 'A00', 1100.00, 550.00, 19.04, 53.63, 6.88, 99.98, 179.53, 370.47),
	(14, '8-843-646', 14, '8-843-646', 'Martinez,Melina', 'A00', 700.00, 350.00, 0.00, 34.13, 4.38, 70.97, 109.48, 240.52),
	(15, '405-9223', 15, '8-465-809', 'Mendoza,Karina', 'A00', 1300.00, 650.00, 63.26, 63.38, 8.13, 110.00, 244.77, 405.23),
	(16, '8-911-1730', 16, '8-911-1730', 'Medina,Yulissa', 'A00', 800.00, 400.00, 0.00, 39.00, 5.00, 99.62, 143.62, 256.38),
	(17, '8-777-12', 17, '8-777-12', 'Montero,Keyla', 'A00', 850.00, 425.00, 0.00, 41.44, 5.31, 70.14, 116.89, 308.11),
	(18, '8-975-137', 18, '8-975.137', 'Perez,Nathalie', 'A00', 950.00, 475.00, 7.79, 46.31, 5.94, 85.00, 145.04, 329.96),
	(19, '8-876-1582', 19, '8-876-1582', 'Ponce,Guadalupe', 'A00', 700.00, 350.00, 0.00, 34.13, 4.38, 71.06, 109.57, 240.43),
	(20, '8-821-1615', 20, '8-821-1615', 'Quiros,Sueliz', 'A00', 1200.00, 600.00, 28.32, 58.50, 7.50, 94.93, 189.25, 410.75),
	(21, '231-3235', 21, '8-235-9085', 'Ramos,Ana', 'A00', 725.00, 362.50, 0.00, 35.34, 4.53, 61.74, 101.61, 260.89),
	(22, '9-199-678', 22, '9-199-678', 'Rodriguez,Simon', 'A00', 700.00, 350.00, 0.00, 34.13, 4.38, 60.73, 99.24, 250.76),
	(23, '202-6885', 23, '2-137-775', 'Sanchez,Aparicio', 'C05', 1250.00, 625.00, 30.29, 60.94, 7.81, 350.00, 449.04, 175.96),
	(24, '8-835-2375', 24, '8-835-2375', 'Lowe,Naczuly', 'A00', 700.00, 350.00, 0.00, 34.13, 4.38, 127.20, 165.71, 184.29),
	(25, '4-147-2709', 25, '4-147-2709', 'Rodriguez,Mitzila', 'A00', 650.00, 325.00, 0.00, 31.69, 4.06, 19.97, 55.72, 269.28),
	(26, '4-762-574', 26, '4-762-574', 'Batista,Katherine', 'A00', 650.00, 325.00, 0.00, 31.69, 4.06, 0.00, 35.75, 289.25),
	(27, '8-795-882', 27, '8-795-882', 'Espinosa,Yamilett', 'A00', 650.00, 325.00, 0.00, 31.69, 4.06, 0.00, 35.75, 289.25);
/*!40000 ALTER TABLE `planilla_tmp` ENABLE KEYS */;

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `u_Id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `u_descripcion` varchar(120) NOT NULL DEFAULT '',
  `u_usuario` varchar(20) NOT NULL DEFAULT '',
  `u_clave` varchar(50) NOT NULL DEFAULT '',
  `u_acceso1` int(2) NOT NULL DEFAULT 0,
  `u_activo` int(1) NOT NULL DEFAULT 0,
  `u_modreportes` int(1) NOT NULL DEFAULT 0,
  `u_empresas` int(1) NOT NULL DEFAULT 0,
  `u_auditoria` int(1) NOT NULL DEFAULT 0,
  `u_conf` int(1) NOT NULL DEFAULT 0,
  `u_ruta_reportes` varchar(50) NOT NULL DEFAULT '',
  `u_usuario_alta` varchar(50) DEFAULT NULL,
  `u_fecha_alta` datetime DEFAULT NULL,
  `u_usuario_modif` varchar(50) NOT NULL,
  `u_fecha_modif` datetime DEFAULT NULL,
  `emp_id` int(3) NOT NULL DEFAULT 1,
  PRIMARY KEY (`u_Id`),
  KEY `u_usuario` (`u_usuario`),
  KEY `u_clave` (`u_clave`),
  KEY `u_activo` (`u_activo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`u_Id`, `u_descripcion`, `u_usuario`, `u_clave`, `u_acceso1`, `u_activo`, `u_modreportes`, `u_empresas`, `u_auditoria`, `u_conf`, `u_ruta_reportes`, `u_usuario_alta`, `u_fecha_alta`, `u_usuario_modif`, `u_fecha_modif`, `emp_id`) VALUES
	(1, 'ADMINISRADOR', 'ADMIN', 'ODI4Nzg4ODQ=', 1, 1, 1, 1, 1, 1, '', NULL, NULL, 'ADMIN', '2018-08-21 20:02:39', 1),
	(2, 'SUPER', 'SUPER', 'MTIzNDU2Nzg5MA==', 1, 1, 1, 1, 1, 0, '', NULL, NULL, 'ADMIN', '2013-08-24 13:26:07', 2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
