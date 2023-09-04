-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 04/09/2023 às 16:21
-- Versão do servidor: 10.3.39-MariaDB-0+deb10u1
-- Versão do PHP: 8.0.30

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
-- Estrutura para tabela `cargo`
--

CREATE TABLE `cargo` (
  `idCargo` int(11) NOT NULL,
  `statusCargos` varchar(8) DEFAULT NULL,
  `nomeCargos` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cargo`
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
-- Estrutura para tabela `computador`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `conserto`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `divisao`
--

CREATE TABLE `divisao` (
  `idDivisao` int(11) NOT NULL,
  `divisao` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `divisao`
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
-- Estrutura para tabela `entraMaterial`
--

CREATE TABLE `entraMaterial` (
  `idEntMat` int(11) NOT NULL,
  `dataEntrada` date DEFAULT NULL,
  `quantEntra` int(6) DEFAULT NULL,
  `idMaterial` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nomeFuncionario`, `statusFuncionario`, `login`, `senha`, `dataCadastro`, `dataAltCadastro`, `idCargo`, `idAcesso`) VALUES
(1, 'admin', 'ativo', 'admin', '$2y$12$sJncQ.u7TDLQpSe4e3Ri5eETmFmQOmJuD4G6EUk90/qHfna8ozKBW', '2020-06-29', '2020-07-07', 1, 1),
(2, 'SUZANA COSTA VIRGINIO DE SOUZA', 'ativo', 'virginio', '$2y$12$FBxcEMHWOq2ZD0jyzLvwnuGX59zOlozoMFOeKA46MpEY6Rnf6hNpG', '2023-05-22', '0000-00-00', 4, 6),
(3, 'DAVID DA SILVA ALCÂNTARA', 'ativo', 'davidalcantara', '$2y$12$xAEMTfiCcv5DV9otk6h3Ve3Vq2DyYM7Tw8cFCyRd7TptBlLjCx22e', '2023-05-22', '0000-00-00', 2, 3),
(4, 'ULISSES FERREIRA DA SILVA', 'ativo', 'ufs', '$2y$12$wjebX3mADnU33tCmsD5q3e00yiPIwEuS/TBm2hmF6TVx6RO027Mf.', '2023-05-22', '0000-00-00', 3, 8),
(5, 'SALOMÃO HENRIQUE MARQUES', 'ativo', 'salomaohenrique', '$2y$12$ta2oFIo/GUkqh6YrXcJw5ObdKJDvzXs1BwUlbaGdMR/84zgkZW9B.', '2023-06-14', '0000-00-00', 2, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico`
--

CREATE TABLE `historico` (
  `idHistorico` int(11) NOT NULL,
  `nomeAlteracoes` varchar(255) DEFAULT NULL,
  `dataAltera` date DEFAULT NULL,
  `respAlteracoes` varchar(30) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL,
  `idImpressora` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `historico`
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
-- Estrutura para tabela `impressoras`
--

CREATE TABLE `impressoras` (
  `idImpressora` int(11) NOT NULL,
  `nomeImpressora` varchar(20) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `ipImpressora` varchar(15) DEFAULT NULL,
  `macImpressora` varchar(20) DEFAULT NULL,
  `tipoToner` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `impressoras`
--

INSERT INTO `impressoras` (`idImpressora`, `nomeImpressora`, `numSerie`, `ipImpressora`, `macImpressora`, `tipoToner`, `statusImpressora`, `conexaoImp`, `modeloImpressora`, `dataCadastro`, `respCadastro`, `dataAltCadastro`, `respAltCadastro`, `obsImpressora`, `idFuncionario`, `idSetor`) VALUES
(1, 'PRNMANUT', 'R4P2X12492', '10.13.10.33', '00:17:C8:E7:FC:23', ' a:1:{i:0;s:2:\"28\";}', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', 'TESTE', 2, 68),
(2, 'PRNALMOX', 'R4P2X12499', '10.3.0.21', '00:17:C8:E7:FC:77', ' a:1:{i:0;s:2:\"28\";}', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', 'TESTE', 2, 49),
(3, '', 'R4P2X12489', '', '', ' a:1:{i:0;s:2:\"28\";}', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 50),
(4, '', 'R4P8917950', '', '', ' a:1:{i:0;s:2:\"28\";}', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 51),
(5, '', 'R4P2X12491', '', '', ' a:1:{i:0;s:2:\"28\";}', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 32),
(6, '', 'R4P2X12501', '', '', ' a:1:{i:0;s:2:\"28\";}', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 52),
(7, '', 'R4P9429137', '', '', ' a:1:{i:0;s:2:\"28\";}', 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 53),
(8, '', 'X3BK007496', '', '', ' a:1:{i:0;s:2:\"29\";}', 'ativo', 'Rede', 6, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 54),
(9, '', 'AK43006907A0', '', '', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 5, '2023-06-14', NULL, '0000-00-00', '', '', 2, 55),
(10, '', 'AK57067942B0', '', '', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 7, '2023-06-14', NULL, '0000-00-00', '', '', 2, 6),
(11, 'PRNURO', 'AK5C039356', '10.110.110.25', '00:80:91:B0:41:A2', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 7, '2023-06-14', NULL, '0000-00-00', '', '', 2, 24),
(12, '', 'AK89033050B0', '', '', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 7, '2023-07-06', NULL, '0000-00-00', '', '', 2, 56),
(13, '', 'AK89033325A0', '', '', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 5, '2023-07-06', NULL, '0000-00-00', '', '', 2, 57),
(14, '', 'AK5C008782A0', '', '', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Rede', 4, '2023-07-06', NULL, '0000-00-00', '', '', 2, 61),
(15, '', 'AK5C008603A0', '', '00:25:36:11:B2:D7', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Rede', 4, '2023-07-07', NULL, '2023-07-31', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 79),
(16, 'PRNBIO', 'AK5C008469A0', '10.30.30.28', '00:25:36:EE:78:D9', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Rede', 4, '2023-07-17', NULL, '0000-00-00', '', '', 2, 60),
(17, '', 'AK47042821A0', '', '', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 7, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 62),
(18, '', 'AK8B014323C0', '', '', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Rede', 4, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 63),
(19, '', 'AK86043236A0', '', '', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 5, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 64),
(20, '', 'AK8B015135C0', '10.81.80.22', '00:25:36:91:1A:40', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Rede', 4, '2023-07-24', NULL, '0000-00-00', '', '', 2, 65),
(21, '', 'AK5C008704A0', '', '', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Rede', 4, '2023-07-25', NULL, '0000-00-00', '', '', 2, 66),
(22, 'PRNCIR', 'AK89003100B0', '10.13.10.23', '00:80:91:BA:C7:16', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 7, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 67),
(23, '', 'AK5C008522A0', '', '00:25:36:EE:78:73', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Usb', 4, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-08-11', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 69),
(24, '', 'AK5B046536A0', '', '00:25:36:EE:10:C0', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Rede', 4, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 70),
(25, 'PRNZELADORIA2', 'AK4A021496A0', '10.3.0.25', '00:80:91:AC:68:9D', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 7, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 71),
(26, 'PRNPATRIMONIO', 'AK5B010770B0', '10.3.0.22', '00:80:91:B0:3B:A0', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 7, '2023-07-27', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 72),
(27, '', 'AK5C034726A0', '', '00:25:36:EE:11:E0', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Usb', 4, '2023-07-28', NULL, '2023-08-01', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 73),
(28, '', 'AK5C008494A0', '', '00:25:36:EE:78:2D', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Usb', 4, '2023-07-28', NULL, '2023-08-03', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 73),
(29, 'PRNSPL', 'AK48020473A0', '10.2.0.22', '00:25:36:76:B9:07', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 5, '2023-07-28', NULL, '0000-00-00', '', '', 2, 74),
(30, 'PRNDEG2', 'AK56023010A0', '10.2.0.25', '00:25:36:2E:1C:AE', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Rede', 4, '2023-07-28', NULL, '0000-00-00', '', '', 2, 75),
(31, 'MFPACF682', 'AK4B026374A0', '10.2.0.21', '00:80:91:AC:F6:82', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 7, '2023-07-31', NULL, '0000-00-00', '', '', 2, 77),
(32, 'PRNANAT', 'AK86043246A0', '10.0.0.21', '00:25:36:61:23:1C', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 5, '2023-07-31', NULL, '0000-00-00', '', '', 2, 78),
(33, 'PRNDEGSEB2', 'AK88030514B0', '10.2.0.27', '00:80:91:BA:C7:34', ' a:1:{i:0;s:2:\"31\";}', 'ativo', 'Rede', 7, '2023-07-31', NULL, '0000-00-00', '', '', 2, 80),
(34, 'PRNRESIDUOS', 'AK8B014256CO', '192.168.100.100', '00:25:36:91:06:7E', ' a:1:{i:0;s:2:\"30\";}', 'ativo', 'Usb', 4, '2023-08-01', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 81);

-- --------------------------------------------------------

--
-- Estrutura para tabela `material`
--

CREATE TABLE `material` (
  `idMaterial` int(11) NOT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `unidade` varchar(20) DEFAULT NULL,
  `quantidade` int(6) DEFAULT NULL,
  `statusMat` varchar(8) DEFAULT 'ativo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `material`
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
-- Estrutura para tabela `modeloImpressora`
--

CREATE TABLE `modeloImpressora` (
  `idModelo` int(11) NOT NULL,
  `statusModelo` varchar(8) DEFAULT NULL,
  `modeloImpressora` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `modeloImpressora`
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
-- Estrutura para tabela `monitor`
--

CREATE TABLE `monitor` (
  `idMonitor` int(11) NOT NULL,
  `modeloMonitor` varchar(25) DEFAULT NULL,
  `numPatMonitor` varchar(11) DEFAULT NULL,
  `numPatReitMonitor` varchar(11) DEFAULT NULL,
  `obsMonitor` varchar(255) DEFAULT NULL,
  `statusMonitor` varchar(7) DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `saiMaterial`
--

CREATE TABLE `saiMaterial` (
  `idSaiMat` int(11) NOT NULL,
  `dataSaida` date DEFAULT NULL,
  `quantSai` int(6) DEFAULT NULL,
  `idMaterial` int(11) DEFAULT NULL,
  `idConserto` int(11) DEFAULT NULL,
  `idSetor` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `setor`
--

CREATE TABLE `setor` (
  `idSetor` int(11) NOT NULL,
  `idDivisao` int(11) DEFAULT NULL,
  `localizacao` varchar(10) DEFAULT NULL,
  `ramal` varchar(4) DEFAULT NULL,
  `respSetor` varchar(30) DEFAULT NULL,
  `nomeLocal` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `setor`
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
-- Estrutura para tabela `tipoAcesso`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tipoAcesso`
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

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipoProcessadores`
--

CREATE TABLE `tipoProcessadores` (
  `idTipoProcessador` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `statusTipo` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tipoProcessadores`
--

INSERT INTO `tipoProcessadores` (`idTipoProcessador`, `descricao`, `statusTipo`) VALUES
(1, 'AMD 64 X2 DUAL CORE 4000+ - 2.11GHz', 'ativo'),
(2, 'AMD 9850 QUAD-CORE - 2.50GHz', 'ativo'),
(3, 'AMD A10 - 7860K RADEON R7 - 3.60GHz', 'ativo'),
(4, 'AMD A10 7860K - 3.60GHz', 'ativo'),
(5, 'AMD A4 - 3400 APU WITH RADEON HD GRAPHICS ', 'ativo'),
(6, 'AMD A4 - 4000 APU WITH RADEON HD GRAPHICS ', 'ativo'),
(7, 'AMD ATHLON - 1.0GHz', 'ativo'),
(8, 'AMD ATHLON - 1.49GHz', 'ativo'),
(9, 'AMD ATHLON - 1.4GHz', 'ativo'),
(10, 'AMD ATHLON - 1.6GHz', 'ativo'),
(11, 'AMD ATHLON - 2.0GHz', 'ativo'),
(12, 'AMD ATHLON - 2800+ - 1800', 'ativo'),
(13, 'AMD ATHLON - 3000+ - 1800', 'ativo'),
(14, 'AMD ATHLON - 3000+ - 2000', 'ativo'),
(15, 'AMD ATHLON - 3200+ - 2000', 'ativo'),
(16, 'AMD ATHLON - 3200+ - 2200', 'ativo'),
(17, 'AMD ATHLON - 3400+ - 2200', 'ativo'),
(18, 'AMD ATHLON - 3400+ - 2400', 'ativo'),
(19, 'AMD ATHLON - 3500+ - 2200', 'ativo'),
(20, 'AMD ATHLON - 3700+ - 2200', 'ativo'),
(21, 'AMD ATHLON - 3700+ - 2400', 'ativo'),
(22, 'AMD ATHLON - 3800+ - 2400', 'ativo'),
(23, 'AMD ATHLON - 4000+ - 2400', 'ativo'),
(24, 'AMD ATHLON - 4000+ - 2600', 'ativo'),
(25, 'AMD ATHLON 2200', 'ativo'),
(26, 'AMD ATHLON 64 - 2.8GHz', 'ativo'),
(27, 'AMD ATHLON 64 - 3.0GHz', 'ativo'),
(28, 'AMD ATHLON 64 - 3.2GHz', 'ativo'),
(29, 'AMD ATHLON 64 - 3.5GHz', 'ativo'),
(30, 'AMD ATHLON 64 - 4.2GHz', 'ativo'),
(31, 'AMD ATHLON 64 5200', 'ativo'),
(32, 'AMD ATHLON 64 X2 5200', 'ativo'),
(33, 'AMD ATHLON 64 X2 6000+ - 3.0GHz', 'ativo'),
(34, 'AMD ATHLON 64 X2 DUAL - 2.11GHz', 'ativo'),
(35, 'AMD ATHLON 64 X2 DUAL - 2.31GHz', 'ativo'),
(36, 'AMD ATHLON 64 X2 DUAL - 5.200GHz', 'ativo'),
(37, 'AMD ATHLON 64 X2 DUAL 2.11GHz', 'ativo'),
(38, 'AMD ATHLON 64 X2 DUAL 5200', 'ativo'),
(39, 'AMD ATHLON 64 X2 DUAL CORE 4000+', 'ativo'),
(40, 'AMD ATHLON 64 X2 DUAL CORE 4200+', 'ativo'),
(41, 'AMD ATHLON 64 X2 DUAL CORE 4400+', 'ativo'),
(42, 'AMD ATHLON 64 X2 DUAL CORE 5000+', 'ativo'),
(43, 'AMD ATHLON 64 X2 DUAL CORE 5200+', 'ativo'),
(44, 'AMD ATHLON 64 X2 DUAL CORE 6000+ - 3.0GHz', 'ativo'),
(45, 'AMD ATHLON 900 MHz', 'ativo'),
(46, 'AMD ATHLON DUAL CORE 4050 - 2.11GHz', 'ativo'),
(47, 'AMD ATHLON FX-51 - 2200', 'ativo'),
(48, 'AMD ATHLON FX-53 - 2400', 'ativo'),
(49, 'AMD ATHLON FX-55 - 2600', 'ativo'),
(50, 'AMD ATHLON FX-57 - 2800', 'ativo'),
(51, 'AMD ATHLON FX-60 - 2600', 'ativo'),
(52, 'AMD ATHLON FX-62 - 2800', 'ativo'),
(53, 'AMD ATHLON FX-70 - 2600', 'ativo'),
(54, 'AMD ATHLON FX-72 - 2800', 'ativo'),
(55, 'AMD ATHLON FX-74 - 3000', 'ativo'),
(56, 'AMD ATHLON II X2 - 215 - 2.7GHz', 'ativo'),
(57, 'AMD ATHLON II X2 - 220 - 2.8GHz', 'ativo'),
(58, 'AMD ATHLON II X2 - 235E - 2.7GHz', 'ativo'),
(59, 'AMD ATHLON II X2 - 240 - 2.8GHz', 'ativo'),
(60, 'AMD ATHLON II X2 - 240E - 2.8GHz', 'ativo'),
(61, 'AMD ATHLON II X2 - 245 C3 - 2.9GHz', 'ativo'),
(62, 'AMD ATHLON II X2 - 245E - 2.9GHz', 'ativo'),
(63, 'AMD ATHLON II X2 - 250 C3 - 3.0GHz', 'ativo'),
(64, 'AMD ATHLON II X2 - 250E - 3.0GHz', 'ativo'),
(65, 'AMD ATHLON II X2 - 255 C3 - 3.1GHz', 'ativo'),
(66, 'AMD ATHLON II X2 - 260 - 3.2GHz', 'ativo'),
(67, 'AMD ATHLON II X2 - 260U - 1.6GHz', 'ativo'),
(68, 'AMD ATHLON II X2 - 260U - 1.8GHz', 'ativo'),
(69, 'AMD ATHLON II X2 - 3.40GHz', 'ativo'),
(70, 'AMD ATHLON II X2 - B22 - 2.8GHz', 'ativo'),
(71, 'AMD ATHLON II X2 - B24 - 3.0GHz', 'ativo'),
(72, 'AMD ATHLON II X2 - 250 - 3.0GHz', 'ativo'),
(73, 'AMD ATHLON II X2 - 270', 'ativo'),
(74, 'AMD ATHLON II X2 - 3.40GHz', 'ativo'),
(75, 'AMD ATHLON II X2 - B24', 'ativo'),
(76, 'AMD ATHLON II X2 - B28', 'ativo'),
(77, 'AMD ATHLON II X3 - 400E - 2.2GHz', 'ativo'),
(78, 'AMD ATHLON II X3 - 405E C3 - 2.3GHz', 'ativo'),
(79, 'AMD ATHLON II X3 - 415E - 2.5GHz', 'ativo'),
(80, 'AMD ATHLON II X3 - 425 - 2.7GHz', 'ativo'),
(81, 'AMD ATHLON II X3 - 435 C3 - 2.9GHz', 'ativo'),
(82, 'AMD ATHLON II X3 - 440 C3 - 3.0GHz', 'ativo'),
(83, 'AMD ATHLON II X3 - 445 - 3.1GHz', 'ativo'),
(84, 'AMD ATHLON II X3 - 450 - 3.2GHz', 'ativo'),
(85, 'AMD ATHLON II X4 - 600E - 2.2GHz', 'ativo'),
(86, 'AMD ATHLON II X4 - 605E C3 - 2.3GHz', 'ativo'),
(87, 'AMD ATHLON II X4 - 620 - 2.6GHz', 'ativo'),
(88, 'AMD ATHLON II X4 - 630 C3 - 2.8GHz', 'ativo'),
(89, 'AMD ATHLON II X4 - 635 C3 - 2.9GHz', 'ativo'),
(90, 'AMD ATHLON LE - 1600 - 2200', 'ativo'),
(91, 'AMD ATHLON LE - 1620 - 2400', 'ativo'),
(92, 'AMD ATHLON LE - 1640 - 2700', 'ativo'),
(93, 'AMD ATHLON LE - 1660 - 2800', 'ativo'),
(94, 'AMD ATHLON X2 4400 - 2.3GHz', 'ativo'),
(95, 'AMD ATHLON X2 DUAL CORE 3250 - 1.50GHz', 'ativo'),
(96, 'AMD ATHLON X2 DUAL CORE 3250E ', 'ativo'),
(97, 'AMD ATHLON X2 DUAL-CORE - 3600+ - 1900', 'ativo'),
(98, 'AMD ATHLON X2 DUAL-CORE - 3800+ - 2000', 'ativo'),
(99, 'AMD ATHLON X2 DUAL-CORE - 4000+ - 2000', 'ativo'),
(100, 'AMD ATHLON X2 DUAL-CORE - 4000+ - 2100', 'ativo'),
(101, 'AMD ATHLON X2 DUAL-CORE - 4050E - 2100', 'ativo'),
(102, 'AMD ATHLON X2 DUAL-CORE - 4200+ - 2200', 'ativo'),
(103, 'AMD ATHLON X2 DUAL-CORE - 4400+ - 2200', 'ativo'),
(104, 'AMD ATHLON X2 DUAL-CORE - 4400+ - 2300', 'ativo'),
(105, 'AMD ATHLON X2 DUAL-CORE - 4450E - 2300', 'ativo'),
(106, 'AMD ATHLON X2 DUAL-CORE - 4600+ - 2400', 'ativo'),
(107, 'AMD ATHLON X2 DUAL-CORE - 4800+ - 2400', 'ativo'),
(108, 'AMD ATHLON X2 DUAL-CORE - 4800+ - 2500', 'ativo'),
(109, 'AMD ATHLON X2 DUAL-CORE - 4850E - 2500', 'ativo'),
(110, 'AMD ATHLON X2 DUAL-CORE - 5000+ - 2600', 'ativo'),
(111, 'AMD ATHLON X2 DUAL-CORE - 5200+ - 2600', 'ativo'),
(112, 'AMD ATHLON X2 DUAL-CORE - 5200+ - 2700', 'ativo'),
(113, 'AMD ATHLON X2 DUAL-CORE - 5400+ - 2800', 'ativo'),
(114, 'AMD ATHLON X2 DUAL-CORE - 5600+ - 2800', 'ativo'),
(115, 'AMD ATHLON X2 DUAL-CORE - 5600+ - 2900', 'ativo'),
(116, 'AMD ATHLON X2 DUAL-CORE - 6000+ - 3100', 'ativo'),
(117, 'AMD ATHLON X2 DUAL-CORE - 6400+ - 3200', 'ativo'),
(118, 'AMD ATHLON X2 DUAL-CORE - BE - 2300 - 1900', 'ativo'),
(119, 'AMD ATHLON X2 DUAL-CORE - BE - 2350 - 2100', 'ativo'),
(120, 'AMD ATHLON X2 DUAL-CORE - BE - 2400 - 2300', 'ativo'),
(121, 'AMD ATHLON XP - 1.0GHz', 'ativo'),
(122, 'AMD ATHLON XP - 1.2GHz', 'ativo'),
(123, 'AMD ATHLON XP - 1.7GHz', 'ativo'),
(124, 'AMD ATHLON XP - 1.8GHz', 'ativo'),
(125, 'AMD ATHLON XP - 2.0GHz', 'ativo'),
(126, 'AMD ATHLON XP - 2.2GHz', 'ativo'),
(127, 'AMD ATHLON XP - 2.4GHz', 'ativo'),
(128, 'AMD ATHLON XP - 2.6GHz', 'ativo'),
(129, 'AMD ATHLON XP - 2.8GHz', 'ativo'),
(130, 'AMD ATHLON XP 1500 1.01GHz', 'ativo'),
(131, 'AMD ATLHON 1.4GHz', 'ativo'),
(132, 'AMD ATLHON 1.6GHz', 'ativo'),
(133, 'AMD ATLHON 2.0GHz', 'ativo'),
(134, 'AMD ATLHON 64 3.5GHz', 'ativo'),
(135, 'AMD ATLHON 64 BITS 3.2GHz', 'ativo'),
(136, 'AMD BUSINESS CLASS ATHLON - 1640B - 2700', 'ativo'),
(137, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 4450B - 2300', 'ativo'),
(138, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 4850B - 2500', 'ativo'),
(139, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5000B - 2600', 'ativo'),
(140, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5200B - 2700', 'ativo'),
(141, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5400B - 2800', 'ativo'),
(142, 'AMD BUSINESS CLASS ATHLON - X2 DUAL-CORE - 5600B - 2900', 'ativo'),
(143, 'AMD BUSINESS CLASS PHENOM -  X3 - TRIPLE - CORE - 8600B - 2300', 'ativo'),
(144, 'AMD BUSINESS CLASS PHENOM - X3 - TRIPLE - CORE - 8750B - 2400', 'ativo'),
(145, 'AMD BUSINESS CLASS PHENOM - X4 - QUAD-CORE - 9600B - 2300', 'ativo'),
(146, 'AMD BUSINESS CLASS PHENOM - X4 - QUAD-CORE - 9750B - 2400', 'ativo'),
(147, 'AMD C - 50 - 1.33GHz', 'ativo'),
(148, 'AMD C-70 APU WITH RADEON HD GRAPHICS ', 'ativo'),
(149, 'AMD DUAL CORE 5200', 'ativo'),
(150, 'AMD DUROM - 1.150GHz', 'ativo'),
(151, 'AMD DUROM - 1.1GHz', 'ativo'),
(152, 'AMD DUROM - 1.2GHz', 'ativo'),
(153, 'AMD DUROM - 1.6GHz', 'ativo'),
(154, 'AMD DUROM - 800MHz', 'ativo'),
(155, 'AMD DUROM - 850MHz', 'ativo'),
(156, 'AMD DUROM - 950MHz', 'ativo'),
(157, 'AMD DUROM - 995MHz', 'ativo'),
(158, 'AMD DUROM - 1.3GHz', 'ativo'),
(159, 'AMD E - 350 1.60GHz', 'ativo'),
(160, 'AMD FX - 6300 SIX - CORE', 'ativo'),
(161, 'AMD FX - 8300 EIGHT-CORE', 'ativo'),
(162, 'AMD FX - 8350 EIGHT-CORE', 'ativo'),
(163, 'AMD OPTERON DE SEGUNDA GERACAO - 1210 - 1800', 'ativo'),
(164, 'AMD OPTERON DE SEGUNDA GERACAO - 1210HE - 1800', 'ativo'),
(165, 'AMD OPTERON DE SEGUNDA GERACAO - 1212 - 2000', 'ativo'),
(166, 'AMD OPTERON DE SEGUNDA GERACAO - 1212HE - 2000', 'ativo'),
(167, 'AMD OPTERON DE SEGUNDA GERACAO - 1214 - 2200', 'ativo'),
(168, 'AMD OPTERON DE SEGUNDA GERACAO - 1214HE - 2200', 'ativo'),
(169, 'AMD OPTERON DE SEGUNDA GERACAO - 1216 - 2400', 'ativo'),
(170, 'AMD OPTERON DE SEGUNDA GERACAO - 1216HE - 2400', 'ativo'),
(171, 'AMD OPTERON DE SEGUNDA GERACAO - 1218 - 2600', 'ativo'),
(172, 'AMD OPTERON DE SEGUNDA GERACAO - 1218HE - 2600', 'ativo'),
(173, 'AMD OPTERON DE SEGUNDA GERACAO - 1220 - 2800', 'ativo'),
(174, 'AMD OPTERON DE SEGUNDA GERACAO - 1220SE - 2800', 'ativo'),
(175, 'AMD OPTERON DE SEGUNDA GERACAO - 1222 - 3000', 'ativo'),
(176, 'AMD OPTERON DE SEGUNDA GERACAO - 1222SE - 3000', 'ativo'),
(177, 'AMD OPTERON DE SEGUNDA GERACAO - 2210 - 1800', 'ativo'),
(178, 'AMD OPTERON DE SEGUNDA GERACAO - 2210HE - 1800', 'ativo'),
(179, 'AMD OPTERON DE SEGUNDA GERACAO - 2212 - 2000', 'ativo'),
(180, 'AMD OPTERON DE SEGUNDA GERACAO - 2212HE - 2000', 'ativo'),
(181, 'AMD OPTERON DE SEGUNDA GERACAO - 2214 - 2200', 'ativo'),
(182, 'AMD OPTERON DE SEGUNDA GERACAO - 2214HE - 2200', 'ativo'),
(183, 'AMD OPTERON DE SEGUNDA GERACAO - 2216 - 2400', 'ativo'),
(184, 'AMD OPTERON DE SEGUNDA GERACAO - 2216HE - 2400', 'ativo'),
(185, 'AMD OPTERON DE SEGUNDA GERACAO - 2218 - 2600', 'ativo'),
(186, 'AMD OPTERON DE SEGUNDA GERACAO - 2218HE - 2600', 'ativo'),
(187, 'AMD OPTERON DE SEGUNDA GERACAO - 2220 - 2800', 'ativo'),
(188, 'AMD OPTERON DE SEGUNDA GERACAO - 2220SE - 2800', 'ativo'),
(189, 'AMD OPTERON DE SEGUNDA GERACAO - 2222 - 3000', 'ativo'),
(190, 'AMD OPTERON DE SEGUNDA GERACAO - 2222SE - 3000', 'ativo'),
(191, 'AMD OPTERON DE SEGUNDA GERACAO - 2224SE - 3200', 'ativo'),
(192, 'AMD OPTERON DE SEGUNDA GERACAO - 8212 - 2000', 'ativo'),
(193, 'AMD OPTERON DE SEGUNDA GERACAO - 8212HE - 2000', 'ativo'),
(194, 'AMD OPTERON DE SEGUNDA GERACAO - 8214 - 2200', 'ativo'),
(195, 'AMD OPTERON DE SEGUNDA GERACAO - 8214HE - 2200', 'ativo'),
(196, 'AMD OPTERON DE SEGUNDA GERACAO - 8216 - 2400', 'ativo'),
(197, 'AMD OPTERON DE SEGUNDA GERACAO - 8216HE - 2400', 'ativo'),
(198, 'AMD OPTERON DE SEGUNDA GERACAO - 8218 - 2600', 'ativo'),
(199, 'AMD OPTERON DE SEGUNDA GERACAO - 8218HE - 2600', 'ativo'),
(200, 'AMD OPTERON DE SEGUNDA GERACAO - 8220 - 2800', 'ativo'),
(201, 'AMD OPTERON DE SEGUNDA GERACAO - 8220SE - 2800', 'ativo'),
(202, 'AMD OPTERON DE SEGUNDA GERACAO - 8222 - 3000', 'ativo'),
(203, 'AMD OPTERON DE SEGUNDA GERACAO - 8222SE - 3000', 'ativo'),
(204, 'AMD OPTERON DE SEGUNDA GERACAO - 8224SE - 3200', 'ativo'),
(205, 'AMD OPTERON DE TERCEIRA GERACAO - 1352 - 2100', 'ativo'),
(206, 'AMD OPTERON DE TERCEIRA GERACAO - 1354 - 2200', 'ativo'),
(207, 'AMD OPTERON DE TERCEIRA GERACAO - 1356 - 2300', 'ativo'),
(208, 'AMD OPTERON DE TERCEIRA GERACAO - 2344HE - 1700', 'ativo'),
(209, 'AMD OPTERON DE TERCEIRA GERACAO - 2346HE - 1800', 'ativo'),
(210, 'AMD OPTERON DE TERCEIRA GERACAO - 2347 - 1900', 'ativo'),
(211, 'AMD OPTERON DE TERCEIRA GERACAO - 2347HE - 1900', 'ativo'),
(212, 'AMD OPTERON DE TERCEIRA GERACAO - 2350 - 2000', 'ativo'),
(213, 'AMD OPTERON DE TERCEIRA GERACAO - 2352 - 2100', 'ativo'),
(214, 'AMD OPTERON DE TERCEIRA GERACAO - 2354 - 2200', 'ativo'),
(215, 'AMD OPTERON DE TERCEIRA GERACAO - 2356 - 2300', 'ativo'),
(216, 'AMD OPTERON DE TERCEIRA GERACAO - 2358SE - 2400', 'ativo'),
(217, 'AMD OPTERON DE TERCEIRA GERACAO - 2360SE - 2500', 'ativo'),
(218, 'AMD OPTERON DE TERCEIRA GERACAO - 8346HE - 1800', 'ativo'),
(219, 'AMD OPTERON DE TERCEIRA GERACAO - 8347 - 1900', 'ativo'),
(220, 'AMD OPTERON DE TERCEIRA GERACAO - 8347HE - 1900', 'ativo'),
(221, 'AMD OPTERON DE TERCEIRA GERACAO - 8350 - 2000', 'ativo'),
(222, 'AMD OPTERON DE TERCEIRA GERACAO - 8354 - 2200', 'ativo'),
(223, 'AMD OPTERON DE TERCEIRA GERACAO - 8356 - 2300', 'ativo'),
(224, 'AMD OPTERON DE TERCEIRA GERACAO - 8358SE - 2400', 'ativo'),
(225, 'AMD OPTERON DE TERCEIRA GERACAO - 8360SE - 2500', 'ativo'),
(226, 'AMD PHENOM 8450 TRIPLE - CORE', 'ativo'),
(227, 'AMD PHENOM 8650 TRIPLE - CORE', 'ativo'),
(228, 'AMD PHENOM 9650 - 2.30GHz', 'ativo'),
(229, 'AMD PHENOM II X2 - 545 BE - 3.0GHz', 'ativo'),
(230, 'AMD PHENOM II X2 - 550 BE - 3.1GHz', 'ativo'),
(231, 'AMD PHENOM II X2 - 555 BE C3 - 3.2GHz', 'ativo'),
(232, 'AMD PHENOM II X2 - B53 - 2.8GHz', 'ativo'),
(233, 'AMD PHENOM II X2 - B55 - 3.0GHz', 'ativo'),
(234, 'AMD PHENOM II X2 - 555 3.20GHz', 'ativo'),
(235, 'AMD PHENOM II X3 - 700E - 2.4GHz', 'ativo'),
(236, 'AMD PHENOM II X3 - 705E - 2.5GHz', 'ativo'),
(237, 'AMD PHENOM II X3 - 710 BE - 2.6GHz', 'ativo'),
(238, 'AMD PHENOM II X3 - 715 - 2.8GHz', 'ativo'),
(239, 'AMD PHENOM II X3 - 720 BE - 2.8GHz', 'ativo'),
(240, 'AMD PHENOM II X3 - 740 BE - 3.0GHz', 'ativo'),
(241, 'AMD PHENOM II X3 - B73 - 2.8GHz', 'ativo'),
(242, 'AMD PHENOM II X3 - B75 - 3.0GHz', 'ativo'),
(243, 'AMD PHENOM II X4 - 805 - 2.5GHz', 'ativo'),
(244, 'AMD PHENOM II X4 - 810 - 2.6GHz', 'ativo'),
(245, 'AMD PHENOM II X4 - 820 - 2.8GHz', 'ativo'),
(246, 'AMD PHENOM II X4 - 900E - 2.4GHz', 'ativo'),
(247, 'AMD PHENOM II X4 - 905E - 2.5GHz', 'ativo'),
(248, 'AMD PHENOM II X4 - 910 - 2.6GHz', 'ativo'),
(249, 'AMD PHENOM II X4 - 910E C3 - 2.6GHz', 'ativo'),
(250, 'AMD PHENOM II X4 - 920 - 2.8GHz', 'ativo'),
(251, 'AMD PHENOM II X4 - 925 - 2.8GHz', 'ativo'),
(252, 'AMD PHENOM II X4 - 940 - 3.0GHz', 'ativo'),
(253, 'AMD PHENOM II X4 - 945 - 3.0GHz', 'ativo'),
(254, 'AMD PHENOM II X4 - 945 C3 - 3.0GHz', 'ativo'),
(255, 'AMD PHENOM II X4 - 955 BE C3 - 3.2GHz', 'ativo'),
(256, 'AMD PHENOM II X4 - 960T - 3.0GHz', 'ativo'),
(257, 'AMD PHENOM II X4 - 965 BE - 3.4GHz', 'ativo'),
(258, 'AMD PHENOM II X4 - 965 BE C3 - 3.4GHz', 'ativo'),
(259, 'AMD PHENOM II X4 - 975 - 3.6GHz', 'ativo'),
(260, 'AMD PHENOM II X6 - 1035T - 2.6GHz', 'ativo'),
(261, 'AMD PHENOM II X6 - 1055T - 2.8GHz', 'ativo'),
(262, 'AMD PHENOM II X6 - 1075T - 3.0GHz', 'ativo'),
(263, 'AMD PHENOM II X6 - 1090T - 3.2GHz', 'ativo'),
(264, 'AMD PHENOM TRIPLE - CORE - 2.31GHz', 'ativo'),
(265, 'AMD PHENOM X3 - TRIPLE - CORE - 8250E - 1.9GHz', 'ativo'),
(266, 'AMD PHENOM X3 - TRIPLE - CORE - 8400 - 2100', 'ativo'),
(267, 'AMD PHENOM X3 - TRIPLE - CORE - 8450 - 2.1GHz', 'ativo'),
(268, 'AMD PHENOM X3 - TRIPLE - CORE - 8450E - 2.1GHz', 'ativo'),
(269, 'AMD PHENOM X3 - TRIPLE - CORE - 8600 - 2300', 'ativo'),
(270, 'AMD PHENOM X3 - TRIPLE - CORE - 8650 - 2.3GHz', 'ativo'),
(271, 'AMD PHENOM X3 - TRIPLE - CORE - 8650 - 2300', 'ativo'),
(272, 'AMD PHENOM X3 - TRIPLE - CORE - 8750 - 2.4GHz', 'ativo'),
(273, 'AMD PHENOM X3 - TRIPLE - CORE - 8750 - 2400', 'ativo'),
(274, 'AMD PHENOM X4 - QUAD-CORE - 9150E - 1.8GHz', 'ativo'),
(275, 'AMD PHENOM X4 - QUAD-CORE - 9350E - 2.0GHz', 'ativo'),
(276, 'AMD PHENOM X4 - QUAD-CORE - 9500 - 2.2GHz', 'ativo'),
(277, 'AMD PHENOM X4 - QUAD-CORE - 9550 - 2.2GHz', 'ativo'),
(278, 'AMD PHENOM X4 - QUAD-CORE - 9600 - 2300', 'ativo'),
(279, 'AMD PHENOM X4 - QUAD-CORE - 9650 - 2.3GHz', 'ativo'),
(280, 'AMD PHENOM X4 - QUAD-CORE - 9750 - 2.4GHz', 'ativo'),
(281, 'AMD PHENOM X4 - QUAD-CORE - 9850 - 2.5GHz', 'ativo'),
(282, 'AMD PHENOM X4 - QUAD-CORE - 9950 - 2.6GHz', 'ativo'),
(283, 'AMD PHENON II X4 - 830 2.8GHz', 'ativo'),
(284, 'AMD RYZEN 7 2700', 'ativo'),
(285, 'AMD RYZEN 7 PRO 5750G 3.8GHz', 'ativo'),
(286, 'AMD SEMPROM - 1.6GHz', 'ativo'),
(287, 'AMD SEMPROM - 2.11GHz', 'ativo'),
(288, 'AMD SEMPROM - 2.2GHz', 'ativo'),
(289, 'AMD SEMPROM - 2.4GHz', 'ativo'),
(290, 'AMD SEMPROM - 2.5GHz', 'ativo'),
(291, 'AMD SEMPROM - 2.6GHz', 'ativo'),
(292, 'AMD SEMPROM - 2.8GHz', 'ativo'),
(293, 'AMD SEMPROM - 3.0GHz', 'ativo'),
(294, 'AMD SEMPROM 2600 - 1.6GHz', 'ativo'),
(295, 'AMD SEMPROM 2800 - 1.6GHz', 'ativo'),
(296, 'AMD SEMPROM 3.0GHz', 'ativo'),
(297, 'AMD SEMPROM LE 1100', 'ativo'),
(298, 'AMD SEMPRON - 2800+ - 1600', 'ativo'),
(299, 'AMD SEMPRON - 3000+ - 1600', 'ativo'),
(300, 'AMD SEMPRON - 3000+ - 1800', 'ativo'),
(301, 'AMD SEMPRON - 3100+ - 1800', 'ativo'),
(302, 'AMD SEMPRON - 3200+ - 1800', 'ativo'),
(303, 'AMD SEMPRON - 3300+ - 2000', 'ativo'),
(304, 'AMD SEMPRON - 3400+ - 1800', 'ativo'),
(305, 'AMD SEMPRON - 3400+ - 2000', 'ativo'),
(306, 'AMD SEMPRON - 3500+ - 2000', 'ativo'),
(307, 'AMD SEMPRON - 3600+ - 2000', 'ativo'),
(308, 'AMD SEMPRON - 3800+ - 2200', 'ativo'),
(309, 'AMD SEMPRON - 1.5GHz', 'ativo'),
(310, 'AMD SEMPRON 1100', 'ativo'),
(311, 'AMD SEMPRON 140', 'ativo'),
(312, 'AMD SEMPRON 145', 'ativo'),
(313, 'AMD SEMPRON 3000', 'ativo'),
(314, 'AMD SEMPRON 3400 - 1.80GHz', 'ativo'),
(315, 'AMD SEMPRON 64 2800', 'ativo'),
(316, 'AMD SEMPRON LE - 1100 - 1900', 'ativo'),
(317, 'AMD SEMPRON LE - 1150 - 2000', 'ativo'),
(318, 'AMD SEMPRON LE - 1200 - 2100', 'ativo'),
(319, 'AMD SEMPRON LE - 1250 - 2200', 'ativo'),
(320, 'AMD SEMPRON X1 - 140 - 2.7GHz', 'ativo'),
(321, 'AMD SEMPRON X1 - 145 - 2.8GHz', 'ativo'),
(322, 'AMD SEMPRON X1 - 180', 'ativo'),
(323, 'AMD V120 ', 'ativo'),
(324, 'AMD X2 250 - 3000MHz', 'ativo'),
(325, 'AMD X2 250 - 3100MHz', 'ativo'),
(326, 'INTEL CELERON G470 - 2.00GHz', 'ativo'),
(327, 'INTEL CELERON 927UE - 1.50GHz', 'ativo'),
(328, 'INTEL CELERON 887 - 1.50GHz', 'ativo'),
(329, 'INTEL CELERON B830 - 1.80GHz', 'ativo'),
(330, 'INTEL CELERON G465 - 1.90GHz', 'ativo'),
(331, 'INTEL CELERON G550T - 2.20GHz', 'ativo'),
(332, 'INTEL CELERON G555 - 2.70GHz', 'ativo'),
(333, 'INTEL CELERON 807 - 1.50GHz', 'ativo'),
(334, 'INTEL CELERON 877 - 1.40GHz', 'ativo'),
(335, 'INTEL CELERON B820 - 1.70GHz', 'ativo'),
(336, 'INTEL CELERON G540T - 2.10GHz', 'ativo'),
(337, 'INTEL CELERON G550 - 2.60GHz', 'ativo'),
(338, 'INTEL CELERON 725C - 1.30GHz', 'ativo'),
(339, 'INTEL CELERON 797 - 1.40GHz', 'ativo'),
(340, 'INTEL CELERON 867 - 1.30GHz', 'ativo'),
(341, 'INTEL CELERON B720 - 1.70GHz', 'ativo'),
(342, 'INTEL CELERON B815 - 1.60GHz', 'ativo'),
(343, 'INTEL CELERON G460 - 1.80GHz', 'ativo'),
(344, 'INTEL CELERON 807UE - 1.00GHz', 'ativo'),
(345, 'INTEL CELERON B840 - 1.90GHz', 'ativo'),
(346, 'INTEL CELERON G440 - 1.60GHz', 'ativo'),
(347, 'INTEL CELERON G530 - 2.40GHz', 'ativo'),
(348, 'INTEL CELERON G530T - 2.00GHz', 'ativo'),
(349, 'INTEL CELERON G540 - 2.50GHz', 'ativo'),
(350, 'INTEL CELERON 787 - 1.30GHz', 'ativo'),
(351, 'INTEL CELERON 827E - 1.40GHz', 'ativo'),
(352, 'INTEL CELERON B710 - 1.60GHz', 'ativo'),
(353, 'INTEL CELERON 857 - 1.20GHz', 'ativo'),
(354, 'INTEL CELERON 847 - 1.10GHz', 'ativo'),
(355, 'INTEL CELERON 847E - 1.10GHz', 'ativo'),
(356, 'INTEL CELERON B800 - 1.50GHz', 'ativo'),
(357, 'INTEL CELERON B810E - 1.60GHz', 'ativo'),
(358, 'INTEL CELERON B810 - 1.60GHz', 'ativo'),
(359, 'INTEL CELERON 925 - 2.30GHz', 'ativo'),
(360, 'INTEL CELERON U3600 - 1.20GHz', 'ativo'),
(361, 'INTEL CELERON ULV 763 - 1.40GHz', 'ativo'),
(362, 'INTEL CELERON E3500 - 2.70GHz', 'ativo'),
(363, 'INTEL CELERON P4600 - 2.00GHz', 'ativo'),
(364, 'INTEL CELERON T3500 - 2.10GHz', 'ativo'),
(365, 'INTEL CELERON U3400 - 1.06GHz', 'ativo'),
(366, 'INTEL CELERON P4500 - 1.86GHz', 'ativo'),
(367, 'INTEL CELERON E3400 - 2.60GHz', 'ativo'),
(368, 'INTEL CELERON P1053 - 1.33GHz', 'ativo'),
(369, 'INTEL CELERON P4505 - 1.86GHz', 'ativo'),
(370, 'INTEL CELERON T3300 - 2.00GHz', 'ativo'),
(371, 'INTEL CELERON U3405 - 1.06GHz', 'ativo'),
(372, 'INTEL CELERON M ULV 743 - 1.30GHz', 'ativo'),
(373, 'INTEL CELERON SU2300 - 1.20GHz', 'ativo'),
(374, 'INTEL CELERON E3200 - 2.40GHz', 'ativo'),
(375, 'INTEL CELERON E3300 - 2.50GHz', 'ativo'),
(376, 'INTEL CELERON T3100 - 1.90GHz', 'ativo'),
(377, 'INTEL CELERON ULV 573 - 1.00GHz', 'ativo'),
(378, 'INTEL CELERON E1600 - 2.40GHz', 'ativo'),
(379, 'INTEL CELERON 900 - 2.20GHz', 'ativo'),
(380, 'INTEL CELERON T1600 - 1.66GHz', 'ativo'),
(381, 'INTEL CELERON T1700 - 1.83GHz', 'ativo'),
(382, 'INTEL CELERON E1500 - 2.20GHz', 'ativo'),
(383, 'INTEL CELERON M ULV 722 - 1.20GHz', 'ativo'),
(384, 'INTEL CELERON 450 - 2.20GHz', 'ativo'),
(385, 'INTEL CELERON M ULV 723 - 1.20GHz', 'ativo'),
(386, 'INTEL CELERON 575 - 2.00GHz', 'ativo'),
(387, 'INTEL CELERON 585 - 2.16GHz', 'ativo'),
(388, 'INTEL CELERON E1400 - 2.00GHz', 'ativo'),
(389, 'INTEL CELERON 570 - 2.26GHz', 'ativo'),
(390, 'INTEL CELERON E1200 - 1.60GHz', 'ativo'),
(391, 'INTEL CELERON 560 - 2.13GHz', 'ativo'),
(392, 'INTEL CELERON 220 - 1.20GHz', 'ativo'),
(393, 'INTEL CELERON M ULV 523 - 930 MHz', 'ativo'),
(394, 'INTEL CELERON 540 - 1.86GHz', 'ativo'),
(395, 'INTEL CELERON 420 - 1.60GHz', 'ativo'),
(396, 'INTEL CELERON 430 - 1.80GHz', 'ativo'),
(397, 'INTEL CELERON 440 - 2.00GHz', 'ativo'),
(398, 'INTEL CELERON M 530 - 1.73GHz', 'ativo'),
(399, 'INTEL CELERON 530 - 1.73GHz', 'ativo'),
(400, 'INTEL CELERON de 1.83GHz - cache de 1M - barramento frontal de 667 MHz - 1.83GHz', 'ativo'),
(401, 'INTEL CELERON D 365 - 3.60GHz', 'ativo'),
(402, 'INTEL CELERON M 520 - 1.60GHz', 'ativo'),
(403, 'INTEL CELERON de 1.66GHz - cache de 1M - barramento frontal de 667 MHz - 1.66GHz', 'ativo'),
(404, 'INTEL CELERON D 347 - 3.06GHz', 'ativo'),
(405, 'INTEL CELERON D 360 - 3.46GHz', 'ativo'),
(406, 'INTEL CELERON M 440 - 1.86GHz', 'ativo'),
(407, 'INTEL CELERON 550 - 2.00GHz', 'ativo'),
(408, 'INTEL CELERON D 352 - 3.20GHz', 'ativo'),
(409, 'INTEL CELERON D 356 - 3.33GHz', 'ativo'),
(410, 'INTEL CELERON M ULV 423 - 1.06GHz', 'ativo'),
(411, 'INTEL CELERON D 310 - 2.13GHz', 'ativo'),
(412, 'INTEL CELERON D 355 - 3.33GHz', 'ativo'),
(413, 'INTEL CELERON D 341 - 2.93GHz', 'ativo'),
(414, 'INTEL CELERON D 350 - 3.20GHz', 'ativo'),
(415, 'INTEL CELERON D 350/350J - 3.20GHz', 'ativo'),
(416, 'INTEL CELERON D 351 - 3.20GHz', 'ativo'),
(417, 'INTEL CELERON M 370 - 1.50GHz', 'ativo'),
(418, 'INTEL CELERON M ULV 373 - 1.00GHz', 'ativo'),
(419, 'INTEL CELERON D 325J - 2.53GHz', 'ativo'),
(420, 'INTEL CELERON D 330 - 2.66GHz', 'ativo'),
(421, 'INTEL CELERON D 330J - 2.66GHz', 'ativo'),
(422, 'INTEL CELERON D 335J - 2.80GHz', 'ativo'),
(423, 'INTEL CELERON D 340 - 2.93GHz', 'ativo'),
(424, 'INTEL CELERON D 340J - 2.93GHz', 'ativo'),
(425, 'INTEL CELERON D 345 - 3.06GHz', 'ativo'),
(426, 'INTEL CELERON D 345J - 3.06GHz', 'ativo'),
(427, 'INTEL CELERON D 315 - 2.26GHz', 'ativo'),
(428, 'INTEL CELERON D 335 - 2.80GHz', 'ativo'),
(429, 'INTEL CELERON D 315/315J - 2.26GHz', 'ativo'),
(430, 'INTEL CELERON D 320 - 2.40GHz', 'ativo'),
(431, 'INTEL CELERON D 325 - 2.53GHz', 'ativo'),
(432, 'INTEL CELERON D 325/325J - 2.53GHz', 'ativo'),
(433, 'INTEL CELERON D 326 - 2.53GHz', 'ativo'),
(434, 'INTEL CELERON D 330/330J - 2.66GHz', 'ativo'),
(435, 'INTEL CELERON D 335/335J - 2.80GHz', 'ativo'),
(436, 'INTEL CELERON M 320 - 1.30GHz', 'ativo'),
(437, 'INTEL CELERON 1005M - 1.90GHz', 'ativo'),
(438, 'INTEL CELERON 1017U - 1.60GHz', 'ativo'),
(439, 'INTEL CELERON 1019Y - 1.00GHz', 'ativo'),
(440, 'INTEL CELERON 1000M - 1.80GHz', 'ativo'),
(441, 'INTEL CELERON 1007U - 1.50GHz', 'ativo'),
(442, 'INTEL CELERON 1020E - 2.20GHz', 'ativo'),
(443, 'INTEL CELERON 1020M - 2.10GHz', 'ativo'),
(444, 'INTEL CELERON 1037U - 1.80GHz', 'ativo'),
(445, 'INTEL CELERON 1047UE - 1.40GHz', 'ativo'),
(446, 'INTEL CELERON 2970M - 2.20GHz', 'ativo'),
(447, 'INTEL CELERON 2000E - 2.20GHz', 'ativo'),
(448, 'INTEL CELERON 2002E - 1.50GHz', 'ativo'),
(449, 'INTEL CELERON 2957U - 1.40GHz', 'ativo'),
(450, 'INTEL CELERON 2961Y - 1.10GHz', 'ativo'),
(451, 'INTEL CELERON 2981U - 1.60GHz', 'ativo'),
(452, 'INTEL CELERON 2950M - 2.00GHz', 'ativo'),
(453, 'INTEL CELERON 2955U - 1.40GHz', 'ativo'),
(454, 'INTEL CELERON 2980U - 1.60GHz', 'ativo'),
(455, 'INTEL CELERON 3867U - 1.80GHz', 'ativo'),
(456, 'INTEL CELERON 3965Y - 1.50GHz', 'ativo'),
(457, 'INTEL CELERON 3865U - 1.80GHz', 'ativo'),
(458, 'INTEL CELERON 3965U - 2.20GHz', 'ativo'),
(459, 'INTEL CELERON 3855U - 1.60GHz', 'ativo'),
(460, 'INTEL CELERON 3955U - 2.00GHz', 'ativo'),
(461, 'INTEL CELERON 3215U - 1.70GHz', 'ativo'),
(462, 'INTEL CELERON 3765U - 1.90GHz', 'ativo'),
(463, 'INTEL CELERON 3205U - 1.50GHz', 'ativo'),
(464, 'INTEL CELERON 3755U - 1.70GHz', 'ativo'),
(465, 'INTEL CELERON 4305U - 2.20GHz', 'ativo'),
(466, 'INTEL CELERON 4205U - 1.80GHz', 'ativo'),
(467, 'INTEL CELERON 4305UE - 2.00GHz', 'ativo'),
(468, 'INTEL CELERON 5305U - 2.30GHz', 'ativo'),
(469, 'INTEL CELERON 5205U - 1.90GHz', 'ativo'),
(470, 'INTEL CELERON 6600HE - 2.60GHz', 'ativo'),
(471, 'INTEL CELERON 6305E - 1.80GHz', 'ativo'),
(472, 'INTEL CELERON 7305L - 1.10GHz', 'ativo'),
(473, 'INTEL CELERON N4500 - 1.10GHz', 'ativo'),
(474, 'INTEL CELERON N4505 - 2.00GHz', 'ativo'),
(475, 'INTEL CELERON N5100 - 1.10GHz', 'ativo'),
(476, 'INTEL CELERON N5105 - 2.00GHz', 'ativo'),
(477, 'INTEL CELERON N6211 - 1.20GHz', 'ativo'),
(478, 'INTEL CELERON N4020 - 1.10GHz', 'ativo'),
(479, 'INTEL CELERON N4120 - 1.10GHz', 'ativo'),
(480, 'INTEL CELERON N3350E - 1.10GHz', 'ativo'),
(481, 'INTEL CELERON N4000 - 1.10GHz', 'ativo'),
(482, 'INTEL CELERON N4100 - 1.10GHz', 'ativo'),
(483, 'INTEL CELERON N3350 - 1.10GHz', 'ativo'),
(484, 'INTEL CELERON N3450 - 1.10GHz', 'ativo'),
(485, 'INTEL CELERON N3010 - 1.04GHz', 'ativo'),
(486, 'INTEL CELERON N3060 - 1.60GHz', 'ativo'),
(487, 'INTEL CELERON N3160 - 1.60GHz', 'ativo'),
(488, 'INTEL CELERON N3000 - 1.04GHz', 'ativo'),
(489, 'INTEL CELERON N3050 - 1.60GHz', 'ativo'),
(490, 'INTEL CELERON N3150 - 1.60GHz', 'ativo'),
(491, 'INTEL CELERON N2808 - 1.58GHz', 'ativo'),
(492, 'INTEL CELERON N2840 - 2.16GHz', 'ativo'),
(493, 'INTEL CELERON N2940 - 1.83GHz', 'ativo'),
(494, 'INTEL CELERON N2807 - 1.58GHz', 'ativo'),
(495, 'INTEL CELERON N2830 - 2.16GHz', 'ativo'),
(496, 'INTEL CELERON N2930 - 1.83GHz', 'ativo'),
(497, 'INTEL CELERON N2806 - 1.60GHz', 'ativo'),
(498, 'INTEL CELERON N2815 - 1.86GHz', 'ativo'),
(499, 'INTEL CELERON N2820 - 2.13GHz', 'ativo'),
(500, 'INTEL CELERON N2920 - 1.86GHz', 'ativo'),
(501, 'INTEL CELERON N2805 - 1.46GHz', 'ativo'),
(502, 'INTEL CELERON N2810 - 2.00GHz', 'ativo'),
(503, 'INTEL CELERON N2910 - 1.60GHz', 'ativo'),
(504, 'INTEL CELERON J6412 - 2.00GHz', 'ativo'),
(505, 'INTEL CELERON J6413 - 1.80GHz', 'ativo'),
(506, 'INTEL CELERON J4025 - 2.00GHz', 'ativo'),
(507, 'INTEL CELERON J4125 - 2.00GHz', 'ativo'),
(508, 'INTEL CELERON J3355E - 2.00GHz', 'ativo'),
(509, 'INTEL CELERON J3455E - 1.50GHz', 'ativo'),
(510, 'INTEL CELERON J4005 - 2.00GHz', 'ativo'),
(511, 'INTEL CELERON J4105 - 1.50GHz', 'ativo'),
(512, 'INTEL CELERON J3355 - 2.00GHz', 'ativo'),
(513, 'INTEL CELERON J3455 - 1.50GHz', 'ativo'),
(514, 'INTEL CELERON J3060 - 1.60GHz', 'ativo'),
(515, 'INTEL CELERON J3160 - 1.60GHz', 'ativo'),
(516, 'INTEL CELERON J1800 - 2.41GHz', 'ativo'),
(517, 'INTEL CELERON J1900 - 2.00GHz', 'ativo'),
(518, 'INTEL CELERON J1750 - 2.41GHz', 'ativo'),
(519, 'INTEL CELERON J1850 - 2.00GHz', 'ativo'),
(520, 'INTEL CELERON G5905 - 3.50GHz', 'ativo'),
(521, 'INTEL CELERON G5905T - 3.30GHz', 'ativo'),
(522, 'INTEL CELERON G5925 - 3.60GHz', 'ativo'),
(523, 'INTEL CELERON G5900 - 3.40GHz', 'ativo'),
(524, 'INTEL CELERON G5900E - 3.20GHz', 'ativo'),
(525, 'INTEL CELERON G5900T - 3.20GHz', 'ativo'),
(526, 'INTEL CELERON G5900TE - 3.00GHz', 'ativo'),
(527, 'INTEL CELERON G5920 - 3.50GHz', 'ativo'),
(528, 'INTEL CELERON G4930E - 2.40GHz', 'ativo'),
(529, 'INTEL CELERON G4932E - 1.90GHz', 'ativo'),
(530, 'INTEL CELERON G4930 - 3.20GHz', 'ativo'),
(531, 'INTEL CELERON G4930T - 3.00GHz', 'ativo'),
(532, 'INTEL CELERON G4950 - 3.30GHz', 'ativo'),
(533, 'INTEL CELERON G4900 - 3.10GHz', 'ativo'),
(534, 'INTEL CELERON G4900T - 2.90GHz', 'ativo'),
(535, 'INTEL CELERON G4920 - 3.20GHz', 'ativo'),
(536, 'INTEL CELERON G3930E - 2.90GHz', 'ativo'),
(537, 'INTEL CELERON G3930TE - 2.70GHz', 'ativo'),
(538, 'INTEL CELERON G3930 - 2.90GHz', 'ativo'),
(539, 'INTEL CELERON G3930T - 2.70GHz', 'ativo'),
(540, 'INTEL CELERON G3950 - 3.00GHz', 'ativo'),
(541, 'INTEL CELERON G3900E - 2.40GHz', 'ativo'),
(542, 'INTEL CELERON G3902E - 1.60GHz', 'ativo'),
(543, 'INTEL CELERON G3900 - 2.80GHz', 'ativo'),
(544, 'INTEL CELERON G3900T - 2.60GHz', 'ativo'),
(545, 'INTEL CELERON G3900TE - 2.30GHz', 'ativo'),
(546, 'INTEL CELERON G3920 - 2.90GHz', 'ativo'),
(547, 'INTEL CELERON G1840 - 2.80GHz', 'ativo'),
(548, 'INTEL CELERON G1840T - 2.50GHz', 'ativo'),
(549, 'INTEL CELERON G1850 - 2.90GHz', 'ativo'),
(550, 'INTEL CELERON G1820TE - 2.20GHz', 'ativo'),
(551, 'INTEL CELERON G1820 - 2.70GHz', 'ativo'),
(552, 'INTEL CELERON G1820T - 2.40GHz', 'ativo'),
(553, 'INTEL CELERON G1830 - 2.80GHz', 'ativo'),
(554, 'INTEL CELERON G1620T - 2.40GHz', 'ativo'),
(555, 'INTEL CELERON G1630 - 2.80GHz', 'ativo'),
(556, 'INTEL CELERON G1610 - 2.60GHz', 'ativo'),
(557, 'INTEL CELERON G1610T - 2.30GHz', 'ativo'),
(558, 'INTEL CELERON G1620 - 2.70GHz', 'ativo'),
(559, 'INTEL 2 DUO E7300 2.6GHz', 'ativo'),
(560, 'INTEL 2140 1.60GHz', 'ativo'),
(561, 'INTEL ATOM D425 - 1.80GHz', 'ativo'),
(562, 'INTEL ATOM D510 - 1.66GHz', 'ativo'),
(563, 'INTEL ATOM N550 - 1.50GHz', 'ativo'),
(564, 'INTEL CORE 2 - 2.40GHz', 'ativo'),
(565, 'INTEL CORE 2 4400 - 2.00GHz', 'ativo'),
(566, 'INTEL CORE 2 6300 - 1.86GHz', 'ativo'),
(567, 'INTEL CORE 2 DUO - 2.4GHz', 'ativo'),
(568, 'INTEL CORE 2 DUO - 2.20GHz', 'ativo'),
(569, 'INTEL CORE 2 DUO - 2.4GHz', 'ativo'),
(570, 'INTEL CORE 2 DUO E2200 - 2.2GHz', 'ativo'),
(571, 'INTEL CORE 2 DUO E4500 - 2.20GHz', 'ativo'),
(572, 'INTEL CORE 2 DUO E4500 - 2.2GHz', 'ativo'),
(573, 'INTEL CORE 2 DUO E4600 - 2.40GHz', 'ativo'),
(574, 'INTEL CORE 2 DUO E4700 - 2.60GHz', 'ativo'),
(575, 'INTEL CORE 2 DUO E6550 - 2.33GHz', 'ativo'),
(576, 'INTEL CORE 2 DUO E6750 - 2.66GHz', 'ativo'),
(577, 'INTEL CORE 2 DUO E7200 - 2.53GHz', 'ativo'),
(578, 'INTEL CORE 2 DUO E7300 - 2.66GHz', 'ativo'),
(579, 'INTEL CORE 2 DUO E7400 - 2.55GHz', 'ativo'),
(580, 'INTEL CORE 2 DUO E7400 - 2.80GHz', 'ativo'),
(581, 'INTEL CORE 2 DUO E7500 - 2.93GHz', 'ativo'),
(582, 'INTEL CORE 2 DUO E8200 - 2.6GHz', 'ativo'),
(583, 'INTEL CORE 2 DUO E8400 - 3.00GHz', 'ativo'),
(584, 'INTEL CORE 2 DUO T5450 - 1.66GHz', 'ativo'),
(585, 'INTEL CORE 2 DUO T7700 - 2.40GHz', 'ativo'),
(586, 'INTEL CORE 2 QUAD - 2.4GHz', 'ativo'),
(587, 'INTEL CORE 2 QUAD Q6600 - 2.40GHz', 'ativo'),
(588, 'INTEL CORE 2 QUAD Q8200 - 2.33GHz', 'ativo'),
(589, 'INTEL CORE 2 QUAD Q8300 - 2.50GHz', 'ativo'),
(590, 'INTEL CORE 2 QUAD Q8400 - 2.66GHz', 'ativo'),
(591, 'INTEL CORE 2 QUAD Q9550 - 2.83GHz', 'ativo'),
(592, 'INTEL CORE DUO - 2.53GHz', 'ativo'),
(593, 'INTEL CORE DUO B400 - 3.00GHz', 'ativo'),
(594, 'INTEL CORE DUO E4500 - 2.200GHz', 'ativo'),
(595, 'INTEL CORE DUO E7500 - 2.93GHz', 'ativo'),
(596, 'INTEL CORE E6550 - 2.33GHz', 'ativo'),
(597, 'INTEL CORE I3 - 10100 3.60GHz', 'ativo'),
(598, 'INTEL CORE I3 - 2100 - 3.10GHz', 'ativo'),
(599, 'INTEL CORE I3 - 2105 - 3.10GHz', 'ativo'),
(600, 'INTEL CORE I3 - 2120 - 3.30GHz', 'ativo'),
(601, 'INTEL CORE I3 - 2130 - 3.40GHz', 'ativo'),
(602, 'INTEL CORE I3 - 3.0GHz', 'ativo'),
(603, 'INTEL CORE I3 - 3220 - 3.30GHz', 'ativo'),
(604, 'INTEL CORE I3 - 3240 - 3.40GHz', 'ativo'),
(605, 'INTEL CORE I3 - 3250 - 3.50GHz', 'ativo'),
(606, 'INTEL CORE I3 - 4150 - 3.50GHz', 'ativo'),
(607, 'INTEL CORE I3 - 4160 - 3.60GHz', 'ativo'),
(608, 'INTEL CORE I3 - 4170 - 3.70GHz', 'ativo'),
(609, 'INTEL CORE I3 - 530 - 2.93GHz', 'ativo'),
(610, 'INTEL CORE I3 - 540 - 3.07GHz', 'ativo'),
(611, 'INTEL CORE I3 - 550 - 3.20GHz', 'ativo'),
(612, 'INTEL CORE I3 - 6100U - 2.30GHz', 'ativo'),
(613, 'INTEL CORE I3 - 7100 - 3.90GHz', 'ativo'),
(614, 'INTEL CORE I3 - 7100U - 2.40GHz', 'ativo'),
(615, 'INTEL CORE I3 - 7350K - 4.20GHz', 'ativo'),
(616, 'INTEL CORE I3 - 8100 - 3.60GHz', 'ativo'),
(617, 'INTEL CORE I3 - M 370 - 2.40GHz', 'ativo'),
(618, 'INTEL CORE I5 - 10210 - 1.60GHz', 'ativo'),
(619, 'INTEL CORE I5 - 12400 - 2.50GHz', 'ativo'),
(620, 'INTEL CORE I5 - 2300 - 2.80GHz', 'ativo'),
(621, 'INTEL CORE I5 - 2310 - 2.90GHz', 'ativo'),
(622, 'INTEL CORE I5 - 2320 - 3.00GHz', 'ativo'),
(623, 'INTEL CORE I5 - 2400 - 3.10GHz', 'ativo'),
(624, 'INTEL CORE I5 - 2500 - 3.30GHz', 'ativo'),
(625, 'INTEL CORE I5 - 2537M - 1.40GHz', 'ativo'),
(626, 'INTEL CORE I5 - 3.20GHz', 'ativo'),
(627, 'INTEL CORE I5 - 3230M - 2.60GHz', 'ativo'),
(628, 'INTEL CORE I5 - 3330 - 3.00GHz', 'ativo'),
(629, 'INTEL CORE I5 - 3330S - 2.70GHz', 'ativo'),
(630, 'INTEL CORE I5 - 3470 - 3.20GHz', 'ativo'),
(631, 'INTEL CORE I5 - 3470S - 2.90GHz', 'ativo'),
(632, 'INTEL CORE I5 - 3570 - 3.40GHz', 'ativo'),
(633, 'INTEL CORE I5 - 4430 - 3.00GHz', 'ativo'),
(634, 'INTEL CORE I5 - 4440 - 3.10GHz', 'ativo'),
(635, 'INTEL CORE I5 - 4440S - 2.80GHz', 'ativo'),
(636, 'INTEL CORE I5 - 4460 - 3.20GHz', 'ativo'),
(637, 'INTEL CORE I5 - 4460S - 2.90GHz', 'ativo'),
(638, 'INTEL CORE I5 - 4570 - 3.20GHz', 'ativo'),
(639, 'INTEL CORE I5 - 4590 - 3.30GHz', 'ativo'),
(640, 'INTEL CORE I5 - 4690T - 2.50GHz', 'ativo'),
(641, 'INTEL CORE I5 - 5200U - 2.20GHz', 'ativo'),
(642, 'INTEL CORE I5 - 6400 - 2.70GHz', 'ativo'),
(643, 'INTEL CORE I5 - 650 - 3.20GHz', 'ativo'),
(644, 'INTEL CORE I5 - 7400 - 3.00GHz', 'ativo'),
(645, 'INTEL CORE I5 - 750 - 2.67GHz', 'ativo'),
(646, 'INTEL CORE I5 - 7500 - 3.40GHz', 'ativo'),
(647, 'INTEL CORE I5 - 760 - 2.80GHz', 'ativo'),
(648, 'INTEL CORE I5 - 8400 - 4.00GHz', 'ativo'),
(649, 'INTEL CORE I5 - 9400 - 2.90GHz', 'ativo'),
(650, 'INTEL CORE I5 - 9400 - 4.10GHz', 'ativo'),
(651, 'INTEL CORE I5 - 9500T - 2.20GHz', 'ativo'),
(652, 'INTEL CORE I7 - 10700K - 3.80GHz', 'ativo'),
(653, 'INTEL CORE I7 - 11700 - 4.90GHz', 'ativo'),
(654, 'INTEL CORE I7 - 2600 - 3.40GHz', 'ativo'),
(655, 'INTEL CORE I7 - 4790 - 3.60GHz', 'ativo'),
(656, 'INTEL CORE I7 - 4790S - 3.20GHz', 'ativo'),
(657, 'INTEL CORE I7 - 6700 - 3.40GHz', 'ativo'),
(658, 'INTEL CORE I7 - 7700 - 3.60GHz', 'ativo'),
(659, 'INTEL CORE I7 - 870 - 2.93GHz', 'ativo'),
(660, 'INTEL CORE I7 - 9700 - 3.00GHz', 'ativo'),
(661, 'INTEL CORE I7 - 9700F - 4.70GHz', 'ativo'),
(662, 'INTEL DUAL CORE - 1.86GHz', 'ativo'),
(663, 'INTEL DUAL CORE - 2.13GHz', 'ativo'),
(664, 'INTEL DUAL CORE - 2.60GHz', 'ativo'),
(665, 'INTEL DUAL CORE - 3.00GHz', 'ativo'),
(666, 'INTEL DUAL CORE - E2220 - 2.40GHz', 'ativo'),
(667, 'INTEL DUAL CORE 2 4300 - 1.8GHz', 'ativo'),
(668, 'INTEL DUAL CORE E 5300', 'ativo'),
(669, 'INTEL DUAL E2220 - 2.40GHz', 'ativo'),
(670, 'INTEL G630 - 2.70GHz', 'ativo'),
(671, 'INTEL GENUINE 2140 - 1.60GHz', 'ativo'),
(672, 'INTEL PENTIUM DUAL - 1.60GHz', 'ativo'),
(673, 'INTEL PENTIUM DUAL - 1.80GHz', 'ativo'),
(674, 'INTEL PENTIUM DUAL - 3.4GHz', 'ativo'),
(675, 'INTEL PENTIUM DUAL CORE E5200 - 2.50GHz', 'ativo'),
(676, 'INTEL PENTIUM DUAL CORE E5300 - 2.60GHz', 'ativo'),
(677, 'INTEL PENTIUM DUAL CORE E5700 - 3.00GHz', 'ativo'),
(678, 'INTEL PENTIUM DUAL CORE - 1.8GHz', 'ativo'),
(679, 'INTEL PENTIUM DUAL CORE - 2.00GHz', 'ativo'),
(680, 'INTEL PENTIUM DUAL CORE 2140 - 1.60GHz', 'ativo'),
(681, 'INTEL PENTIUM DUAL CORE E2200 - 2.20GHz', 'ativo'),
(682, 'INTEL PENTIUM DUAL CORE E5200 - 2.50GHz', 'ativo'),
(683, 'INTEL PENTIUM DUAL CORE E5300 - 2.60GHz', 'ativo'),
(684, 'INTEL PENTIUM DUAL CORE E5300Q - 2.60GHz', 'ativo'),
(685, 'INTEL PENTIUM DUAL CORE E5700 - 3.00GHz', 'ativo'),
(686, 'INTEL PENTIUM DUAL CORE E5800 - 3.20GHz', 'ativo'),
(687, 'INTEL PENTIUM DUAL E2160 - 1.80GHz', 'ativo'),
(688, 'INTEL PENTIUM DUAL E2180 - 2.00GHz', 'ativo'),
(689, 'INTEL PENTIUM DUAL E2200 - 2.20GHz', 'ativo'),
(690, 'INTEL PENTIUM DUAL E2220Q - 240GHz', 'ativo'),
(691, 'INTEL PENTIUM DUAL CORE E5200 - 2.50GHz', 'ativo'),
(692, 'INTEL PENTIUM DUAL CORE E5300 - 2.60GHz', 'ativo'),
(693, 'INTEL PENTIUM DUAL CORE E5400 - 2.70GHz', 'ativo'),
(694, 'INTEL PENTIUM DUAL CORE E5700 - 3.00GHz', 'ativo'),
(695, 'INTEL PENTIUM DUAL CORE E5800 - 3.20GHz', 'ativo'),
(696, 'INTEL PENTIUM DUAL CORE T4400 - 2.20GHz', 'ativo'),
(697, 'INTEL PENTIUM DUAL CORE T4500 - 2.30GHz', 'ativo'),
(698, 'INTEL PENTIUM E2180 - 2.00GHz', 'ativo'),
(699, 'INTEL PENTIUM E550 - 2.80GHz', 'ativo'),
(700, 'INTEL PENTIUM F - 3.06GHz', 'ativo'),
(701, 'INTEL PENTIUM G2020 - 2.90GHz', 'ativo'),
(702, 'INTEL PENTIUM G2030 - 3.00GHz', 'ativo'),
(703, 'INTEL PENTIUM G2120 - 3.10GHz', 'ativo'),
(704, 'INTEL PENTIUM G3220 - 3.00GHz', 'ativo'),
(705, 'INTEL PENTIUM G4400 - 3.30GHz', 'ativo'),
(706, 'INTEL PENTIUM G620 - 2.60GHz', 'ativo'),
(707, 'INTEL PENTIUM G630 - 2.70GHz', 'ativo'),
(708, 'INTEL PENTIUM G640 - 2.80GHz', 'ativo'),
(709, 'INTEL PENTIUM G850 - 2.90GHz', 'ativo'),
(710, 'INTEL PENTIUN DUAL CORE E 5300 - 2.6GHz', 'ativo'),
(711, 'INTEL PENTIUN G3420 - 3.20GHz', 'ativo'),
(712, 'INTEL QUAD CORE - 2.66GHz', 'ativo'),
(713, 'INTEL QUAD CORE E8400 - 3.00GHz', 'ativo'),
(714, 'INTEL QUAD Q9300 - 2.50GHz', 'ativo'),
(715, 'INTEL XEON - 3.2GHz', 'ativo'),
(716, 'INTEL XEON 5150 - 2.66GHz', 'ativo'),
(717, 'INTEL XEON E5620 - 2.40GHz', 'ativo'),
(718, 'INTEL XEON E5649 - 2.53GHz', 'ativo'),
(719, 'INTEL XEON ES620 - 2.40GHz', 'ativo'),
(720, 'INTEL XEON W350 - 3.30GHz', 'ativo'),
(721, 'INTEL XEON W3503 - 2.40GHz', 'ativo'),
(722, 'INTEL XEON X3220 - 2.40GHz', 'ativo'),
(723, 'INTEL XEON X5680 - 3.33GHz', 'ativo'),
(724, 'MACINTOSH G3 350', 'ativo'),
(725, 'MACINTOSHG3 350', 'ativo'),
(726, 'RYZEN 7 PRO 57500G', 'ativo');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Índices de tabela `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`idComputador`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`),
  ADD KEY `idTipoProcessador` (`idTipoProcessador`);

--
-- Índices de tabela `conserto`
--
ALTER TABLE `conserto`
  ADD PRIMARY KEY (`idConserto`),
  ADD KEY `idComputador` (`idComputador`),
  ADD KEY `idImpressora` (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices de tabela `divisao`
--
ALTER TABLE `divisao`
  ADD PRIMARY KEY (`idDivisao`);

--
-- Índices de tabela `entraMaterial`
--
ALTER TABLE `entraMaterial`
  ADD PRIMARY KEY (`idEntMat`),
  ADD KEY `idMaterial` (`idMaterial`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD KEY `idCargo` (`idCargo`),
  ADD KEY `idAcesso` (`idAcesso`);

--
-- Índices de tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`idHistorico`),
  ADD KEY `idComputador` (`idComputador`),
  ADD KEY `idImpressora` (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices de tabela `impressoras`
--
ALTER TABLE `impressoras`
  ADD PRIMARY KEY (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`);

--
-- Índices de tabela `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idMaterial`);

--
-- Índices de tabela `modeloImpressora`
--
ALTER TABLE `modeloImpressora`
  ADD PRIMARY KEY (`idModelo`);

--
-- Índices de tabela `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`idMonitor`),
  ADD KEY `idComputador` (`idComputador`);

--
-- Índices de tabela `saiMaterial`
--
ALTER TABLE `saiMaterial`
  ADD PRIMARY KEY (`idSaiMat`),
  ADD KEY `idMaterial` (`idMaterial`),
  ADD KEY `idConserto` (`idConserto`),
  ADD KEY `idSetor` (`idSetor`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- Índices de tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`idSetor`),
  ADD KEY `idDivisao` (`idDivisao`);

--
-- Índices de tabela `tipoAcesso`
--
ALTER TABLE `tipoAcesso`
  ADD PRIMARY KEY (`idAcesso`);

--
-- Índices de tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  ADD PRIMARY KEY (`idTipoProcessador`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT de tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  MODIFY `idTipoProcessador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=727;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `computador`
--
ALTER TABLE `computador`
  ADD CONSTRAINT `computador_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `computador_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`),
  ADD CONSTRAINT `computador_ibfk_3` FOREIGN KEY (`idTipoProcessador`) REFERENCES `tipoProcessadores` (`idTipoProcessador`);

--
-- Restrições para tabelas `conserto`
--
ALTER TABLE `conserto`
  ADD CONSTRAINT `conserto_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`),
  ADD CONSTRAINT `conserto_ibfk_2` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`),
  ADD CONSTRAINT `conserto_ibfk_3` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Restrições para tabelas `entraMaterial`
--
ALTER TABLE `entraMaterial`
  ADD CONSTRAINT `entraMaterial_ibfk_1` FOREIGN KEY (`idMaterial`) REFERENCES `material` (`idMaterial`),
  ADD CONSTRAINT `entraMaterial_ibfk_2` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Restrições para tabelas `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`),
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`idAcesso`) REFERENCES `tipoAcesso` (`idAcesso`);

--
-- Restrições para tabelas `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`),
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`),
  ADD CONSTRAINT `historico_ibfk_3` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Restrições para tabelas `impressoras`
--
ALTER TABLE `impressoras`
  ADD CONSTRAINT `impressoras_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `impressoras_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`);

--
-- Restrições para tabelas `monitor`
--
ALTER TABLE `monitor`
  ADD CONSTRAINT `monitor_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`);

--
-- Restrições para tabelas `saiMaterial`
--
ALTER TABLE `saiMaterial`
  ADD CONSTRAINT `saiMaterial_ibfk_1` FOREIGN KEY (`idMaterial`) REFERENCES `material` (`idMaterial`),
  ADD CONSTRAINT `saiMaterial_ibfk_2` FOREIGN KEY (`idConserto`) REFERENCES `conserto` (`idConserto`),
  ADD CONSTRAINT `saiMaterial_ibfk_3` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`),
  ADD CONSTRAINT `saiMaterial_ibfk_4` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Restrições para tabelas `setor`
--
ALTER TABLE `setor`
  ADD CONSTRAINT `setor_ibfk_1` FOREIGN KEY (`idDivisao`) REFERENCES `divisao` (`idDivisao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
