-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2021 a las 00:32:14
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdmglp`
--
CREATE DATABASE IF NOT EXISTS `bdmglp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdmglp`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cfventas`
--

CREATE TABLE `cfventas` (
  `idcfventas` int(11) NOT NULL,
  `nombrec` varchar(100) DEFAULT NULL,
  `preciodescuento` float DEFAULT NULL,
  `montoextra` float DEFAULT NULL,
  `tcontacto` varchar(15) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `desadicional` text DEFAULT NULL,
  `fechasentregas` date DEFAULT NULL,
  `creadopor` varchar(50) DEFAULT NULL,
  `fechacreacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cfventas`
--

INSERT INTO `cfventas` (`idcfventas`, `nombrec`, `preciodescuento`, `montoextra`, `tcontacto`, `direccion`, `desadicional`, `fechasentregas`, `creadopor`, `fechacreacion`) VALUES
(1, 'cesar rojas', 6.98, 0, '288', 'kljdlskjdlas', 'sdsda', '2020-12-08', '0', '2020-12-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cilindro`
--

CREATE TABLE `cilindro` (
  `idcil` int(11) NOT NULL,
  `foliotanque` varchar(100) NOT NULL,
  `estadotanque` varchar(100) NOT NULL,
  `tamano` varchar(100) DEFAULT NULL,
  `costoventa` float NOT NULL,
  `caplitros` float NOT NULL,
  `descripcion` text CHARACTER SET utf8 NOT NULL,
  `creadopor` varchar(100) NOT NULL,
  `fechacreado` date NOT NULL,
  `actualizadopor` varchar(100) DEFAULT NULL,
  `fechaactualizado` date DEFAULT NULL,
  `idcreadopor` int(11) NOT NULL,
  `idactualizadopor` int(11) NOT NULL,
  `venta` varchar(100) DEFAULT NULL,
  `folioventa` varchar(100) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `vendidoa` varchar(100) DEFAULT NULL,
  `codigoventacliente` varchar(100) DEFAULT NULL,
  `nvendio` varchar(100) DEFAULT NULL,
  `entregadopor` varchar(100) DEFAULT NULL,
  `fvendido` date DEFAULT NULL,
  `fuga` varchar(100) DEFAULT NULL,
  `sin-fuga` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cilindro`
--

INSERT INTO `cilindro` (`idcil`, `foliotanque`, `estadotanque`, `tamano`, `costoventa`, `caplitros`, `descripcion`, `creadopor`, `fechacreado`, `actualizadopor`, `fechaactualizado`, `idcreadopor`, `idactualizadopor`, `venta`, `folioventa`, `id_venta`, `vendidoa`, `codigoventacliente`, `nvendio`, `entregadopor`, `fvendido`, `fuga`, `sin-fuga`) VALUES
(103, 'MGLP95C1', 'Usado', '20', 442, 37, 'TANQUE USADO ESTETICA DETALLE DE PINTURA.', 'angelesf', '2021-02-02', NULL, NULL, 86, 0, 'Vendido', 'FV971', NULL, 'PENDIENTE', 'FV971', 'angelesf', 'FABIAN', '2021-02-02', 'Sin-Fuga', NULL),
(104, 'MGLP72C2', 'Usado', '30', 300, 30, 'TANQUE EN CONDICIONES DE ESTETICA OXIDADO PARTE DE LA BASE Y DESCASCARADO EN CUELLO.', 'angelesf', '2021-02-02', NULL, NULL, 86, 0, 'Vendido', 'FV042', NULL, 'PENDIENTE 1', 'FV042', 'angelesf', 'FABIAN', '2021-02-02', 'Sin-Fuga', NULL),
(105, 'MGLP99C3', 'Usado', '20', 200, 8.7, 'Test', 'angelesf', '2021-02-04', NULL, NULL, 86, 0, 'Vendido', 'FV773', NULL, 'Francisco', 'FV773', 'angelesf', 'FABIAN', '2021-02-04', 'Sin-Fuga', NULL),
(106, 'MGLP91C4', 'Usado', '20', 200, 8.7, 's', 'angelesf', '2021-02-04', NULL, NULL, 86, 0, 'Vendido', 'FV064', NULL, 'Pablito', 'FV064', 'angelesf', 'repartidor', '2021-02-04', 'Sin-Fuga', NULL),
(107, 'MGLP68C5', 'Usado', '10', 100, 8.7, 'Reducción', 'angelesf', '2021-02-04', NULL, NULL, 86, 0, 'Vendido', 'FV9810', NULL, 'PENDIENTE 1', 'FV9810', 'angelesf', 'FABIAN', '2021-02-03', 'Fuga', NULL),
(108, 'MGLP06C6', 'Nuevo', '10', 100, 8.7, '2804.17 antes ahora 2795.47', 'angelesf', '2021-02-04', NULL, NULL, 86, 0, 'Vendido', 'FV2611', NULL, 'PENDIENTE 1', 'FV2611', 'angelesf', 'FABIAN', '2021-02-05', 'Fuga', NULL),
(109, 'MGLP92C7', 'Nuevo', '20', 200, 8.7, 'nuevo', 'angelesf', '2021-02-02', NULL, NULL, 86, 0, 'Vendido', 'FV265', NULL, 'PENDIENTE', 'FV265', 'angelesf', 'repartidor', '2021-02-02', 'Sin-Fuga', NULL),
(110, 'MGLP45C8', 'Usado', '30', 540, 58, 'GEOVANNI', 'angelesf', '2021-02-03', NULL, NULL, 86, 0, 'Vendido', 'FV806', NULL, 'GEOVANNI', 'FV806', 'angelesf', 'FABIAN', '2021-02-03', 'Sin-Fuga', NULL),
(111, 'MGLP23C9', 'Usado', '20', 390, 37, 'TANUE AZUL MATE SEMI NUEVO', 'angelesf', '2021-02-03', NULL, NULL, 86, 0, 'Vendido', 'FV597', NULL, 'MOMO', 'FV597', 'angelesf', 'FABIAN', '2021-02-03', 'Sin-Fuga', NULL),
(112, 'MGLP01C10', 'Usado', '30', 540, 58, 'GEOVANNI', 'angelesf', '2021-02-03', NULL, NULL, 86, 0, 'Vendido', 'FV568', NULL, 'GEOVANNI', 'FV568', 'angelesf', 'FABIAN', '2021-02-03', 'Sin-Fuga', NULL),
(113, 'MGLP66C11', 'Usado', '30', 540, 58, 'GEOVANNI', 'angelesf', '2021-02-03', NULL, NULL, 86, 0, 'Vendido', 'FV469', NULL, 'GEOVANNI', 'FV469', 'angelesf', 'repartidor', '2021-02-03', 'Sin-Fuga', NULL),
(114, 'MGLP71C12', 'Usado', '30', 540, 58, 'GEOVANNI', 'angelesf', '2021-02-03', NULL, NULL, 86, 0, 'Libre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sin-Fuga', NULL),
(115, 'MGLP76C13', 'Usado', '20', 100, 8.7, 'a', 'angelesf', '2021-02-05', NULL, NULL, 86, 0, 'Vendido', 'FV2512', NULL, 'PENDIENTE 1', 'FV2512', 'angelesf', 'repartidor', '2021-02-10', 'Sin-Fuga', NULL),
(116, 'MGLP36C14', 'Nuevo', '20', 100, 8.7, 'nuevo', 'angelesf', '2021-02-10', NULL, NULL, 86, 0, 'Vendido', 'FV2514', NULL, 'PENDIENTE 1', 'FV2514', 'angelesf', 'repartidor', '2021-02-10', 'Sin-Fuga', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `email_cliente` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `clave` text COLLATE utf8_spanish2_ci NOT NULL,
  `tipousuario` varchar(30) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_completo`, `nombre_usuario`, `email_cliente`, `clave`, `tipousuario`) VALUES
(3, 'Joel Rojas', 'joelrojas1', 'correoprueba@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Administrador'),
(68, 'Sergio', 'sergio123', 'sergio@migaslp.com', '25d55ad283aa400af464c76d713c07ad', 'Administrador'),
(75, 'analista 3', 'analista3', NULL, '25d55ad283aa400af464c76d713c07ad', 'Analista'),
(76, 'analista 4', 'analista4', NULL, '25d55ad283aa400af464c76d713c07ad', 'Analista'),
(77, 'analista 5', 'analista5', NULL, '25d55ad283aa400af464c76d713c07ad', 'Analista'),
(78, 'analista6', 'analista6', NULL, 'd41d8cd98f00b204e9800998ecf8427e', 'Analista'),
(79, 'repartidor 3', 'repartidor3', NULL, '25d55ad283aa400af464c76d713c07ad', 'Repartidor'),
(82, 'test', 'test', NULL, '25d55ad283aa400af464c76d713c07ad', 'Analista'),
(86, 'Angeles Flores', 'angelesf', NULL, '25d55ad283aa400af464c76d713c07ad', 'Analista'),
(87, 'FABIAN JUAREZ MARTINEZ', 'FABIAN', NULL, '25d55ad283aa400af464c76d713c07ad', 'Repartidor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idclientes` int(11) NOT NULL,
  `foliocliente` varchar(100) NOT NULL,
  `nombrecliente` varchar(100) NOT NULL,
  `telcontacto` varchar(100) NOT NULL,
  `direccion` text NOT NULL,
  `descripcion` text NOT NULL,
  `fechacreado` date NOT NULL,
  `creadopor` varchar(100) NOT NULL,
  `factualizado` date NOT NULL,
  `actualizadopor` varchar(45) NOT NULL,
  `idactualizadopor` int(11) DEFAULT NULL,
  `fechaentrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idclientes`, `foliocliente`, `nombrecliente`, `telcontacto`, `direccion`, `descripcion`, `fechacreado`, `creadopor`, `factualizado`, `actualizadopor`, `idactualizadopor`, `fechaentrega`) VALUES
(5, 'CMGLP581', 'PENDIENTE', '7773090136', 'FRANCISCO I. MADERO #8 COL. OTILIO MONTA?O', 'SE ENCUENTRA UBICADO ENTRE LA PURIFICADORA LLUVIA Y TAQUERIA, PORTON BLANCO.', '2021-02-02', 'angelesf', '0000-00-00', '', NULL, '2021-02-02'),
(6, 'CMGLP892', 'PENDIENTE 1', '7771882507', '15 DE SEPTIEMBRE S/N COL. OTILIO MONTA?O', 'CASA DE 2 PISOS COLOR VERDE.', '2021-02-02', 'angelesf', '0000-00-00', '', NULL, '2021-02-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faltante`
--

CREATE TABLE `faltante` (
  `idfaltante` int(11) NOT NULL,
  `operador` varchar(100) NOT NULL,
  `departamento` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `abono` float DEFAULT NULL,
  `restante` float DEFAULT NULL,
  `registradopor` varchar(100) NOT NULL,
  `fcreado` date NOT NULL,
  `pagado` varchar(100) DEFAULT NULL COMMENT 'Si es para estado pagado',
  `actualizadopor` int(11) DEFAULT NULL,
  `factualizado` date DEFAULT NULL,
  `bandera` int(11) NOT NULL,
  `banderaaux` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gaslp`
--

CREATE TABLE `gaslp` (
  `idpglp` int(11) NOT NULL,
  `numproveedor` varchar(100) DEFAULT NULL,
  `nombreproveedor` varchar(100) NOT NULL,
  `preciolista` float NOT NULL,
  `preciogeneral` float NOT NULL,
  `litros` float NOT NULL,
  `litrosactuales` float DEFAULT NULL,
  `mifolio` varchar(100) NOT NULL,
  `totalapagar` float NOT NULL,
  `formadepago` varchar(100) NOT NULL,
  `notaremision` varchar(100) NOT NULL,
  `pagado` varchar(45) NOT NULL,
  `numfactura` varchar(100) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `eficiencia` float DEFAULT NULL,
  `lcomprados` float DEFAULT NULL,
  `pactual` float DEFAULT NULL,
  `pfinal` float DEFAULT NULL,
  `pinicial` float DEFAULT NULL,
  `plt` float DEFAULT NULL,
  `factualizado` date DEFAULT NULL,
  `actualizadopor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gaslp`
--

INSERT INTO `gaslp` (`idpglp`, `numproveedor`, `nombreproveedor`, `preciolista`, `preciogeneral`, `litros`, `litrosactuales`, `mifolio`, `totalapagar`, `formadepago`, `notaremision`, `pagado`, `numfactura`, `fecha`, `eficiencia`, `lcomprados`, `pactual`, `pfinal`, `pinicial`, `plt`, `factualizado`, `actualizadopor`) VALUES
(21, 'NC111', 'GAS EXPRESS NIETO ', 8.31, 11.5, 2502, 1999.81, '47395', 20791.6, 'Transferencia', 'A-1480683', 'Si', 'FG-149234', '2021-02-02', 52, NULL, 48.1154, 53, 7, NULL, '2021-02-03', 'angelesf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rautotanque`
--

CREATE TABLE `rautotanque` (
  `idrauto` int(11) NOT NULL,
  `nombrecliente` varchar(100) NOT NULL,
  `nombrecontacto` varchar(100) NOT NULL,
  `telcontacto` varchar(45) NOT NULL,
  `direccion` text NOT NULL,
  `fservicios` varchar(100) NOT NULL,
  `foliocauto` varchar(100) NOT NULL,
  `fcreado` date NOT NULL,
  `creadopor` varchar(100) NOT NULL,
  `actualizadopor` varchar(100) NOT NULL,
  `factualizado` date NOT NULL,
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rautotanque`
--

INSERT INTO `rautotanque` (`idrauto`, `nombrecliente`, `nombrecontacto`, `telcontacto`, `direccion`, `fservicios`, `foliocauto`, `fcreado`, `creadopor`, `actualizadopor`, `factualizado`, `idcliente`) VALUES
(6, 'TORTILLERIA TACO CON SAL', 'ENRIQUE GARCIA', '7772744834', 'POBLADO DE 3 MARIAS HUITZILAC, AUN COSTADO DE  LA AUTOPISTA CUERNAVACA-MEXICO.', '7', 'AMGLP841', '2021-02-02', 'angelesf', 'angelesf', '2021-02-04', NULL),
(7, 'Panadero con el pan', 'Alejandro', '6758719288', 'Avenida Eje norte sur 0, Cuernavaca Morelos, México', '7', 'AMGLP022', '2021-02-04', 'angelesf', 'angelesf', '2021-02-04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventaauto`
--

CREATE TABLE `ventaauto` (
  `idvauto` int(11) NOT NULL,
  `folioventa` varchar(100) NOT NULL,
  `foliocliente` varchar(100) NOT NULL,
  `nombrecliente` varchar(100) NOT NULL,
  `nombrecontacto` varchar(100) NOT NULL,
  `telcontacto` varchar(100) NOT NULL,
  `remision` varchar(100) NOT NULL,
  `operador` varchar(100) NOT NULL,
  `precio` float NOT NULL,
  `volumen` float NOT NULL,
  `tpagar` float NOT NULL,
  `tpago` varchar(45) NOT NULL,
  `credito` varchar(10) NOT NULL,
  `dias` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `direccion` text NOT NULL,
  `fechacreado` date DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventaauto`
--

INSERT INTO `ventaauto` (`idvauto`, `folioventa`, `foliocliente`, `nombrecliente`, `nombrecontacto`, `telcontacto`, `remision`, `operador`, `precio`, `volumen`, `tpagar`, `tpago`, `credito`, `dias`, `descripcion`, `direccion`, `fechacreado`, `idcliente`) VALUES
(19, 'AMGLP41C1', '', 'TORTILLERIA TACO CON SAL', 'ENRIQUE GARCIA', '7772744834', 'A-1372678', 'HUGO ALBERTO RIOS JAIMES', 9.2, 326, 2999.2, '', 'No', 0, 'SERVICIO PROGRAMADO CADA 8 DIAS TODOS LOS MARTES HORARIO: 07:00 AM', 'POBLADO DE 3 MARIAS HUITZILAC, AUN COSTADO DE  LA AUTOPISTA CUERNAVACA-MEXICO.', NULL, NULL),
(20, 'AMGLP05C2', '', 'Panadero con el pan', 'Alejandro', '6758719288', '0', 'HUGO ALBERTO RIOS JAIMES', 9.8, 100, 980, '', 'No', 0, '0', 'Avenida Eje norte sur 0, Cuernavaca Morelos, M?xico', NULL, NULL),
(21, 'AMGLP65C3', '', 'TORTILLERIA TACO CON SAL', 'ENRIQUE GARCIA', '7772744834', '0', '0', 1, 1, 1, '', 'No', 0, 'skaslkj', 'POBLADO DE 3 MARIAS HUITZILAC, AUN COSTADO DE  LA AUTOPISTA CUERNAVACA-MEXICO.', '2021-02-10', 0),
(22, 'AMGLP04C4', '', 'TORTILLERIA TACO CON SAL', 'ENRIQUE GARCIA', '7772744834', '0', '0', 1, 1, 1, '', 'No', 0, 'skaslkj', 'POBLADO DE 3 MARIAS HUITZILAC, AUN COSTADO DE  LA AUTOPISTA CUERNAVACA-MEXICO.', '2021-02-10', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventas` int(11) NOT NULL,
  `folioventa` varchar(100) NOT NULL,
  `nombrecliente` varchar(100) NOT NULL,
  `foliocliente` varchar(100) DEFAULT NULL,
  `tamkg` int(11) NOT NULL,
  `litroscomprados` float NOT NULL,
  `ftanque` varchar(100) NOT NULL,
  `tservicio` varchar(100) NOT NULL,
  `repartidor` varchar(100) NOT NULL,
  `montoextra` float DEFAULT NULL,
  `cmontoextra` varchar(100) DEFAULT NULL,
  `tcontacto` varchar(100) NOT NULL,
  `direccion` text NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `atendio` varchar(100) NOT NULL,
  `instalado` varchar(45) DEFAULT NULL,
  `tpagar` float NOT NULL,
  `fechacreado` date NOT NULL,
  `actualizadopor` varchar(100) NOT NULL,
  `factualizado` date NOT NULL,
  `incidente` varchar(45) NOT NULL,
  `motivor` text NOT NULL,
  `reportadopor` varchar(100) NOT NULL,
  `freporte` date NOT NULL,
  `frecuente` varchar(100) DEFAULT NULL,
  `tpagarsm` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idventas`, `folioventa`, `nombrecliente`, `foliocliente`, `tamkg`, `litroscomprados`, `ftanque`, `tservicio`, `repartidor`, `montoextra`, `cmontoextra`, `tcontacto`, `direccion`, `descripcion`, `atendio`, `instalado`, `tpagar`, `fechacreado`, `actualizadopor`, `factualizado`, `incidente`, `motivor`, `reportadopor`, `freporte`, `frecuente`, `tpagarsm`) VALUES
(120, 'FV971', 'PENDIENTE', NULL, 20, 36.83, 'MGLP95C1', 'CallCenter', 'FABIAN', 0, 'No-Aplica', '7773090136', 'FRANCISCO I. MADERO #8 COL. OTILIO MONTAO ', 'PORTON BLANCO; ENTRE PURIFICADORA Y TAQUERIA.', 'angelesf', 'Servicio', 442, '2021-02-02', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 0),
(121, 'FV042', 'PENDIENTE 1', NULL, 30, 25, 'MGLP72C2', 'CallCenter', 'FABIAN', 15, 'Servicio', '7771882507', '15 DE SEPTIEMBRE S/N COL. OTILIO MONTAO ', 'CASA DE 2 PISOS COLOR VERDE; COMO REFERENCIA ESTA UNA PIPA DE AGUA ESTACIONADA.', 'angelesf', 'Servicio', 315, '2021-02-02', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 300),
(122, 'FV773', 'Francisco', NULL, 20, 17.3913, 'MGLP99C3', 'Referenciado', 'FABIAN', 0, 'No-Aplica', '6758719283', 'Avenida Eje norte sur 0, Cuernavaca Morelos, M?xico', 'se le dio a 10 y eran 200 pesos', 'angelesf', 'No-Aplica', 0, '2021-02-04', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 0),
(123, 'FV064', 'Pablito', NULL, 20, 17.3913, 'MGLP91C4', 'CallCenter', 'repartidor', 10, 'No-Aplica', '6758719283', 'Avenida Eje norte sur 0, Cuernavaca Morelos, M?xico', 'todo a 10 y es 200 el primero', 'angelesf', 'No-Aplica', 210, '2021-02-04', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 200),
(124, 'FV265', 'PENDIENTE', NULL, 20, 17.39, 'MGLP92C7', 'CallCenter', 'repartidor', 0, 'No-Aplica', '7773090136', 'FRANCISCO I. MADERO #8 COL. OTILIO MONTAO ', 'sumar numeros', 'angelesf', 'No-Aplica', 200, '2021-01-29', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 200),
(125, 'FV806', 'GEOVANNI', NULL, 30, 46.9565, 'MGLP45C8', 'Referenciado', 'FABIAN', 0, 'No-Aplica', '7774273821', 'N/A', 'EXTRA', 'angelesf', 'No-Aplica', 540, '2021-02-03', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 540),
(126, 'FV597', 'MOMO', NULL, 20, 33.913, 'MGLP23C9', 'Referenciado', 'FABIAN', 0, 'No-Aplica', '7771282853', 'N/A', 'CLIENTE CON PRECIO ESPECIAL POR VOLUMEN DE COMPRA.', 'angelesf', 'No-Aplica', 390, '2021-02-03', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 390),
(127, 'FV568', 'GEOVANNI', NULL, 30, 46.9565, 'MGLP01C10', 'Referenciado', 'FABIAN', 0, 'No-Aplica', '7774273821', 'N/A', 'nn', 'angelesf', 'No-Aplica', 540, '2021-02-03', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 540),
(128, 'FV469', 'GEOVANNI', NULL, 30, 58.0021, 'MGLP66C11', 'Referenciado', 'repartidor', 0, 'No-Aplica', '7774273821', 'N/A', 'n/a', 'angelesf', 'No-Aplica', 540, '2021-02-03', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 540),
(129, 'FV9810', 'PENDIENTE 1', NULL, 10, 8.7, 'MGLP68C5', 'CallCenter', 'FABIAN', 15, 'Servicio', '7771882507', '15 DE SEPTIEMBRE S/N COL. OTILIO MONTAO ', 'sumara el monto extra', 'angelesf', 'No-Aplica', 115, '2021-02-03', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 100),
(130, 'FV2611', 'PENDIENTE 1', NULL, 10, 8.7, 'MGLP06C6', 'CallCenter', 'FABIAN', 10, 'Servicio', '7771882507', '15 DE SEPTIEMBRE S/N COL. OTILIO MONTAO ', 'es para su t?a', 'angelesf', 'No-Aplica', 110, '2021-02-05', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 100),
(131, 'FV2512', 'PENDIENTE 1', NULL, 20, 8.7, 'MGLP76C13', 'CallCenter', 'repartidor', 0, 'No-Aplica', '7771882507', '15 DE SEPTIEMBRE S/N COL. OTILIO MONTAO ', 'impresion', 'angelesf', 'No-Aplica', 100, '2021-02-10', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 100),
(132, 'FV7913', 'PENDIENTE 1', NULL, 20, 8.7, 'MGLP36C14', 'CallCenter', 'repartidor', 10, 'No-Aplica', '7771882507', '15 DE SEPTIEMBRE S/N COL. OTILIO MONTAO ', 'no', 'angelesf', 'No-Aplica', 110, '2021-02-10', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 100),
(133, 'FV2514', 'PENDIENTE 1', NULL, 0, 0, 'MGLP36C14', 'CallCenter', 'repartidor', 10, 'No-Aplica', '7771882507', '15 DE SEPTIEMBRE S/N COL. OTILIO MONTAO ', 'no', 'angelesf', 'No-Aplica', 10, '2021-02-10', '', '0000-00-00', '', '', '', '0000-00-00', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viaticos`
--

CREATE TABLE `viaticos` (
  `idviatico` int(11) NOT NULL,
  `nombreviatico` varchar(100) DEFAULT NULL,
  `fechainicial` date DEFAULT NULL,
  `detalles` text DEFAULT NULL,
  `cantidad` float DEFAULT 0,
  `idusuario` int(11) DEFAULT NULL,
  `creadopor` varchar(100) DEFAULT NULL,
  `creadoel` date NOT NULL,
  `actualizadopor` varchar(100) DEFAULT NULL,
  `fechaactualizado` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `viaticos`
--

INSERT INTO `viaticos` (`idviatico`, `nombreviatico`, `fechainicial`, `detalles`, `cantidad`, `idusuario`, `creadopor`, `creadoel`, `actualizadopor`, `fechaactualizado`) VALUES
(3, 'Compra de cilindros', '2021-02-10', 'Se compraron los cilindros', 300, 86, 'angelesf', '2021-02-10', NULL, NULL),
(4, 'Compra de cilindros', '2021-02-03', 'Se compraron los cilindros', 100, 86, 'angelesf', '2021-02-03', NULL, NULL),
(5, 'Compra de cilindros', '2021-01-13', 'Se compraron los cilindros', 50, 86, 'angelesf', '2021-02-10', NULL, NULL),
(6, 'segundo gasto', '2021-02-10', 'se compraron papitas', 180, 86, 'angelesf', '2021-02-10', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtanques`
--

CREATE TABLE `vtanques` (
  `idtanque` int(11) NOT NULL,
  `nombrecliente` varchar(100) NOT NULL,
  `liquido` varchar(45) NOT NULL,
  `edotanque` varchar(100) NOT NULL,
  `capacidadkg` float DEFAULT NULL,
  `capacidadlts` float DEFAULT NULL,
  `capestacionario` float DEFAULT NULL,
  `ttanque` varchar(100) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` text NOT NULL,
  `instalacion` varchar(45) NOT NULL,
  `vendidopor` varchar(100) NOT NULL,
  `ptotal` float NOT NULL,
  `fcreado` date NOT NULL,
  `actualizadopor` varchar(100) DEFAULT NULL,
  `factualizado` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vtanques`
--

INSERT INTO `vtanques` (`idtanque`, `nombrecliente`, `liquido`, `edotanque`, `capacidadkg`, `capacidadlts`, `capestacionario`, `ttanque`, `precio`, `descripcion`, `instalacion`, `vendidopor`, `ptotal`, `fcreado`, `actualizadopor`, `factualizado`) VALUES
(36, 'Joel', 'Lleno', 'Usado', 20, 37, 20, 'Cilindro', 663, 'nuevo', 'No-instalado', 'angelesf', 425.5, '2021-02-04', NULL, NULL),
(37, 'Joel', 'Lleno', 'Usado', 20, 37, 20, 'Cilindro', 663, 'nuevo', 'No-instalado', 'angelesf', 425.5, '2021-02-04', NULL, NULL),
(38, 'MGLP', 'Vacio', 'Usado', 100, 100, 100, 'Cilindro', 180, 'sdlaksj d lkas', 'No-instalado', 'angelesf', 1150, '2021-02-03', NULL, NULL),
(39, 'MGLP', 'Vacio', 'Usado', 100, 100, 100, 'Cilindro', 180, 'sdlaksj d lkas', 'No-instalado', 'angelesf', 1150, '2021-02-03', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cfventas`
--
ALTER TABLE `cfventas`
  ADD PRIMARY KEY (`idcfventas`);

--
-- Indices de la tabla `cilindro`
--
ALTER TABLE `cilindro`
  ADD PRIMARY KEY (`idcil`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `id_num` (`email_cliente`),
  ADD KEY `email_cliente` (`email_cliente`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idclientes`);

--
-- Indices de la tabla `faltante`
--
ALTER TABLE `faltante`
  ADD PRIMARY KEY (`idfaltante`);

--
-- Indices de la tabla `gaslp`
--
ALTER TABLE `gaslp`
  ADD PRIMARY KEY (`idpglp`);

--
-- Indices de la tabla `rautotanque`
--
ALTER TABLE `rautotanque`
  ADD PRIMARY KEY (`idrauto`);

--
-- Indices de la tabla `ventaauto`
--
ALTER TABLE `ventaauto`
  ADD PRIMARY KEY (`idvauto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventas`);

--
-- Indices de la tabla `viaticos`
--
ALTER TABLE `viaticos`
  ADD PRIMARY KEY (`idviatico`);

--
-- Indices de la tabla `vtanques`
--
ALTER TABLE `vtanques`
  ADD PRIMARY KEY (`idtanque`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cfventas`
--
ALTER TABLE `cfventas`
  MODIFY `idcfventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cilindro`
--
ALTER TABLE `cilindro`
  MODIFY `idcil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idclientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `faltante`
--
ALTER TABLE `faltante`
  MODIFY `idfaltante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `gaslp`
--
ALTER TABLE `gaslp`
  MODIFY `idpglp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `rautotanque`
--
ALTER TABLE `rautotanque`
  MODIFY `idrauto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventaauto`
--
ALTER TABLE `ventaauto`
  MODIFY `idvauto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de la tabla `viaticos`
--
ALTER TABLE `viaticos`
  MODIFY `idviatico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vtanques`
--
ALTER TABLE `vtanques`
  MODIFY `idtanque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
