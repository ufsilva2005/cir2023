-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 24/05/2023 às 10:17
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
(6, 'ativo', 'CHEFE DE SESSÃO'),
(7, 'ativo', 'OKI-MPS 5502-MB'),
(8, 'ativo', 'RICOH AFICIO MP7502'),
(9, 'ativo', 'RICOH AFICIO MP171'),
(10, 'ativo', 'ANALIRICOH AFICIO MPC2051STA'),
(11, 'ativo', 'XEROX WORKCENTRE-7855'),
(12, 'ativo', 'ZEBRA-S4M'),
(13, 'ativo', 'ZEBRA-GC-420T');
--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `modeloImpressora`
--
ALTER TABLE `modeloImpressora`
  ADD PRIMARY KEY (`idModelo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `modeloImpressora`
--
ALTER TABLE `modeloImpressora`
  MODIFY `idModelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
