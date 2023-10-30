-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13/09/2023 às 13:25
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
-- Estrutura para tabela `impressoras`
--

CREATE TABLE `impressoras` (
  `idImpressora` int(11) NOT NULL,
  `nomeImpressora` varchar(20) DEFAULT NULL,
  `numSerie` varchar(50) DEFAULT NULL,
  `ipImpressora` varchar(15) DEFAULT NULL,
  `macImpressora` varchar(20) DEFAULT NULL,
  `tipoToner` varchar(255) DEFAULT NULL,
  `colorida` varchar(3) DEFAULT NULL,
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

INSERT INTO `impressoras` (`idImpressora`, `nomeImpressora`, `numSerie`, `ipImpressora`, `macImpressora`, `tipoToner`, `colorida`, `statusImpressora`, `conexaoImp`, `modeloImpressora`, `dataCadastro`, `respCadastro`, `dataAltCadastro`, `respAltCadastro`, `obsImpressora`, `idFuncionario`, `idSetor`) VALUES
(1, 'PRNMANUT', 'R4P2X12492', '10.13.10.33', '00:17:C8:E7:FC:23', ' a:1:{i:0;s:2:\"28\";}', NULL, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', 'TESTE', 2, 1),
(2, 'PRNALMOX', 'R4P2X12499', '10.3.0.21', '00:17:C8:E7:FC:77', ' a:1:{i:0;s:2:\"28\";}', NULL, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-07-28', 'SUZANA COSTA VIRGINIO DE SOUZA', 'TESTE', 2, 47),
(3, '', 'R4P2X12489', '', '', ' a:1:{i:0;s:2:\"28\";}', NULL, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 48),
(4, '', 'R4P8917950', '', '', ' a:1:{i:0;s:2:\"28\";}', NULL, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 49),
(5, '', 'R4P2X12491', '', '', ' a:1:{i:0;s:2:\"28\";}', NULL, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 32),
(6, '', 'R4P2X12501', '', '', ' a:1:{i:0;s:2:\"28\";}', NULL, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 50),
(7, '', 'R4P9429137', '', '', ' a:1:{i:0;s:2:\"28\";}', NULL, 'ativo', 'Rede', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 51),
(8, '', 'X3BK007496', '', '', ' a:1:{i:0;s:2:\"29\";}', NULL, 'ativo', 'Rede', 6, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 52),
(9, '', 'AK43006907A0', '', '', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 5, '2023-06-14', NULL, '0000-00-00', '', '', 2, 53),
(10, '', 'AK57067942B0', '', '', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 7, '2023-06-14', NULL, '0000-00-00', '', '', 2, 6),
(11, 'PRNURO', 'AK5C039356', '10.110.110.25', '00:80:91:B0:41:A2', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 7, '2023-06-14', NULL, '0000-00-00', '', '', 2, 24),
(12, '', 'AK89033050B0', '', '', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 7, '2023-07-06', NULL, '0000-00-00', '', '', 2, 54),
(13, '', 'AK89033325A0', '', '', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 5, '2023-07-06', NULL, '0000-00-00', '', '', 2, 55),
(14, '', 'AK5C008782A0', '', '', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Rede', 4, '2023-07-06', NULL, '0000-00-00', '', '', 2, 59),
(15, '', 'AK5C008603A0', '', '00:25:36:11:B2:D7', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Rede', 4, '2023-07-07', NULL, '2023-07-31', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 79),
(16, 'PRNBIO', 'AK5C008469A0', '10.30.30.28', '00:25:36:EE:78:D9', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Rede', 4, '2023-07-17', NULL, '0000-00-00', '', '', 2, 58),
(17, '', 'AK47042821A0', '', '', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 7, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 60),
(18, '', 'AK8B014323C0', '', '', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Rede', 4, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 61),
(19, '', 'AK86043236A0', '', '', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 5, '2023-07-24', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 62),
(20, '', 'AK8B015135C0', '10.81.80.22', '00:25:36:91:1A:40', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Rede', 4, '2023-07-24', NULL, '0000-00-00', '', '', 2, 63),
(21, '', 'AK5C008704A0', '', '', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Rede', 4, '2023-07-25', NULL, '0000-00-00', '', '', 2, 64),
(22, 'PRNCIR', 'AK89003100B0', '10.13.10.23', '00:80:91:BA:C7:16', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 7, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 2),
(23, '', 'AK5C008522A0', '', '00:25:36:EE:78:73', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Usb', 4, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-08-11', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 65),
(24, '', 'AK5B046536A0', '', '00:25:36:EE:10:C0', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Rede', 4, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 66),
(25, 'PRNZELADORIA2', 'AK4A021496A0', '10.3.0.25', '00:80:91:AC:68:9D', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 7, '2023-07-25', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 67),
(26, 'PRNPATRIMONIO', 'AK5B010770B0', '10.3.0.22', '00:80:91:B0:3B:A0', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 7, '2023-07-27', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 68),
(27, '', 'AK5C034726A0', '', '00:25:36:EE:11:E0', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Usb', 4, '2023-07-28', NULL, '2023-08-01', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 73),
(28, '', 'AK5C008494A0', '', '00:25:36:EE:78:2D', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Usb', 4, '2023-07-28', NULL, '2023-08-03', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ATUALIZAÇÃO DE DADOS', 2, 73),
(29, 'PRNSPL', 'AK48020473A0', '10.2.0.22', '00:25:36:76:B9:07', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 5, '2023-07-28', NULL, '0000-00-00', '', '', 2, 74),
(30, 'PRNDEG2', 'AK56023010A0', '10.2.0.25', '00:25:36:2E:1C:AE', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Rede', 4, '2023-07-28', NULL, '0000-00-00', '', '', 2, 75),
(31, 'MFPACF682', 'AK4B026374A0', '10.2.0.21', '00:80:91:AC:F6:82', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 7, '2023-07-31', NULL, '0000-00-00', '', '', 2, 77),
(32, 'PRNANAT', 'AK86043246A0', '10.0.0.21', '00:25:36:61:23:1C', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 5, '2023-07-31', NULL, '0000-00-00', '', '', 2, 78),
(33, 'PRNDEGSEB2', 'AK88030514B0', '10.2.0.27', '00:80:91:BA:C7:34', ' a:1:{i:0;s:2:\"31\";}', NULL, 'ativo', 'Rede', 7, '2023-07-31', NULL, '0000-00-00', '', '', 2, 80),
(34, 'PRNRESIDUOS', 'AK8B014256CO', '192.168.100.100', '00:25:36:91:06:7E', ' a:1:{i:0;s:2:\"30\";}', NULL, 'ativo', 'Usb', 4, '2023-08-01', 'ULISSES FERREIRA DA SILVA', '0000-00-00', '', '', 4, 81);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `impressoras`
--
ALTER TABLE `impressoras`
  ADD PRIMARY KEY (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`),
  ADD KEY `idSetor` (`idSetor`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `impressoras`
--
ALTER TABLE `impressoras`
  MODIFY `idImpressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `impressoras`
--
ALTER TABLE `impressoras`
  ADD CONSTRAINT `impressoras_ibfk_1` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `impressoras_ibfk_2` FOREIGN KEY (`idSetor`) REFERENCES `setor` (`idSetor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
