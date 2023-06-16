-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 16/06/2023 às 17:19
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

INSERT INTO `impressoras` (`idImpressora`, `nomeImpressora`, `numSerie`, `ipImpressora`, `macImpressora`, `tipoToner`, `statusImpressora`, `modeloImpressora`, `dataCadastro`, `respCadastro`, `dataAltCadastro`, `respAltCadastro`, `obsImpressora`, `idFuncionario`, `idSetor`) VALUES
(1, 'prnmanut', 'R4P2X12492', '10.13.10.33', '00:17:C8:E7:FC:23', 28, 'ativo', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-14', 'ULISSES FERREIRA DA SILVA', 'ALTERAÇÃO DO NÚMERO MAC', 2, 1),
(2, 'prnalmox', 'R4P2X12499', '10.3.0.21', '00:17:C8:E7:FC:77', 28, 'ativo', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 49),
(3, '', 'R4P2X12489', '', '', 28, 'ativo', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 50),
(4, 'prncti13', 'R4P8917950', '10.131.131.22', '00:17:C8:6B:DD:0C', 28, 'ativo', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 51),
(5, 'prnalmoxpat', 'R4P2X12491', '10.30.30.23', '00:17:C8:E7:FC:42', 28, 'ativo', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 32),
(6, 'prndermato2', 'R4P2X12501', '10.50.50.26', '00:17:C8:E7:FC:58', 28, 'ativo', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 52),
(7, 'prnnir', 'R4P9429137', '10.20.20.22', '00:17:C8:70:95:AF', 28, 'ativo', 1, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 53),
(8, 'prncirgeral', 'X3BK007496', '10.110.110.23', '9C:AE:D3:B4:3C:27', 29, 'ativo', 6, '2023-05-31', 'SUZANA COSTA VIRGINIO DE SOUZA', '2023-06-16', 'SUZANA COSTA VIRGINIO DE SOUZA', 'ACERTO DE DADOS', 2, 48),
(9, '', 'AK5C008745A0', '', '', 3, 'ativo', 4, '2023-06-02', 'SUZANA COSTA VIRGINIO DE SOUZA', '0000-00-00', '', '', 2, 47);

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
  MODIFY `idImpressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
