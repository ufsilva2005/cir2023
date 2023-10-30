-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 13-Set-2023 às 16:09
-- Versão do servidor: 10.5.15-MariaDB-0+deb11u1
-- versão do PHP: 8.2.0RC7

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
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `idSetor` int(11) NOT NULL,
  `idDivisao` int(11) DEFAULT NULL,
  `localizacao` varchar(10) DEFAULT NULL,
  `ramal` varchar(4) DEFAULT NULL,
  `respSetor` varchar(30) DEFAULT NULL,
  `nomeLocal` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `setor`
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
(20, 7, '1° andar', '', '', 'PREGÃO'),
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
(46, 8, '10º Andar', '', '', 'SERVIÇO DE ORTOPEDIA'),
(47, 7, 'subsolo', '2248', '', 'ALMOXARIFADO CENTRAL'),
(48, 7, '1° andar', '6004', '', 'DIREÇÃO GERAL - GABINETE'),
(49, 8, '13° andar', '', '', 'CTI - GERAL'),
(50, 8, '5° andar', '2580', '', 'SERVIÇO DE DERMATOLOGIA'),
(51, 10, '2° andar', '2288', '', 'NIR'),
(52, 8, '11° andar', '2803', '', 'SERVIÇO DE CIRURGIA GERAL'),
(53, 7, '5° andar', '', '', 'BRIGADA'),
(54, 10, '1° andar', '2350', '', 'CENTRAL DE MARCAÇÃO DE CONSULTAS'),
(55, 9, '1° andar', '2589', '', 'DRH -ATENDIMENTO'),
(56, 5, '12° andar', '2716', '', 'CENTRO CIRÚRGICO - CHEFIA'),
(57, 8, 'subsolo', '2283', '', 'ANATOMIA PATOLÓGICA'),
(58, 8, '3° andar', '2672', '', 'PATOLOGIA CLÍNICA - QUÍMICA CLÍNICA'),
(59, 10, '1° andar', '2713', '', 'SERVIÇO DE AMBULATÓRIO - SALA 132'),
(60, 10, '1° andar', '2713', '', 'SERVIÇO DE AMBULATÓRIO - CHEFIA'),
(61, 2, '8° andar', '2317', '', 'SERVIÇO SOCIAL'),
(62, 8, '6° andar', '2117', '', 'POSTO 6F'),
(63, 5, '8° andar', '2173', '', '8F2'),
(64, 2, '10° andar', '2567', '', 'SERVIÇO SOCIAL'),
(65, 2, 'subsolo', '2525', '', 'SERVIÇO DE NUTRIÇÃO - COZINHA'),
(66, 3, 'subsolo', '2255', '', 'VIGILÂNCIA'),
(67, 3, 'subsolo', '2470', '', 'ZELADORIA'),
(68, 3, 'subsolo', '2316', '', 'PATRIMÔNIO'),
(69, 4, 'subsolo', '2850', '', 'SEÇÃO DE EQUIPAMENTOS E INSTALAÇÕES'),
(70, 4, 'subsolo', '2280', '', 'DEG - GASES'),
(71, 4, 'subsolo', '2757', '', 'SEÇÃO DE CONSERVAÇÃO DE EDIFÍCIO'),
(72, 4, 'subsolo', '2751', '', 'DEG - SECRETARIA'),
(73, 8, 'subsolo', '2284', '', 'ANATOMIA PATOLÓGICA - RECEPÇÃO'),
(74, 8, 'subsolo', '2283', '', 'ANATOMIA PATOLÓGICA - SALA DOS RESIDENTES'),
(75, 3, 'subsolo', '', '', 'COMISSÃO DE RESÍDUOS');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`idSetor`),
  ADD KEY `idDivisao` (`idDivisao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `idSetor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `setor`
--
ALTER TABLE `setor`
  ADD CONSTRAINT `setor_ibfk_1` FOREIGN KEY (`idDivisao`) REFERENCES `divisao` (`idDivisao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
