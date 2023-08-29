-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29/08/2023 às 11:44
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
-- Estrutura para tabela `tipoProcessadores`
--

CREATE TABLE `tipoProcessadores` (
  `idTipoProcessador` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `statusTipo` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci; 

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  ADD PRIMARY KEY (`idTipoProcessador`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tipoProcessadores`
--
ALTER TABLE `tipoProcessadores`
  MODIFY `idTipoProcessador` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
