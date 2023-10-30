-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 24/05/2023 às 14:11
-- Versão do servidor: 10.3.38-MariaDB-0+deb10u1
-- Versão do PHP: 8.0.28

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
-- Estrutura para tabela `impressoras`
--

CREATE TABLE `impressoras` (
  `idImpressora` int(11) NOT NULL,
  `nomeImpressora` varchar(20) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `ipImpressora` varchar(15) DEFAULT NULL,
  `macImpressora` varchar(17) DEFAULT NULL,
  `tipoToner` varchar(10) DEFAULT NULL,
  `statusImpressora` varchar(7) DEFAULT NULL,
  `modeloImpressora` varchar(25) DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `respCadastro` varchar(30) DEFAULT NULL,
  `dataAltCadastro` date DEFAULT NULL,
  `respAltCadastro` varchar(30) DEFAULT NULL,
  `obsImpressora` varchar(255) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idSetor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
  `quantidadeTotal` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `material`
--

INSERT INTO `material` (`idMaterial`, `codigo`, `descricao`, `numSerie`, `unidade`, `quantidadeTotal`) VALUES
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
(27, 'P017002', 'COMPUTADOR', '0', '0', 0),
(28, 'CIR-001', 'TONNER TK3182', '0', 'UN', 0),
(29, 'CIR-002', 'TONNER - BOLSA DE TINTA', '0', 'UN', 0);

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
(1, 'ativo', 'KYOCERA-ECOSYS M3655-IDN'),
(2, 'ativo', 'OKI-C831'),
(3, 'ativo', 'OKI-ES 4172-LP MFP'),
(4, 'ativo', 'OKI-ES 5112'),
(5, 'ativo', 'OKI-MPS 5501-B'),
(6, 'ativo', 'EPSON WF-M5799'),
(7, 'ativo', 'OKI-MPS 5502-MB'),
(8, 'ativo', 'RICOH AFICIO MP7502'),
(9, 'ativo', 'RICOH AFICIO MP171'),
(10, 'ativo', 'ANALIRICOH AFICIO MPC2051STA'),
(11, 'ativo', 'XEROX WORKCENTRE-7855'),
(12, 'ativo', 'ZEBRA-S4M'),
(13, 'ativo', 'ZEBRA-GC-420T');

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
-- AUTO_INCREMENT de tabela `impressoras`
--
ALTER TABLE `impressoras`
  MODIFY `idImpressora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `material`
--
ALTER TABLE `material`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `idSetor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
