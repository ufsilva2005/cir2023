-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 14/09/2023 às 11:42
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
(35, 'CIR-008', 'TONNER M32', '0', '0', 0, 'ativo'),
(36, 'CIR-009', 'CARTUCHO DE TINTA R04X - PRETO', '0', '0', 0, 'ativo'),
(37, 'CIR-010', 'CARTUCHO DE TINTA R04L - MAGENTA', '0', '0', 0, 'ativo'),
(38, 'CIR-011', 'CARTUCHO DE TINTA R04L - CIANO', '0', '0', 0, 'ativo'),
(39, 'CIR-012', 'CARTUCHO DE TINTA R04L - AMARELO', '0', '0', 0, 'ativo'),
(40, 'CIR-013', 'CARTUCHO DE TINTA T11B1 - PRETO', '0', '0', 0, 'ativo'),
(41, 'CIR-014', 'CARTUCHO DE TINTA T11A2 - CIANO', '0', '0', 0, 'ativo'),
(42, 'CIR-015', 'CARTUCHO DE TINTA T11A4 - AMARELO', '0', '0', 0, 'ativo'),
(43, 'CIR-016', 'CARTUCHO DE TINTA T11A3 - MAGENTA', '0', '0', 0, 'ativo');

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
  MODIFY `idMaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
