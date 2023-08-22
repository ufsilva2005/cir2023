-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 22/08/2023 às 11:44
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
  `sistemaOpera` varchar(20) DEFAULT NULL,
  `modelMaquina` varchar(50) DEFAULT NULL,
  `tipProcessador` varchar(100) DEFAULT NULL,
  `memoria` varchar(10) DEFAULT NULL,
  `numIp` varchar(15) DEFAULT NULL,
  `numMac` varchar(17) DEFAULT NULL,
  `capHD` varchar(10) DEFAULT NULL,
  `statusComp` varchar(7) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idSetor` int(11) DEFAULT NULL
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
(4, 'ULISSES FERREIRA DA SILVA', 'ativo', 'ufs', '$2y$12$wjebX3mADnU33tCmsD5q3e00yiPIwEuS/TBm2hmF6TVx6RO027Mf.', '2023-05-22', '0000-00-00', 3, 8);

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
(1, '../historico/hist-Imp1D20230807h160905F2.txt', '2023-08-07', 'ULISSES FERREIRA DA SILVA', NULL, 1, 2),
(2, '../historico/hist-Imp1D20230807h160948F2.txt', '2023-08-07', 'ULISSES FERREIRA DA SILVA', NULL, 1, 2),
(3, '../historico/hist-Imp1D20230809h124859F4.txt', '2023-08-09', 'ULISSES FERREIRA DA SILVA', NULL, 1, 4),
(4, '../historico/hist-Imp1D20230809h125055F4.txt', '2023-08-09', 'ULISSES FERREIRA DA SILVA', NULL, 1, 4),
(5, '../historico/hist-Imp1D20230809h125133F4.txt', '2023-08-09', 'ULISSES FERREIRA DA SILVA', NULL, 1, 4),
(6, '../historico/hist-Imp1D20230809h125137F4.txt', '2023-08-09', 'ULISSES FERREIRA DA SILVA', NULL, 1, 4);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `impressoras`
--

INSERT INTO `impressoras` (`idImpressora`, `nomeImpressora`, `numSerie`, `ipImpressora`, `macImpressora`, `tipoToner`, `statusImpressora`, `conexaoImp`, `modeloImpressora`, `dataCadastro`, `respCadastro`, `dataAltCadastro`, `respAltCadastro`, `obsImpressora`, `idFuncionario`, `idSetor`) VALUES
(1, 'prnmanut', 'R4P2X12492', '10.13.10.33', '00:17:C8:E7:FC:23', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-08-07', 'ULISSES FERREIRA DA SILVA', 'TESTE', 2, 56),
(2, 'prnalmox', 'R4P2X12499', '10.3.0.21', '00:17:C8:E7:FC:77', 28, 'ativo', 'Usb', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-08-01', 'ULISSES FERREIRA DA SILVA', 'TESTE', 2, 49),
(3, '', 'R4P2X12489', '', '', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 50),
(4, 'prncti13', 'R4P8917950', '10.131.131.22', '00:17:C8:6B:DD:0C', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 51),
(5, 'prnalmoxpat', 'R4P2X12491', '10.30.30.23', '00:17:C8:E7:FC:42', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 32),
(6, 'prndermato2', 'R4P2X12501', '10.50.50.26', '00:17:C8:E7:FC:58', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 52),
(7, 'prnnir', 'R4P9429137', '10.20.20.22', '00:17:C8:70:95:AF', 28, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 53),
(8, 'prncirgeral', 'X3BK007496', '10.110.110.23', '9C:AE:D3:B4:3C:27', 29, 'ativo', 'Rede', 6, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 48),
(9, '', 'AK5C008745A0', '', '', 3, 'ativo', 'Rede', 4, '2023-06-02', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 47),
(10, 'prnanat', 'AK86043246', '10.0.0.21', '00:25:36:61:23:1C', 31, 'ativo', 'Rede', 5, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '2023-06-19', 'ULISSES FERREIRA DA SILVA', 'ACERTO DE DADOS', 4, 54),
(11, 'prnanat2', NULL, '10.0.0.22', '30:05:5C:8A:6A:C7', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(12, 'prnsintu', NULL, '10.0.0.23', '00:17:C8:6B:FE:B5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(13, 'prnlabmult2', NULL, '10.0.0.24', '00:25:36:EE:10:E0', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(14, 'prnengclin', NULL, '10.0.0.25', '00:25:36:EE:10:E0', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(15, 'prnpadi', NULL, '10.1.0.21', '00:25:36:EE:44:97', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(16, 'prnlabimrm', NULL, '10.1.0.22', '1C:C1:DE:34:AE:51', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(17, 'prntomo', NULL, '10.1.0.23', '00:80:91:BA:C4:9B', NULL, 'ativo', 'Rede', 7, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(18, 'prnpetscan', NULL, '10.1.0.24', '00:80:91:AC:27:7C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(19, 'prnnuclear', NULL, '10.1.0.25', '00:17:A4:8F:19:A1', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(20, 'prnlaudorm', NULL, '10.1.0.26', '00:25:36:EE:78:C9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(21, 'prnfarma', NULL, '10.1.0.27', '00:25:36:EE:44:25', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(22, 'prnraiox', NULL, '10.1.0.28', '00:25:36:E1:1E:5C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(23, 'prnlbfarm', NULL, '10.1.0.29', '00:25:36:EE:C4:80', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(24, 'prnradiofarm', NULL, '10.1.0.30', '00:25:36:EE:44:8B', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(25, 'prncoordpi', NULL, '10.1.0.31', '00:25:36:11:0A:E5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(26, 'prncomplexo', NULL, '10.1.0.32', '00:80:91:AC:25:20', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(27, 'prncintilografia', NULL, '10.1.0.33', '00:25:36:EE:21:EA', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(28, 'prnradioterapia', NULL, '10.1.10.21', '00:80:91:AC:23:AB', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(29, 'prnradioterap', NULL, '10.1.10.22', '00:25:36:A1:E2:81', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(30, 'prncentrmarc', 'AK89033050', '10.10.10.21', '00:80:91:BA:C5:B2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(31, 'prnadmin', NULL, '10.10.10.22', '00:80:91:AC:27:9A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(32, 'prnsermat4', NULL, '10.10.10.23', '00:25:36:61:23:8C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(33, 'prnatec', NULL, '10.10.10.24', '00:25:36:EE:78:73', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(34, 'prnouvidoria', NULL, '10.10.10.25', '00:80:91:B0:AD:40', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(35, 'prnchefamb', NULL, '10.10.10.26', '00:80:91:AB:7E:94', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(36, 'prnnir', NULL, '10.10.10.27', '00:80:91:AC:25:75', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(37, 'prnatec2', NULL, '10.10.10.29', '00:80:91:AF:45:5D', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(38, 'prnfarmamb', NULL, '10.10.10.30', '00:25:36:EE:44:FF', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(39, 'prnlicitacao', NULL, '10.10.10.31', '00:80:91:BA:C5:8A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(40, 'prncpl', NULL, '10.10.10.32', '00:80:91:BA:C4:E2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(41, 'prncmrchef', NULL, '10.10.10.33', '00:25:36:BE:E0:D1', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(42, 'prnassejuri', NULL, '10.10.10.34', '00:80:91:B8:E2:86', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(43, 'prncmfr', NULL, '10.10.20.21', '00:25:36:EE:C4:F0', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(44, 'prncmr', NULL, '10.10.20.22', '00:80:91:AC:68:47', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, 'fisioterapia_rampa', NULL, NULL),
(45, 'prn10ab', NULL, '10.100.100.21', '00:25:36:CE:4F:8E', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(46, 'prnslenf10b', NULL, '10.100.100.22', '00:25:36:B6:CA:3E', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(47, 'prnposto10b', NULL, '10.100.100.23', NULL, NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(48, 'prn09b-slenf', NULL, '10.100.90.21', '00:25:36:91:1A:40', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(49, 'prn10c', NULL, '10.101.100.21', '00:25:36:91:06:3E', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(50, 'prnposto0c', NULL, '10.101.100.22', '00:25:36:01:6B:21', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(51, 'prnss10', NULL, '10.101.100.23', '00:25:36:91:06:F9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(52, 'prncomeip', NULL, '10.101.100.24', '00:25:36:EE:78:A9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(53, 'prnnpc', NULL, '10.102.100.21', '10:60:4B:4C:65:CE', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(54, NULL, NULL, '10.11.0.23', '00:25:36:EE:F8:48', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(55, 'prnchefraddiag', NULL, '10.11.0.24', '00:25:36:EE:78:25', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(56, 'prncamararx', NULL, '10.11.0.25', '08:00:66:81:98:A6', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(57, 'prnadmemerg', NULL, '10.11.0.26', '00:80:91:B3:E6:96', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(58, 'prnmamalaudo', NULL, '10.11.0.27', '00:25:36:EE:C4:28', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(59, 'prnmamografia', NULL, '10.11.0.28', '00:25:36:76:DA:F7', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(60, 'prntriagem1', NULL, '10.11.10.23', '00:25:36:EE:78:AB', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(61, 'prnsermat2', NULL, '10.11.10.24', '00:17:A4:8F:E9:49', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(62, 'prnsermat3', NULL, '10.11.10.27', '00:25:36:EE:10:50', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(63, 'prnchefamb2', NULL, '10.11.10.29', '00:25:36:BE:F8:90', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(64, 'prncpl', NULL, '10.11.10.30', '00:80:91:BA:C4:E2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(65, 'prnlicitacao', NULL, '10.11.10.32', '00:80:91:BA:C5:8A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(66, 'prndgidt', NULL, '10.11.10.33', '00:80:91:AC:F6:93', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(67, 'prnchefamb', NULL, '10.11.10.34', '00:80:91:AB:7E:94', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(68, 'prnfisio', NULL, '10.11.20.21', '00:25:36:E1:1E:56', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(69, 'prnfisio', NULL, '10.11.20.22', '00:25:36:6E:48:AA', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(70, 'prnfisio2', NULL, '10.11.20.23', '00:25:36:E1:1E:56', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(71, 'prnidtrute1', NULL, '10.110.100.22', '08:00:37:7F:D9:3C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(72, 'prnidtrute2', NULL, '10.110.100.23', '08:00:37:7F:D9:AB', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(73, 'prnorto', NULL, '10.110.100.25', '00:25:36:76:DA:F3', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(74, 'prnneuroc', NULL, '10.110.100.26', '00:25:36:B6:CA:01', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(75, 'prnneuro', NULL, '10.110.100.27', '00:25:36:81:B6:EA', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(76, 'prnvascular', NULL, '10.110.100.28', '00:80:91:B0:41:E7', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(77, 'prnprocto', NULL, '10.110.100.29', '00:25:36:76:79:CA', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(78, 'prnortopedia', NULL, '10.110.100.30', '00:25:36:96:AC:C6', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(79, 'prndivpesq', NULL, '10.110.110.21', '00:80:91:AC:25:BE', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(80, 'prnplastica', NULL, '10.110.110.22', '00:25:36:EE:F8:38', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(81, 'prnuro', NULL, '10.110.110.25', '00:80:91:B0:41:A2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(82, 'prnservonco', NULL, '10.110.110.26', '00:25:36:61:23:4A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(83, 'prnseme', NULL, '10.110.120.21', '00:25:36:91:06:95', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(84, 'prnendocri', NULL, '10.110.90.23', '00:80:91:B0:B6:24', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(85, 'prnclinmed', NULL, '10.110.90.24', NULL, NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(86, 'prnnutro', NULL, '10.110.90.25', '00:80:91:AC:F6:6A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(87, 'prnhepato', NULL, '10.110.90.26', 'A0:B3:CC:98:61:7A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(88, 'prnhepato2', NULL, '10.110.90.27', '00:80:91:AC:63:ED', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(89, 'prncoordfono', NULL, '10.110.90.28', '00:25:36:EE:78:D5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(90, 'prnimuno9', NULL, '10.110.90.29', '00:80:91:78:FA:05', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(91, 'prn9fono', NULL, '10.110.90.30', '00:25:36:EE:44:D5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(92, 'prnlabsono', NULL, '10.111.110.21', 'F4:CE:46:FB:6B:84', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(93, 'prnsono', NULL, '10.111.110.22', '00:25:36:EE:44:17', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(94, 'prnccirurg', NULL, '10.111.120.21', '00:25:36:EE:C4:40', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(95, 'prnccirurg2', NULL, '10.111.120.24', '00:25:36:EE:10:E0', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(96, 'prnsessat', NULL, '10.113.101.21', '00:80:91:AC:27:36', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(97, 'prnneuroamb', NULL, '10.113.101.22', '00:25:36:91:C6:51', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(98, 'prndg', NULL, '10.12.10.21', '00:17:C8:E7:FC:92', NULL, 'ativo', 'Rede', 1, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(99, 'prncolordg', NULL, '10.12.10.22', '00:25:36:8E:78:75', NULL, 'ativo', 'Rede', 2, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(100, 'prnslcchefia', NULL, '10.12.10.23', '00:80:91:BA:C4:DE', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(101, 'prndrhsind', NULL, '10.12.10.24', '00:25:36:EE:44:CB', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(102, 'prncseat', NULL, '10.12.10.26', '00:25:36:11:FA:D5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(103, 'prncolordrh', NULL, '10.12.10.27', '00:25:36:76:25:0B', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(104, 'prncopem', NULL, '10.12.10.28', '00:80:91:BA:C8:05', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(105, 'prnsepag', NULL, '10.12.10.29', '00:80:91:AC:26:80', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(106, 'prndfn', NULL, '10.12.10.30', '00:25:36:E1:1E:0C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(107, 'prndfnorc', NULL, '10.12.10.31', '00:80:91:B9:C8:F1', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(108, 'prndfntes', NULL, '10.12.10.32', '00:25:36:EE:78:19', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(109, 'prnmanutencao', NULL, '10.13.10.22', '00:80:91:AC:F5:3B', NULL, 'ativo', 'Rede', 7, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(110, 'prncir', NULL, '10.13.10.23', '00:80:91:BA:C7:16', NULL, 'ativo', 'Rede', 7, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(111, 'prndag', NULL, '10.13.10.24', '00:80:91:AC:F6:77', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(112, 'prnprot', NULL, '10.13.10.25', '00:25:36:EE:F8:58', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(113, 'prngrafica1', NULL, '10.13.10.26', 'A0:42:3F:37:E1:FE', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(114, 'prngrafica2', NULL, '10.13.10.27', '1C:7D:22:2B:01:69', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(115, 'prngrafica3', NULL, '10.13.10.28', '1C:7D:22:2B:10:55', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(116, 'prngrafica4', NULL, '10.13.10.29', '9C:93:4E:91:25:77', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(117, 'prntelefonia', NULL, '10.13.10.30', '00:25:36:91:06:A5', NULL, 'ativo', 'Rede', 4, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(118, 'prngrafica5', NULL, '10.13.10.31', '00:26:73:80:41:E5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(119, 'prndfnfat', NULL, '10.13.10.32', '00:25:36:61:23:72', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(120, 'prncae', NULL, '10.130.120.22', '00:23:7D:75:A4:30', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(121, 'prnconcurso', NULL, '10.130.120.23', 'A0:B3:CC:98:91:86', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(122, 'prncaepos', NULL, '10.130.120.24', '00:25:36:E1:1E:BA', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(123, 'prncaeres', NULL, '10.130.120.25', '00:80:91:BA:C4:9E', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(124, 'prncaeadm', NULL, '10.130.120.26', '9C:AE:D3:B5:C2:0A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(125, 'prncaegrafica', NULL, '10.130.120.27', '00:26:73:37:10:14', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(126, 'prncaegrafica2', NULL, '10.130.120.28', '00:26:73:2B:C8:B8', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(127, 'prnbiblio2', NULL, '10.130.130.23', '00:21:B7:22:F6:32', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(128, 'prncti13round', NULL, '10.131.131.21', '00:25:36:36:D0:83', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(129, 'prncti03', NULL, '10.131.131.23', '00:25:36:EE:44:5F', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(130, 'prncti02', NULL, '10.131.131.24', '00:25:36:76:39:6B', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(131, 'prncti01', NULL, '10.131.131.25', '00:25:36:B6:CA:1E', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(132, 'prninaloterapia', NULL, '10.131.131.26', '00:25:36:EE:44:BF', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(133, 'prnambtuberc', NULL, '10.140.10.21', '00:25:36:EE:C4:E8', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(134, 'prnamb132', NULL, '10.15.10.21', '00:25:36:91:06:F9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(135, 'prndegsecret', NULL, '10.2.0.21', '00:80:91:AC:F6:82', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(136, 'prnspl', NULL, '10.2.0.22', '00:25:36:76:B9:07', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(137, 'prndegproj', NULL, '10.2.0.23', '00:25:36:8E:78:AD', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(138, 'prndeg2', NULL, '10.2.0.25', '00:25:36:2E:1C:AE', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(139, 'prndegseb', NULL, '10.2.0.26', '00:25:36:EE:11:F2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(140, 'prndegseb2', NULL, '10.2.0.27', '00:80:91:BA:C7:34', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(141, 'prndegsom', NULL, '10.2.0.28', '00:25:36:EE:F8:B0', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(142, 'prnclindor', NULL, '10.20.20.21', 'A0:B3:CC:98:71:65', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(143, 'prnamb224', NULL, '10.20.20.23', '00:25:36:EE:44:2B', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(144, 'prnquimio', NULL, '10.20.20.24', '00:25:36:2E:1C:84', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(145, 'prncolorcir', NULL, '10.201.10.21', '00:25:36:76:25:C7', NULL, 'ativo', 'Rede', 2, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(146, 'prnsintufrj', NULL, '10.205.0.22', '9C:93:4E:16:97:5C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(147, 'prngrafica2', NULL, '10.205.0.23', '00:26:73:B7:43:00', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(148, 'prngrafica2', NULL, '10.205.0.23', '9C:93:4E:54:EC:90', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(149, 'prngrafica', NULL, '10.205.0.24', '00:26:73:6C:AA:A3', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(150, 'prngrafica4', NULL, '10.205.0.25', '1C:7D:22:2B:01:69', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(151, 'prngrafica3', NULL, '10.205.0.26', '00:25:36:81:68:A9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(152, 'prngrafica5', NULL, '10.205.0.27', '1C:7D:22:2B:10:55', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(153, 'prnsaa', NULL, '10.205.10.21', '00:25:36:EE:F8:88', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(154, 'prnsaa10', NULL, '10.205.10.22', '00:25:36:76:DA:33', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(155, 'prnstd', NULL, '10.205.10.24', '00:25:36:76:3A:4C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(156, 'prnsdm', NULL, '10.205.10.25', '00:80:91:B8:29:D2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(157, 'prncoordadmin', NULL, '10.205.10.31', 'A0:B3:CC:98:51:B0', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(158, 'prndrh', NULL, '10.205.10.33', '00:80:91:AC:B9:E5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(159, 'prndfngab', NULL, '10.205.10.35', '00:25:36:EE:F8:66', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(160, 'prnsaachef', NULL, '10.205.10.36', '00:25:36:EE:20:0C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(161, 'prncontroint', NULL, '10.205.10.38', '00:25:36:EE:C4:C0', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(162, 'prndfngabinete', NULL, '10.205.10.39', '00:25:36:EE:44:DF', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(163, 'prnsaa2', NULL, '10.205.10.41', 'A0:B3:CC:98:71:5F', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(164, 'prncpl33', NULL, '10.205.10.42', '00:25:36:B6:CA:01', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(165, 'prnsaa3', NULL, '10.205.10.43', '00:25:36:61:23:6A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(166, 'prntelefonia', NULL, '10.205.10.45', '00:25:36:91:06:A5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(167, 'prnprotocolo', NULL, '10.205.10.47', '00:80:91:77:CB:8F', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(168, 'prnpatrimonio', NULL, '10.3.0.22', '00:80:91:B0:3B:A0', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(169, 'prnlabmult', NULL, '10.3.0.23', 'A0:B3:CC:A1:C3:40', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(170, 'prnzeladoria', NULL, '10.3.0.24', '00:00:74:F2:F2:CD', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(171, 'prnzeladoria2', NULL, '10.3.0.25', '00:80:91:AC:68:9D', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(172, 'prnpatclin', NULL, '10.30.30.21', '00:25:36:61:23:EC', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(173, 'prnpatclin2', NULL, '10.30.30.22', '00:25:36:E1:1E:6A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(174, 'prnfono', NULL, '10.30.30.24', '00:25:36:76:B9:5B', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(175, 'prnhemoter', NULL, '10.30.30.26', '00:80:91:AB:D2:79', NULL, 'ativo', 'Rede', 7, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, 'Hemoterapia-Fracionamento', NULL, NULL),
(176, 'prnrecep', NULL, '10.30.30.27', '00:07:4D:66:E2:02', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(177, 'prnbio', NULL, '10.30.30.28', '00:25:36:EE:78:D9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(178, 'prnmicologia', NULL, '10.30.30.29', '00:25:36:91:C6:7A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(179, 'prnlabcon', NULL, '10.30.30.30', '00:25:36:76:79:73', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(180, 'prnhormonio', NULL, '10.30.30.31', '00:25:36:EE:44:85', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(181, 'prnbiomol', NULL, '10.30.30.32', '00:25:36:B6:CA:6E', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(182, 'prnrehemo', NULL, '10.30.30.36', '00:25:36:76:79:0A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, 'Hemoterapia-Recepcao', NULL, NULL),
(183, 'prnlccmo', NULL, '10.30.40.21', '00:80:91:BA:C4:B7', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(184, 'prnhemato', NULL, '10.30.40.22', '00:25:36:91:89:B4', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(185, 'prnbiocel', NULL, '10.30.40.23', '00:25:36:76:DA:57', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(186, 'prnemerg', NULL, '10.4.0.21', '00:25:36:61:23:5C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(187, 'prnemergsm', NULL, '10.4.0.22', '00:25:36:76:3A:D4', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(188, 'prnemergrcp', NULL, '10.4.0.23', '00:25:36:EE:44:B9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(189, 'prnemercon2', NULL, '10.4.0.24', '00:25:36:EE:F8:84', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(190, 'prnssemerg', NULL, '10.4.0.25', '00:25:36:91:4A:89', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(191, 'prnsicc', NULL, '10.4.0.26', '00:25:36:EE:F8:48', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(192, 'prnurosme', NULL, '10.40.30.21', '00:25:36:2E:1C:2E', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(193, 'prnfarm', NULL, '10.40.40.21', '00:80:91:BA:C7:CA', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(194, 'prncaf', NULL, '10.40.40.22', '00:25:36:EE:78:2D', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(195, 'prncafalmox', NULL, '10.40.40.23', '00:25:36:61:23:94', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(196, 'prndsc', NULL, '10.40.40.24', '00:25:36:61:23:6A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(197, 'prnfarm1', NULL, '10.40.40.25', '00:25:36:B6:CA:F1', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(198, 'prnfarmvig', NULL, '10.40.40.26', '00:25:36:76:B9:3B', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(199, 'prnden', NULL, '10.40.50.21', '00:80:91:AC:25:6C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(200, 'prndengabinete', NULL, '10.40.50.22', '00:80:91:AC:25:32', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(201, 'prncoep', NULL, '10.40.50.23', '00:25:36:E1:1E:E2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(202, 'prndmd', NULL, '10.40.50.24', '00:80:91:AC:F6:9C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(203, 'prndaa', NULL, '10.40.50.26', '00:25:36:E1:1E:BC', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(204, 'prnsuperden', NULL, '10.40.50.27', '00:25:36:EE:44:4B', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(205, 'prnlpc', NULL, '10.40.50.28', '00:80:91:78:FD:FF', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(206, 'prnlpt', NULL, '10.40.60.22', '78:E7:D1:54:3F:22', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(207, 'prnlpct', NULL, '10.40.60.23', 'B4:99:BA:28:31:2D', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(208, 'prnidtpes', NULL, '10.40.60.25', '00:25:36:EE:C4:A8', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(209, 'prnsme', NULL, '10.42.30.21', '00:25:36:61:23:34', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(210, 'prnsme', NULL, '10.42.30.21', '00:25:36:B6:CA:3D', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(211, 'prnsmeprohart1', NULL, '10.42.30.22', '00:1A:4B:F2:3B:BE', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(212, 'prnsmepneumo', NULL, '10.42.30.23', '00:1C:C4:0E:70:F1', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(213, 'prnprohart', NULL, '10.42.30.24', '00:80:91:AB:D4:DD', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(214, 'prnprohart2', NULL, '10.42.30.25', '00:80:91:AC:27:93', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(215, 'prnpneumo', NULL, '10.42.30.26', '00:25:36:91:EA:7F', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(216, 'prnsmeadm', NULL, '10.42.30.27', '00:25:36:81:B6:5A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(217, 'prnantico', NULL, '10.42.30.28', '00:25:36:2E:2E:10', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(218, 'prnsmelaudos', NULL, '10.42.30.29', '00:25:36:EE:78:15', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(219, 'prnprohart3', NULL, '10.42.30.30', '00:25:36:EE:78:AB', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(220, 'prnlcpt', NULL, '10.42.40.21', '00:15:99:6D:9A:61', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(221, 'prngastro', NULL, '10.42.40.22', '00:80:91:AC:F5:3B', NULL, 'ativo', 'Rede', 7, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(222, 'prngastro2', NULL, '10.42.40.24', '00:25:36:61:23:D4', NULL, 'ativo', 'Rede', 5, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(223, 'prnlance', NULL, '10.43.40.21', '00:26:55:71:B8:22', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(224, 'prnlabdip', NULL, '10.43.40.22', '00:25:36:76:79:1C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(225, 'prnlabdip', NULL, '10.43.40.22', '00:25:36:36:D0:43', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(226, 'prnlabmicob', NULL, '10.43.40.24', '00:80:91:AC:28:67', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(227, 'prnlabmicob2', NULL, '10.43.40.25', '00:80:91:BA:C7:F2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(228, 'prnimuno', NULL, '10.43.40.26', '00:25:36:36:5C:16', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(229, 'prnnutro4', NULL, '10.43.40.27', '00:25:36:EE:10:10', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(230, 'prncviral', NULL, '10.43.40.28', '00:25:36:76:79:69', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(231, 'prnlabmicob3', NULL, '10.43.40.29', '00:80:91:AC:28:67', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(232, 'prndip2', NULL, '10.50.50.21', '00:25:36:91:06:C5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(233, 'prndip', NULL, '10.50.50.22', '00:80:91:78:BB:57', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(234, 'prnservsocial', NULL, '10.50.50.23', '00:80:91:AC:25:2A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(235, 'prndermato', NULL, '10.50.50.24', '00:25:36:36:D0:53', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(236, 'prnbrigada', NULL, '10.50.50.25', '00:25:36:36:D0:79', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(237, 'prnrisco', NULL, '10.50.50.27', '00:80:91:76:D1:5C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(238, 'prn05d', NULL, '10.50.50.28', '00:25:36:76:3A:E2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(239, 'prnnutri', NULL, '10.50.50.29', '00:80:91:BA:C4:09', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(240, 'prnseavrhc', NULL, '10.50.50.30', '00:25:36:EE:44:FB', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(241, 'prnteraocup5c', NULL, '10.50.50.31', '00:25:36:76:3A:02', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, 'TerapiaOcupacional', NULL, NULL),
(242, 'prnseav', NULL, '10.50.50.32', '00:80:91:AC:26:94', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(243, 'prnnsp', NULL, '10.50.50.33', '00:25:36:EE:F8:70', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(244, 'prnupc', NULL, '10.51.50.21', '00:80:91:BA:C5:A5', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(245, 'prnupc1', NULL, '10.51.50.22', '00:21:5A:FE:F0:83', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(246, 'prnupc2', NULL, '10.51.50.23', '00:21:5A:FE:80:21', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(247, 'prnupc3', NULL, '10.51.50.24', '10:1F:74:B0:AA:E9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(248, 'prnupc4', NULL, '10.51.50.25', 'AC:E2:D3:42:EB:E1', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(249, 'prnupc5', NULL, '10.51.50.26', 'AC:E2:D3:42:EB:D2', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(250, 'prncpt2', NULL, '10.60.60.21', 'F4:CE:46:E8:10:5A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(251, 'prnonco', NULL, '10.60.60.22', '00:24:81:76:D4:89', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(252, 'prncpt', NULL, '10.60.60.23', '00:80:91:AC:26:E4', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(253, 'prncptledtaes', NULL, '10.60.60.24', '10:60:4B:14:E7:69', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(254, 'prnpcth', NULL, '10.60.60.25', '00:25:36:EE:44:07', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(255, 'prnpsico1', NULL, '10.61.60.21', '00:25:36:EE:F8:28', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(256, 'prn06f', NULL, '10.61.60.22', '00:25:36:61:23:74', NULL, 'ativo', 'Rede', 5, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(257, 'prnpsicomed', NULL, '10.61.60.23', '00:80:91:AC:26:8E', NULL, 'ativo', 'Rede', 7, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(258, 'prnnefro', NULL, '10.70.70.21', '00:25:36:61:23:4A', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(259, 'prnnefrorecep', NULL, '10.70.70.22', '00:25:36:EE:78:CB', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(260, 'prndensi', NULL, '10.70.70.23', '78:AC:C0:89:72:91', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(261, 'prnhemodialise', NULL, '10.70.70.24', '00:25:36:B6:CA:5D', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(262, 'prnnefro2', NULL, '10.70.70.25', '18:60:24:C9:06:F4', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(263, 'prn07a', NULL, '10.70.70.26', '00:25:36:11:FA:F5', NULL, 'ativo', 'Rede', 5, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(264, 'prndensitome', NULL, '10.70.70.27', '00:80:91:78:B9:98', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(265, 'prnnefrosec', NULL, '10.70.70.28', '00:80:91:76:2C:81', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(266, 'prnceparm', NULL, '10.70.70.29', '00:25:36:96:AC:6C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(267, 'prncep', NULL, '10.71.70.21', '00:25:36:91:C6:06', NULL, 'ativo', 'Rede', 4, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(268, 'prnceparm', NULL, '10.71.70.22', '00:25:36:96:AC:6C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(269, 'prnilha08c', NULL, '10.80.80.21', '00:25:36:01:6B:21', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(270, 'prnic', NULL, '10.80.80.22', '00:21:B7:22:F6:C9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(271, 'prnccih', NULL, '10.80.80.23', '00:25:36:61:23:B4', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(272, 'prn08d', NULL, '10.80.80.24', '00:25:36:91:06:3E', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(273, 'prncpl2', NULL, '10.80.80.26', '00:25:36:61:23:0C', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(274, 'prncard', NULL, '10.80.80.27', '00:25:36:EE:F8:F8', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(275, 'prncoronaria', NULL, '10.80.80.29', '00:25:36:36:D0:F9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(276, 'prnss08', NULL, '10.80.80.30', '00:25:36:91:06:F9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(277, 'prncardiaca', NULL, '10.80.80.31', '00:25:36:E1:1E:16', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(278, 'prncoradm', NULL, '10.80.80.32', '00:25:36:2E:82:29', NULL, 'ativo', 'Rede', 5, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(279, 'prn07f', NULL, '10.81.70.21', '00:25:36:EE:44:8B', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(280, 'prntxmedula', NULL, '10.81.80.21', '00:1A:4B:F2:89:14', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(281, 'prn08f', NULL, '10.81.80.22', '00:25:36:91:1A:40', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(282, 'prnleon', NULL, '10.81.80.25', '00:1B:A9:31:7E:42', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(283, 'prncardio', NULL, '10.81.80.26', '00:25:36:E1:1E:26', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(284, 'prnneuroendo', NULL, '10.81.90.22', '00:1B:A9:9F:EB:BA', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(285, 'prnices', NULL, '10.82.80.23', '00:80:91:AC:26:78', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(286, 'prn09c', NULL, '10.90.90.21', '00:25:36:61:23:AC', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(287, 'prnposto09c', NULL, '10.90.90.22', '00:25:36:76:B9:DB', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(288, 'prnss09', NULL, '10.90.90.23', '00:25:36:91:06:F9', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(289, 'prnendocri', NULL, '10.92.90.21', '00:80:91:B0:B6:24', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(290, 'prnclinmed', NULL, '10.92.90.22', '00:80:91:AB:CB:BE', NULL, 'ativo', 'Rede', NULL, '2023-06-19', 'ULISSES FERREIRA DA SILVA', '0000-00-00', NULL, NULL, 4, NULL),
(291, 'PRNRESIDUOS', 'AK8B014256CO', '192.168.100.100', '00:25:36:91:06:7E', 30, 'ativo', 'Usb', 4, '2023-08-01', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 58);

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
(4, 'C005446', 'TONNER Q5949X', '0', '0', 0, 'ativo'),
(5, 'C009062', 'FONTE DE ALIMENTAÇÃO ATX  600W', '0', '0', 0, 'ativo'),
(6, 'C011472', 'FONTE DE ALIMENTAÇÃO ATX DE 400W', '0', '0', 0, 'ativo'),
(7, 'C011684', 'TONNER Q7553A', '0', '0', 0, 'ativo'),
(8, 'C011784', 'TONNER CC530A – PRETO', '0', '0', 0, 'ativo'),
(9, 'C011786', 'TONNER CC532A – AMARELO', '0', '0', 0, 'ativo'),
(10, 'C011787', 'TONNER CC533A – MAGENTA', '0', '0', 0, 'ativo'),
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
(47, 8, '1° andar', '', '', 'DOCUMENTAÇÃO MÉDICA'),
(48, 8, '11° andar', '2803', '', 'SERVIÇO DE CIRURGIA GERAL'),
(49, 7, 'subsolo', '2248', '', 'ALMOXARIFADO CENTRAL'),
(50, 7, '1° andar', '6004', '', 'DIREÇÃO GERAL - GABINETE'),
(51, 8, '13° andar', '', '', 'CTI - GERAL'),
(52, 8, '5° andar', '2580', '', 'SERVIÇO DE DERMATOLOGIA'),
(53, 10, '2° andar', '2288', '', 'NIR'),
(54, NULL, 'subsolo', NULL, NULL, 'ANATOMIA PATOLÓGICA'),
(55, 1, '1° andar', '2895', 'EVANDRO VIEIRA', 'MANUTENÇÃO'),
(56, 1, '1° andar', '2895', 'EVANDRO VIEIRA', 'MANUTENÇÃO'),
(57, 8, '1° andar', '2895', 'EVANDRO VIEIRA', 'MANUTENÇÃO'),
(58, 3, 'subsolo', '', '', 'COMISSÃO DE RESÍDUOS'),
(59, 1, '2° andar', '2895', 'EVANDRO VIEIRA', 'MANUTENÇÃO');

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
  ADD KEY `idSetor` (`idSetor`);

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
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `impressoras`
--
ALTER TABLE `impressoras`
  MODIFY `idImpressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

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
  MODIFY `idSetor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `tipoAcesso`
--
ALTER TABLE `tipoAcesso`
  MODIFY `idAcesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `computador`
--
ALTER TABLE `computador`
  ADD CONSTRAINT `computador_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `computador_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`);

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
