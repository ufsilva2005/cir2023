-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29-Ago-2023 às 14:57
-- Versão do servidor: 10.5.15-MariaDB-0+deb11u1
-- versão do PHP: 8.2.0RC7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `controleCir`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `idCargo` int(11) NOT NULL,
  `statusCargos` varchar(8) DEFAULT NULL,
  `nomeCargos` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`idCargo`, `statusCargos`, `nomeCargos`) VALUES
(1, 'ativo', 'ADMINISTRADOR'),
(2, 'ativo', 'TÉCNICO EM INFORMÁTICA'),
(3, 'ativo', 'TÉCNICO EM ELETRÔNICA'),
(4, 'ativo', 'SECRETÁRIA'),
(5, 'ativo', 'CHEFE DE SESSÃO'),
(6, 'ativo', 'COORDENADOR'),
(7, 'ativo', 'ANALISTA DE SISTEMA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipoProcessadores`
--

CREATE TABLE `tipoProcessadores` (
  `idTipoProcessador` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `statusTipo` varchar(8) DEFAULT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8; 

-- --------------------------------------------------------

--
-- Estrutura da tabela `computador`
--

CREATE TABLE `computador` (
  `idComputador` int(11) NOT NULL,
  `numCir` int(6) NOT NULL,
  `numPatrimonio` int(11) NOT NULL,
  `numPatReitoria` int(11) NOT NULL,
  `nomeComputador` varchar(20) DEFAULT NULL,
  `datCadastro` date DEFAULT NULL,
  `respCadastro` varchar(30) DEFAULT NULL,
  `respAltCadastro` varchar(30) DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `sistemaOpera` varchar(21) DEFAULT NULL,
  `modelMaquina` varchar(50) DEFAULT NULL,  
  `memoria` varchar(10) DEFAULT NULL,
  `numIp` varchar(15) DEFAULT NULL,
  `numMac` varchar(17) DEFAULT NULL,
  `capHD` varchar(10) DEFAULT NULL,
  `statusComp` varchar(7) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idSetor` int(11) DEFAULT NULL,
  `idTipoProcessador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conserto`
--

CREATE TABLE `conserto` (
  `idConserto` int(11) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `dataConserto` date DEFAULT NULL,
  `conserto` varchar(255) DEFAULT NULL,
  `respConserto` varchar(30) DEFAULT NULL,
  `emailImpressora` varchar(255) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idImpressora` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `divisao`
--

CREATE TABLE `divisao` (
  `idDivisao` int(11) NOT NULL,
  `divisao` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `divisao`
--

INSERT INTO `divisao` (`idDivisao`, `divisao`) VALUES
(1, 'CIR'),
(2, 'DAA'),
(3, 'DAG'),
(4, 'DEG'),
(5, 'DEN'),
(6, 'DFN'),
(7, 'DG'),
(8, 'DMD'),
(9, 'DRH'),
(10, 'DSC'),
(11, 'CAE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entraMaterial`
--

CREATE TABLE `entraMaterial` (
  `idEntMat` int(11) NOT NULL,
  `dataEntrada` date DEFAULT NULL,
  `quantEntra` int(6) DEFAULT NULL,
  `idMaterial` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `nomeFuncionario` varchar(60) DEFAULT NULL,
  `statusFuncionario` varchar(7) DEFAULT NULL,
  `login` varchar(25) DEFAULT NULL,
  `senha` varchar(250) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `idCargo` int(11) DEFAULT NULL,
  `idAcesso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nomeFuncionario`, `statusFuncionario`, `login`, `senha`, `dataCadastro`, `dataAltCadastro`, `idCargo`, `idAcesso`) VALUES
(1, 'admin', 'ativo', 'admin', '$2y$12$sJncQ.u7TDLQpSe4e3Ri5eETmFmQOmJuD4G6EUk90/qHfna8ozKBW', '2020-06-29', '2020-07-07', 1, 1),
(2, 'SUZANA COSTA VIRGINIO DE SOUZA', 'ativo', 'virginio', '$2y$12$FBxcEMHWOq2ZD0jyzLvwnuGX59zOlozoMFOeKA46MpEY6Rnf6hNpG', '2023-05-22', '0000-00-00', 4, 6),
(3, 'DAVID DA SILVA ALCÂNTARA', 'ativo', 'davidalcantara', '$2y$12$xAEMTfiCcv5DV9otk6h3Ve3Vq2DyYM7Tw8cFCyRd7TptBlLjCx22e', '2023-05-22', '0000-00-00', 2, 3),
(4, 'ULISSES FERREIRA DA SILVA', 'ativo', 'ufs', '$2y$12$wjebX3mADnU33tCmsD5q3e00yiPIwEuS/TBm2hmF6TVx6RO027Mf.', '2023-05-22', '0000-00-00', 3, 8),
(5, 'SALOMÃO HENRIQUE MARQUES', 'ativo', 'salomaohenrique', '$2y$12$ta2oFIo/GUkqh6YrXcJw5ObdKJDvzXs1BwUlbaGdMR/84zgkZW9B.', '2023-06-14', '0000-00-00', 2, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `idHistorico` int(11) NOT NULL,
  `nomeAlteracoes` varchar(255) DEFAULT NULL,
  `dataAltera` date DEFAULT NULL,
  `respAlteracoes` varchar(30) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL,
  `idImpressora` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`idHistorico`, `nomeAlteracoes`, `dataAltera`, `respAlteracoes`, `idComputador`, `idImpressora`, `idFuncionario`) VALUES
(1, '../historico/hist-Imp1D20230614h205703F2.txt', '2023-06-14', 'ULISSES FERREIRA DA SILVA', NULL, 1, 2),
(2, '../historico/hist-Imp14D20230720h141350F2.txt', '2023-07-20', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, 14, 2),
(3, '../historico/hist-Imp1D20230728h175712F2.txt', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, 1, 2),
(4, '../historico/hist-Imp1D20230728h175744F2.txt', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, 1, 2),
(5, '../historico/hist-Imp15D20230731h134727F2.txt', '2023-07-31', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, 15, 2),
(6, '../historico/hist-Imp27D20230801h183204F2.txt', '2023-08-01', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, 27, 2),
(7, '../historico/hist-Imp28D20230801h183310F2.txt', '2023-08-01', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, 28, 2),
(8, '../historico/hist-Imp28D20230803h173550F2.txt', '2023-08-03', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, 28, 2),
(9, '../historico/hist-Imp28D20230803h173609F2.txt', '2023-08-03', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, 28, 2),
(10, '../historico/hist-Imp23D20230811h165031F2.txt', '2023-08-11', 'SUZANA COSTA VIRGINIO DE SOUZA', NULL, 23, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `impressoras`
--

CREATE TABLE `impressoras` (
  `idImpressora` int(11) NOT NULL,
  `nomeImpressora` varchar(20) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `ipImpressora` varchar(15) DEFAULT NULL,
  `macImpressora` varchar(20) DEFAULT NULL,
  `tipoToner` int(11) DEFAULT NULL,
  `statusImpressora` varchar(7) DEFAULT NULL,
  `conexaoImp` varchar(5) DEFAULT 'Rede',
  `modeloImpressora` int(11) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `respCadastro` varchar(30) DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `respAltCadastro` varchar(30) DEFAULT NULL,
  `obsImpressora` varchar(255) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idSetor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `impressoras`
--

INSERT INTO `impressoras` (`idImpressora`, `nomeImpressora`, `numSerie`, `ipImpressora`, `macImpressora`, `tipoToner`, `statusImpressora`, `conexaoImp`, `modeloImpressora`, `dataCadastro`, `respCadastro`, `dataAltCadastro`, `respAltCadastro`, `obsImpressora`, `idFuncionario`, `idSetor`) VALUES
(1, 'PRNMANUT', 'R4P2X12492', '10.13.10.33', '00:17:C8:E7:FC:23', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', 'TESTE', 2, 68),
(2, 'PRNALMOX', 'R4P2X12499', '10.3.0.21', '00:17:C8:E7:FC:77', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', 'TESTE', 2, 49),
(3, '', 'R4P2X12489', '', '', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 50),
(4, '', 'R4P8917950', '', '', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 51),
(5, '', 'R4P2X12491', '', '', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 32),
(6, '', 'R4P2X12501', '', '', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 52),
(7, '', 'R4P9429137', '', '', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 53),
(8, '', 'X3BK007496', '', '', 29, 'ativo', 'Rede', 6, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 54),
(9, '', 'AK43006907A0', '', '', 31, 'ativo', 'Rede', 5, '2023-06-14', NULL, '0000-00-00', '', '', 2, 55),
(10, '', 'AK57067942B0', '', '', 31, 'ativo', 'Rede', 7, '2023-06-14', NULL, '0000-00-00', '', '', 2, 6),
(11, 'PRNURO', 'AK5C039356', '10.110.110.25', '00:80:91:B0:41:A2', 31, 'ativo', 'Rede', 7, '2023-06-14', NULL, '0000-00-00', '', '', 2, 24),
(12, '', 'AK89033050B0', '', '', 31, 'ativo', 'Rede', 7, '2023-07-06', NULL, '0000-00-00', '', '', 2, 56),
(13, '', 'AK89033325A0', '', '', 31, 'ativo', 'Rede', 5, '2023-07-06', NULL, '0000-00-00', '', '', 2, 57),
(14, '', 'AK5C008782A0', '', '', 30, 'ativo', 'Rede', 4, '2023-07-06', NULL, '0000-00-00', '', '', 2, 61),
(15, '', 'AK5C008603A0', '', '00:25:36:11:B2:D7', 30, 'ativo', 'Rede', 4, '2023-07-07', NULL, '2023-07-31', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 79),
(16, 'PRNBIO', 'AK5C008469A0', '10.30.30.28', '00:25:36:EE:78:D9', 30, 'ativo', 'Rede', 4, '2023-07-17', NULL, '0000-00-00', '', '', 2, 60),
(17, '', 'AK47042821A0', '', '', 31, 'ativo', 'Rede', 7, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 62),
(18, '', 'AK8B014323C0', '', '', 30, 'ativo', 'Rede', 4, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 63),
(19, '', 'AK86043236A0', '', '', 31, 'ativo', 'Rede', 5, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 64),
(20, '', 'AK8B015135C0', '10.81.80.22', '00:25:36:91:1A:40', 30, 'ativo', 'Rede', 4, '2023-07-24', NULL, '0000-00-00', '', '', 2, 65),
(21, '', 'AK5C008704A0', '', '', 30, 'ativo', 'Rede', 4, '2023-07-25', NULL, '0000-00-00', '', '', 2, 66),
(22, 'PRNCIR', 'AK89003100B0', '10.13.10.23', '00:80:91:BA:C7:16', 31, 'ativo', 'Rede', 7, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 67),
(23, '', 'AK5C008522A0', '', '00:25:36:EE:78:73', 30, 'ativo', 'Usb', 4, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-08-11', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 69),
(24, '', 'AK5B046536A0', '', '00:25:36:EE:10:C0', 30, 'ativo', 'Rede', 4, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 70),
(25, 'PRNZELADORIA2', 'AK4A021496A0', '10.3.0.25', '00:80:91:AC:68:9D', 31, 'ativo', 'Rede', 7, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 71),
(26, 'PRNPATRIMONIO', 'AK5B010770B0', '10.3.0.22', '00:80:91:B0:3B:A0', 31, 'ativo', 'Rede', 7, '2023-07-27', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 72),
(27, '', 'AK5C034726A0', '', '00:25:36:EE:11:E0', 30, 'ativo', 'Usb', 4, '2023-07-28', NULL, '2023-08-01', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 73),
(28, '', 'AK5C008494A0', '', '00:25:36:EE:78:2D', 30, 'ativo', 'Usb', 4, '2023-07-28', NULL, '2023-08-03', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 73),
(29, 'PRNSPL', 'AK48020473A0', '10.2.0.22', '00:25:36:76:B9:07', 31, 'ativo', 'Rede', 5, '2023-07-28', NULL, '0000-00-00', '', '', 2, 74),
(30, 'PRNDEG2', 'AK56023010A0', '10.2.0.25', '00:25:36:2E:1C:AE', 30, 'ativo', 'Rede', 4, '2023-07-28', NULL, '0000-00-00', '', '', 2, 75),
(31, 'MFPACF682', 'AK4B026374A0', '10.2.0.21', '00:80:91:AC:F6:82', 31, 'ativo', 'Rede', 7, '2023-07-31', NULL, '0000-00-00', '', '', 2, 77),
(32, 'PRNANAT', 'AK86043246A0', '10.0.0.21', '00:25:36:61:23:1C', 31, 'ativo', 'Rede', 5, '2023-07-31', NULL, '0000-00-00', '', '', 2, 78),
(33, 'PRNDEGSEB2', 'AK88030514B0', '10.2.0.27', '00:80:91:BA:C7:34', 31, 'ativo', 'Rede', 7, '2023-07-31', NULL, '0000-00-00', '', '', 2, 80),
(34, 'PRNRESIDUOS', 'AK8B014256CO', '192.168.100.100', '00:25:36:91:06:7E', 30, 'ativo', 'Usb', 4, '2023-08-01', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 81);

-- --------------------------------------------------------

--
-- Estrutura da tabela `material`
--

CREATE TABLE `material` (
  `idMaterial` int(11) NOT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `unidade` varchar(20) DEFAULT NULL,
  `quantidade` int(6) DEFAULT NULL,
  `statusMat` varchar(8) DEFAULT 'ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `material`
--

INSERT INTO `material` (`idMaterial`, `codigo`, `descricao`, `numSerie`, `unidade`, `quantidade`, `statusMat`) VALUES
(1, 'C000384', 'TECLADO USB ABNT2', '0', '0', 0, 'ativo'),
(2, 'C000955', 'HD SSD DE 120GB', '0', '0', 0, 'ativo'),
(3, 'C004723', 'TONNER 12A', '0', '0', 0, 'inativo'),
(4, 'C005446', 'TONNER Q5949X', '0', '0', 0, 'inativo'),
(5, 'C009062', 'FONTE DE ALIMENTAÇÃO ATX  600W', '0', '0', 0, 'ativo'),
(6, 'C011472', 'FONTE DE ALIMENTAÇÃO ATX DE 400W', '0', '0', 0, 'ativo'),
(7, 'C011684', 'TONNER Q7553A', '0', '0', 0, 'inativo'),
(8, 'C011784', 'TONNER CC530A – PRETO', '0', '0', 0, 'inativo'),
(9, 'C011786', 'TONNER CC532A – AMARELO', '0', '0', 0, 'inativo'),
(10, 'C011787', 'TONNER CC533A – MAGENTA', '0', '0', 0, 'inativo'),
(11, 'C013659', 'MEMÓRIA 2GB – DDR2', '0', '0', 0, 'ativo'),
(12, 'C013713', 'MOUSE ÓPTICO USB', '0', '0', 0, 'ativo'),
(13, 'C013947', 'PEN DRIVER 16GB', '0', '0', 0, 'ativo'),
(14, 'C015223', 'TONER Q6000 – PRETO', '0', '0', 0, 'ativo'),
(15, 'C015224', 'TONER Q6001 – CIANO', '0', '0', 0, 'ativo'),
(16, 'C015225', 'TONER Q6002 – AMARELO', '0', '0', 0, 'ativo'),
(17, 'C015226', 'TONER Q6003 – MAGENTA', '0', '0', 0, 'ativo'),
(18, 'C015606', 'CABO SATA', '0', '0', 0, 'ativo'),
(19, 'C016756', 'MOUSEPAD', '0', '0', 0, 'ativo'),
(20, 'C017056', 'MEMÓRIA 4GB – DDR3 – 1.333MHZ', '0', '0', 0, 'ativo'),
(21, 'C017497', 'FILTRO DE LINHA 6 TOMADAS PADRAO NBR14136', '0', 'UN', 157, 'ativo'),
(22, 'C017546', 'PULSEIRA DE IDENTIFICAÇÃO ADULTO', '0', 'UN', 6400, 'ativo'),
(23, 'C017564', 'HD SSD DE 480GB', '0', '0', 0, 'ativo'),
(24, 'C017573', 'GABINETE 4 BAIAS PADRAO ATX PRETO', '0', '0', 0, 'ativo'),
(25, 'P008162', 'MEMÓRIA 8GB – DDR4 – 2.400MHZ', '0', '0', 0, 'ativo'),
(26, 'P016897', 'MONITOR DE COMPUTADOR ATE  22 POLEGADAS', '0', '0', 0, 'ativo'),
(27, 'P017002', 'COMPUTADOR', '0', '0', 0, 'ativo'),
(28, 'CIR-001', 'TONNER TK3182', '0', 'UN', 0, 'ativo'),
(29, 'CIR-002', 'TONNER - BOLSA DE TINTA', '0', 'UN', 0, 'ativo'),
(30, 'CIR-003', 'TONNER ES5112', '0', '0', 0, 'ativo'),
(31, 'CIR-004', 'TONNER MPS5501', '0', '0', 0, 'ativo'),
(32, 'CIR-005', 'TONNER K32', '0', '0', 0, 'ativo'),
(33, 'CIR-006', 'TONNER Y31', '0', '0', 0, 'ativo'),
(34, 'CIR-007', 'TONNER C32', '0', '0', 0, 'ativo'),
(35, 'CIR-008', 'TONNER M32', '0', '0', 0, 'ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modeloImpressora`
--

CREATE TABLE `modeloImpressora` (
  `idModelo` int(11) NOT NULL,
  `statusModelo` varchar(8) DEFAULT NULL,
  `modeloImpressora` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modeloImpressora`
--

INSERT INTO `modeloImpressora` (`idModelo`, `statusModelo`, `modeloImpressora`) VALUES
(1, 'ativo', 'KYOCERA ECOSYS M3655-IDN'),
(2, 'ativo', 'OKI C831'),
(3, 'ativo', 'OKI ES 4172 LP MFP'),
(4, 'ativo', 'OKI ES 5112'),
(5, 'ativo', 'OKI MPS 5501B'),
(6, 'ativo', 'EPSON WF M5799'),
(7, 'ativo', 'OKI MPS 5502 MB'),
(8, 'inativo', 'RICOH AFICIO MP7502'),
(9, 'inativo', 'RICOH AFICIO MP171'),
(10, 'inativo', 'RICOH AFICIO MPC2051STA'),
(11, 'ativo', 'XEROX WORKCENTRE-7855'),
(12, 'ativo', 'ZEBRA S4M'),
(13, 'ativo', 'ZEBRA GC420T'),
(14, 'ativo', 'OKI ES 6405');

-- --------------------------------------------------------

--
-- Estrutura da tabela `monitor`
--

CREATE TABLE `monitor` (
  `idMonitor` int(11) NOT NULL,
  `modeloMonitor` varchar(25) DEFAULT NULL,
  `numPatMonitor` varchar(11) DEFAULT NULL,
  `numPatReitMonitor` varchar(11) DEFAULT NULL,
  `obsMonitor` varchar(255) DEFAULT NULL,
  `statusMonitor` varchar(7) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `saiMaterial`
--

CREATE TABLE `saiMaterial` (
  `idSaiMat` int(11) NOT NULL,
  `dataSaida` date DEFAULT NULL,
  `quantSai` int(6) DEFAULT NULL,
  `idMaterial` int(11) DEFAULT NULL,
  `idConserto` int(11) DEFAULT NULL,
  `idSetor` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `idSetor` int(11) NOT NULL,
  `idDivisao` int(11) DEFAULT NULL,
  `localizacao` varchar(10) DEFAULT NULL,
  `ramal` varchar(4) DEFAULT NULL,
  `respSetor` varchar(30) DEFAULT NULL,
  `nomeLocal` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`idSetor`, `idDivisao`, `localizacao`, `ramal`, `respSetor`, `nomeLocal`) VALUES
(1, 1, '1° andar', '2895', 'EVANDRO VIEIRA', 'MANUTENÇÃO'),
(2, 1, '1° andar', '6024', 'JOSÉ CARLOS', 'ANALISTAS'),
(3, 1, '1° andar', '6024', 'JOSÉ CARLOS', 'SALA DO SERVIDOR'),
(4, 2, '2° andar', '', '', 'FISIOTERAPIA'),
(5, 2, '3° andar', '', '', 'FONOLOGIA'),
(6, 3, '1° andar', '', '', 'PROTOCOLO'),
(7, 4, '1° andar', '', '', 'TELEFONIA'),
(8, 4, 'subsolo', '', '', 'REFRIGERAÇÃO'),
(9, 4, 'subsolo', '', '', 'SERVIÇO DE PLANOS E PROJETOS (SPP)'),
(10, 4, 'subsolo', '', '', 'SERVIÇO DE ELETRÔNICA E BIOMÉDICA (SEB)'),
(11, 5, '10° andar', '', '', '10C-ILHA'),
(12, 5, '12° andar', '', '', 'CENTRO CIRÚRGICO'),
(13, 5, '2° andar', '', '', 'SEME'),
(14, 6, '1° andar', '', '', 'DFN'),
(15, 6, '1° andar', '', '', 'CONTABILIDADE'),
(16, 6, '1° andar', '', '', 'TESOURARIA'),
(17, 7, '1° andar', '', '', 'DIREÇÃO GERAL'),
(18, 7, '1° andar', '', '', 'DIREITO PACIENTE'),
(19, 7, '1° andar', '', '', 'LICITAÇÃO'),
(20, 7, '1° andar', '', '', 'PREGAÃO'),
(21, 8, '10° andar', '', '', 'NEUROLOGIA'),
(22, 8, '10° andar', '', '', 'VASCULAR'),
(23, 8, '11° andar', '', '', 'SECRETARIA DE CIRURGIA GERAL'),
(24, 8, '11° andar', '', '', 'SERVIÇO DE UROLOGIA'),
(25, 8, '1° andar', '', '', 'RADIOTERAPIA'),
(26, 8, '3° andar', '', '', 'ALMOXARIFAD0 DA PATOLOGIA CLINICA'),
(27, 8, '3° andar', '', '', 'CLINICA VIRAL'),
(28, 8, '3° andar', '', '', 'HEMOTERAPIA'),
(29, 8, '3° andar', '', '', 'HEPATOLOGIA'),
(30, 8, '3° andar', '', '', 'LAB IMUNOLOGIA'),
(31, 8, '3° andar', '', '', 'LAB MICOLOGIA'),
(32, 8, '3° andar', '', '', 'PATOLOGIA CLINICA'),
(33, 8, '3° andar', '', '', 'PNEUMOLOGIA'),
(34, 8, '3° andar', '', '', 'PROHART'),
(35, 8, '5° andar', '', '', 'CHEFIA DA DIVISÃO MEDICA'),
(36, 9, '1° andar', '', '', 'DRH SEPAG'),
(37, 9, '1° andar', '', '', 'ESTIMATIVA'),
(38, 9, '1° andar', '', '', 'RECURSOS HUMANOS'),
(39, 9, '1° andar', '', '', 'PROCESSAMENTO'),
(40, 9, '1° andar', '', '', 'SINDICÂNCIA'),
(41, 10, '1° andar', '', '', 'CHEFIA DE AMBULATÓRIO'),
(42, 10, '1° andar', '', '', 'TRIAGEM'),
(43, 10, '2° andar', '', '', 'AMBULATÓRIO'),
(44, 11, '12° andar', '', '', 'SALA DE AULA'),
(45, 8, '10° andar', '', '', 'SEME'),
(46, 8, '10º Andar', '', '', 'SERVIÇO DE ORTOPEDIA'),
(47, NULL, '', '', '', ''),
(48, NULL, '', '', '', ''),
(49, 7, 'subsolo', '2248', '', 'ALMOXARIFADO CENTRAL'),
(50, 7, '1° andar', '6004', '', 'DIREÇÃO GERAL - GABINETE'),
(51, 8, '13° andar', '', '', 'CTI - GERAL'),
(52, 8, '5° andar', '2580', '', 'SERVIÇO DE DERMATOLOGIA'),
(53, 10, '2° andar', '2288', '', 'NIR'),
(54, 8, '11° andar', '2803', '', 'SERVIÇO DE CIRURGIA GERAL'),
(55, 7, '5° andar', '', '', 'BRIGADA'),
(56, 10, '1° andar', '2350', '', 'CENTRAL DE MARCAÇÃO DE CONSULTAS'),
(57, 9, '1° andar', '2589', '', 'DRH -ATENDIMENTO'),
(58, 5, '12° andar', '2716', '', 'CENTRO CIRÚRGICO - CHEFIA'),
(59, 8, 'subsolo', '2283', '', 'ANATOMIA PATOLÓGICA'),
(60, 8, '3° andar', '2672', '', 'PATOLOGIA CLÍNICA - QUÍMICA CLÍNICA'),
(61, 10, '1° andar', '2713', '', 'SERVIÇO DE AMBULATÓRIO - SALA 132'),
(62, 10, '1° andar', '2713', '', 'SERVIÇO DE AMBULATÓRIO - CHEFIA'),
(63, 2, '8° andar', '2317', '', 'SERVIÇO SOCIAL'),
(64, 8, '6° andar', '2117', '', 'POSTO 6F'),
(65, 5, '8° andar', '2173', '', '8F2'),
(66, 2, '10° andar', '2567', '', 'SERVIÇO SOCIAL'),
(67, 1, '1° andar', '6023', '', 'CIR - SALA DOS ANALISTAS'),
(68, 1, '1° andar', '2895', 'EVANDRO VIEIRA', 'CIR - MANUTENÇÃO'),
(69, 2, 'subsolo', '2525', '', 'SERVIÇO DE NUTRIÇÃO - COZINHA'),
(70, 3, 'subsolo', '2255', '', 'VIGILÂNCIA'),
(71, 3, 'subsolo', '2470', '', 'ZELADORIA'),
(72, 3, 'subsolo', '2316', '', 'PATRIMÔNIO'),
(73, 4, 'subsolo', '2850', '', 'SEÇÃO DE EQUIPAMENTOS E INSTALAÇÕES'),
(74, 4, 'subsolo', '2280', '', 'DEG - GASES'),
(75, 4, 'subsolo', '2757', '', 'SEÇÃO DE CONSERVAÇÃO DE EDIFÍCIO'),
(76, 2, '1° andar', '2895', 'EVANDRO VIEIRA', 'CIR - MANUTENÇÃO'),
(77, 4, 'subsolo', '2751', '', 'DEG - SECRETARIA'),
(78, 8, 'subsolo', '2284', '', 'ANATOMIA PATOLÓGICA - RECEPÇÃO'),
(79, 8, 'subsolo', '2283', '', 'ANATOMIA PATOLÓGICA - SALA DOS RESIDENTES'),
(80, 4, 'subsolo', '2386', '', 'SERVIÇO DE ENGENHARIA BIOMÉDICA'),
(81, 3, 'subsolo', '', '', 'COMISSÃO DE RESÍDUOS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoAcesso`
--

CREATE TABLE `tipoAcesso` (
  `idAcesso` int(11) NOT NULL,
  `gerenFuncionarios` varchar(3) DEFAULT NULL,
  `gerenCargos` varchar(3) DEFAULT NULL,
  `gerenEntMaterial` varchar(3) DEFAULT NULL,
  `gerenSaiMaterial` varchar(3) DEFAULT NULL,
  `gerenRelaMaterial` varchar(3) DEFAULT NULL,
  `gerenComputador` varchar(3) DEFAULT NULL,
  `gerenImpressora` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipoAcesso`
--

INSERT INTO `tipoAcesso` (`idAcesso`, `gerenFuncionarios`, `gerenCargos`, `gerenEntMaterial`, `gerenSaiMaterial`, `gerenRelaMaterial`, `gerenComputador`, `gerenImpressora`) VALUES
(1, 'sim', 'sim', 'não', 'não', 'não', 'não', 'não'),
(2, 'sim', 'sim', 'sim', 'não', 'não', 'não', 'não'),
(3, 'não', 'não', 'não', 'sim', 'sim', 'sim', 'sim'),
(4, 'não', 'não', 'não', 'não', 'sim', 'sim', 'sim'),
(5, 'sim', 'sim', 'sim', 'sim', 'não', 'não', 'não'),
(6, 'sim', 'sim', 'sim', 'sim', 'sim', 'sim', 'sim'),
(7, 'não', 'não', 'não', 'não', 'não', 'não', 'não'),
(8, 'sim', 'não', 'sim', 'sim', 'sim', 'sim', 'sim');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Índices de tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  ADD PRIMARY KEY (`idTipoProcessador`);


--
-- Índices para tabela `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`idComputador`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`),
  ADD KEY `idTipoProcessador` (`idTipoProcessador`);

--
-- Índices para tabela `conserto`
--
ALTER TABLE `conserto`
  ADD PRIMARY KEY (`idConserto`),
  ADD KEY `idComputador` (`idComputador`),
  ADD KEY `idImpressora` (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `divisao`
--
ALTER TABLE `divisao`
  ADD PRIMARY KEY (`idDivisao`);

--
-- Índices para tabela `entraMaterial`
--
ALTER TABLE `entraMaterial`
  ADD PRIMARY KEY (`idEntMat`),
  ADD KEY `idMaterial` (`idMaterial`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD KEY `idCargo` (`idCargo`),
  ADD KEY `idAcesso` (`idAcesso`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`idHistorico`),
  ADD KEY `idComputador` (`idComputador`),
  ADD KEY `idImpressora` (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `impressoras`
--
ALTER TABLE `impressoras`
  ADD PRIMARY KEY (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`);

--
-- Índices para tabela `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idMaterial`);

--
-- Índices para tabela `modeloImpressora`
--
ALTER TABLE `modeloImpressora`
  ADD PRIMARY KEY (`idModelo`);

--
-- Índices para tabela `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`idMonitor`),
  ADD KEY `idComputador` (`idComputador`);

--
-- Índices para tabela `saiMaterial`
--
ALTER TABLE `saiMaterial`
  ADD PRIMARY KEY (`idSaiMat`),
  ADD KEY `idMaterial` (`idMaterial`),
  ADD KEY `idConserto` (`idConserto`),
  ADD KEY `idSetor` (`idSetor`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`idSetor`),
  ADD KEY `idDivisao` (`idDivisao`);

--
-- Índices para tabela `tipoAcesso`
--
ALTER TABLE `tipoAcesso`
  ADD PRIMARY KEY (`idAcesso`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  MODIFY `idTipoProcessador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `computador`
--
ALTER TABLE `computador`
  MODIFY `idComputador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `conserto`
--
ALTER TABLE `conserto`
  MODIFY `idConserto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `divisao`
--
ALTER TABLE `divisao`
  MODIFY `idDivisao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `entraMaterial`
--
ALTER TABLE `entraMaterial`
  MODIFY `idEntMat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `impressoras`
--
ALTER TABLE `impressoras`
  MODIFY `idImpressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `material`
--
ALTER TABLE `material`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `monitor`
--
ALTER TABLE `monitor`
  MODIFY `idMonitor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `saiMaterial`
--
ALTER TABLE `saiMaterial`
  MODIFY `idSaiMat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `idSetor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de tabela `tipoAcesso`
--
ALTER TABLE `tipoAcesso`
  MODIFY `idAcesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `computador`
--
ALTER TABLE `computador`
  ADD CONSTRAINT `computador_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `computador_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`),
  ADD CONSTRAINT `computador_ibfk_3` FOREIGN KEY (`idTipoProcessador`) REFERENCES `tipoProcessadores` (`idTipoProcessador`);

--
-- Limitadores para a tabela `conserto`
--
ALTER TABLE `conserto`
  ADD CONSTRAINT `conserto_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`),
  ADD CONSTRAINT `conserto_ibfk_2` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`),
  ADD CONSTRAINT `conserto_ibfk_3` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `entraMaterial`
--
ALTER TABLE `entraMaterial`
  ADD CONSTRAINT `entraMaterial_ibfk_1` FOREIGN KEY (`idMaterial`) REFERENCES `material` (`idMaterial`),
  ADD CONSTRAINT `entraMaterial_ibfk_2` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`),
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`idAcesso`) REFERENCES `tipoAcesso` (`idAcesso`);

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`),
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`),
  ADD CONSTRAINT `historico_ibfk_3` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `impressoras`
--
ALTER TABLE `impressoras`
  ADD CONSTRAINT `impressoras_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `impressoras_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`);

--
-- Limitadores para a tabela `monitor`
--
ALTER TABLE `monitor`
  ADD CONSTRAINT `monitor_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`);

--
-- Limitadores para a tabela `saiMaterial`
--
ALTER TABLE `saiMaterial`
  ADD CONSTRAINT `saiMaterial_ibfk_1` FOREIGN KEY (`idMaterial`) REFERENCES `material` (`idMaterial`),
  ADD CONSTRAINT `saiMaterial_ibfk_2` FOREIGN KEY (`idConserto`) REFERENCES `conserto` (`idConserto`),
  ADD CONSTRAINT `saiMaterial_ibfk_3` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`),
  ADD CONSTRAINT `saiMaterial_ibfk_4` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `setor`
--
ALTER TABLE `setor`
  ADD CONSTRAINT `setor_ibfk_1` FOREIGN KEY (`idDivisao`) REFERENCES `divisao` (`idDivisao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
