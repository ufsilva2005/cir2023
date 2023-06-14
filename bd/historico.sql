-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 14/06/2023 às 17:08
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
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`idHistorico`),
  ADD KEY `idComputador` (`idComputador`),
  ADD KEY `idImpressora` (`idImpressora`),
  ADD KEY `idFuncionario` (`idFuncionario`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `idHistorico` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`idComputador`) REFERENCES `computador` (`idComputador`),
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`idImpressora`) REFERENCES `impressoras` (`idImpressora`),
  ADD CONSTRAINT `historico_ibfk_3` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
