-- phpMyAdmin SQL Dump
-- version 5.0.4deb2~bpo10+1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29/05/2023 às 20:29
-- Versão do servidor: 10.3.38-MariaDB-0+deb10u1
-- Versão do PHP: 7.3.31-1~deb10u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `equipamentos2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `computador`
--

CREATE TABLE `computador` (
  `idComputador` int(11) NOT NULL,
  `numCir` int(6) DEFAULT NULL,
  `numPatrimonio` int(10) DEFAULT NULL,
  `nomeComputador` varchar(20) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `respCadastro` varchar(30) DEFAULT NULL,
  `respAltCadastro` varchar(30) DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `sistemaOpera` varchar(20) DEFAULT NULL,
  `modelMaquina` varchar(50) DEFAULT NULL,
  `tipProcessador` varchar(50) DEFAULT NULL,
  `memoria` varchar(10) DEFAULT NULL,
  `numIp` varchar(15) DEFAULT NULL,
  `numMac` varchar(17) DEFAULT NULL,
  `capHD` varchar(10) DEFAULT NULL,
  `statusComp` varchar(7) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `idLocal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `computador`
--

INSERT INTO `computador` (`idComputador`, `numCir`, `numPatrimonio`, `nomeComputador`, `datacadastro`, `respCadastro`, `respAltCadastro`, `dataAltCadastro`, `sistemaOpera`, `modelMaquina`, `tipProcessador`, `memoria`, `numIp`, `numMac`, `capHD`, `statusComp`, `obs`, `idLocal`) VALUES
(1, 0, 0, 'hu2342.HU2342', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.43.150.43', '00:02:5A:B0:15:74', '', 'ativo', 'null', 21),
(2, 0, 0, 'HU1457', '2019-01-28', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '2048', '10.1.1.144', '00:02:B3:5F:E0:99', '', 'ativo', 'null', 21),
(3, 0, 0, '10.30.0.2', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.0.2', '00:04:0B:38:D0:B8', '', 'ativo', 'null', 21),
(4, 0, 0, 'idt2117.hucff.ufrj.b', '2019-07-04', '', '', '0000-00-00', '', '', '', '', '10.42.31.101', '00:04:AC:E6:5E:5A', '', 'ativo', 'null', 21),
(5, 0, 0, '10.50.0.3', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.50.0.3', '00:05:1A:C8:09:98', '', 'ativo', 'null', 21),
(6, 0, 0, 'DESKTOP-9E67VAE.hucf', '2019-01-29', '', '', '0000-00-00', '', '', '', '', '10.43.46.54', '00:06:05:0D:1D:04', '', 'ativo', 'null', 21),
(7, 0, 0, 'IMPAXSE03.hucff.ufrj', '2019-07-25', '', '', '0000-00-00', '', '', '', '', '10.11.1.21', '00:06:4F:63:7C:B3', '', 'ativo', 'null', 21),
(8, 0, 0, 'HU2441', '2019-01-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i3 CPU 550 - 3.20GHz ', '4096', '10.10.11.61', '00:06:4F:63:7C:FB', '', 'ativo', 'null', 21),
(9, 0, 0, 'serverdell-PC.hucff.', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.0.42', '00:06:4F:63:7E:00', '', 'ativo', 'null', 21),
(10, 0, 0, 'HU1152', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Unknown OS', 'null', 'Intel Core 2 Duo CPU E7500 2.93GHz', '2013', '10.30.150.74', '00:08:54:D4:EA:06', '', 'ativo', 'null', 21),
(11, 0, 0, 'HU3421', '2019-08-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core i5-2310 CPU 2.90GHz', '8192', '10.42.150.53', '00:0B:0E:0F:00:ED', '', 'ativo', 'null', 21),
(12, 0, 0, 'nas-01-CC-22.hucff.u', '2019-07-24', '', '', '0000-00-00', '', '', '', '', '10.1.0.54', '00:0D:A2:01:CC:22', '', 'ativo', 'null', 21),
(13, 0, 0, '10.205.0.12', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.0.12', '00:0E:6A:68:08:98', '', 'ativo', 'null', 21),
(14, 0, 0, 'SERVERDELL2', '2019-01-24', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel(R) Xeon(R) CPU 5150 - 2.66GHz ', '12288', '10.1.0.53', '00:10:18:19:A7:A4', '', 'ativo', 'null', 21),
(15, 0, 0, 'hu1380.hucff.ufrj.br', '2019-05-21', '', '', '0000-00-00', '', '', '', '', '10.80.81.77', '00:10:C6:A1:33:A3', '', 'ativo', 'null', 21),
(16, 0, 0, 'osiris.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.0.20', '00:14:5E:1A:67:A2', '', 'ativo', 'null', 21),
(17, 0, 0, 'daedalus.hucff.ufrj.', '2019-06-03', '', '', '0000-00-00', '', '', '', '', '10.204.1.50', '00:14:5E:45:BA:D7', '', 'ativo', 'null', 21),
(18, 0, 0, 'osiris2.hucff.ufrj.b', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.0.24', '00:14:5E:C0:4D:BC', '', 'ativo', 'null', 21),
(19, 0, 0, 'HU1895', '2019-01-25', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel(R) Xeon(R) CPU X3220 - 2.40GHz ', '2048', '10.1.1.189', '00:15:17:9D:40:11', '', 'ativo', 'null', 21),
(20, 0, 0, 'DESKTOP-9F69O3B.hucf', '2019-05-09', '', '', '0000-00-00', '', '', '', '', '10.1.0.41', '00:15:17:9D:40:13', '', 'ativo', 'null', 21),
(21, 0, 0, 'hu1691.hucff.ufrj.br', '2019-07-10', '', '', '0000-00-00', '', '', '', '', '10.70.71.69', '00:15:58:21:0D:E8', '', 'ativo', 'null', 21),
(22, 0, 0, 'hu1390.hucff.ufrj.br', '2019-01-15', '', '', '0000-00-00', '', '', '', '', '10.80.81.147', '00:15:58:21:0D:E9', '', 'ativo', 'null', 21),
(23, 0, 0, 'hu1458.hucff.ufrj.br', '2019-07-08', '', '', '0000-00-00', '', '', '', '', '10.15.11.65', '00:15:58:B1:D5:F7', '', 'ativo', 'null', 21),
(24, 0, 0, 'hu1257.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.43.150.32', '00:15:60:95:27:82', '', 'ativo', 'null', 21),
(25, 0, 0, 'hu1350.hucff.ufrj.br', '2019-05-31', '', '', '0000-00-00', '', '', '', '', '10.80.81.63', '00:15:C5:32:F0:27', '', 'ativo', 'null', 21),
(26, 0, 0, 'HU1348', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel(R) Pentium(R) 4 CPU 3.00GHz', '1024', '10.80.150.71', '00:15:C5:32:F4:A4', '', 'ativo', 'null', 21),
(27, 0, 0, 'hu1536.hucff.ufrj.br', '2019-01-29', '', '', '0000-00-00', '', '', '', '', '10.40.41.78', '00:15:C5:33:1C:B9', '', 'ativo', 'null', 21),
(28, 0, 0, 'HU3398', '2019-08-16', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium 4 CPU 3.00GHz', '3574', '10.70.150.32', '00:15:C5:34:A7:18', '', 'ativo', 'null', 21),
(29, 0, 0, 'HU2488', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel(R) Celeron(R) CPU 2.66GHz c', '1024', '10.11.21.62', '00:15:C5:36:91:2B', '', 'ativo', 'null', 21),
(30, 0, 0, 'hu1395.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.43.150.65', '00:16:76:CC:ED:78', '', 'ativo', 'null', 21),
(31, 0, 0, '10.1.0.9', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.0.9', '00:16:E0:A0:54:C0', '', 'ativo', 'null', 21),
(32, 0, 0, 'fm1482.hucff.ufrj.br', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.113.111.81', '00:16:EC:0A:B3:D5', '', 'ativo', 'null', 21),
(33, 0, 0, 'KM6BFEB5.hucff.ufrj.', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.0.0.23', '00:17:C8:6B:FE:B5', '', 'ativo', 'null', 21),
(34, 0, 0, '10.40.0.1', '2019-03-29', '', '', '0000-00-00', '', '', '', '', '10.40.0.1', '00:18:6E:45:88:01', '', 'ativo', 'null', 21),
(35, 0, 0, 'hu1485.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.80.150.36', '00:18:8B:E1:32:A7', '', 'ativo', 'null', 21),
(36, 0, 0, 'HU1438', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 CPU 6300 1.86GHz', '3199', '10110150147', '00:18:F3:21:C7:30', '', 'ativo', 'null', 21),
(37, 0, 0, 'HU1476', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel Pentium4 CPU 3.20GHz', '447', '10.81.81.69', '00:19:D1:43:B9:B9', '', 'ativo', 'null', 21),
(38, 0, 0, 'HU1626', '2019-01-24', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel PentiumDual CPU E2180 - 2.00GHz ', '2048', '10.205.11.162', '00:19:D1:9B:EB:0A', '', 'ativo', 'null', 21),
(39, 0, 0, 'hu3790.hucff.ufrj.br', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.43.41.113', '00:19:D1:A8:FB:91', '', 'ativo', 'null', 21),
(40, 0, 0, 'hu1547.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.150.56', '00:19:D1:AC:0F:56', '', 'ativo', 'null', 21),
(41, 0, 0, 'hu1533.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.40.150.51', '00:19:D1:B4:A2:F4', '', 'ativo', 'null', 21),
(42, 0, 0, 'HU1557', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel CPU 2140  1.60GHz', '2048', '10.4.150.17', '00:1A:4D:97:BF:3B', '', 'ativo', 'null', 21),
(43, 0, 0, 'hu3791.hucff.ufrj.br', '2019-05-07', '', '', '0000-00-00', '', '', '', '', '10.43.41.114', '00:1A:92:0F:57:1D', '', 'ativo', 'null', 21),
(44, 0, 0, 'HU1992', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) 64 X2 Dual Core Processor 4200+', '4096', '10205150115', '00:1A:92:CB:82:20', '', 'ativo', 'null', 21),
(45, 0, 0, '10.1.0.1', '2019-03-29', '', '', '0000-00-00', '', '', '', '', '10.1.0.1', '00:1A:C1:34:44:01', '', 'ativo', 'null', 21),
(46, 0, 0, '10.30.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.0.1', '00:1A:C1:34:4F:01', '', 'ativo', 'null', 21),
(47, 0, 0, '10.202.1.4', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.1.4', '00:1B:21:C1:88:C6', '', 'ativo', 'null', 21),
(48, 0, 0, 'LAPTOP-CICARDIO', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU T5450 1.66GHz', '2048', '10.80.150.73', '00:1B:24:FB:6A:89', '', 'ativo', 'null', 21),
(49, 0, 0, 'IMACSENIOR.hucff.ufr', '2019-08-08', '', '', '0000-00-00', '', '', '', '', '10.1.1.137', '00:1B:63:BE:D9:40', '', 'ativo', 'null', 21),
(50, 0, 0, 'Livraria-PC.hucff.uf', '2019-07-03', '', '', '0000-00-00', '', '', '', '', '10.0.0.107', '00:1B:B9:69:96:60', '', 'ativo', 'null', 21),
(51, 0, 0, 'fm2107.hucff.ufrj.br', '2019-07-01', '', '', '0000-00-00', '', '', '', '', '10.113.111.93', '00:1B:B9:9E:48:AE', '', 'ativo', 'null', 21),
(52, 0, 0, 'hu1537.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.40.150.35', '00:1B:FC:B9:98:3C', '', 'ativo', 'null', 21),
(53, 0, 0, 'HU1590', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel  Core2 Duo CPU E6750 - 2.66GHz', '2048', '10.30.31.156', '00:1C:C0:1C:AE:B4', '', 'ativo', 'null', 21),
(54, 0, 0, 'HU3294', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E4500 2.20GHz', '2048', '10.113.150.24', '00:1C:C0:28:24:89', '', 'ativo', 'null', 21),
(55, 0, 0, 'HU1737', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E7200 2.53GHz', '2048', '10205150112', '00:1C:C0:43:04:EE', '', 'ativo', 'null', 21),
(56, 0, 0, 'hu1738.hucff.ufrj.br', '2019-01-14', '', '', '0000-00-00', '', '', '', '', '10.110.91.86', '00:1C:C0:43:05:1E', '', 'ativo', 'null', 21),
(57, 0, 0, 'hu3292.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.43.150.13', '00:1C:C0:48:23:82', '', 'ativo', 'null', 21),
(58, 0, 0, 'IDT2167', '2018-11-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium 4 CPU 3.00GHz', '2048', '10110150148', '00:1C:C0:63:3A:71', '', 'ativo', 'null', 21),
(59, 0, 0, 'hu1761.hucff.ufrj.br', '2019-08-02', '', '', '0000-00-00', '', '', '', '', '10.80.81.104', '00:1C:C0:67:51:F5', '', 'ativo', 'null', 21),
(60, 0, 0, 'hu2694.hucff.ufrj.br', '2019-01-02', '', '', '0000-00-00', '', '', '', '', '10.10.11.80', '00:1C:C0:6C:03:07', '', 'ativo', 'null', 21),
(61, 0, 0, 'hu3476.hucff.ufrj.br', '2019-07-30', '', '', '0000-00-00', '', '', '', '', '10.60.61.108', '00:1C:C0:7F:F5:AF', '', 'ativo', 'null', 21),
(62, 0, 0, 'HU1863', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium Dual CPU E2180 2.00GHz', '4096', '10.30.150.88', '00:1C:C0:B2:EA:0E', '', 'ativo', 'null', 21),
(63, 0, 0, 'hu1951.hucff.ufrj.br', '2019-05-16', '', '', '0000-00-00', '', '', '', '', '10.11.11.122', '00:1C:C0:B7:2E:A2', '', 'ativo', 'null', 21),
(64, 0, 0, 'hu1956.hucff.ufrj.br', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.205.150.58', '00:1C:C0:B7:2E:AC', '', 'ativo', 'null', 21),
(65, 0, 0, 'hu1959.hucff.ufrj.br', '2019-04-17', '', '', '0000-00-00', '', '', '', '', '10.0.0.113', '00:1C:C0:B7:2E:C5', '', 'ativo', 'null', 21),
(66, 0, 0, 'hu2321.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.40.150.30', '00:1C:C0:D6:C5:7D', '', 'ativo', 'null', 21),
(67, 0, 0, 'hu2323.hucff.ufrj.br', '2019-04-29', '', '', '0000-00-00', '', '', '', '', '10.40.51.94', '00:1C:C0:D6:C5:85', '', 'ativo', 'null', 21),
(68, 0, 0, 'HU3501', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '4096', '10.30.31.163', '00:1C:C0:E7:03:B5', '', 'ativo', 'null', 21),
(69, 0, 0, 'HU3291', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.43.150.22', '00:1C:C0:F0:A5:8C', '', 'ativo', 'null', 21),
(70, 0, 0, 'HU2238', '2019-08-06', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Quad CPU Q8300 2.50GHz', '4096', '10.42.150.65', '00:1C:C0:FE:15:12', '', 'ativo', 'null', 21),
(71, 0, 0, 'HU1553', '2019-01-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel  Core2 CPU 4400 – 2.00GHz', '2048', '10.1.1.98', '00:1D:60:03:CB:CD', '', 'ativo', 'null', 21),
(72, 0, 0, 'HU2038', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) 64 X2 Dual Core Processor 4400+', '2048', '10.20.150.12', '00:1D:7D:FE:A2:7D', '', 'ativo', 'null', 21),
(73, 0, 0, 'FM2183', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'AMD Athlon 64 X2 Dual Core Processor 4400+', '3072', '10.113.111.76', '00:1D:7D:FE:A5:31', '', 'ativo', 'null', 21),
(74, 0, 0, 'hu2071.hucff.ufrj.br', '2019-08-04', '', '', '0000-00-00', '', '', '', '', '10.0.0.82', '00:1D:7D:FF:1D:25', '', 'ativo', 'null', 21),
(75, 0, 0, 'HU1607', '2019-01-15', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Sempron Processor LE - 1150 ', '1919', '10.1.1.88', '00:1D:7D:FF:C1:4B', '', 'ativo', 'null', 21),
(76, 0, 0, 'minint-v2e54of.hucff', '2019-01-04', '', '', '0000-00-00', '', '', '', '', '10.1.1.88', '00:1D:7D:FF:C1:4B', '', 'ativo', 'null', 21),
(77, 0, 0, 'hu1612.hucff.ufrj.br', '2019-05-21', '', '', '0000-00-00', '', '', '', '', '10.1.1.171', '00:1D:92:78:25:AE', '', 'ativo', 'null', 21),
(78, 0, 0, 'IDT2270', '2019-01-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon 64 X2 Dual Core Processor 5200+ ', '2048', '10110100114', '00:1D:92:DF:15:EC', '', 'ativo', 'null', 21),
(79, 0, 0, 'priscila-PC', '2019-07-18', '', '', '0000-00-00', '', '', '', '', '10.204.30.26', '00:1D:BA:92:C7:13', '', 'ativo', 'null', 21),
(80, 0, 0, 'HU2624', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E4500 2.20GHz', '2048', '10.205.150.46', '00:1E:8C:95:96:81', '', 'ativo', 'null', 21),
(81, 0, 0, 'hu1576.hucff.ufrj.br', '2019-07-19', '', '', '0000-00-00', '', '', '', '', '10.50.51.82', '00:1E:8C:95:A7:DF', '', 'ativo', 'null', 21),
(82, 0, 0, 'hu1575.hucff.ufrj.br', '2019-05-14', '', '', '0000-00-00', '', '', '', '', '10.50.51.81', '00:1E:8C:95:A7:E7', '', 'ativo', 'null', 21),
(83, 0, 0, 'hu1995.hucff.ufrj.br', '2019-05-06', '', '', '0000-00-00', '', '', '', '', '10.0.0.92', '00:1E:90:D8:D1:E0', '', 'ativo', 'null', 21),
(84, 0, 0, 'idt1840.hucff.ufrj.b', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.42.150.25', '00:1E:90:F2:53:DB', '', 'ativo', 'null', 21),
(85, 0, 0, 'hu3220.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.40.150.55', '00:1E:C9:19:43:75', '', 'ativo', 'null', 21),
(86, 0, 0, 'hu1733.hucff.ufrj.br', '2019-07-22', '', '', '0000-00-00', '', '', '', '', '10.30.31.141', '00:1E:C9:1D:9A:C9', '', 'ativo', 'null', 21),
(87, 0, 0, 'hu1734.hucff.ufrj.br', '2019-06-28', '', '', '0000-00-00', '', '', '', '', '10.43.41.55', '00:1E:C9:1D:9A:CD', '', 'ativo', 'null', 21),
(88, 0, 0, 'HU1736', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel Core2 Duo CPU E4600 2.40GHz', '2048', '10.30.150.34', '00:1E:C9:1D:9B:B9', '', 'ativo', 'null', 21),
(89, 0, 0, 'HU1746', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel Pentium Dual CPU E2160 1.80GHz', '1024', '10.81.150.17', '00:1E:C9:1D:A4:2A', '', 'ativo', 'null', 21),
(90, 0, 0, 'Mariana-PC', '2019-05-06', '', '', '0000-00-00', '', '', '', '', '10.43.41.112', '00:1E:C9:1E:C7:5A', '', 'ativo', 'null', 21),
(91, 0, 0, 'idt1852.hucff.ufrj.b', '2019-07-19', '', '', '0000-00-00', '', '', '', '', '10.42.31.105', '00:1E:C9:21:47:DE', '', 'ativo', 'null', 21),
(92, 0, 0, 'hu1889.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.43', '00:1E:C9:21:CE:AA', '', 'ativo', 'null', 21),
(93, 0, 0, 'hu1878.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.82', '00:1E:C9:21:D0:B2', '', 'ativo', 'null', 21),
(94, 0, 0, 'storagelab.hucff.ufr', '2019-06-21', '', '', '0000-00-00', '', '', '', '', '10.1.0.45', '00:1F:5B:3C:87:B5', '', 'ativo', 'null', 21),
(95, 0, 0, 'HU1703', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD Athlon(tm) 64 X2 Dual Core Processor 5200+', '2048', '10.40.150.94', '00:1F:C6:73:D0:B8', '', 'ativo', 'null', 21),
(96, 0, 0, 'HU1837', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon 64 X2 Dual Core Processor 5200+ ', '4096', '10.110.101.91', '00:1F:C6:B9:99:63', '', 'ativo', 'null', 21),
(97, 0, 0, 'minint-8m4rbmb.hucff', '2019-07-05', '', '', '0000-00-00', '', '', '', '', '10.110.101.91', '00:1F:C6:B9:99:63', '', 'ativo', 'null', 21),
(98, 0, 0, 'CIR - GILBERTO', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) 8450 Triple - Core Processor ', '4096', '10.204.1.23', '00:1F:C6:F4:9C:BD', '', 'ativo', 'null', 21),
(99, 0, 0, 'HU2305', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium Dual CPU E2200 2.20GHz', '4096', '10.40.150.53', '00:1F:D0:E2:18:45', '', 'ativo', 'null', 21),
(100, 0, 0, 'hu2536.hucff.ufrj.br', '2019-07-16', '', '', '0000-00-00', '', '', '', '', '10110100124', '00:1F:D0:E2:18:46', '', 'ativo', 'null', 21),
(101, 0, 0, 'hu1647.hucff.ufrj.br', '2019-01-07', '', '', '0000-00-00', '', '', '', '', '10.0.0.91', '00:1F:D0:E2:1C:BB', '', 'ativo', 'null', 21),
(102, 0, 0, 'HU2672', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium Dual CPU E2200 2.20GHz', '4096', '10.3.150.22', '00:1F:D0:E2:1C:FC', '', 'ativo', 'null', 21),
(103, 0, 0, 'hu1902.hucff.ufrj.br', '2019-07-09', '', '', '0000-00-00', '', '', '', '', '10.60.61.53', '00:1F:D0:E2:21:96', '', 'ativo', 'null', 21),
(104, 0, 0, 'hu1903.hucff.ufrj.br', '2019-06-07', '', '', '0000-00-00', '', '', '', '', '10.60.61.54', '00:1F:D0:E2:27:1C', '', 'ativo', 'null', 21),
(105, 0, 0, 'hu1909.hucff.ufrj.br', '2019-05-09', '', '', '0000-00-00', '', '', '', '', '10.60.61.56', '00:1F:D0:E2:28:93', '', 'ativo', 'null', 21),
(106, 0, 0, 'destiny.hucff.ufrj.b', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.204.1.70', '00:1F:D0:FB:92:4E', '', 'ativo', 'null', 21),
(107, 0, 0, 'HU2818', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel PentiumDual CPU E2200 - 2.20GHz ', '3072', '10.205.13.65', '00:1F:D0:FB:94:3C', '', 'ativo', 'null', 21),
(108, 0, 0, 'HU2121', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium Dual CPU E2200 2.20GHz', '2048', '10.81.150.12', '00:1F:D0:FB:97:22', '', 'ativo', 'null', 21),
(109, 0, 0, 'HU1704', '2019-08-16', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium Dual CPU E2200 2.20GHz', '4096', '10.70.150.28', '00:1F:D0:FB:97:56', '', 'ativo', 'null', 21),
(110, 0, 0, 'hu2244.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.80.150.40', '00:1F:D0:FB:98:5F', '', 'ativo', 'null', 21),
(111, 0, 0, 'HU1568', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel Pentium Dual CPU E2200 2.20GHz', '1024', '10.100.150.43', '00:1F:D0:FB:98:69', '', 'ativo', 'null', 21),
(112, 0, 0, 'HU2553', '2019-01-28', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel PentiumDual CPU E2200 - 2.20GHz ', '2048', '10.1.151.249', '00:1F:D0:FB:98:F9', '', 'ativo', 'null', 21),
(113, 0, 0, '10.202.10.11', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.10.11', '00:20:85:E6:04:72', '', 'ativo', 'null', 21),
(114, 0, 0, '10.202.10.10', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.10.10', '00:20:85:E6:04:75', '', 'ativo', 'null', 21),
(115, 0, 0, 'HU3494', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E6550 2.33GHz', '3317', '10.30.150.68', '00:21:5A:BC:47:D8', '', 'ativo', 'null', 21),
(116, 0, 0, 'HU3806', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E6550 2.33GHz', '3317', '10.80.150.38', '00:21:5A:BC:89:61', '', 'ativo', 'null', 21),
(117, 0, 0, 'hu2097.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.80.150.41', '00:21:5A:BC:C9:80', '', 'ativo', 'null', 21),
(118, 0, 0, 'NPIFE8021.hucff.ufrj', '2019-03-22', '', '', '0000-00-00', '', '', '', '', '10.51.50.23', '00:21:5A:FE:80:21', '', 'ativo', 'null', 21),
(119, 0, 0, 'HU1937', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7400 2.80GHz', '4096', '10.50.150.28', '00:21:70:5C:EF:DF', '', 'ativo', 'null', 21),
(120, 0, 0, 'hu1935.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.50.150.31', '00:21:70:5C:F0:C4', '', 'ativo', 'null', 21),
(121, 0, 0, 'hu1962.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.150.52', '00:21:97:E0:11:2F', '', 'ativo', 'null', 21),
(122, 0, 0, 'hu1927.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.51.51.73', '00:22:15:F5:D4:C1', '', 'ativo', 'null', 21),
(123, 0, 0, 'govinda.hucff.ufrj.b', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.10.30', '00:22:19:80:55:4A', '', 'ativo', 'null', 21),
(124, 0, 0, 'HU3245', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core i5-4440 CPU 3.10GHz', '8192', '10.30.150.60', '00:22:4D:B0:7A:B6', '', 'ativo', 'null', 21),
(125, 0, 0, 'XTREMECT', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.70.70.41', '00:22:64:94:38:FB', '', 'ativo', 'null', 21),
(126, 0, 0, 'lauter-PC.hucff.ufrj', '2019-06-21', '', '', '0000-00-00', '', '', '', '', '10.204.10.31', '00:23:5A:78:48:25', '', 'ativo', 'null', 21),
(127, 0, 0, 'supredes.hucff.ufrj.', '2019-05-14', '', '', '0000-00-00', '', '', '', '', '10.10.6.200', '00:23:5A:A8:18:4D', '', 'ativo', 'null', 21),
(128, 0, 0, 'wsus.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.0.26', '00:23:7D:9C:5B:D9', '', 'ativo', 'null', 21),
(129, 0, 0, 'HU3863', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E4700 2.60GHz', '3072', '10.110.150.65', '00:23:7D:D5:94:18', '', 'ativo', 'null', 21),
(130, 0, 0, 'hu2184', '2019-06-13', '', '', '0000-00-00', '', '', '', '', '10.110.111.52', '00:23:AE:B6:69:57', '', 'ativo', 'null', 21),
(131, 0, 0, 'HU1960', '2019-07-10', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel Core 2 Duo CPU E7400 2.80GHz', '3061', '10.30.150.144', '00:23:AE:B7:01:DC', '', 'ativo', 'null', 21),
(132, 0, 0, 'hu1961.hucff.ufrj.br', '2019-07-12', '', '', '0000-00-00', '', '', '', '', '10.30.41.112', '00:23:AE:B7:01:E0', '', 'ativo', 'null', 21),
(133, 0, 0, 'HU2079', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Pentium Dual-Core CPU E5300 2.60GHz', '4096', '10.50.150.23', '00:23:AE:B8:0F:80', '', 'ativo', 'null', 21),
(134, 0, 0, 'HU2078', '2019-08-21', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Pentium Dual-Core CPU E5300 2.60GHz', '2048', '10.50.150.59', '00:23:AE:B8:0F:9A', '', 'ativo', 'null', 21),
(135, 0, 0, 'HU3635', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '4096', '10.30.31.182', '00:23:AE:B8:A6:95', '', 'ativo', 'null', 21),
(136, 0, 0, 'hu2088.hucff.ufrj.br', '2019-05-09', '', '', '0000-00-00', '', '', '', '', '10.60.61.102', '00:24:1D:70:1D:8E', '', 'ativo', 'null', 21),
(137, 0, 0, 'hu2094.hucff.ufrj.br', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.60.150.17', '00:24:1D:70:1F:5A', '', 'ativo', 'null', 21),
(138, 0, 0, 'hu2095.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.60.150.11', '00:24:1D:70:24:62', '', 'ativo', 'null', 21),
(139, 0, 0, 'HU2096', '2019-08-21', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7400 2.80GHz', '4096', '10.42.150.56', '00:24:1D:70:57:C6', '', 'ativo', 'null', 21),
(140, 0, 0, 'hu2089.hucff.ufrj.br', '2019-03-19', '', '', '0000-00-00', '', '', '', '', '10.42.41.117', '00:24:1D:70:66:2D', '', 'ativo', 'null', 21),
(141, 0, 0, 'hu2081.hucff.ufrj.br', '2019-05-09', '', '', '0000-00-00', '', '', '', '', '10.60.61.68', '00:24:1D:70:73:BD', '', 'ativo', 'null', 21),
(142, 0, 0, 'hu2087.hucff.ufrj.br', '2019-08-21', '', '', '0000-00-00', '', '', '', '', '10.60.150.15', '00:24:1D:70:73:BF', '', 'ativo', 'null', 21),
(143, 0, 0, 'HU2089', '2019-01-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7400 - 2.80GHz ', '2048', '10.42.41.72', '00:24:1D:70:73:FF', '', 'ativo', 'null', 21),
(144, 0, 0, 'HU1942', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium Dual CPU E2180 2.00GHz', '4096', '10.50.150.41', '00:24:1D:F0:75:7D', '', 'ativo', 'null', 21),
(145, 0, 0, 'HU2108', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz', '2048', '10.71.71.60', '00:24:1D:F7:9B:51', '', 'ativo', 'null', 21),
(146, 0, 0, 'HU2072', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '4096', '10.30.150.70', '00:24:1D:F7:DF:7E', '', 'ativo', 'null', 21),
(147, 0, 0, 'SERVERMAC.hucff.ufrj', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.0.43', '00:24:36:F4:9F:A8', '', 'ativo', 'null', 21),
(148, 0, 0, '10.110.106.53', '2019-08-02', '', '', '0000-00-00', '', '', '', '', '10.110.106.53', '00:24:54:51:30:4C', '', 'ativo', 'null', 21),
(149, 0, 0, '10.30.0.3', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.0.3', '00:24:73:D7:8B:C1', '', 'ativo', 'null', 21),
(150, 0, 0, 'HU3777', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E8400 3.00GHz', '4096', '10.90.150.40', '00:24:81:32:5E:36', '', 'ativo', 'null', 21),
(151, 0, 0, 'hu3789.hucff.ufrj.br', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.0.0.140', '00:24:81:32:5F:E5', '', 'ativo', 'null', 21),
(152, 0, 0, 'HU3865', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E8400 3.00GHz', '4096', '10.2.150.25', '00:24:81:32:6E:07', '', 'ativo', 'null', 21),
(153, 0, 0, 'hu3862.hucff.ufrj.br', '2019-07-09', '', '', '0000-00-00', '', '', '', '', '10.11.1.108', '00:24:81:32:BE:C6', '', 'ativo', 'null', 21),
(154, 0, 0, 'HU3807', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E8400 3.00GHz', '4096', '10.70.150.13', '00:24:81:33:60:F3', '', 'ativo', 'null', 21),
(155, 0, 0, 'hu1922.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.51.151.250', '00:24:8C:18:76:25', '', 'ativo', 'null', 21),
(156, 0, 0, 'HU1926', '2019-01-18', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon 64 X2 Dual Core Processor 6000+ ', '4096', '10.51.51.64', '00:24:8C:18:7B:99', '', 'ativo', 'null', 21),
(157, 0, 0, 'hu1931.hucff.ufrj.br', '2019-08-20', '', '', '0000-00-00', '', '', '', '', '10.51.151.245', '00:24:8C:18:7B:A9', '', 'ativo', 'null', 21),
(158, 0, 0, 'HU2004', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Quad CPU Q8200 2.33GHz', '4096', '10.11.150.24', '00:24:8C:CF:34:44', '', 'ativo', 'null', 21),
(159, 0, 0, 'HU1991', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Quad CPU Q8200 - 2.33GHz ', '3072', '10.81.81.66', '00:24:8C:CF:34:B7', '', 'ativo', 'null', 21),
(160, 0, 0, 'hu2003.hucff.ufrj.br', '2019-01-29', '', '', '0000-00-00', '', '', '', '', '10.205.1.56', '00:24:8C:CF:34:BD', '', 'ativo', 'null', 21),
(161, 0, 0, 'HU2701', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Quad CPU Q8200 2.33GHz', '3072', '10.50.150.70', '00:24:8C:CF:34:C9', '', 'ativo', 'null', 21),
(162, 0, 0, 'HU2006', '2019-01-09', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Quad CPU Q8200 - 2.33GHz ', '4096', '10.205.11.60', '00:24:8C:CF:34:D3', '', 'ativo', 'null', 21),
(163, 0, 0, 'hu1888.hucff.ufrj.br', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.42.33.56', '00:24:8C:CF:36:78', '', 'ativo', 'null', 21),
(164, 0, 0, 'hu1984.hucff.ufrj.br', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.200.1.54', '00:24:8C:CF:3F:8E', '', 'ativo', 'null', 21),
(165, 0, 0, 'HU1979', '2019-08-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Quad CPU Q8200 2.33GHz', '4096', '10.30.150.106', '00:24:8C:CF:3F:8F', '', 'ativo', 'null', 21),
(166, 0, 0, 'hu2013.hucff.ufrj.br', '2019-01-08', '', '', '0000-00-00', '', '', '', '', '10.205.11.190', '00:24:8C:CF:41:99', '', 'ativo', 'null', 21),
(167, 0, 0, 'hu2007.hucff.ufrj.br', '2019-01-18', '', '', '0000-00-00', '', '', '', '', '10.11.1.60', '00:24:8C:CF:43:4A', '', 'ativo', 'null', 21),
(168, 0, 0, 'hu2016.hucff.ufrj.br', '2019-07-22', '', '', '0000-00-00', '', '', '', '', '10.205.11.145', '00:24:8C:CF:43:4C', '', 'ativo', 'null', 21),
(169, 0, 0, 'HU1978', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Quad CPU Q8200 - 2.33GHz ', '4096', '10.1.1.196', '00:24:8C:CF:44:39', '', 'ativo', 'null', 21),
(170, 0, 0, 'HU2022', '2019-08-21', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Quad CPU Q8200 2.33GHz', '4096', '10.30.150.153', '00:24:8C:CF:44:3A', '', 'ativo', 'null', 21),
(171, 0, 0, 'HU1993', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Quad CPU Q8200 2.33GHz', '2048', '10.43.150.41', '00:24:8C:CF:44:81', '', 'ativo', 'null', 21),
(172, 0, 0, 'hu2012.hucff.ufrj.br', '2019-06-21', '', '', '0000-00-00', '', '', '', '', '10.11.11.170', '00:24:8C:CF:44:87', '', 'ativo', 'null', 21),
(173, 0, 0, 'hu1988.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.49', '00:24:8C:CF:44:89', '', 'ativo', 'null', 21),
(174, 0, 0, 'hu2011.hucff.ufrj.br', '2019-01-10', '', '', '0000-00-00', '', '', '', '', '10.205.11.65', '00:24:8C:CF:44:CC', '', 'ativo', 'null', 21),
(175, 0, 0, 'HU1981', '2019-01-24', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Quad CPU Q8200 - 2.33GHz ', '4096', '10.30.31.178', '00:24:8C:CF:44:CF', '', 'ativo', 'null', 21),
(176, 0, 0, 'HU1997', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Quad CPU Q8200 - 2.33GHz ', '4096', '10.42.31.156', '00:24:8C:CF:44:DA', '', 'ativo', 'null', 21),
(177, 0, 0, 'HU1985', '2019-01-24', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Quad CPU Q8200 - 2.33GHz ', '4096', '10.40.51.102', '00:24:8C:CF:44:E1', '', 'ativo', 'null', 21),
(178, 0, 0, 'HU1980', '2019-01-07', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Quad CPU Q8200 - 2.33GHz ', '2048', '10.100.91.51', '00:24:8C:CF:45:19', '', 'ativo', 'null', 21),
(179, 0, 0, 'HU1998', '2019-08-16', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Quad CPU Q8200 2.33GHz', '3072', '10.111.150.26', '00:24:8C:CF:45:28', '', 'ativo', 'null', 21),
(180, 0, 0, 'HU1866', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.40.150.92', '00:24:8C:CF:45:2B', '', 'ativo', 'null', 21),
(181, 0, 0, 'hu2064.hucff.ufrj.br', '2019-01-17', '', '', '0000-00-00', '', '', '', '', '10.1.1.93', '00:24:8C:D5:A7:46', '', 'ativo', 'null', 21),
(182, 0, 0, 'HU2053', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) 8650 Triple-Core Processor', '2048', '10.20.150.10', '00:24:8C:D5:A7:57', '', 'ativo', 'null', 21),
(183, 0, 0, 'hu2044.hucff.ufrj.br', '2019-04-03', '', '', '0000-00-00', '', '', '', '', '10.2.1.53', '00:24:8C:D5:A7:66', '', 'ativo', 'null', 21),
(184, 0, 0, 'HU2068', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) 8650 Triple - Core Processor ', '2560', '10111151243', '00:24:8C:D5:A7:6B', '', 'ativo', 'null', 21),
(185, 0, 0, 'HU2050', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) 8650 Triple-Core Processor', '4096', '10.40.150.73', '00:24:8C:D6:75:DE', '', 'ativo', 'null', 21),
(186, 0, 0, 'HU1948', '2019-01-09', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) 8650 Triple - Core Processor ', '3072', '10.11.1.61', '00:24:8C:D6:7B:10', '', 'ativo', 'null', 21),
(187, 0, 0, 'SUPORTECIR', '2019-01-07', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) 8650 Triple - Core Processor ', '2048', '10.100.91.60', '00:24:8C:D6:7B:38', '', 'ativo', 'null', 21),
(188, 0, 0, 'HU2037', '2019-01-15', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) 8650 Triple - Core Processor', '2048', '10.1.1.128', '00:24:8C:D6:7B:3F', '', 'ativo', 'null', 21),
(189, 0, 0, 'hu2061.hucff.ufrj.br', '2019-07-04', '', '', '0000-00-00', '', '', '', '', '10.80.81.113', '00:24:8C:D6:7B:41', '', 'ativo', 'null', 21),
(190, 0, 0, 'HU2043', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) 8650 Triple - Core Processor ', '2560', '10.80.81.97', '00:24:8C:D6:8B:F2', '', 'ativo', 'null', 21),
(191, 0, 0, 'hu2045.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.30.150.89', '00:24:8C:D6:8B:F9', '', 'ativo', 'null', 21),
(192, 0, 0, 'hu2048.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.60.150.24', '00:24:8C:D6:8D:13', '', 'ativo', 'null', 21),
(193, 0, 0, 'HU2430', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) 8650 Triple - Core Processor ', '3072', '10.205.13.64', '00:24:8C:D6:8D:50', '', 'ativo', 'null', 21),
(194, 0, 0, 'hu2065.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.11.150.73', '00:24:8C:D6:8D:BD', '', 'ativo', 'null', 21),
(195, 0, 0, 'hu2055.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.80.150.54', '00:24:8C:D6:8F:AA', '', 'ativo', 'null', 21),
(196, 0, 0, 'Pro-de-Tiago.hucff.u', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.146', '00:25:00:F4:3F:3C', '', 'ativo', 'null', 21),
(197, 0, 0, 'MacPro4.hucff.ufrj.b', '2019-07-12', '', '', '0000-00-00', '', '', '', '', '10.1.1.145', '00:25:00:F4:66:0A', '', 'ativo', 'null', 21),
(198, 0, 0, 'hu2259.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.97', '00:25:11:B1:C1:A9', '', 'ativo', 'null', 21),
(199, 0, 0, 'HU3500', '2019-01-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '4096', '10.30.31.67', '00:25:11:B2:63:BE', '', 'ativo', 'null', 21),
(200, 0, 0, 'HU3312', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Sempron(tm) Processor 3400+', '1791', '10.50.51.120', '00:25:22:50:17:E0', '', 'ativo', 'null', 21),
(201, 0, 0, 'HU2552', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core  i5-2400 CPU 3.10GHz', '4096', '10.42.150.39', '00:25:22:AE:62:98', '', 'ativo', 'null', 21),
(202, 0, 0, '10.140.10.21', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.140.10.21', '00:25:36:2E:2E:10', '', 'ativo', 'null', 21),
(203, 0, 0, '10.42.40.22', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.42.40.22', '00:25:36:61:23:34', '', 'ativo', 'null', 21),
(204, 0, 0, '10.11.10.22', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.11.10.22', '00:25:36:61:23:6A', '', 'ativo', 'null', 21),
(205, 0, 0, '10.205.10.29', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.10.29', '00:25:36:61:23:72', '', 'ativo', 'null', 21),
(206, 0, 0, '10.61.60.22', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.61.60.22', '00:25:36:61:23:74', '', 'ativo', 'null', 21),
(207, 0, 0, '10.205.10.25', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.10.25', '00:25:36:61:23:CC', '', 'ativo', 'null', 21),
(208, 0, 0, '10.10.0.21', '2019-01-29', '', '', '0000-00-00', '', '', '', '', '10.10.0.21', '00:25:36:76:DA:97', '', 'ativo', 'null', 21),
(209, 0, 0, '10.205.10.26', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.10.26', '00:25:36:E1:1E:0C', '', 'ativo', 'null', 21),
(210, 0, 0, '10.40.50.23', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.40.50.23', '00:25:36:E1:1E:E2', '', 'ativo', 'null', 21),
(211, 0, 0, '10.205.10.21', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.10.21', '00:25:36:EE:F8:88', '', 'ativo', 'null', 21),
(212, 0, 0, 'IMAC5RM.hucff.ufrj.b', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.134', '00:25:4B:A4:02:E8', '', 'ativo', 'null', 21),
(213, 0, 0, 'IMAC6RM.hucff.ufrj.b', '2019-03-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.132', '00:25:4B:A4:45:B6', '', 'ativo', 'null', 21),
(214, 0, 0, 'IMAC1RM.hucff.ufrj.b', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.1.1.136', '00:25:4B:A4:A9:64', '', 'ativo', 'null', 21),
(215, 0, 0, 'IMAC2RM.hucff.ufrj.b', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.1.1.133', '00:25:4B:A4:B6:78', '', 'ativo', 'null', 21),
(216, 0, 0, 'IMAC4RM.hucff.ufrj.b', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.135', '00:25:4B:AD:30:1C', '', 'ativo', 'null', 21),
(217, 0, 0, 'IMAC3RM.hucff.ufrj.b', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.131', '00:25:4B:CF:00:A4', '', 'ativo', 'null', 21),
(218, 0, 0, 'User-PC.hucff.ufrj.b', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.30.150.121', '00:25:64:4E:3E:C6', '', 'ativo', 'null', 21),
(219, 0, 0, 'laptop-radiofar.hucf', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.150.17', '00:25:64:55:44:96', '', 'ativo', 'null', 21),
(220, 0, 0, 'HU2722', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD E-350 Processor', '4096', '10.30.150.38', '00:25:AB:17:1D:8D', '', 'ativo', 'null', 21),
(221, 0, 0, 'HU2721', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD E-350 Processor', '4096', '10.30.150.103', '00:25:AB:17:3A:20', '', 'ativo', 'null', 21),
(222, 0, 0, 'admin-PC', '2019-06-25', '', '', '0000-00-00', '', '', '', '', '10.113.111.96', '00:26:18:91:DC:54', '', 'ativo', 'null', 21),
(223, 0, 0, 'hu2106.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10110150152', '00:26:55:03:B8:63', '', 'ativo', 'null', 21),
(224, 0, 0, 'HU2116', '2019-08-06', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Pentium Dual-Core CPU E5200 2.50GHz', '3072', '10.40.150.90', '00:26:55:25:62:A7', '', 'ativo', 'null', 21),
(225, 0, 0, 'HU1590', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium Dual CPU E2200 2.20GHz', '4096', '10.30.150.155', '00:26:5A:84:D6:21', '', 'ativo', 'null', 21),
(226, 0, 0, 'RNP0026736CAAA3.hucf', '2019-07-03', '', '', '0000-00-00', '', '', '', '', '10.205.0.24', '00:26:73:6C:AA:A3', '', 'ativo', 'null', 21),
(227, 0, 0, 'LAPTOP - PROCTO', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel(R) Celeron(R) CPU 723 - 1.20GHz', '2048', '10.15.16.63', '00:26:9E:12:11:BF', '', 'ativo', 'null', 21),
(228, 0, 0, 'jacbj-acer-note.hucf', '2019-04-03', '', '', '0000-00-00', '', '', '', '', '10.43.46.55', '00:26:9E:D6:71:6F', '', 'ativo', 'null', 21),
(229, 0, 0, 'hu2186.hucff.ufrj.br', '2019-08-08', '', '', '0000-00-00', '', '', '', '', '10.111.121.73', '00:27:0E:07:36:A1', '', 'ativo', 'null', 21),
(230, 0, 0, 'HU2144', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.70.150.39', '00:27:0E:0B:6A:4C', '', 'ativo', 'null', 21),
(231, 0, 0, 'HU2237', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '3072', '10.40.150.44', '00:27:0E:19:C0:47', '', 'ativo', 'null', 21),
(232, 0, 0, 'HU2240', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '3072', '10.40.150.59', '00:27:0E:19:C0:48', '', 'ativo', 'null', 21),
(233, 0, 0, 'HU2239', '2019-08-05', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.3.150.15', '00:27:0E:19:C0:4E', '', 'ativo', 'null', 21),
(234, 0, 0, 'IDT1666', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E6550 2.33GHz', '4096', '10.11.150.18', '00:27:0E:19:F4:28', '', 'ativo', 'null', 21),
(235, 0, 0, 'hu2447.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.71.151.247', '00:27:0E:1A:1E:28', '', 'ativo', 'null', 21),
(236, 0, 0, '10.205.0.4', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.0.4', '00:30:1E:86:76:B8', '', 'ativo', 'null', 21),
(237, 0, 0, 'HU2416', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Pentium Dual-Core CPU E5700 3.00GHz', '4096', '10.43.150.11', '00:30:67:9C:E1:14', '', 'ativo', 'null', 21),
(238, 0, 0, 'hu2386.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.43.150.38', '00:30:67:9C:E9:64', '', 'ativo', 'null', 21),
(239, 0, 0, 'hu2439.hucff.ufrj.br', '2019-07-24', '', '', '0000-00-00', '', '', '', '', '10.1.1.120', '00:30:67:AD:A3:4A', '', 'ativo', 'null', 21),
(240, 0, 0, 'hu1930.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.51.151.241', '00:30:67:CE:35:4B', '', 'ativo', 'null', 21),
(241, 0, 0, 'hu2568.hucff.ufrj.br', '2019-05-08', '', '', '0000-00-00', '', '', '', '', '10.51.51.74', '00:40:45:35:99:84', '', 'ativo', 'null', 21),
(242, 0, 0, '10.51.50.42', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.51.50.42', '00:40:9D:3D:5C:E8', '', 'ativo', 'null', 21),
(243, 0, 0, '10.30.33.67', '2019-03-18', '', '', '0000-00-00', '', '', '', '', '10.30.33.67', '00:40:9D:A4:C1:A6', '', 'ativo', 'null', 21),
(244, 0, 0, 'HU3399', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel Pentium Dual CPU E2160 1.80GHz', '2048', '10.50.150.29', '00:40:A7:12:9D:83', '', 'ativo', 'null', 21),
(245, 0, 0, 'aghu2625.hucff.ufrj.', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.40.150.86', '00:40:A7:1B:76:E7', '', 'ativo', 'null', 21),
(246, 0, 0, 'AGHU2554', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '4096', '10.81.151.250', '00:40:A7:1B:88:65', '', 'ativo', 'null', 21),
(247, 0, 0, 'AGHU2393', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.10.150.16', '00:40:A7:1B:8B:B7', '', 'ativo', 'null', 21),
(248, 0, 0, 'AGHU2673', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '1791', '10.140.150.26', '00:40:A7:1B:91:6F', '', 'ativo', 'null', 21),
(249, 0, 0, 'aghu2471.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.50.150.10', '00:40:A7:1B:91:AB', '', 'ativo', 'null', 21),
(250, 0, 0, 'aghu2518.hucff.ufrj.', '2019-01-04', '', '', '0000-00-00', '', '', '', '', '10.113.101.70', '00:40:A7:1B:95:92', '', 'ativo', 'null', 21),
(251, 0, 0, 'aghu2425.hucff.ufrj.', '2019-01-28', '', '', '0000-00-00', '', '', '', '', '10.10.11.121', '00:40:A7:1B:99:D3', '', 'ativo', 'null', 21),
(252, 0, 0, 'aghu2450.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.11.150.80', '00:40:A7:1B:9A:49', '', 'ativo', 'null', 21),
(253, 0, 0, 'HU2549', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.113.150.39', '00:40:A7:1B:9A:67', '', 'ativo', 'null', 21),
(254, 0, 0, 'aghu2413.hucff.ufrj.', '2019-08-08', '', '', '0000-00-00', '', '', '', '', '10.10.11.89', '00:40:A7:1B:9A:6B', '', 'ativo', 'null', 21),
(255, 0, 0, 'HU2509', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '4096', '10111151246', '00:40:A7:1B:9A:E0', '', 'ativo', 'null', 21),
(256, 0, 0, 'AGHU2669', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.10.150.46', '00:40:A7:1B:9B:EA', '', 'ativo', 'null', 21),
(257, 0, 0, 'AGHU2623', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '1791', '10.30.150.79', '00:40:A7:1B:9B:EE', '', 'ativo', 'null', 21),
(258, 0, 0, 'aghu2405.hucff.ufrj.', '2019-07-10', '', '', '0000-00-00', '', '', '', '', '10.10.11.112', '00:40:A7:1B:9C:1A', '', 'ativo', 'null', 21),
(259, 0, 0, 'aghu2407.hucff.ufrj.', '2019-03-15', '', '', '0000-00-00', '', '', '', '', '10.11.11.112', '00:40:A7:1B:9C:5D', '', 'ativo', 'null', 21),
(260, 0, 0, 'aghu2502.hucff.ufrj.', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10111151251', '00:40:A7:1B:9D:99', '', 'ativo', 'null', 21),
(261, 0, 0, 'aghu2408.hucff.ufrj.', '2019-05-20', '', '', '0000-00-00', '', '', '', '', '10.11.11.81', '00:40:A7:1B:9D:C5', '', 'ativo', 'null', 21),
(262, 0, 0, 'AGHU2524', '2019-08-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.0.150.22', '00:40:A7:1B:9E:03', '', 'ativo', 'null', 21),
(263, 0, 0, 'AGHU2395', '2019-01-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'AMD Athlon II X2 250 Processor', '1791', '10.11.11.111', '00:40:A7:1B:9E:06', '', 'ativo', 'null', 21),
(264, 0, 0, 'AGHU2525', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.0.150.18', '00:40:A7:1B:9E:08', '', 'ativo', 'null', 21),
(265, 0, 0, 'HU2515', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '4096', '10.70.71.105', '00:40:A7:1B:9E:0E', '', 'ativo', 'null', 21),
(266, 0, 0, 'aghu2673.hucff.ufrj.', '2019-01-21', '', '', '0000-00-00', '', '', '', '', '10.140.11.62', '00:40:A7:1B:9E:35', '', 'ativo', 'null', 21),
(267, 0, 0, 'AGHU2463', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '1791', '10.80.81.125', '00:40:A7:1B:9E:3A', '', 'ativo', 'null', 21),
(268, 0, 0, 'HU2561', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '3072', '10101151247', '00:40:A7:1B:9E:3B', '', 'ativo', 'null', 21),
(269, 0, 0, 'HU2503', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '1791', '10111151252', '00:40:A7:1B:9E:53', '', 'ativo', 'null', 21),
(270, 0, 0, 'HU2526', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.0.150.42', '00:40:A7:1B:A7:D3', '', 'ativo', 'null', 21),
(271, 0, 0, 'AGHU2403', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'AMD Athlon II X2 250 Processor', '3327', '10.10.11.111', '00:40:A7:1B:AF:85', '', 'ativo', 'null', 21),
(272, 0, 0, 'aghu2512.hucff.ufrj.', '2019-01-28', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '4096', '10.20.21.68', '00:40:A7:1B:B9:C4', '', 'ativo', 'null', 21),
(273, 0, 0, 'aghu2460.hucff.ufrj.', '2019-08-20', '', '', '0000-00-00', '', '', '', '', '10.1.150.16', '00:40:A7:1B:BA:32', '', 'ativo', 'null', 21),
(274, 0, 0, 'HU2481', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '5120', '10.10.150.27', '00:40:A7:1B:D2:3A', '', 'ativo', 'null', 21),
(275, 0, 0, 'aghu2564.hucff.ufrj.', '2019-08-08', '', '', '0000-00-00', '', '', '', '', '10.1.1.167', '00:40:A7:1B:D2:43', '', 'ativo', 'null', 21),
(276, 0, 0, 'aghu2647.hucff.ufrj.', '2019-08-21', '', '', '0000-00-00', '', '', '', '', '10.70.150.16', '00:40:A7:1B:D2:48', '', 'ativo', 'null', 21),
(277, 0, 0, 'aghu2660.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.11.150.40', '00:40:A7:1C:24:DC', '', 'ativo', 'null', 21),
(278, 0, 0, 'HU2435', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '4096', '10101151254', '00:40:A7:1C:28:66', '', 'ativo', 'null', 21),
(279, 0, 0, 'aghu2457.hucff.ufrj.', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.1.150.29', '00:40:A7:1C:28:96', '', 'ativo', 'null', 21),
(280, 0, 0, 'aghu2394.hucff.ufrj.', '2019-05-02', '', '', '0000-00-00', '', '', '', '', '10.70.71.101', '00:40:A7:1C:28:9E', '', 'ativo', 'null', 21),
(281, 0, 0, 'AGHU2466', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '1791', '10.11.1.104', '00:40:A7:1C:28:AD', '', 'ativo', 'null', 21),
(282, 0, 0, 'aghu2448.hucff.ufrj.', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.154', '00:40:A7:1C:6C:6D', '', 'ativo', 'null', 21),
(283, 0, 0, 'aghu2375.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.11.150.79', '00:40:A7:1C:89:0E', '', 'ativo', 'null', 21),
(284, 0, 0, 'AGHU2421', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '4096', '10.81.151.247', '00:40:A7:1C:8C:67', '', 'ativo', 'null', 21),
(285, 0, 0, 'HU2455', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '2048', '10.11.151.250', '00:40:A7:1C:8C:F2', '', 'ativo', 'null', 21),
(286, 0, 0, 'aghu2649.hucff.ufrj.', '2019-07-10', '', '', '0000-00-00', '', '', '', '', '10.70.71.99', '00:40:A7:1C:8D:09', '', 'ativo', 'null', 21);
INSERT INTO `computador` (`idComputador`, `numCir`, `numPatrimonio`, `nomeComputador`, `datacadastro`, `respCadastro`, `respAltCadastro`, `dataAltCadastro`, `sistemaOpera`, `modelMaquina`, `tipProcessador`, `memoria`, `numIp`, `numMac`, `capHD`, `statusComp`, `obs`, `idLocal`) VALUES
(287, 0, 0, 'aghu2508.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.81.150.19', '00:40:A7:1C:8D:29', '', 'ativo', 'null', 21),
(288, 0, 0, 'HU2401', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '3072', '10.205.11.171', '00:40:A7:1C:8D:62', '', 'ativo', 'null', 21),
(289, 0, 0, 'AGHU2652', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '1791', '10.81.151.248', '00:40:A7:1C:8D:95', '', 'ativo', 'null', 21),
(290, 0, 0, 'aghu2506.hucff.ufrj.', '2019-01-29', '', '', '0000-00-00', '', '', '', '', '10.81.71.65', '00:40:A7:1C:8D:E4', '', 'ativo', 'null', 21),
(291, 0, 0, 'AGHU2454', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.11.150.67', '00:40:A7:1C:8E:02', '', 'ativo', 'null', 21),
(292, 0, 0, 'aghu2373.hucff.ufrj.', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10111151249', '00:40:A7:1C:8E:4C', '', 'ativo', 'null', 21),
(293, 0, 0, 'aghu2419.hucff.ufrj.', '2019-07-30', '', '', '0000-00-00', '', '', '', '', '10.204.30.38', '00:40:A7:1C:91:45', '', 'ativo', 'null', 21),
(294, 0, 0, 'HU2411', '2019-01-28', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '4096', '10.20.21.77', '00:40:A7:1C:91:6B', '', 'ativo', 'null', 21),
(295, 0, 0, 'AGHU2462', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.80.150.39', '00:40:A7:1C:91:81', '', 'ativo', 'null', 21),
(296, 0, 0, 'AGHU2396', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.50.150.20', '00:40:A7:1C:91:B7', '', 'ativo', 'null', 21),
(297, 0, 0, 'aghu2527.hucff.ufrj.', '2019-08-20', '', '', '0000-00-00', '', '', '', '', '10.0.150.21', '00:40:A7:1C:91:C1', '', 'ativo', 'null', 21),
(298, 0, 0, 'aghu2474.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.80.150.55', '00:40:A7:1C:91:CC', '', 'ativo', 'null', 21),
(299, 0, 0, 'aghu2453.hucff.ufrj.', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.1.150.50', '00:40:A7:1C:91:D2', '', 'ativo', 'null', 21),
(300, 0, 0, 'aghu2678.hucff.ufrj.', '2019-07-08', '', '', '0000-00-00', '', '', '', '', '10.42.31.62', '00:40:A7:1C:91:F1', '', 'ativo', 'null', 21),
(301, 0, 0, 'AGHU2451', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.1.150.24', '00:40:A7:1C:91:F8', '', 'ativo', 'null', 21),
(302, 0, 0, 'aghu2402.hucff.ufrj.', '2019-01-10', '', '', '0000-00-00', '', '', '', '', '10.42.31.99', '00:40:A7:1C:92:52', '', 'ativo', 'null', 21),
(303, 0, 0, 'aghu2655.hucff.ufrj.', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.43.41.89', '00:40:A7:1C:92:58', '', 'ativo', 'null', 21),
(304, 0, 0, 'AGHU2433', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'AMD Athlon II X2 250 Processor', '1791', '10.100.111.55', '00:40:A7:1C:92:C9', '', 'ativo', 'null', 21),
(305, 0, 0, 'aghu2675.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.10.150.25', '00:40:A7:1C:92:E3', '', 'ativo', 'null', 21),
(306, 0, 0, 'AGHU2445', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'AMD Athlon(tm) II X2 250 Processor', '1791', '10.1.150.28', '00:40:A7:1C:93:20', '', 'ativo', 'null', 21),
(307, 0, 0, 'aghu2458.hucff.ufrj.', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.1.150.34', '00:40:A7:1C:93:48', '', 'ativo', 'null', 21),
(308, 0, 0, 'AGHU2465', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '1791', '10.80.150.35', '00:40:A7:1C:94:FB', '', 'ativo', 'null', 21),
(309, 0, 0, 'HU2452', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '1791', '10.1.150.57', '00:40:A7:1C:95:AF', '', 'ativo', 'null', 21),
(310, 0, 0, 'aghu2446.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.150.19', '00:40:A7:1C:95:C0', '', 'ativo', 'null', 21),
(311, 0, 0, 'AGHU2560', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '1791', '10.101.101.61', '00:40:A7:1C:96:08', '', 'ativo', 'null', 21),
(312, 0, 0, 'aghu2679.hucff.ufrj.', '2019-01-07', '', '', '0000-00-00', '', '', '', '', '10.42.31.125', '00:40:A7:1C:96:59', '', 'ativo', 'null', 21),
(313, 0, 0, 'aghu2406.hucff.ufrj.', '2019-06-28', '', '', '0000-00-00', '', '', '', '', '10.11.11.80', '00:40:A7:1C:96:7C', '', 'ativo', 'null', 21),
(314, 0, 0, 'aghu2648.hucff.ufrj.', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.70.150.37', '00:40:A7:1C:96:F0', '', 'ativo', 'null', 21),
(315, 0, 0, 'aghu2671.hucff.ufrj.', '2019-03-22', '', '', '0000-00-00', '', '', '', '', '10.10.11.74', '00:40:A7:1C:97:C9', '', 'ativo', 'null', 21),
(316, 0, 0, 'AGHU2459', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) II X2 550 Processor', '4096', '10.1.150.33', '00:40:A7:1C:97:F7', '', 'ativo', 'null', 21),
(317, 0, 0, 'AGHU2369', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) II X2 550 Processor', '4096', '10.205.150.15', '00:40:A7:1C:98:08', '', 'ativo', 'null', 21),
(318, 0, 0, 'HU2377', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) II X2 550 Processor', '4096', '10.0.150.28', '00:40:A7:1C:98:0B', '', 'ativo', 'null', 21),
(319, 0, 0, 'HU2835', '2019-01-07', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) II X2 550 Processor ', '4096', '10.42.31.116', '00:40:A7:1C:98:0C', '', 'ativo', 'null', 21),
(320, 0, 0, 'HU2423', '2019-01-25', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor ', '4096', '10.10.11.122', '00:40:A7:1C:98:30', '', 'ativo', 'null', 21),
(321, 0, 0, 'HU2415', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 250 Processor', '4096', '10.10.150.41', '00:40:A7:1C:98:38', '', 'ativo', 'null', 21),
(322, 0, 0, 'aghu2449.hucff.ufrj.', '2019-08-06', '', '', '0000-00-00', '', '', '', '', '10.1.1.140', '00:40:A7:1C:98:7D', '', 'ativo', 'null', 21),
(323, 0, 0, 'HU2904', '2019-01-10', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i3 - 2120  - 3.30GHz ', '4096', '10.130.180.10', '00:40:A7:29:32:25', '', 'ativo', 'null', 21),
(324, 0, 0, 'hu3773.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.31.50', '00:40:A7:2A:F6:56', '', 'ativo', 'null', 21),
(325, 0, 0, 'HU2439', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Pentium Dual-Core CPU E5700 3.00GHz', '3072', '10.1.150.49', '00:40:F4:5F:11:7E', '', 'ativo', 'null', 21),
(326, 0, 0, '10.202.1.5', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.1.5', '00:60:48:1D:3C:6A', '', 'ativo', 'null', 21),
(327, 0, 0, 'MORPHEU', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.1.6', '00:60:48:1D:3C:6B', '', 'ativo', 'null', 21),
(328, 0, 0, '10.1.0.7', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.0.7', '00:90:04:BF:F1:B8', '', 'ativo', 'null', 21),
(329, 0, 0, '10.50.0.4', '2019-05-08', '', '', '0000-00-00', '', '', '', '', '10.50.0.4', '00:90:04:BF:F7:F8', '', 'ativo', 'null', 21),
(330, 0, 0, '10.11.0.4', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.11.0.4', '00:90:04:C0:46:B8', '', 'ativo', 'null', 21),
(331, 0, 0, 'vinicius-PC.hucff.uf', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.51.151.243', '00:90:F5:73:6D:A1', '', 'ativo', 'null', 21),
(332, 0, 0, 'WIZARD-06117912.hucf', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.1.0.44', '00:E0:4B:33:47:E6', '', 'ativo', 'null', 21),
(333, 0, 0, 'HU3465', '2019-01-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 2400  - 3.10GHz ', '8192', '10.51.51.82', '00:E0:4C:03:4C:8B', '', 'ativo', 'null', 21),
(334, 0, 0, 'HU3467', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 2400  - 3.10GHz ', '8192', '10.51.51.83', '00:E0:4C:06:5B:CE', '', 'ativo', 'null', 21),
(335, 0, 0, 'HU3466', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 2400  - 3.10GHz ', '8192', '10.51.51.79', '00:E0:4C:17:47:FD', '', 'ativo', 'null', 21),
(336, 0, 0, 'HU3464', '2019-03-11', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 2400  - 3.10GHz ', '4096', '10.51.51.81', '00:E0:4C:17:47:FE', '', 'ativo', 'null', 21),
(337, 0, 0, 'HU3463', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 2400  - 3.10GHz ', '8192', '10.51.51.80', '00:E0:4C:62:68:6D', '', 'ativo', 'null', 21),
(338, 0, 0, 'User-pc', '2019-08-07', '', '', '0000-00-00', '', '', '', '', '10.42.31.161', '00:E0:4C:9D:44:05', '', 'ativo', 'null', 21),
(339, 0, 0, 'wskodak.hucff.ufrj.b', '2019-05-31', '', '', '0000-00-00', '', '', '', '', '10.11.1.103', '00:E0:53:13:51:0B', '', 'ativo', 'null', 21),
(340, 0, 0, 'hu2166.hucff.ufrj.br', '2019-07-25', '', '', '0000-00-00', '', '', '', '', '10.30.41.92', '00:E0:7D:D1:68:10', '', 'ativo', 'null', 21),
(341, 0, 0, 'hu2276.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.42.150.64', '00:E0:7D:D2:2D:47', '', 'ativo', 'null', 21),
(342, 0, 0, 'HU2417', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.110.150.92', '00:E0:7D:D2:60:83', '', 'ativo', 'null', 21),
(343, 0, 0, 'HU3746', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.90.150.37', '00:E0:7D:D2:60:89', '', 'ativo', 'null', 21),
(344, 0, 0, 'IDT1560', '2019-01-24', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon 64 X2 Dual Core Processor 4000+ ', '4096', '10.11.11.56', '00:E0:7D:D2:62:5B', '', 'ativo', 'null', 21),
(345, 0, 0, 'HU1877', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Pentium Dual-Core CPU E5200 2.50GHz', '3072', '10.30.150.127', '00:E0:7D:D2:74:EC', '', 'ativo', 'null', 21),
(346, 0, 0, 'hu2110.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.50.150.32', '00:E0:7D:D2:75:09', '', 'ativo', 'null', 21),
(347, 0, 0, 'HU3199', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.0.150.20', '00:E0:7D:D2:7D:9D', '', 'ativo', 'null', 21),
(348, 0, 0, 'HU3845', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.10.150.12', '00:E0:7D:F2:C4:74', '', 'ativo', 'null', 21),
(349, 0, 0, 'IDT-UFRJ.hucff.ufrj.', '2019-06-19', '', '', '0000-00-00', '', '', '', '', '10.110.100.24', '00:E0:DB:11:BF:98', '', 'ativo', 'null', 21),
(350, 0, 0, 'hu2906.hucff.ufrj.br', '2019-01-28', '', '', '0000-00-00', '', '', '', '', '10.0.0.117', '02:19:77:81:3B:54', '', 'ativo', 'null', 21),
(351, 0, 0, 'imac6tc-vm.hucff.ufr', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.205', '08:00:27:3A:8C:E6', '', 'ativo', 'null', 21),
(352, 0, 0, 'HU1955 - VM', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 4690T  - 2.50GHz', '4096', '10.204.1.26', '08:00:27:50:F0:DA', '', 'ativo', 'null', 21),
(353, 0, 0, 'hu2595-vm.hucff.ufrj', '2019-08-08', '', '', '0000-00-00', '', '', '', '', '10.30.31.109', '08:00:27:58:F3:23', '', 'ativo', 'null', 21),
(354, 0, 0, 'CIR - GUSTAVOVM2', '2019-01-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel  Core i5 - 4690T  - 2.50GHz ', '4096', '10.201.1.209', '08:00:27:71:E6:3D', '', 'ativo', 'null', 21),
(355, 0, 0, 'HU3213', '2019-07-31', '', '', '0000-00-00', '', '', '', '', '10.43.41.96', '08:00:27:7B:A2:C6', '', 'ativo', 'null', 21),
(356, 0, 0, 'CIR - EVANDRO - VM', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 4690T  - 2.50GHz', '4096', '10.0.2.15', '08:00:27:8B:85:14', '', 'ativo', 'null', 21),
(357, 0, 0, 'WIN - 3H29IVMB473', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 7500  - 3.40GHz', '4096', '10.0.2.15', '08:00:27:B9:80:F5', '', 'ativo', 'null', 21),
(358, 0, 0, 'imac6tc-vm.hucff.ufr', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.86', '08:00:27:D9:B1:FF', '', 'ativo', 'null', 21),
(359, 0, 0, 'CIR - GUSTAVOVM', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 4690T  - 2.50GHz ', '2048', '10.201.1.208', '08:00:27:F6:6F:D5', '', 'ativo', 'null', 21),
(360, 0, 0, 'XC-D08663', '2019-07-10', '', '', '0000-00-00', '', '', '', '', '10.205.0.25', '08:00:37:D0:86:63', '', 'ativo', 'null', 21),
(361, 0, 0, '10.11.10.25', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.11.10.25', '08:00:4E:0C:2D:FD', '', 'ativo', 'null', 21),
(362, 0, 0, '10.0.0.44', '2019-08-20', '', '', '0000-00-00', '', '', '', '', '10.0.0.44', '08:14:14:66:DE:DC', '', 'ativo', 'null', 21),
(363, 0, 0, '10.0.0.41', '2019-08-20', '', '', '0000-00-00', '', '', '', '', '10.0.0.41', '08:14:14:DF:7B:1B', '', 'ativo', 'null', 21),
(364, 0, 0, '10.0.0.42', '2019-08-20', '', '', '0000-00-00', '', '', '', '', '10.0.0.42', '08:14:14:E5:F4:FA', '', 'ativo', 'null', 21),
(365, 0, 0, 'HU2908', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core  i5-3330 CPU 3.00GHz', '8192', '10.113.150.19', '08:60:6E:D1:8B:29', '', 'ativo', 'null', 21),
(366, 0, 0, 'iMacdePssamento.hucf', '2019-03-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.214', '0C:4D:E9:BE:8E:59', '', 'ativo', 'null', 21),
(367, 0, 0, 'HU3895', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.10.150.59', '0C:9D:92:8E:32:53', '', 'ativo', 'null', 21),
(368, 0, 0, 'HU3882', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.205.150.97', '0C:9D:92:8E:32:54', '', 'ativo', 'null', 21),
(369, 0, 0, 'HU3884', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.1.150.39', '0C:9D:92:8E:33:34', '', 'ativo', 'null', 21),
(370, 0, 0, 'HU3892', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.10.150.64', '0C:9D:92:8E:34:12', '', 'ativo', 'null', 21),
(371, 0, 0, 'HU3902', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 8', 'null', 'AMD FX(tm)-8300 Eight-Core Processor', '7918', '10.1.150.69', '0C:9D:92:8E:34:1B', '', 'ativo', 'null', 21),
(372, 0, 0, 'HU3886', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.40.150.72', '0C:9D:92:8E:34:29', '', 'ativo', 'null', 21),
(373, 0, 0, 'HU3898', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.1.150.65', '0C:9D:92:8E:34:81', '', 'ativo', 'null', 21),
(374, 0, 0, 'HU3888', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.40.150.69', '0C:9D:92:8E:34:E9', '', 'ativo', 'null', 21),
(375, 0, 0, 'HU3890', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.40.150.68', '0C:9D:92:8E:35:0A', '', 'ativo', 'null', 21),
(376, 0, 0, '10.204.30.39', '2019-08-17', '', '', '0000-00-00', '', '', '', '', '10.204.30.39', '0C:9D:92:8E:35:B8', '', 'ativo', 'null', 21),
(377, 0, 0, 'HU3885', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.40.150.62', '0C:9D:92:8E:97:EF', '', 'ativo', 'null', 21),
(378, 0, 0, 'HU3904', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.11.150.72', '0C:9D:92:8E:98:04', '', 'ativo', 'null', 21),
(379, 0, 0, 'HU3901', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.1.150.68', '0C:9D:92:8E:98:2A', '', 'ativo', 'null', 21),
(380, 0, 0, 'HU3883', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.205.150.96', '0C:9D:92:8E:98:36', '', 'ativo', 'null', 21),
(381, 0, 0, 'HU3899', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.1.150.62', '0C:9D:92:8E:98:46', '', 'ativo', 'null', 21),
(382, 0, 0, 'HU3900', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.1.150.67', '0C:9D:92:8E:98:7C', '', 'ativo', 'null', 21),
(383, 0, 0, 'HU3881', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.205.150.98', '0C:9D:92:8E:98:D2', '', 'ativo', 'null', 21),
(384, 0, 0, 'HU3897', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.10.150.63', '0C:9D:92:8E:99:00', '', 'ativo', 'null', 21),
(385, 0, 0, '10.204.30.38', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.204.30.38', '0C:9D:92:8E:99:02', '', 'ativo', 'null', 21),
(386, 0, 0, 'HU3877', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.50.150.78', '0C:9D:92:8E:99:BD', '', 'ativo', 'null', 21),
(387, 0, 0, 'HU3894', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.10.150.58', '0C:9D:92:8E:9A:22', '', 'ativo', 'null', 21),
(388, 0, 0, 'HU3891', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.10.150.55', '0C:9D:92:8E:9A:95', '', 'ativo', 'null', 21),
(389, 0, 0, 'HU3893', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.10.150.62', '0C:9D:92:8E:9A:BD', '', 'ativo', 'null', 21),
(390, 0, 0, 'HU3889', '2019-08-21', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.40.150.65', '0C:9D:92:8E:9B:00', '', 'ativo', 'null', 21),
(391, 0, 0, 'HU3896', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.10.150.60', '0C:9D:92:8E:9B:05', '', 'ativo', 'null', 21),
(392, 0, 0, 'HU3887', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.40.150.71', '0C:9D:92:8E:9B:06', '', 'ativo', 'null', 21),
(393, 0, 0, 'HU3871', '2019-08-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Pentium Dual-Core CPU E5700 3.00GHz', '2048', '10.110.150.69', '10:1F:74:2A:BD:22', '', 'ativo', 'null', 21),
(394, 0, 0, 'HU2579', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD E - 350 Processor ', '4096', '10.40.41.62', '10:1F:74:38:E5:CE', '', 'ativo', 'null', 21),
(395, 0, 0, 'hu3175', '2019-04-17', '', '', '0000-00-00', '', '', '', '', '10110101100', '10:1F:74:40:7F:8F', '', 'ativo', 'null', 21),
(396, 0, 0, 'HU2782', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.100.150.27', '10:1F:74:40:C6:8F', '', 'ativo', 'null', 21),
(397, 0, 0, '10.51.50.24', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.51.50.24', '10:1F:74:B0:AA:E9', '', 'ativo', 'null', 21),
(398, 0, 0, 'hu2966.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.204.30.23', '10:60:4B:EA:0F:9E', '', 'ativo', 'null', 21),
(399, 0, 0, 'hu3048.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.80.150.24', '10:60:4B:EA:0F:CE', '', 'ativo', 'null', 21),
(400, 0, 0, 'HU3196', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.100.91.62', '10:60:4B:EA:0F:E8', '', 'ativo', 'null', 21),
(401, 0, 0, 'HU3142', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3071', '10.1.150.31', '10:60:4B:EA:0F:F5', '', 'ativo', 'null', 21),
(402, 0, 0, 'hu3053.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.40.150.50', '10:60:4B:EA:12:0A', '', 'ativo', 'null', 21),
(403, 0, 0, 'HU3177', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.1.150.11', '10:60:4B:EA:12:21', '', 'ativo', 'null', 21),
(404, 0, 0, 'hu3088.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.110.150.71', '10:60:4B:EA:12:24', '', 'ativo', 'null', 21),
(405, 0, 0, 'hu3198.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.150.26', '10:60:4B:EA:14:AF', '', 'ativo', 'null', 21),
(406, 0, 0, 'HU2994', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.42.150.30', '10:60:4B:EA:14:EC', '', 'ativo', 'null', 21),
(407, 0, 0, 'HU3133', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.20.150.11', '10:60:4B:EA:15:58', '', 'ativo', 'null', 21),
(408, 0, 0, 'HU3152', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.60.150.20', '10:60:4B:EA:15:EE', '', 'ativo', 'null', 21),
(409, 0, 0, 'hu3104.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.110.150.61', '10:60:4B:EA:15:F5', '', 'ativo', 'null', 21),
(410, 0, 0, 'HU3117', '2019-08-21', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10110150108', '10:60:4B:EA:16:55', '', 'ativo', 'null', 21),
(411, 0, 0, 'hu3095.hucff.ufrj.br', '2019-08-25', '', '', '0000-00-00', '', '', '', '', '10.110.150.70', '10:60:4B:EA:16:98', '', 'ativo', 'null', 21),
(412, 0, 0, 'hu3200.hucff.ufrj.br', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.0.0.132', '10:60:4B:EA:16:B4', '', 'ativo', 'null', 21),
(413, 0, 0, 'HU2979', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.80.150.63', '10:60:4B:EA:16:C1', '', 'ativo', 'null', 21),
(414, 0, 0, 'hu3109.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.50.150.33', '10:60:4B:EA:16:FE', '', 'ativo', 'null', 21),
(415, 0, 0, 'hu3148.hucff.ufrj.br', '2019-07-19', '', '', '0000-00-00', '', '', '', '', '10.42.31.108', '10:60:4B:EA:17:05', '', 'ativo', 'null', 21),
(416, 0, 0, 'hu3111.hucff.ufrj.br', '2019-08-25', '', '', '0000-00-00', '', '', '', '', '10.110.150.26', '10:60:4B:EA:17:20', '', 'ativo', 'null', 21),
(417, 0, 0, 'HU3002', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.1.150.14', '10:60:4B:EA:17:24', '', 'ativo', 'null', 21),
(418, 0, 0, 'HU3189', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.63', '10:60:4B:EA:17:33', '', 'ativo', 'null', 21),
(419, 0, 0, 'hu2990.hucff.ufrj.br', '2019-06-24', '', '', '0000-00-00', '', '', '', '', '10.42.31.78', '10:60:4B:EA:17:39', '', 'ativo', 'null', 21),
(420, 0, 0, 'hu3020.hucff.ufrj.br', '2019-08-08', '', '', '0000-00-00', '', '', '', '', '10.61.61.52', '10:60:4B:EA:17:3A', '', 'ativo', 'null', 21),
(421, 0, 0, 'HU3039', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.30.150.58', '10:60:4B:EA:17:3E', '', 'ativo', 'null', 21),
(422, 0, 0, 'hu2975.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.42.150.37', '10:60:4B:EA:17:5B', '', 'ativo', 'null', 21),
(423, 0, 0, 'hu2993.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.42.150.28', '10:60:4B:EA:17:83', '', 'ativo', 'null', 21),
(424, 0, 0, 'HU3110', '2019-08-21', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.50.150.52', '10:60:4B:EA:17:9E', '', 'ativo', 'null', 21),
(425, 0, 0, 'hu3076.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.150.18', '10:60:4B:EA:17:A2', '', 'ativo', 'null', 21),
(426, 0, 0, 'HU3144', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.42.150.35', '10:60:4B:EA:17:A6', '', 'ativo', 'null', 21),
(427, 0, 0, 'hu3121.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.10.150.24', '10:60:4B:EA:17:A7', '', 'ativo', 'null', 21),
(428, 0, 0, 'hu3067.hucff.ufrj.br', '2019-03-19', '', '', '0000-00-00', '', '', '', '', '10.110.111.57', '10:60:4B:EA:17:A8', '', 'ativo', 'null', 21),
(429, 0, 0, 'HU2983', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.205.150.43', '10:60:4B:EA:17:AB', '', 'ativo', 'null', 21),
(430, 0, 0, 'hu2999.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.76', '10:60:4B:EA:17:AD', '', 'ativo', 'null', 21),
(431, 0, 0, 'hu3204.hucff.ufrj.br', '2019-08-07', '', '', '0000-00-00', '', '', '', '', '10.42.31.69', '10:60:4B:EA:17:B3', '', 'ativo', 'null', 21),
(432, 0, 0, 'HU3004', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.4.150.14', '10:60:4B:EA:17:B7', '', 'ativo', 'null', 21),
(433, 0, 0, 'HU2960', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.70.150.11', '10:60:4B:EA:17:CC', '', 'ativo', 'null', 21),
(434, 0, 0, 'HU2743', '2019-08-25', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '1790', '10.90.150.39', '10:60:4B:EA:17:D2', '', 'ativo', 'null', 21),
(435, 0, 0, 'HU3205', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.10.150.15', '10:60:4B:EA:17:E6', '', 'ativo', 'null', 21),
(436, 0, 0, 'hu3124.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.43.150.35', '10:60:4B:EA:17:F0', '', 'ativo', 'null', 21),
(437, 0, 0, 'HU3155', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.42.150.36', '10:60:4B:EA:17:F3', '', 'ativo', 'null', 21),
(438, 0, 0, 'hu3050.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.40.150.67', '10:60:4B:EA:17:FE', '', 'ativo', 'null', 21),
(439, 0, 0, 'HU2946', '2019-08-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.2.150.44', '10:60:4B:EA:18:1A', '', 'ativo', 'null', 21),
(440, 0, 0, 'hu3125.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.43.150.25', '10:60:4B:EA:18:2A', '', 'ativo', 'null', 21),
(441, 0, 0, 'hu3045.hucff.ufrj.br', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.110.91.102', '10:60:4B:EA:18:41', '', 'ativo', 'null', 21),
(442, 0, 0, 'HU3210', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.50.150.50', '10:60:4B:EA:18:49', '', 'ativo', 'null', 21),
(443, 0, 0, 'HU3145', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.2.150.35', '10:60:4B:EA:18:55', '', 'ativo', 'null', 21),
(444, 0, 0, 'hu3021.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.61.151.252', '10:60:4B:EA:18:9B', '', 'ativo', 'null', 21),
(445, 0, 0, 'HU3157', '2019-07-24', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '1790', '10.42.150.58', '10:60:4B:EA:18:AD', '', 'ativo', 'null', 21),
(446, 0, 0, 'HU3195', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.100.150.28', '10:60:4B:EA:18:C1', '', 'ativo', 'null', 21),
(447, 0, 0, 'hu3090.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.110.150.45', '10:60:4B:EA:18:C3', '', 'ativo', 'null', 21),
(448, 0, 0, 'HU3030', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.50.150.54', '10:60:4B:EA:18:C6', '', 'ativo', 'null', 21),
(449, 0, 0, 'HU3107', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.205.150.68', '10:60:4B:EA:18:CF', '', 'ativo', 'null', 21),
(450, 0, 0, 'HU3182', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3071', '10.10.150.17', '10:60:4B:EA:18:D4', '', 'ativo', 'null', 21),
(451, 0, 0, 'HU3071', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.50.150.25', '10:60:4B:EA:18:D7', '', 'ativo', 'null', 21),
(452, 0, 0, 'HU3108', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.40.150.32', '10:60:4B:EA:18:DF', '', 'ativo', 'null', 21),
(453, 0, 0, 'hu3159.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.2.150.33', '10:60:4B:EA:18:E4', '', 'ativo', 'null', 21),
(454, 0, 0, 'HU3181', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.1.1.190', '10:60:4B:EA:18:EF', '', 'ativo', 'null', 21),
(455, 0, 0, 'HU3074', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.1.150.41', '10:60:4B:EA:18:F8', '', 'ativo', 'null', 21),
(456, 0, 0, 'hu3081.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.150.36', '10:60:4B:EA:18:FC', '', 'ativo', 'null', 21),
(457, 0, 0, 'hu2977.hucff.ufrj.br', '2019-07-01', '', '', '0000-00-00', '', '', '', '', '10.42.41.62', '10:60:4B:EA:18:FF', '', 'ativo', 'null', 21),
(458, 0, 0, 'HU3206', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.30.150.45', '10:60:4B:EA:19:01', '', 'ativo', 'null', 21),
(459, 0, 0, 'HU3136', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.50.150.56', '10:60:4B:EA:19:02', '', 'ativo', 'null', 21),
(460, 0, 0, 'hu3170.hucff.ufrj.br', '2019-08-02', '', '', '0000-00-00', '', '', '', '', '10.20.21.73', '10:60:4B:EA:19:14', '', 'ativo', 'null', 21),
(461, 0, 0, 'HU3211', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '1790', '10.80.150.56', '10:60:4B:EA:19:17', '', 'ativo', 'null', 21),
(462, 0, 0, 'HU3178', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.70.150.12', '10:60:4B:EA:19:19', '', 'ativo', 'null', 21),
(463, 0, 0, 'hu3027.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.151.245', '10:60:4B:EA:19:1E', '', 'ativo', 'null', 21),
(464, 0, 0, 'HU3065', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '8193', '10.11.150.50', '10:60:4B:EA:19:1F', '', 'ativo', 'null', 21),
(465, 0, 0, 'HU2996', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.30.150.42', '10:60:4B:EA:19:2F', '', 'ativo', 'null', 21),
(466, 0, 0, 'HU3080', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.1.11.53', '10:60:4B:EA:19:30', '', 'ativo', 'null', 21),
(467, 0, 0, 'HU3099', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10101151253', '10:60:4B:EA:19:36', '', 'ativo', 'null', 21),
(468, 0, 0, 'hu3126.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.43.150.28', '10:60:4B:EA:19:3E', '', 'ativo', 'null', 21),
(469, 0, 0, 'HU3007', '2019-08-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.53', '10:60:4B:EA:19:41', '', 'ativo', 'null', 21),
(470, 0, 0, 'HU3055', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.10.21.57', '10:60:4B:EA:19:8D', '', 'ativo', 'null', 21),
(471, 0, 0, 'HU3168', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.2.1.98', '10:60:4B:EA:19:90', '', 'ativo', 'null', 21),
(472, 0, 0, 'HU3194', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.111.150.25', '10:60:4B:EA:19:94', '', 'ativo', 'null', 21),
(473, 0, 0, 'HU3070', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.50.150.55', '10:60:4B:EA:19:99', '', 'ativo', 'null', 21),
(474, 0, 0, 'hu3350.hucff.ufrj.br', '2019-08-06', '', '', '0000-00-00', '', '', '', '', '10.20.21.57', '10:60:4B:EA:19:9B', '', 'ativo', 'null', 21),
(475, 0, 0, 'HU2926', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.111.121.72', '10:60:4B:EA:19:9E', '', 'ativo', 'null', 21),
(476, 0, 0, 'HU2914', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.30.150.56', '10:60:4B:EA:19:A6', '', 'ativo', 'null', 21),
(477, 0, 0, 'HU3000', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '8192', '10.30.150.78', '10:60:4B:EA:19:AC', '', 'ativo', 'null', 21),
(478, 0, 0, 'HU2970', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10110150137', '10:60:4B:EA:19:AE', '', 'ativo', 'null', 21),
(479, 0, 0, 'HU3113', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.80.150.51', '10:60:4B:EA:19:B1', '', 'ativo', 'null', 21),
(480, 0, 0, 'hu3037.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.25', '10:60:4B:EA:19:B7', '', 'ativo', 'null', 21),
(481, 0, 0, 'HU3034', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.110.101.98', '10:60:4B:EA:19:BB', '', 'ativo', 'null', 21),
(482, 0, 0, 'HU2964', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.200.1.55', '10:60:4B:EA:19:BE', '', 'ativo', 'null', 21),
(483, 0, 0, 'HU3082', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.11.151.245', '10:60:4B:EA:19:D6', '', 'ativo', 'null', 21),
(484, 0, 0, 'HU2992', '2019-05-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.42.150.61', '10:60:4B:EA:19:D9', '', 'ativo', 'null', 21),
(485, 0, 0, 'hu3184.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.42.150.23', '10:60:4B:EA:19:DB', '', 'ativo', 'null', 21),
(486, 0, 0, 'HU2938', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.11.150.35', '10:60:4B:EA:19:E3', '', 'ativo', 'null', 21),
(487, 0, 0, 'hu3017.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.61.151.254', '10:60:4B:EA:19:F7', '', 'ativo', 'null', 21),
(488, 0, 0, 'HU2934', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.81.150.10', '10:60:4B:EA:1A:09', '', 'ativo', 'null', 21),
(489, 0, 0, 'HU3036', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.30.150.36', '10:60:4B:EA:1A:0E', '', 'ativo', 'null', 21),
(490, 0, 0, 'hu3036.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.36', '10:60:4B:EA:1A:0E', '', 'ativo', 'null', 21),
(491, 0, 0, 'HU3038', '2019-05-14', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.30.150.156', '10:60:4B:EA:1A:3B', '', 'ativo', 'null', 21),
(492, 0, 0, 'HU3151', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.42.31.127', '10:60:4B:EA:1A:66', '', 'ativo', 'null', 21),
(493, 0, 0, 'hu2985.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.150.29', '10:60:4B:EA:1A:75', '', 'ativo', 'null', 21),
(494, 0, 0, 'hu3040.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.110.150.82', '10:60:4B:EA:1A:79', '', 'ativo', 'null', 21),
(495, 0, 0, 'hu2932.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.80.150.48', '10:60:4B:EA:1A:80', '', 'ativo', 'null', 21),
(496, 0, 0, 'HU2989', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.42.150.40', '10:60:4B:EA:1A:82', '', 'ativo', 'null', 21),
(497, 0, 0, 'HU3135', '2019-08-25', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '4096', '10.110.150.37', '10:60:4B:EA:1A:DF', '', 'ativo', 'null', 21),
(498, 0, 0, 'HU3176', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.100.150.24', '10:60:4B:EA:1B:57', '', 'ativo', 'null', 21),
(499, 0, 0, 'HU2995', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.42.31.72', '10:60:4B:EA:1B:61', '', 'ativo', 'null', 21),
(500, 0, 0, 'hu3022.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.61.151.250', '10:60:4B:EA:1B:64', '', 'ativo', 'null', 21),
(501, 0, 0, 'HU2921', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.11.150.11', '10:60:4B:EA:1B:66', '', 'ativo', 'null', 21),
(502, 0, 0, 'HU3031', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.32', '10:60:4B:EA:1B:6E', '', 'ativo', 'null', 21),
(503, 0, 0, 'HU3103', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.113.150.26', '10:60:4B:EA:1B:74', '', 'ativo', 'null', 21),
(504, 0, 0, 'hu2998.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.80', '10:60:4B:EA:1C:21', '', 'ativo', 'null', 21),
(505, 0, 0, 'hu2941.hucff.ufrj.br', '2019-01-07', '', '', '0000-00-00', '', '', '', '', '10.30.41.96', '10:60:4B:EA:1C:26', '', 'ativo', 'null', 21),
(506, 0, 0, 'HU3029', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '1790', '10.70.150.17', '10:60:4B:EA:1C:B6', '', 'ativo', 'null', 21),
(507, 0, 0, 'hu3013.hucff.ufrj.br', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.61.61.60', '10:60:4B:EA:1D:2F', '', 'ativo', 'null', 21),
(508, 0, 0, 'HU2988', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.205.11.123', '10:60:4B:EA:1D:57', '', 'ativo', 'null', 21),
(509, 0, 0, 'HU3097', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.100.150.44', '10:60:4B:EA:1D:59', '', 'ativo', 'null', 21),
(510, 0, 0, 'HU3115', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.30.33.54', '10:60:4B:EA:1D:61', '', 'ativo', 'null', 21),
(511, 0, 0, 'HU2967', '2019-01-18', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.42.41.90', '10:60:4B:EA:1D:62', '', 'ativo', 'null', 21),
(512, 0, 0, 'HU2956', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.11.1.71', '10:60:4B:EA:1D:6B', '', 'ativo', 'null', 21),
(513, 0, 0, 'hu3016.hucff.ufrj.br', '2019-04-27', '', '', '0000-00-00', '', '', '', '', '10.61.61.61', '10:60:4B:EA:1D:6F', '', 'ativo', 'null', 21),
(514, 0, 0, 'hu3042.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.110.150.31', '10:60:4B:EA:1D:7C', '', 'ativo', 'null', 21),
(515, 0, 0, 'hu2987.hucff.ufrj.br', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.0.0.119', '10:60:4B:EA:1D:7F', '', 'ativo', 'null', 21),
(516, 0, 0, 'HU3008', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.110.91.127', '10:60:4B:EA:1D:85', '', 'ativo', 'null', 21),
(517, 0, 0, 'hu2943.hucff.ufrj.br', '2019-01-28', '', '', '0000-00-00', '', '', '', '', '10.30.43.51', '10:60:4B:EA:1D:88', '', 'ativo', 'null', 21),
(518, 0, 0, 'HU3089', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.48', '10:60:4B:EA:1D:89', '', 'ativo', 'null', 21),
(519, 0, 0, 'HU3035', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.27', '10:60:4B:EA:1E:31', '', 'ativo', 'null', 21),
(520, 0, 0, 'hu3127.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.43.150.23', '10:60:4B:EA:1E:3A', '', 'ativo', 'null', 21),
(521, 0, 0, 'HU3078', '2019-07-10', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.1.150.70', '10:60:4B:EA:1E:44', '', 'ativo', 'null', 21),
(522, 0, 0, 'HU2982', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.3.150.25', '10:60:4B:EA:1E:51', '', 'ativo', 'null', 21),
(523, 0, 0, 'HU3102', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.93', '10:60:4B:EA:1E:6B', '', 'ativo', 'null', 21),
(524, 0, 0, 'hu3077.hucff.ufrj.br', '2019-07-24', '', '', '0000-00-00', '', '', '', '', '10.1.1.62', '10:60:4B:EA:1E:6C', '', 'ativo', 'null', 21),
(525, 0, 0, 'hu3098.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10110150107', '10:60:4B:EA:1E:75', '', 'ativo', 'null', 21),
(526, 0, 0, 'HU2912', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '1790', '10.61.151.253', '10:60:4B:EA:1E:7E', '', 'ativo', 'null', 21),
(527, 0, 0, 'HU3147', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.30.150.90', '10:60:4B:EA:1E:7F', '', 'ativo', 'null', 21),
(528, 0, 0, 'HU3160', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.15.11.70', '10:60:4B:EA:1E:84', '', 'ativo', 'null', 21),
(529, 0, 0, 'hu2951.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.2.150.14', '10:60:4B:EA:1E:87', '', 'ativo', 'null', 21),
(530, 0, 0, 'HU3179', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.100.150.37', '10:60:4B:EA:1E:8A', '', 'ativo', 'null', 21),
(531, 0, 0, 'HU2971', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.42.41.89', '10:60:4B:EA:1E:8B', '', 'ativo', 'null', 21),
(532, 0, 0, 'HU2954', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.2.150.20', '10:60:4B:EA:1E:91', '', 'ativo', 'null', 21),
(533, 0, 0, 'hu2984.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.150.55', '10:60:4B:EA:1E:92', '', 'ativo', 'null', 21),
(534, 0, 0, 'HU2913', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.61.151.251', '10:60:4B:EA:1E:93', '', 'ativo', 'null', 21),
(535, 0, 0, 'HU2947', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.2.150.45', '10:60:4B:EA:1E:9E', '', 'ativo', 'null', 21),
(536, 0, 0, 'hu3161.hucff.ufrj.br', '2019-07-10', '', '', '0000-00-00', '', '', '', '', '10.10.11.82', '10:60:4B:EA:1E:A0', '', 'ativo', 'null', 21),
(537, 0, 0, 'HU2790', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.40.150.84', '10:60:4B:EA:1E:B5', '', 'ativo', 'null', 21),
(538, 0, 0, 'HU3201', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.0.150.19', '10:60:4B:EA:1E:BB', '', 'ativo', 'null', 21),
(539, 0, 0, 'HU3112', '2019-08-25', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.77', '10:60:4B:EA:1E:C7', '', 'ativo', 'null', 21),
(540, 0, 0, 'HU2978', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.80.150.50', '10:60:4B:EA:1E:C8', '', 'ativo', 'null', 21),
(541, 0, 0, 'HU2927', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.15.150.12', '10:60:4B:EA:1E:CE', '', 'ativo', 'null', 21),
(542, 0, 0, 'HU3014', '2019-03-11', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.61.61.69', '10:60:4B:EA:1E:D7', '', 'ativo', 'null', 21),
(543, 0, 0, 'hu3105.hucff.ufrj.br', '2019-07-25', '', '', '0000-00-00', '', '', '', '', '10.113.101.86', '10:60:4B:EA:1E:E2', '', 'ativo', 'null', 21),
(544, 0, 0, 'HU3137', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.100.150.33', '10:60:4B:EA:1E:E9', '', 'ativo', 'null', 21),
(545, 0, 0, 'hu3087.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.151.244', '10:60:4B:EA:1E:FE', '', 'ativo', 'null', 21),
(546, 0, 0, 'HU2963', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.4.150.10', '10:60:4B:EA:1F:00', '', 'ativo', 'null', 21),
(547, 0, 0, 'HU3192', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10111151248', '10:60:4B:EA:1F:5E', '', 'ativo', 'null', 21),
(548, 0, 0, 'HU3046', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.89', '10:60:4B:EA:1F:F8', '', 'ativo', 'null', 21),
(549, 0, 0, 'hu3024.hucff.ufrj.br', '2019-04-10', '', '', '0000-00-00', '', '', '', '', '10.61.61.53', '10:60:4B:EA:71:12', '', 'ativo', 'null', 21),
(550, 0, 0, 'HU3093', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.100.150.29', '10:60:4B:EA:71:13', '', 'ativo', 'null', 21),
(551, 0, 0, 'HU3114', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.36', '10:60:4B:EA:71:1F', '', 'ativo', 'null', 21),
(552, 0, 0, 'HU2924', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10110150105', '10:60:4B:EA:71:26', '', 'ativo', 'null', 21),
(553, 0, 0, 'hu3019.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.61.151.246', '10:60:4B:EA:71:28', '', 'ativo', 'null', 21);
INSERT INTO `computador` (`idComputador`, `numCir`, `numPatrimonio`, `nomeComputador`, `datacadastro`, `respCadastro`, `respAltCadastro`, `dataAltCadastro`, `sistemaOpera`, `modelMaquina`, `tipProcessador`, `memoria`, `numIp`, `numMac`, `capHD`, `statusComp`, `obs`, `idLocal`) VALUES
(554, 0, 0, 'HU3153', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.43.150.33', '10:60:4B:EA:71:29', '', 'ativo', 'null', 21),
(555, 0, 0, 'HU2935', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.30.150.75', '10:60:4B:EA:71:2E', '', 'ativo', 'null', 21),
(556, 0, 0, 'HU2925', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.11.3.55', '10:60:4B:EA:71:37', '', 'ativo', 'null', 21),
(557, 0, 0, 'HU3118', '2019-08-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.110.150.50', '10:60:4B:EA:71:39', '', 'ativo', 'null', 21),
(558, 0, 0, 'HU3167', '2019-08-16', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '4096', '10.2.150.28', '10:60:4B:EA:71:3A', '', 'ativo', 'null', 21),
(559, 0, 0, 'hu3207.hucff.ufrj.br', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.150.35', '10:60:4B:EA:71:3B', '', 'ativo', 'null', 21),
(560, 0, 0, 'hu2949.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.2.150.43', '10:60:4B:EA:71:3C', '', 'ativo', 'null', 21),
(561, 0, 0, 'HU3075', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.1.150.61', '10:60:4B:EA:71:3D', '', 'ativo', 'null', 21),
(562, 0, 0, 'HU2969', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10110150129', '10:60:4B:EA:71:41', '', 'ativo', 'null', 21),
(563, 0, 0, 'HU3141', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.70.150.25', '10:60:4B:EA:71:47', '', 'ativo', 'null', 21),
(564, 0, 0, 'HU3166', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.42.41.115', '10:60:4B:EA:71:4B', '', 'ativo', 'null', 21),
(565, 0, 0, 'HU3028', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.90.150.38', '10:60:4B:EA:71:50', '', 'ativo', 'null', 21),
(566, 0, 0, 'HU3043', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.110.101.72', '10:60:4B:EA:71:52', '', 'ativo', 'null', 21),
(567, 0, 0, 'hu3010.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.110.150.29', '10:60:4B:EA:71:55', '', 'ativo', 'null', 21),
(568, 0, 0, 'HU2976', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.42.150.11', '10:60:4B:EA:71:5F', '', 'ativo', 'null', 21),
(569, 0, 0, 'hu3083.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.11.150.38', '10:60:4B:EA:71:92', '', 'ativo', 'null', 21),
(570, 0, 0, 'hu2929.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.70.150.24', '10:60:4B:EA:71:A5', '', 'ativo', 'null', 21),
(571, 0, 0, 'hu2972.hucff.ufrj.br', '2019-07-04', '', '', '0000-00-00', '', '', '', '', '10.42.31.111', '10:60:4B:EA:71:AE', '', 'ativo', 'null', 21),
(572, 0, 0, 'HU3203', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '3584', '10.0.150.30', '10:60:4B:EA:71:E9', '', 'ativo', 'null', 21),
(573, 0, 0, 'hu3105.hucff.ufrj.br', '2019-04-16', '', '', '0000-00-00', '', '', '', '', '10.113.101.86', '10:60:4B:EA:71:EA', '', 'ativo', 'null', 21),
(574, 0, 0, 'HU3027', '2019-03-11', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon II X2 B28 Processor ', '3584', '10.1.1.123', '10:60:4B:EA:71:F6', '', 'ativo', 'null', 21),
(575, 0, 0, 'HU2604', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i3 - 2100  - 3.10GHz ', '4096', '10.1.1.164', '10:78:D2:B5:78:29', '', 'ativo', 'null', 21),
(576, 0, 0, 'FM2605', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel Core i3-2100 CPU 3.10GHz', '2048', '10.1.150.58', '10:78:D2:B5:78:A7', '', 'ativo', 'null', 21),
(577, 0, 0, 'HU2484', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core i3-2100 CPU 3.10GHz', '4096', '10.80.150.64', '10:78:D2:B8:A2:FB', '', 'ativo', 'null', 21),
(578, 0, 0, 'hu3510.hucff.ufrj.br', '2019-06-25', '', '', '0000-00-00', '', '', '', '', '10.82.81.68', '10:78:D2:B9:D0:9E', '', 'ativo', 'null', 21),
(579, 0, 0, 'HU3804.hucff.ufrj.br', '2019-08-21', '', '', '0000-00-00', '', '', '', '', '10.30.30.42', '10:78:D2:CF:DB:3A', '', 'ativo', 'null', 21),
(580, 0, 0, 'HU2584', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core i3 CPU 540 3.07GHz', '4096', '10.80.150.65', '10:78:D2:DC:4D:B7', '', 'ativo', 'null', 21),
(581, 0, 0, 'hu2582.hucff.ufrj.br', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.80.150.74', '10:78:D2:DC:51:97', '', 'ativo', 'null', 21),
(582, 0, 0, 'HU3577', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Celeron CPU E3400  2.60GHz', '4096', '10.0.150.50', '10:78:D2:FC:A7:73', '', 'ativo', 'null', 21),
(583, 0, 0, 'HU3573', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 7400  - 3.00GHz ', '4096', '10.30.31.143', '10:7B:44:F2:3C:CE', '', 'ativo', 'null', 21),
(584, 0, 0, '10.50.51.131', '2019-08-19', '', '', '0000-00-00', '', '', '', '', '10.50.51.131', '10:98:36:FE:BF:C7', '', 'ativo', 'null', 21),
(585, 0, 0, 'laptop-mourao.hucff.', '2019-07-12', '', '', '0000-00-00', '', '', '', '', '10.30.46.86', '10:98:36:FF:45:E3', '', 'ativo', 'null', 21),
(586, 0, 0, 'IMAC5TC.hucff.ufrj.b', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.181', '10:9A:DD:53:64:40', '', 'ativo', 'null', 21),
(587, 0, 0, 'IMAC3TC.hucff.ufrj.b', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.179', '10:9A:DD:54:F2:4C', '', 'ativo', 'null', 21),
(588, 0, 0, 'IMACCHEFIA.hucff.ufr', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.11.1.86', '10:9A:DD:54:F8:95', '', 'ativo', 'null', 21),
(589, 0, 0, 'IMAC6TC.hucff.ufrj.b', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.1.1.182', '10:9A:DD:55:5A:F2', '', 'ativo', 'null', 21),
(590, 0, 0, 'IMAC2TC.hucff.ufrj.b', '2019-04-03', '', '', '0000-00-00', '', '', '', '', '10.1.1.178', '10:9A:DD:55:5B:D3', '', 'ativo', 'null', 21),
(591, 0, 0, 'hu3259.hucff.ufrj.br', '2019-06-18', '', '', '0000-00-00', '', '', '', '', '10.42.31.63', '10:C3:7B:C4:4F:23', '', 'ativo', 'null', 21),
(592, 0, 0, 'Hepatos-iMac.hucff.u', '2019-07-05', '', '', '0000-00-00', '', '', '', '', '10.110.91.130', '10:DD:B1:A5:83:23', '', 'ativo', 'null', 21),
(593, 0, 0, 'AdminsMacBook3.hucff', '2019-08-08', '', '', '0000-00-00', '', '', '', '', '10.30.41.52', '10:DD:B1:B4:B8:87', '', 'ativo', 'null', 21),
(594, 0, 0, 'IPPMG - TERMINAL', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel(R) Xeon(R) CPU E5649 - 2.53GHz', '4092', '10.202.0.121', '12:C9:69:55:C8:B3', '', 'ativo', 'null', 21),
(595, 0, 0, 'HU3425', '2019-08-24', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Phenom(tm) II X2 555 Processor', '4096', '10.113.150.17', '14:DA:E9:6F:94:93', '', 'ativo', 'null', 21),
(596, 0, 0, 'DESKTOP-KVQ8RGL.hucf', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.43.150.57', '14:DA:E9:BC:51:CA', '', 'ativo', 'null', 21),
(597, 0, 0, 'hudrive.hucff.ufrj.b', '2019-04-04', '', '', '0000-00-00', '', '', '', '', '10202254254', '16:98:E8:B0:CC:42', '', 'ativo', 'null', 21),
(598, 0, 0, 'HU2937', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD Athlon(tm) II X2 B28 Processor', '1790', '10.11.150.64', '18:A9:05:1C:78:9F', '', 'ativo', 'null', 21),
(599, 0, 0, 'HU2181', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core 2 Duo CPU E8400 3.00GHz', '4096', '10.11.150.23', '18:A9:05:E9:A1:9D', '', 'ativo', 'null', 21),
(600, 0, 0, 'DESKTOP-LKK0O2H.hucf', '2019-03-19', '', '', '0000-00-00', '', '', '', '', '10.1.1.143', '18:A9:05:E9:E1:24', '', 'ativo', 'null', 21),
(601, 0, 0, 'hu2180.hucff.ufrj.br', '2019-06-24', '', '', '0000-00-00', '', '', '', '', '10.11.11.106', '18:A9:05:E9:F1:B5', '', 'ativo', 'null', 21),
(602, 0, 0, 'GOPALA', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.0.112', '1A:48:E6:8D:4F:25', '', 'ativo', 'null', 21),
(603, 0, 0, 'HU3295', '2019-07-30', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium CPU G4400  3.30GHz', '8192', '10.11.150.65', '1C:1B:0D:F2:10:54', '', 'ativo', 'null', 21),
(604, 0, 0, 'HU3416', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel  Core i7 - 6700  - 3.40GHz ', '16384', '10.200.1.53', '1C:1B:0D:F2:10:59', '', 'ativo', 'null', 21),
(605, 0, 0, 'HU3412', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel  Core i7 - 6700  - 3.40GHz ', '16384', '10.200.1.52', '1C:1B:0D:F2:10:5B', '', 'ativo', 'null', 21),
(606, 0, 0, 'HU3383', '2019-08-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Pentium CPU G4400  3.30GHz', '8192', '10.1.150.30', '1C:1B:0D:F2:10:5C', '', 'ativo', 'null', 21),
(607, 0, 0, 'cir-pedropassos.hucf', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.201.1.60', '1C:1B:0D:F2:10:6E', '', 'ativo', 'null', 21),
(608, 0, 0, 'HU3414', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel  Core i7 - 6700  - 3.40GHz ', '16384', '10.204.30.31', '1C:1B:0D:F2:10:71', '', 'ativo', 'null', 21),
(609, 0, 0, 'HU3382', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel PentiumCPU G4400 - 3.30GHz ', '8192', '10.3.1.107', '1C:1B:0D:F2:10:80', '', 'ativo', 'null', 21),
(610, 0, 0, 'cir-rose.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.200.1.82', '1C:1B:0D:F2:12:46', '', 'ativo', 'null', 21),
(611, 0, 0, 'HU3470', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core i5-6400 CPU 2.70GHz', '4096', '10.11.150.28', '1C:1B:0D:F3:C4:5A', '', 'ativo', 'null', 21),
(612, 0, 0, 'HU3469', '2019-08-05', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core i5-6400 CPU 2.70GHz', '4096', '10.42.150.69', '1C:1B:0D:F3:C4:68', '', 'ativo', 'null', 21),
(613, 0, 0, 'HU3468', '2019-01-24', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i5 - 6400  - 2.70GHz ', '4096', '10.42.31.137', '1C:1B:0D:F3:C4:7E', '', 'ativo', 'null', 21),
(614, 0, 0, 'LOUBACK.hucff.ufrj.b', '2019-01-22', '', '', '0000-00-00', '', '', '', '', '10.30.46.91', '1C:39:47:59:77:46', '', 'ativo', 'null', 21),
(615, 0, 0, 'LAPTOP-3LMV2FJN.hucf', '2019-07-23', '', '', '0000-00-00', '', '', '', '', '10.43.46.60', '1C:39:47:5A:A0:D5', '', 'ativo', 'null', 21),
(616, 0, 0, 'HU2486', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core i3-2100 CPU 3.10GHz', '4096', '10.42.150.10', '1C:6F:65:DE:EB:D6', '', 'ativo', 'null', 21),
(617, 0, 0, 'hu2316.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.81.150.16', '1C:6F:65:F3:FD:AE', '', 'ativo', 'null', 21),
(618, 0, 0, 'HU2358', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.0.150.31', '1C:6F:65:F3:FF:12', '', 'ativo', 'null', 21),
(619, 0, 0, 'hu2307.hucff.ufrj.br', '2019-07-23', '', '', '0000-00-00', '', '', '', '', '10.81.81.94', '1C:6F:65:F3:FF:16', '', 'ativo', 'null', 21),
(620, 0, 0, 'HU2387', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '4096', '10.50.150.27', '1C:6F:65:F3:FF:34', '', 'ativo', 'null', 21),
(621, 0, 0, 'HU2301', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '4096', '10.50.150.11', '1C:6F:65:F3:FF:7C', '', 'ativo', 'null', 21),
(622, 0, 0, 'HU1423', '2019-08-20', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.80.150.52', '1C:6F:65:F3:FF:8F', '', 'ativo', 'null', 21),
(623, 0, 0, 'HU2298', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.50.150.85', '1C:6F:65:F3:FF:A3', '', 'ativo', 'null', 21),
(624, 0, 0, 'HU2359', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '4096', '10.42.150.22', '1C:6F:65:F4:03:BE', '', 'ativo', 'null', 21),
(625, 0, 0, 'HU2310', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '4096', '10.81.81.97', '1C:6F:65:F4:04:13', '', 'ativo', 'null', 21),
(626, 0, 0, 'HU2346', '2019-01-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '4096', '10.70.71.83', '1C:6F:65:F4:04:39', '', 'ativo', 'null', 21),
(627, 0, 0, 'HU2338', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '1789', '10.42.41.75', '1C:6F:65:F4:04:50', '', 'ativo', 'null', 21),
(628, 0, 0, 'HU2506', '2019-01-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '2048', '10.80.150.42', '1C:6F:65:F4:04:62', '', 'ativo', 'null', 21),
(629, 0, 0, 'HU2344', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '2048', '10.1.1.148', '1C:6F:65:F4:04:74', '', 'ativo', 'null', 21),
(630, 0, 0, 'hu2312.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.81.150.18', '1C:6F:65:F4:04:75', '', 'ativo', 'null', 21),
(631, 0, 0, 'HU2328', '2019-01-04', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz', '2048', '10.113.101.74', '1C:6F:65:F4:04:A4', '', 'ativo', 'null', 21),
(632, 0, 0, 'hu2334.hucff.ufrj.br', '2019-08-20', '', '', '0000-00-00', '', '', '', '', '10110150100', '1C:6F:65:F4:04:A8', '', 'ativo', 'null', 21),
(633, 0, 0, 'HU2302', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '2048', '10.11.11.87', '1C:6F:65:F4:05:0E', '', 'ativo', 'null', 21),
(634, 0, 0, 'HU2360', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows XP', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz', '2048', '10.40.51.51', '1C:6F:65:F4:05:25', '', 'ativo', 'null', 21),
(635, 0, 0, 'HU2337', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.10.150.54', '1C:6F:65:F4:07:3F', '', 'ativo', 'null', 21),
(636, 0, 0, 'HU2311', '2019-03-11', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '4096', '10.81.81.98', '1C:6F:65:F4:07:E3', '', 'ativo', 'null', 21),
(637, 0, 0, 'hu2314.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.81.150.13', '1C:6F:65:F4:0B:2B', '', 'ativo', 'null', 21),
(638, 0, 0, 'hu2327.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.84', '1C:6F:65:F4:0C:2B', '', 'ativo', 'null', 21),
(639, 0, 0, 'HU1462', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '4096', '10.205.11.126', '1C:6F:65:F4:0C:4F', '', 'ativo', 'null', 21),
(640, 0, 0, 'hu2340.hucff.ufrj.br', '2019-01-28', '', '', '0000-00-00', '', '', '', '', '10.40.51.72', '1C:6F:65:F4:0C:60', '', 'ativo', 'null', 21),
(641, 0, 0, 'HU2335', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '2048', '10.40.150.66', '1C:6F:65:F4:0C:68', '', 'ativo', 'null', 21),
(642, 0, 0, 'HU2326', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '4096', '10.50.150.18', '1C:6F:65:F4:1A:D1', '', 'ativo', 'null', 21),
(643, 0, 0, 'HU2493', '2019-01-09', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Pentium(R) Dual - Core CPU E5700 - 3.00GHz ', '3072', '10.30.31.102', '1C:6F:65:F5:43:3E', '', 'ativo', 'null', 21),
(644, 0, 0, 'HU2558', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '4096', '10.3.1.116', '1C:6F:65:F6:BB:A8', '', 'ativo', 'null', 21),
(645, 0, 0, 'HU1860', '2019-01-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core2 Duo CPU E7500 - 2.93GHz ', '4096', '10.42.31.132', '1C:6F:65:F6:BB:F6', '', 'ativo', 'null', 21),
(646, 0, 0, 'HU1676', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '4096', '10.2.150.16', '1C:6F:65:F6:BD:37', '', 'ativo', 'null', 21),
(647, 0, 0, 'HU2871', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core2 Duo CPU E7500 2.93GHz', '4096', '10.50.150.84', '1C:6F:65:F6:BD:6D', '', 'ativo', 'null', 21),
(648, 0, 0, 'hu1639.hucff.ufrj.br', '2019-08-05', '', '', '0000-00-00', '', '', '', '', '10.2.1.52', '1C:6F:65:F6:BD:B4', '', 'ativo', 'null', 21),
(649, 0, 0, 'hu2366.hucff.ufrj.br', '2019-08-23', '', '', '0000-00-00', '', '', '', '', '10.60.150.13', '1C:6F:65:F6:E2:7A', '', 'ativo', 'null', 21),
(650, 0, 0, 'XC-2B0169.hucff.ufrj', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.205.0.25', '1C:7D:22:2B:01:69', '', 'ativo', 'null', 21),
(651, 0, 0, 'HU3427', '2019-03-13', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel  Core i5 - 4440  - 3.10GHz ', '8192', '10.1.1.109', '1C:87:2C:C5:0C:C1', '', 'ativo', 'null', 21),
(652, 0, 0, 'PROMETHEUS', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.0.102', '1E:FA:5C:E7:3F:F6', '', 'ativo', 'null', 21),
(653, 0, 0, 'HU3511', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel Core i5-7400 CPU 3.00GHz', '8192', '10.110.150.68', '20:04:0F:FF:27:DA', '', 'ativo', 'null', 21),
(654, 0, 0, 'hu3633.hucff.ufrj.br', '2019-08-20', '', '', '0000-00-00', '', '', '', '', '10.30.150.27', '20:04:0F:FF:9D:8C', '', 'ativo', 'null', 21),
(655, 0, 0, 'hu3395.hucff.ufrj.br', '2019-08-20', '', '', '0000-00-00', '', '', '', '', '10.70.150.34', '20:47:47:FF:3F:5B', '', 'ativo', 'null', 21),
(656, 0, 0, 'laptop-leon02.hucff.', '2019-06-26', '', '', '0000-00-00', '', '', '', '', '10.82.86.51', '20:89:84:02:0F:63', '', 'ativo', 'null', 21),
(657, 0, 0, 'Ices.hucff.ufrj.br', '2019-06-26', '', '', '0000-00-00', '', '', '', '', '10.82.86.52', '20:89:84:02:10:BB', '', 'ativo', 'null', 21),
(658, 0, 0, '10.20.0.1', '2019-08-06', '', '', '0000-00-00', '', '', '', '', '10.20.0.1', '20:B3:99:39:8A:49', '', 'ativo', 'null', 21),
(659, 0, 0, '10.2.0.1', '2019-08-26', '', '', '0000-00-00', '', '', '', '', '10.2.0.1', '20:B3:99:39:8D:CD', '', 'ativo', 'null', 21),
(660, 0, 0, '10.15.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.15.0.1', '20:B3:99:39:8E:81', '', 'ativo', 'null', 21),
(661, 0, 0, '10.51.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.51.0.1', '20:B3:99:39:94:D5', '', 'ativo', 'null', 21),
(662, 0, 0, '10.100.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.100.0.1', '20:B3:99:39:A0:15', '', 'ativo', 'null', 21),
(663, 0, 0, '10.43.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.43.0.1', '20:B3:99:39:A4:4D', '', 'ativo', 'null', 21),
(664, 0, 0, '10.10.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.10.0.1', '20:B3:99:39:A6:69', '', 'ativo', 'null', 21),
(665, 0, 0, '10.204.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.204.0.1', '20:B3:99:39:AC:09', '', 'ativo', 'null', 21),
(666, 0, 0, '10.81.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.81.0.1', '20:B3:99:39:BC:E9', '', 'ativo', 'null', 21),
(667, 0, 0, '10.90.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.90.0.1', '20:B3:99:3A:D5:75', '', 'ativo', 'null', 21),
(668, 0, 0, '10.40.0.1', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.40.0.1', '20:B3:99:57:B1:C2', '', 'ativo', 'null', 21),
(669, 0, 0, 'robinson-PC.hucff.uf', '2019-04-10', '', '', '0000-00-00', '', '', '', '', '10.3.1.54', '20:CF:30:E0:10:9E', '', 'ativo', 'null', 21),
(670, 0, 0, '10.202.0.12', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.0.12', '22:A0:DC:45:8E:F4', '', 'ativo', 'null', 21),
(671, 0, 0, '10.30.150.50', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.30.150.50', '2C:41:38:2B:AE:1A', '', 'ativo', 'null', 21),
(672, 0, 0, 'smartstartsystem2c41', '2019-07-12', '', '', '0000-00-00', '', '', '', '', '10.202.0.212', '2C:41:38:48:51:5C', '', 'ativo', 'null', 21),
(673, 0, 0, 'soweto.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.0.28', '2C:41:38:48:51:5D', '', 'ativo', 'null', 21),
(674, 0, 0, 'ILOBRC2030JHV.hucff.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.202.10.14', '2C:41:38:48:51:5F', '', 'ativo', 'null', 21),
(675, 0, 0, 'HU3230', '2019-01-29', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'Intel  Core i5 - 3330S  - 2.70GHz ', '8192', '10.81.151.253', '2C:44:FD:FA:60:48', '', 'ativo', 'null', 21),
(676, 0, 0, 'hu3229.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.81.150.15', '2C:44:FD:FA:85:A8', '', 'ativo', 'null', 21),
(677, 0, 0, 'HU3520', '2019-03-12', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel  Core i3 - 4170  - 3.70GHz ', '2048', '10.30.31.173', '2C:4D:54:97:AF:B9', '', 'ativo', 'null', 21),
(678, 0, 0, 'HU2602', '2019-08-21', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'Intel Core i3 CPU 550  3.20GHz', '1783', '10.0.150.32', '2C:76:8A:70:71:24', '', 'ativo', 'null', 21),
(679, 0, 0, 'PATOLOGIA.hucff.ufrj', '2019-08-01', '', '', '0000-00-00', '', '', '', '', '10.0.0.108', '2C:76:8A:BB:CD:3D', '', 'ativo', 'null', 21),
(680, 0, 0, 'HU3844', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.10.150.33', '2C:FD:A1:C7:B1:9C', '', 'ativo', 'null', 21),
(681, 0, 0, 'HU3820', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.130.150.27', '2C:FD:A1:C7:B5:CA', '', 'ativo', 'null', 21),
(682, 0, 0, 'hu3840.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.42.151.250', '2C:FD:A1:C7:B5:DC', '', 'ativo', 'null', 21),
(683, 0, 0, 'HU3847', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.2.150.42', '2C:FD:A1:C7:B7:C3', '', 'ativo', 'null', 21),
(684, 0, 0, 'HU3830', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.42.150.42', '2C:FD:A1:C7:B7:C6', '', 'ativo', 'null', 21),
(685, 0, 0, 'hu3850.hucff.ufrj.br', '2019-08-22', '', '', '0000-00-00', '', '', '', '', '10.11.151.242', '2C:FD:A1:C7:B7:DA', '', 'ativo', 'null', 21),
(686, 0, 0, 'HU3822', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.130.150.29', '2C:FD:A1:C7:B8:05', '', 'ativo', 'null', 21),
(687, 0, 0, 'HU3810', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.70.150.14', '2C:FD:A1:C7:B8:13', '', 'ativo', 'null', 21),
(688, 0, 0, 'HU3842', '2019-08-19', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.42.150.14', '2C:FD:A1:C7:B8:16', '', 'ativo', 'null', 21),
(689, 0, 0, 'HU3826', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.130.150.49', '2C:FD:A1:C7:B8:1B', '', 'ativo', 'null', 21),
(690, 0, 0, 'HU3846', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 7', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.2.150.17', '2C:FD:A1:C7:BC:1D', '', 'ativo', 'null', 21),
(691, 0, 0, 'hu3836.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.42.151.251', '2C:FD:A1:C7:BC:21', '', 'ativo', 'null', 21),
(692, 0, 0, 'cir-suzy.hucff.ufrj.', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.200.1.56', '2C:FD:A1:C7:BC:23', '', 'ativo', 'null', 21),
(693, 0, 0, 'HU3824', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.130.150.48', '2C:FD:A1:C7:BC:24', '', 'ativo', 'null', 21),
(694, 0, 0, 'HU3848', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.11.150.10', '2C:FD:A1:C7:BC:28', '', 'ativo', 'null', 21),
(695, 0, 0, 'hu3839.hucff.ufrj.br', '2019-08-27', '', '', '0000-00-00', '', '', '', '', '10.42.151.249', '2C:FD:A1:C7:BC:2A', '', 'ativo', 'null', 21),
(696, 0, 0, 'HU3823', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.130.150.79', '2C:FD:A1:C7:BC:49', '', 'ativo', 'null', 21),
(697, 0, 0, 'HU3819', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.130.150.44', '2C:FD:A1:C7:BC:4D', '', 'ativo', 'null', 21),
(698, 0, 0, 'HU3809', '2019-08-08', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.70.150.35', '2C:FD:A1:C7:BC:65', '', 'ativo', 'null', 21),
(699, 0, 0, 'HU3815', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.70.150.15', '2C:FD:A1:C7:BC:67', '', 'ativo', 'null', 21),
(700, 0, 0, 'HU3813', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.70.150.10', '2C:FD:A1:C7:BC:81', '', 'ativo', 'null', 21),
(701, 0, 0, 'HU3821', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.130.150.28', '2C:FD:A1:C7:BC:82', '', 'ativo', 'null', 21),
(702, 0, 0, 'HU3856', '2019-08-07', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.110.150.88', '2C:FD:A1:C7:BC:83', '', 'ativo', 'null', 21),
(703, 0, 0, 'HU3834', '2019-08-26', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.42.150.33', '2C:FD:A1:C7:BC:87', '', 'ativo', 'null', 21),
(704, 0, 0, 'HU3816', '2019-08-23', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.70.150.33', '2C:FD:A1:C7:BC:88', '', 'ativo', 'null', 21),
(705, 0, 0, 'HU3843', '2019-08-22', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.205.150.12', '2C:FD:A1:C7:BC:F7', '', 'ativo', 'null', 21),
(706, 0, 0, 'HU3811', '2019-08-27', 'ADMINISTRADOR', 'ADMINISTRADOR', '0000-00-00', 'Windows 10', 'null', 'AMD FX(tm) - 8300 Eight - Core Processor', '8192', '10.70.150.19', '2C:FD:A1:C7:BC:FA', '', 'ativo', 'null', 21);

-- --------------------------------------------------------

--
-- Estrutura para tabela `historicoComputador`
--

CREATE TABLE `historicoComputador` (
  `idHistorico` int(11) NOT NULL,
  `alteracoes` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `dataAltera` date DEFAULT NULL,
  `respAlteracoes` varchar(50) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `historicoComputador`
--

INSERT INTO `historicoComputador` (`idHistorico`, `alteracoes`, `obs`, `dataAltera`, `respAlteracoes`, `idComputador`) VALUES
(1, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10º andar PARA => 1° Andar</br>RAMAL ALTERADO DE:  PARA => 2895</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => MANUTENÇÃO</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 38),
(2, 'LOCAL ALTERADO DE:  PARA => MANUTENÇÃO</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 38),
(3, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10º andar PARA => 1° Andar</br>RAMAL ALTERADO DE:  PARA => 2895</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => manutenção</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 39),
(4, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10º andar PARA => 1° Andar</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => manutenção</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 42),
(5, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10º andar PARA => 1° Andar</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => manutenção</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 42),
(6, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10º andar PARA => 1° Andar</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => manutenção</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 42),
(7, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10º andar PARA => 1° Andar</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => manutenção</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 42),
(8, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10° andar PARA => 1° Andar</br>RAMAL ALTERADO DE:  PARA => 2895</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => MANUTENÇÃO</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 42),
(9, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10° andar PARA => 1° Andar</br>RAMAL ALTERADO DE:  PARA => 2895</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => MANUTENÇÃO</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 42),
(10, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10° andar PARA => 1° Andar</br>RAMAL ALTERADO DE:  PARA => 2895</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => MANUTENÇÃO</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 42),
(11, 'DIVISÃO ALTERADA DE: DMD PARA => CIR</br>LOCALIZAÇÃO ALTERADA DE: 10° andar PARA => 1° Andar</br>RAMAL ALTERADO DE:  PARA => 2895</br>RESPONSAVÉL PELO SETOR ALTERADO DE:  PARA => evandro vieira</br>LOCAL ALTERADO DE: NEUROLOGIA PARA => MANUTENÇÃO</br>', 'acerto de local', '2019-08-27', 'ADMINISTRADOR', 42);

-- --------------------------------------------------------

--
-- Estrutura para tabela `historicoImpressora`
--

CREATE TABLE `historicoImpressora` (
  `idHistorico` int(11) NOT NULL,
  `alteracoes` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `dataAltera` date DEFAULT NULL,
  `respAlteracoes` varchar(50) DEFAULT NULL,
  `idImpressora` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `historicoImpressora`
--

INSERT INTO `historicoImpressora` (`idHistorico`, `alteracoes`, `obs`, `dataAltera`, `respAlteracoes`, `idImpressora`) VALUES
(1, 'O NOME DA IMPRESSORA FOI ALTERADO DE: PRNCIRCOLOR - PARA: prncir3</br>O NOME DO LOCAL FOI ALTERADO DE: SALA DE AULA - PARA: CONTABILIDADE</br>', '10.204.10.63', '2019-05-22', 'ADMINISTRADOR', 148);

-- --------------------------------------------------------

--
-- Estrutura para tabela `impConserto`
--

CREATE TABLE `impConserto` (
  `idConserto` int(11) NOT NULL,
  `dataPedido` date DEFAULT NULL,
  `respPedido` varchar(30) DEFAULT NULL,
  `defeito` varchar(255) DEFAULT NULL,
  `emailEnviado` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `servExecutado` varchar(5) DEFAULT NULL,
  `respFechaPedido` varchar(30) DEFAULT NULL,
  `dataFechaPedido` date DEFAULT NULL,
  `idImpressora` int(11) DEFAULT NULL,
  `pedidoFechado` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `impConserto`
--

INSERT INTO `impConserto` (`idConserto`, `dataPedido`, `respPedido`, `defeito`, `emailEnviado`, `obs`, `servExecutado`, `respFechaPedido`, `dataFechaPedido`, `idImpressora`, `pedidoFechado`) VALUES
(1, '2019-05-22', 'ADMINISTRADOR', 'TROCA DE TONNER', ' Rio de Janeiro 22/05/2019, solicito o conserto da impressora OKI - C831 número de série: 111111aaaaaaaaa localizada no 12º andar na sala da divisão CAE, sala de/a SALA DE AULA, pois a mesma apresenta o seguinte defeito: troca de tonner', 'SERVIÇO REALIZADO', 'sim', 'ADMINISTRADOR', '2019-05-22', 148, 'sim'),
(2, '2019-05-22', 'ADMINISTRADOR', 'fusor queimado', ' Rio de Janeiro 22/05/2019, solicito o conserto da impressora OKI - C831 número de série: 111111aaaaaaaaa localizada no 12º andar na sala da divisão CAE, sala de/a SALA DE AULA, pois a mesma apresenta o seguinte defeito: fusor queimado', '', 'não', '', '0000-00-00', 148, 'não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `impressoras`
--

CREATE TABLE `impressoras` (
  `idImpressora` int(11) NOT NULL,
  `nomeImpressora` varchar(20) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `ipImpressora` varchar(15) DEFAULT NULL,
  `macImpressora` varchar(17) DEFAULT NULL,
  `tipoToner` varchar(10) DEFAULT NULL,
  `status` varchar(7) DEFAULT NULL,
  `modelo` varchar(20) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `respCadastro` varchar(30) DEFAULT NULL,
  `obsImpressora` varchar(255) DEFAULT NULL,
  `respAltCadastro` varchar(30) DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `idLocal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `impressoras`
--

INSERT INTO `impressoras` (`idImpressora`, `nomeImpressora`, `numSerie`, `ipImpressora`, `macImpressora`, `tipoToner`, `status`, `modelo`, `dataCadastro`, `respCadastro`, `obsImpressora`, `respAltCadastro`, `dataAltCadastro`, `idLocal`) VALUES
(1, 'null', 'AK86043231', '0', 'AA:AA:AA:AA:AA:AA', NULL, 'ativo', 'OKI- MPS 5501b', '2019-03-11', 'ADMINISTRADOR', NULL, 'ADMINISTRADOR', '0000-00-00', 21),
(2, 'prnmanutencao', 'AK5C008522', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(3, '', 'AK89033325', '', '', '', '', 'OKI-MPS5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(4, '', 'AK4B026373', '', '', '', '', 'OKI-MPS5502mb', '2019-03-11', '', '', '', '0000-00-00', 21),
(5, '', 'AK88017514', '', '', '', '', 'OKI-ES4172 LP MFP', '2019-03-11', '', '', '', '0000-00-00', 21),
(6, '', 'AK5C008729', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(7, '', 'AK5C039367', '', '', '', '', 'OKI- MPS5502mb', '2019-03-11', '', '', '', '0000-00-00', 21),
(8, '', 'AK47068125', '', '', '', '', 'OKI - MPS 5501 - B', '2019-03-11', '', '', '', '0000-00-00', 21),
(9, '', 'AK88017566', '', '', '', '', 'OKI- ES4172 LP MFP', '2019-03-11', '', '', '', '0000-00-00', 21),
(10, '', 'AK86043244', '', '', '', '', 'OKI- MPS 5501 - b', '2019-03-11', '', '', '', '0000-00-00', 21),
(11, '', 'AK45066721', '', '', '', '', 'OKI- MPS 5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(12, '', 'AK5C008586', '', '', '', '', 'OKI-ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(13, '', 'AK5C008745', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(14, '', 'AK5C008778', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(15, '', 'AK5C008595', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(16, '', 'AK5C008467', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(17, '', 'AK86043239', '', '', '', '', 'OKI- MPS 5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(18, '', 'AL4C037894', '', '', '', '', 'OKI- C831', '2019-03-11', '', '', '', '0000-00-00', 21),
(19, '', 'AK84028957', '', '', '', '', 'OKI- MPS5502mb', '2019-03-11', '', '', '', '0000-00-00', 21),
(20, '', 'AK5C008703', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(21, '', 'AK5C008591', '', '', '', '', 'OKI-ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(22, '', 'AK86043241', '', '', '', '', 'OKI- MPS 5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(23, '', 'ak47042821', '', '', '', '', 'OKI- MPS5502mb', '2019-03-11', '', '', '', '0000-00-00', 21),
(24, '', 'AK48031096', '', '', '', '', 'OKI- MPS 5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(25, '', 'AK88017550', '', '', '', '', 'OKI- ES4172 LP MFP', '2019-03-11', '', '', '', '0000-00-00', 21),
(26, '', 'AK89003098', '', '', '', '', 'OKI- MPS5502mb', '2019-03-11', '', '', '', '0000-00-00', 21),
(27, '', 'AK8B014321', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(28, '', 'AK49025387', '', '', '', '', 'OKI- MPS5502mb', '2019-03-11', '', '', '', '0000-00-00', 21),
(29, '', 'AK86043223', '', '', '', '', 'OKI- MPS 5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(30, '', 'AK88017540', '', '', '', '', 'OKI- ES4172 LP MFP', '2019-03-11', '', '', '', '0000-00-00', 21),
(31, '', 'AK49008915', '', '', '', '', 'OKI- MPS5502mb', '2019-03-11', '', '', '', '0000-00-00', 21),
(32, '', 'AK5C034729', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(33, '', 'AK4B026374', '', '', '', '', 'OKI- MPS5502mb', '2019-03-22', '', '', '', '0000-00-00', 21),
(34, '', 'AK86043246', '', '', '', '', 'OKI- MPS5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(35, '', 'AK5C034359', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(36, '', 'AK5C008737', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(37, '', 'AK5C008530', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(38, '', 'AK88017587', '', '', '', '', 'OKI- ES4172 LP MFP', '2019-03-11', '', '', '', '0000-00-00', 21),
(39, '', 'AK5C008463', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(40, '', 'AK86043269', '', '', '', '', 'OKI- MPS 5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(41, '', 'AK5C008655', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(42, '', 'AK5C008599', '', '', '', '', 'OKI-ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(43, '', 'AK56023017', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(44, '', 'AK86043243', '', '', '', '', 'OKI- MPS 5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(45, '', 'AK5C008581', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(46, '', 'AK5C008469 ', '', '', '', '', 'OKI- ES5112', '2019-03-11', '', '', '', '0000-00-00', 21),
(47, '', 'AK89033325', '', '', '', '', 'OKI- MPS 5501b', '2019-03-11', '', '', '', '0000-00-00', 21),
(48, '', 'AK88056554', '', '', '', '', 'OKI- MPS5502mb', '2019-03-11', '', '', '', '0000-00-00', 21),
(49, '', 'AK49025571', '', '', '', '', 'OKI- MPS5502mb', '2019-03-15', '', '', '', '0000-00-00', 21),
(50, '', 'AK5C039368', '', '', '', '', 'OKI- MPS5502mb', '2019-03-15', '', '', '', '0000-00-00', 21),
(51, '', 'AK88030514', '', '', '', '', 'OKI- MPS5502mb', '2019-03-15', '', '', '', '0000-00-00', 21),
(52, '', 'AK89003100', '', '', '', '', 'OKI- MPS5502mb', '0000-00-00', '', '', '', '0000-00-00', 21),
(53, '', 'AK8B014443C0', '', '', '', '', 'OKI- ES5112', '2019-03-15', '', '', '', '0000-00-00', 21),
(54, '', 'AK8B014325C0', '', '', '', '', 'OKI- ES5112', '2019-03-15', '', '', '', '0000-00-00', 21),
(55, '', 'AK5C008526', '', '', '', '', 'OKI- ES5112', '2019-03-15', '', '', '', '0000-00-00', 21),
(56, '', 'AK5C008782', '', '', '', '', 'OKI- ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(57, '', 'AK5C008740', '', '', '', '', 'OKI- ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(58, '', 'AK88017600', '', '', '', '', 'OKI- ES4172 LP MFP', '2019-03-20', '', '', '', '0000-00-00', 21),
(59, '', 'AK49025438', '', '', '', '', 'OKI- MPS5502mb', '2019-03-20', '', '', '', '0000-00-00', 21),
(60, '', 'ak5C039356', '', '', '', '', 'OKI- MPS5502mb', '2019-03-20', '', '', '', '0000-00-00', 21),
(61, '', 'AK48020549', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(62, '', 'AK47068038', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(63, '', 'AK5C008531', '', '', '', '', 'OKI- ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(64, '', 'AK5B046543', '', '', '', '', 'OKI- ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(65, '', 'AK49025571', '', '', '', '', 'OKI- MPS5502mb', '2019-03-20', '', '', '', '0000-00-00', 21),
(66, '', 'AK86043238', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(67, '', 'AK88017588', '', '', '', '', 'OKI- ES4172 LP MFP', '2019-03-20', '', '', '', '0000-00-00', 21),
(68, '', 'AK48020505', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(69, '', 'AK43006874', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(70, '', 'AK5C008526', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(71, '', 'AK86043225', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(72, '', 'AK5C008525', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(73, '', 'AK5C008710', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(74, '', 'AK5C008728', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(75, '', 'AK49025358', '', '', '', '', 'OKI- MPS5502mb', '2019-03-20', '', '', '', '0000-00-00', 21),
(76, '', 'AK5C008738', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(77, '', 'AK49025419', '', '', '', '', 'OKI- MPS5502mb', '2019-03-20', '', '', '', '0000-00-00', 21),
(78, '', 'AK5C008709', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(79, '', 'AK45066727', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(80, '', 'AK86043232', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(81, '', 'AK47068065', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(82, '', 'AK86043233', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(83, '', 'AK4B026323', '', '', '', '', 'OKI- MPS5502mb', '2019-03-20', '', '', '', '0000-00-00', 21),
(84, '', 'AK5C008468', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(85, '', 'AK5B046532', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(86, '', 'AK5C008732', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(87, '', 'AK5B046534', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(88, '', 'AK86043243', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(89, '', 'AK4B026374', '', '', '', '', 'OKI- MPS5502mb', '2019-03-20', '', '', '', '0000-00-00', 21),
(90, '', 'AK88017552', '', '', '', '', 'OKI- ES4172 LP MFP', '2019-03-20', '', '', '', '0000-00-00', 21),
(91, '', 'AK5B046535', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(92, '', 'AK5C008523', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(93, '', 'AK5C008653', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(94, '', 'AK89003098', '', '', '', '', 'OKI- MPS5502mb', '2019-03-20', '', '', '', '0000-00-00', 21),
(95, '', 'AK45066723', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(96, '', 'AK5C008735', '', '', '', '', 'OKI- ES512', '2019-03-20', '', '', '', '0000-00-00', 21),
(97, '', 'AK48020472', '', '', '', '', 'OKI- MPS 5501b', '2019-03-20', '', '', '', '0000-00-00', 21),
(98, '', 'AK5C008711', '', '', '', '', 'OKI- ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(99, '', 'AK8B014333', '', '', '', '', 'OKI- ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(100, '', 'AK8B008060', '', '', '', '', 'OKI-ES5112', '2019-03-20', '', '', '', '0000-00-00', 21),
(101, '', 'AK49025457', '', '', '', '', 'OKI- MPS5502mb', '2019-03-21', '', '', '', '0000-00-00', 21),
(102, '', 'AK47068039', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(103, '', 'AK8B008123', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(104, '', 'AL4C037892', '', '', '', '', 'OKI- C831', '2019-03-21', '', '', '', '0000-00-00', 21),
(105, '', 'AK49008841', '', '', '', '', 'OKI- MPS5502mb', '2019-03-21', '', '', '', '0000-00-00', 21),
(106, '', 'AK5B010770', '', '', '', '', 'OKI- MPS5502mb', '2019-03-21', '', '', '', '0000-00-00', 21),
(107, '', 'AK43006905A0', '', '', '', '', 'OKI- MPS 5501b', '2019-03-21', '', '', '', '0000-00-00', 21),
(108, '', 'AK86043236', '', '', '', '', 'OKI- MPS 5501b', '2019-03-21', '', '', '', '0000-00-00', 21),
(109, '', 'AK8B014329C0', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(110, '', 'AK8B014323C0', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(111, '', 'AK8B014332C0', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(112, '', 'AK8B014438C0', '', '', '', '', 'OKI- ES5112', '2019-03-29', '', '', '', '0000-00-00', 21),
(113, '', 'AK8B014256C0', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(114, '', 'V9725500782', '', '', '', '', 'RICOH MPC2051', '2019-03-22', '', '', '', '0000-00-00', 21),
(115, '', 'AK89033323A0', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(116, '', 'AK86043242A0', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(117, '', 'AK48020473', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(118, '', 'AK49008865', '', '', '', '', 'OKI- MPS5502mb', '2019-03-22', '', '', '', '0000-00-00', 21),
(119, '', 'AK5C008583', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(120, '', 'AK88017604 ', '', '', '', '', 'OKI- ES4172 LP MFP', '2019-03-22', '', '', '', '0000-00-00', 21),
(121, '', 'AK47068067 ', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(122, '', 'AK48020552', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(123, '', 'AK48020550 ', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(124, '', 'AK5C008585 ', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(125, '', 'AK47023956 ', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(126, '', 'AK86043237 ', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(127, '', 'AK49008919  ', '', '', '', '', 'OKI- MPS5502mb', '2019-03-22', '', '', '', '0000-00-00', 21),
(128, '', 'V4409402691', '', '', '', '', 'RICOH MP171 AFICIO', '2019-03-22', '', '', '', '0000-00-00', 21),
(129, '', 'AK45066717 ', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(130, '', 'AK5C008465 ', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(131, '', 'AK48020500 ', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(132, '', 'AK5C008592 ', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(133, '', 'AK48020471 ', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(134, '', 'AK49025361  ', '', '', '', '', 'OKI- MPS5502mb', '2019-03-22', '', '', '', '0000-00-00', 21),
(135, '', 'AK43006874 ', '', '', '', '', 'OKI- MPS 5501b', '2019-03-22', '', '', '', '0000-00-00', 21),
(136, '', 'AK5C008584 ', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(137, '', 'AK5C008779 ', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(138, '', 'AK5C008493 ', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(139, '', 'AK4B026399  ', '', '', '', '', 'OKI- MPS5502mb', '2019-03-22', '', '', '', '0000-00-00', 21),
(140, '', 'AK56051291 ', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(141, '', 'AK49025467', '', '', '', '', 'OKI- MPS5502mb', '2019-03-22', '', '', '', '0000-00-00', 21),
(142, '', 'MX4350544', '', '', '', '', 'XEROX WORK CENTRE-78', '2019-03-29', '', '', '', '0000-00-00', 21),
(143, '', 'W873L800217', '', '', '', '', 'RICOH-AF.MP7502', '2019-03-29', '', '', '', '0000-00-00', 21),
(144, '', 'AK5C039378 ', '', '', '', '', 'OKI- NPS5502', '2019-03-22', '', '', '', '0000-00-00', 21),
(145, '', 'AK5C008746', '', '', '', '', 'OKI- ES5112', '2019-03-22', '', '', '', '0000-00-00', 21),
(146, '', 'AK49025423  ', '', '', '', '', 'OKI-MPS5502mb', '2019-03-22', '', '', '', '0000-00-00', 21),
(147, '', 'AK5B046542', '', '', '', '', 'OKI- ES5112', '2019-03-29', '', '', '', '0000-00-00', 21),
(148, 'PRNCIRCOLOR', '111111aaaaaaaaa', '10.210.10.21', 'bb:bb:bb:bb:bb:bb', 'teste', 'ativo', 'OKI - C831', '2019-05-18', 'ADMINISTRADOR', 'teste', '', '0000-00-00', 44),
(149, 'prncir', '111111aaaaaaaaa7', '10.210.10.21', '11:11:11:11:11:11', 'gfr', 'ativo', 'RICOH AFICIO MP171', '2019-05-19', 'ADMINISTRADOR', '', '', '0000-00-00', 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `local`
--

CREATE TABLE `local` (
  `idLocal` int(11) NOT NULL,
  `divisao` varchar(10) DEFAULT NULL,
  `localizacao` varchar(10) DEFAULT NULL,
  `ramal` varchar(4) DEFAULT NULL,
  `respSetComp` varchar(30) DEFAULT NULL,
  `nomeLocal` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `local`
--

INSERT INTO `local` (`idLocal`, `divisao`, `localizacao`, `ramal`, `respSetComp`, `nomeLocal`) VALUES
(1, 'CIR', '1° andar', '2895', 'EVANDRO VIEIRA', 'MANUTENÇÃO'),
(2, 'CIR', '1° andar', '6024', 'JOSÉ CARLOS', 'ANALISTAS'),
(3, 'CIR', '1° andar', '6024', 'JOSÉ CARLOS', 'SALA DO SERVIDOR'),
(4, 'DAA', '2° andar', '', '', 'FISIOTERAPIA'),
(5, 'DAA', '3° andar', '', '', 'FONOLOGIA'),
(6, 'DAG', '1° andar', '', '', 'PROTOCOLO'),
(7, 'DEG', '1° andar', '', '', 'TELEFONIA'),
(8, 'DEG', 'subsolo', '', '', 'DEG'),
(9, 'DEG', 'subsolo', '', '', 'SERVIÇO DE PLANOS E PROJETOS (SPP)'),
(10, 'DEG', 'subsolo', '', '', 'SERVIÇO DE ELETRÔNICA E BIOMÉDICA (SEB)'),
(11, 'DEN', '10° andar', '', '', '10C-ILHA'),
(12, 'DEN', '12° andar', '', '', 'CENTRO CIRÚRGICO'),
(13, 'DEN', '2° andar', '', '', 'SEME'),
(14, 'DFN', '10° andar', '', '', 'DFN'),
(15, 'DFN', '1° andar', '', '', 'CONTABILIDADE'),
(16, 'DFN', '1° andar', '', '', 'TESOURARIA'),
(17, 'DG', '1° andar', '', '', 'DIREÇÃO GERAL'),
(18, 'DG', '1° andar', '', '', 'DIREITO PACIENTE'),
(19, 'DG', '1° andar', '', '', 'LICITAÇÃO'),
(20, 'DG', '1° andar', '', '', 'PREGAÃO'),
(21, 'DMD', '10° andar', '', '', 'NEUROLOGIA'),
(22, 'DMD', '10° andar', '', '', 'VASCULAR'),
(23, 'DMD', '11° andar', '', '', 'SECRETARIA DE CIRURGIA GERAL'),
(24, 'DMD', '11° andar', '', '', 'SERVIÇO DE UROLOGIA'),
(25, 'DMD', '1° andar', '', '', 'RADIOTERAPIA'),
(26, 'DMD', '3° andar', '', '', 'ALMOXARIFAD0 DA PATOLOGIA CLINICA'),
(27, 'DMD', '3° andar', '', '', 'CLINICA VIRAL'),
(28, 'DMD', '3° andar', '', '', 'HEMOTERAPIA'),
(29, 'DMD', '3° andar', '', '', 'HEPATOLOGIA'),
(30, 'DMD', '3° andar', '', '', 'LAB IMUNOLOGIA'),
(31, 'DMD', '3° andar', '', '', 'LAB MICOLOGIA'),
(32, 'DMD', '3° andar', '', '', 'PATOLOGIA CLINICA'),
(33, 'DMD', '3° andar', '', '', 'PNEUMOLOGIA'),
(34, 'DMD', '3° andar', '', '', 'PROHART'),
(35, 'DMD', '5° andar', '', '', 'CHEFIA DA DIVISÃO MEDICA'),
(36, 'DRH', '1° andar', '', '', 'DRH SEPAG'),
(37, 'DRH', '1° andar', '', '', 'ESTIMATIVA'),
(38, 'DRH', '1° andar', '', '', 'RECURSOS HUMANOS'),
(39, 'DRH', '1° andar', '', '', 'PROCESSAMENTO'),
(40, 'DRH', '1° andar', '', '', 'SINDICÂNCIA'),
(41, 'DSC', '1° andar', '', '', 'CHEFIA DE AMBULATÓRIO'),
(42, 'DSC', '1° andar', '', '', 'TRIAGEM'),
(43, 'DSC', '2° andar', '', '', 'AMBULATÓRIO'),
(44, 'CAE', '12° andar', '', '', 'SALA DE AULA'),
(45, 'DMD', '10° andar', '', '', 'SEME');

-- --------------------------------------------------------

--
-- Estrutura para tabela `monitor`
--

CREATE TABLE `monitor` (
  `idMonitor` int(11) NOT NULL,
  `modelo` varchar(20) DEFAULT NULL,
  `numPatreimonio` int(10) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuariosSistema`
--

CREATE TABLE `usuariosSistema` (
  `idUser` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `login` varchar(40) DEFAULT NULL,
  `senha` varchar(40) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `funcao` varchar(30) DEFAULT NULL,
  `nivelAcesso` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuariosSistema`
--

INSERT INTO `usuariosSistema` (`idUser`, `nome`, `login`, `senha`, `status`, `funcao`, `nivelAcesso`) VALUES
(1, 'ULISSES FERREIRA DA SILVA', 'ufs', '202cb962ac59075b964b07152d234b70', 'ativo', 'TÉCNICO EM ELETRÔNICA', 'c81e728d9d4c2f636f067f89cc14862c');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`idComputador`),
  ADD KEY `idLocal` (`idLocal`);

--
-- Índices de tabela `historicoComputador`
--
ALTER TABLE `historicoComputador`
  ADD PRIMARY KEY (`idHistorico`),
  ADD KEY `idComputador` (`idComputador`);

--
-- Índices de tabela `historicoImpressora`
--
ALTER TABLE `historicoImpressora`
  ADD PRIMARY KEY (`idHistorico`),
  ADD KEY `idImpressora` (`idImpressora`);

--
-- Índices de tabela `impConserto`
--
ALTER TABLE `impConserto`
  ADD PRIMARY KEY (`idConserto`),
  ADD KEY `idImpressora` (`idImpressora`);

--
-- Índices de tabela `impressoras`
--
ALTER TABLE `impressoras`
  ADD PRIMARY KEY (`idImpressora`),
  ADD KEY `idLocal` (`idLocal`);

--
-- Índices de tabela `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`idLocal`);

--
-- Índices de tabela `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`idMonitor`),
  ADD KEY `idComputador` (`idComputador`);

--
-- Índices de tabela `usuariosSistema`
--
ALTER TABLE `usuariosSistema`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `computador`
--
ALTER TABLE `computador`
  MODIFY `idComputador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=707;

--
-- AUTO_INCREMENT de tabela `historicoComputador`
--
ALTER TABLE `historicoComputador`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `historicoImpressora`
--
ALTER TABLE `historicoImpressora`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `impConserto`
--
ALTER TABLE `impConserto`
  MODIFY `idConserto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `impressoras`
--
ALTER TABLE `impressoras`
  MODIFY `idImpressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de tabela `local`
--
ALTER TABLE `local`
  MODIFY `idLocal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `monitor`
--
ALTER TABLE `monitor`
  MODIFY `idMonitor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuariosSistema`
--
ALTER TABLE `usuariosSistema`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `computador`
--
ALTER TABLE `computador`
  ADD CONSTRAINT `computador_ibfk_1` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`),
  ADD CONSTRAINT `computador_ibfk_2` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`);

--
-- Restrições para tabelas `historicoComputador`
--
ALTER TABLE `historicoComputador`
  ADD CONSTRAINT `historicoComputador_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`);

--
-- Restrições para tabelas `historicoImpressora`
--
ALTER TABLE `historicoImpressora`
  ADD CONSTRAINT `historicoImpressora_ibfk_1` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`);

--
-- Restrições para tabelas `impConserto`
--
ALTER TABLE `impConserto`
  ADD CONSTRAINT `impConserto_ibfk_1` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`);

--
-- Restrições para tabelas `monitor`
--
ALTER TABLE `monitor`
  ADD CONSTRAINT `monitor_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
