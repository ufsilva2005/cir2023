-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29/09/2023 às 13:50
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
-- Estrutura para tabela `hdTipos`
--

CREATE TABLE `hdTipos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `hdTipos`
--

INSERT INTO `hdTipos` (`id`, `descricao`) VALUES
(1, '120 GB - SSD 2.5'),
(2, '128 GB - SSD 2.5'),
(3, '240 GB - SSD 2.5'),
(4, '250 GB - SSD 2.5'),
(5, '256 GB - SSD 2.5'),
(6, '480 GB - SSD 2.5'),
(7, '512 GB - SSD 2.5'),
(8, '960 GB - SSD 2.5'),
(9, '1 TB - SSD 2.5'),
(10, '2 TB - SSD 2.5'),
(11, '120 GB - SSD M2'),
(12, '128 GB - SSD M2'),
(13, '240 GB - SSD M2'),
(14, '250 GB - SSD M2'),
(15, '256 GB - SSD M2'),
(16, '480 GB - SSD M2'),
(17, '512 GB - SSD M2'),
(18, '960 GB -S SD M2'),
(19, '1 TB - SSD M2'),
(20, '2 TB - SSD M2'),
(21, '120 GB - SSD mSATA'),
(22, '128 GB - SSD mSATA'),
(23, '240 GB - SSD mSATA'),
(24, '250 GB - SSD mSATA'),
(25, '256 GB - SSD mSATA'),
(26, '480 GB - SSD mSATA'),
(27, '512 GB - SSD mSATA'),
(28, '960 GB - SSD mSATA'),
(29, '1 TB - SSD mSATA'),
(30, '2 TB - SSD mSATA'),
(31, '120 GB - SSD U2'),
(32, '128 GB - SSD U2'),
(33, '240 GB - SSD U2'),
(34, '250 GB - SSD U2'),
(35, '256 GB - SSD U2'),
(36, '480 GB - SSD U2'),
(37, '512 GB - SSD U2'),
(38, '960 GB - SSD U2'),
(39, '1 TB - SSD U2'),
(40, '2 TB - SSD U2'),
(41, '10 GB - HD SATA'),
(42, '20 GB - HD SATA'),
(43, '40 GB - HD SATA'),
(44, '80 GB - HD SATA'),
(45, '120 GB - HD SATA'),
(46, '160 GB - HD SATA'),
(47, '250 GB - HD SATA'),
(48, '320 GB - HD SATA'),
(49, '500 GB - HD SATA'),
(50, '680 GB - HD SATA'),
(51, '750 GB - HD SATA'),
(52, '1 TB - HD SATA'),
(53, '1.5 TB - HD SATA'),
(54, '2 TB - HD SATA'),
(55, '2.5 TB - HD SATA'),
(56, '3 TB - HD SATA');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `hdTipos`
--
ALTER TABLE `hdTipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `hdTipos`
--
ALTER TABLE `hdTipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
