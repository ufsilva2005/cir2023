-- phpMyAdmin SQL Dump
-- version 5.0.4deb2~bpo10+1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29/05/2023 às 20:28
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
(1, 'ativo', 'ANALISTA DE SISTEMA'),
(2, 'ativo', 'TÉCNICO EM INFORMÁTICA'),
(3, 'ativo', 'TÉCNICO EM ELETRÔNICA'),
(4, 'ativo', 'SECRETÁRIA'),
(5, 'ativo', 'CHEFE DE SESSÃO'),
(6, 'ativo', 'COORDENADOR');

-- --------------------------------------------------------

--
-- Estrutura para tabela `compConserto`
--

CREATE TABLE `compConserto` (
  `idConsertoComp` int(11) NOT NULL,
  `dataPedido` date DEFAULT NULL,
  `respPedido` varchar(30) DEFAULT NULL,
  `defeito` varchar(255) DEFAULT NULL,
  `emailEnviado` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `servExecutado` varchar(5) DEFAULT NULL,
  `respFechaPedido` varchar(30) DEFAULT NULL,
  `dataFechaPedido` date DEFAULT NULL,
  `idComputador` int(11) DEFAULT NULL,
  `pedidoFechado` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `computador`
--

CREATE TABLE `computador` (
  `idComputador` int(11) NOT NULL,
  `numCir` int(6) DEFAULT NULL,
  `numPatrimonio` int(11) DEFAULT NULL,
  `numPatReitoria` int(11) DEFAULT NULL,
  `nomeComputador` varchar(20) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
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
  `idLocal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `computador`
--

INSERT INTO `computador` (`idComputador`, `numCir`, `numPatrimonio`, `numPatReitoria`, `nomeComputador`, `datacadastro`, `respCadastro`, `respAltCadastro`, `dataAltCadastro`, `sistemaOpera`, `modelMaquina`, `tipProcessador`, `memoria`, `numIp`, `numMac`, `capHD`, `statusComp`, `obs`, `idLocal`) VALUES
(1, 1989, 34269, 0, 'cir-ufs', '2020-07-24', 'Administrador', '', '0000-00-00', 'LINUX', 'msi', 'Intel Core i5-4690T  2.50GHz', '16 Gb', '10.204.1.18', '4C:CC:6A:31:71:F6', '500 GB', 'ativo', 'MÁQUINA DO ULISSES', 1),
(2, 3558, 0, 2018009015, 'CIR-SUZANA', '2020-07-24', 'Administrador', '', '0000-00-00', 'WINDOWS 7', 'asus - M5A78L-M LX', 'AMD FX-8300 Eight-Core Processor 4 core x86_64', '16 Gb', '10.204.1.41', '2C:FD:A1:C8:52:AB', '1 TB', 'ativo', 'MÁQUINA DA SUZANA', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `divisao`
--

CREATE TABLE `divisao` (
  `idDivisao` int(11) NOT NULL,
  `divisao` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `nomeFuncionario` varchar(50) DEFAULT NULL,
  `statusFuncionario` varchar(8) DEFAULT NULL,
  `login` varchar(25) DEFAULT NULL,
  `senha` varchar(40) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `idCargo` int(11) DEFAULT NULL,
  `idAcesso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nomeFuncionario`, `statusFuncionario`, `login`, `senha`, `dataCadastro`, `dataAltCadastro`, `idCargo`, `idAcesso`) VALUES
(1, 'ULISSES FERREIRA DA SILVA', 'ativo', 'ufsilva', '202cb962ac59075b964b07152d234b70', '2020-06-29', '2020-07-07', 3, 3);

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `impConserto`
--

CREATE TABLE `impConserto` (
  `idConsertoImp` int(11) NOT NULL,
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
(45, 'DMD', '10° andar', '', '', 'SEME'),
(46, 'DMD', '10º Andar', '', '', 'SERVIÇO DE ORTOPEDIA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matComputador`
--

CREATE TABLE `matComputador` (
  `idMatComp` int(11) NOT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `unidade` varchar(20) DEFAULT NULL,
  `quantidade` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `matComputador`
--

INSERT INTO `matComputador` (`idMatComp`, `codigo`, `descricao`, `numSerie`, `unidade`, `quantidade`) VALUES
(1, 'C000384', 'TECLADO USB ABNT2', '0', '0', 0),
(2, 'C000955', 'HD SSD DE 120GB', '0', '0', 0),
(3, 'C004723', 'TONNER 12A', '0', '0', 0),
(4, 'C005446', 'TONNER Q5949X', '0', '0', 0),
(5, 'C009062', 'FONTE DE ALIMENTAÇÃO ATX  600W', '0', '0', 0),
(6, 'C011472', 'FONTE DE ALIMENTAÇÃO ATX DE 400W', '0', '0', 0),
(7, 'C011684', 'TONNER Q7553A', '0', '0', 0),
(8, 'C011784', 'TONNER CC530A – PRETO', '0', '0', 0),
(9, 'C011786', 'TONNER CC532A – AMARELO', '0', '0', 0),
(10, 'C011787', 'TONNER CC533A – MAGENTA', '0', '0', 0),
(11, 'C013659', 'MEMÓRIA 2GB – DDR2', '0', '0', 0),
(12, 'C013713', 'MOUSE ÓPTICO USB', '0', '0', 0),
(13, 'C013947', 'PEN DRIVER 16GB', '0', '0', 0),
(14, 'C015223', 'TONER Q6000 – PRETO', '0', '0', 0),
(15, 'C015224', 'TONER Q6001 – CIANO', '0', '0', 0),
(16, 'C015225', 'TONER Q6002 – AMARELO', '0', '0', 0),
(17, 'C015226', 'TONER Q6003 – MAGENTA', '0', '0', 0),
(18, 'C015606', 'CABO SATA', '0', '0', 0),
(19, 'C016756', 'MOUSEPAD', '0', '0', 0),
(20, 'C017056', 'MEMÓRIA 4GB – DDR3 – 1.333MHZ', '0', '0', 0),
(21, 'C017497', 'FILTRO DE LINHA 6 TOMADAS PADRAO NBR14136', '0', 'UN', 157),
(22, 'C017546', 'PULSEIRA DE IDENTIFICAÇÃO ADULTO', '0', 'UN', 6400),
(23, 'C017564', 'HD SSD DE 480GB', '0', '0', 0),
(24, 'C017573', 'GABINETE 4 BAIAS PADRAO ATX PRETO', '0', '0', 0),
(25, 'P008162', 'MEMÓRIA 8GB – DDR4 – 2.400MHZ', '0', '0', 0),
(26, 'P016897', 'MONITOR DE COMPUTADOR ATE  22 POLEGADAS', '0', '0', 0),
(27, 'P017002', 'COMPUTADOR', '0', '0', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `matImpressora`
--

CREATE TABLE `matImpressora` (
  `idMatComp` int(11) NOT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `numSerie` int(11) DEFAULT NULL,
  `quantidade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
-- Estrutura para tabela `setor`
--

CREATE TABLE `setor` (
  `idSetor` int(11) NOT NULL,
  `idDivisao` int(11) DEFAULT NULL,
  `localizacao` varchar(10) DEFAULT NULL,
  `ramal` varchar(4) DEFAULT NULL,
  `respSetComp` varchar(30) DEFAULT NULL,
  `nomeLocal` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `setor`
--

INSERT INTO `setor` (`idSetor`, `idDivisao`, `localizacao`, `ramal`, `respSetComp`, `nomeLocal`) VALUES
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
(46, 8, '10º Andar', '', '', 'SERVIÇO DE ORTOPEDIA');

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
(1, 'não', 'não', 'não', 'sim', 'não', 'sim', 'sim'),
(2, 'sim', 'sim', 'sim', 'não', 'não', 'não', 'não'),
(3, 'sim', 'sim', 'sim', 'sim', 'sim', 'sim', 'sim'),
(4, 'não', 'não', 'não', 'não', 'sim', 'sim', 'sim'),
(5, 'sim', 'sim', 'sim', 'sim', 'não', 'não', 'não');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Índices de tabela `compConserto`
--
ALTER TABLE `compConserto`
  ADD PRIMARY KEY (`idConsertoComp`),
  ADD KEY `idComputador` (`idComputador`);

--
-- Índices de tabela `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`idComputador`),
  ADD KEY `idLocal` (`idLocal`);

--
-- Índices de tabela `divisao`
--
ALTER TABLE `divisao`
  ADD PRIMARY KEY (`idDivisao`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD KEY `idAcesso` (`idAcesso`),
  ADD KEY `idCargo` (`idCargo`);

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
  ADD PRIMARY KEY (`idConsertoImp`),
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
-- Índices de tabela `matComputador`
--
ALTER TABLE `matComputador`
  ADD PRIMARY KEY (`idMatComp`);

--
-- Índices de tabela `matImpressora`
--
ALTER TABLE `matImpressora`
  ADD PRIMARY KEY (`idMatComp`);

--
-- Índices de tabela `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`idMonitor`),
  ADD KEY `idComputador` (`idComputador`);

--
-- Índices de tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`idSetor`),
  ADD KEY `setor_ibfk_1` (`idDivisao`);

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
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `compConserto`
--
ALTER TABLE `compConserto`
  MODIFY `idConsertoComp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `computador`
--
ALTER TABLE `computador`
  MODIFY `idComputador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `historicoComputador`
--
ALTER TABLE `historicoComputador`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historicoImpressora`
--
ALTER TABLE `historicoImpressora`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `impConserto`
--
ALTER TABLE `impConserto`
  MODIFY `idConsertoImp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `impressoras`
--
ALTER TABLE `impressoras`
  MODIFY `idImpressora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `local`
--
ALTER TABLE `local`
  MODIFY `idLocal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `matComputador`
--
ALTER TABLE `matComputador`
  MODIFY `idMatComp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `matImpressora`
--
ALTER TABLE `matImpressora`
  MODIFY `idMatComp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `monitor`
--
ALTER TABLE `monitor`
  MODIFY `idMonitor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `idSetor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `tipoAcesso`
--
ALTER TABLE `tipoAcesso`
  MODIFY `idAcesso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `compConserto`
--
ALTER TABLE `compConserto`
  ADD CONSTRAINT `compConserto_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`);

--
-- Restrições para tabelas `computador`
--
ALTER TABLE `computador`
  ADD CONSTRAINT `computador_ibfk_1` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`),
  ADD CONSTRAINT `computador_ibfk_2` FOREIGN KEY (`idLocal`) REFERENCES `local` (`idLocal`);

--
-- Restrições para tabelas `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idAcesso`) REFERENCES `tipoAcesso` (`idAcesso`),
  ADD CONSTRAINT `funcionario_ibfk_4` FOREIGN KEY (`idCargo`) REFERENCES `cargo` (`idCargo`);

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

--
-- Restrições para tabelas `setor`
--
ALTER TABLE `setor`
  ADD CONSTRAINT `setor_ibfk_1` FOREIGN KEY (`idDivisao`) REFERENCES `divisao` (`idDivisao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
