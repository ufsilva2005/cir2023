-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 14/06/2023 às 14:57
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
(29, 'CIR-002', 'TONNER - BOLSA DE TINTA', '0', 'UN', 0),
(30, 'CIR-003', 'TONNER ES5112', '0', '0', 0),
(31, 'CIR-004', 'TONNER MPS5501', '0', '0', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idMaterial`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `material`
--
ALTER TABLE `material`
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
