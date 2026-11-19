-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/11/2026 às 20:59
-- Versão do servidor: 10.11.16-MariaDB
-- Versão do PHP: 8.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbsgc`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `id` int(11) DEFAULT NULL,
  `codbar` varchar(13) DEFAULT NULL,
  `codgrupo` int(11) DEFAULT 0,
  `descricao` varchar(40) DEFAULT NULL,
  `descresu` varchar(16) DEFAULT NULL,
  `estinicial` int(11) DEFAULT 0,
  `estatual` int(11) DEFAULT 0,
  `minimo` int(11) DEFAULT 0,
  `unidade` varchar(2) DEFAULT NULL,
  `codfor` double DEFAULT NULL,
  `indlucro` double DEFAULT NULL,
  `prevenda1` double DEFAULT NULL,
  `prevenda2` int(11) DEFAULT 0,
  `prevenda3` int(11) DEFAULT 0,
  `prevenda4` int(11) DEFAULT 0,
  `prevenda5` int(11) DEFAULT 0,
  `dtultvenda` datetime DEFAULT NULL,
  `dtcadastro` datetime DEFAULT NULL,
  `Ativo` tinyint(1) DEFAULT NULL,
  `PRD_CFO` varchar(13) DEFAULT NULL,
  `PRD_IPI` double DEFAULT NULL,
  `PRD_SIT` varchar(2) DEFAULT NULL,
  `PRD_CLF` varchar(15) DEFAULT NULL,
  `PRD_QTU` double DEFAULT NULL,
  `PRD_DCA` double DEFAULT NULL,
  `PRD_VLA` double DEFAULT NULL,
  `PRD_DCM` double DEFAULT NULL,
  `PRD_ICM` double DEFAULT NULL,
  `PRD_DCP` double DEFAULT NULL,
  `Precocusto` double DEFAULT NULL,
  `PRD_TPP` varchar(1) DEFAULT NULL,
  `operador` varchar(10) DEFAULT NULL,
  `datatual` datetime DEFAULT NULL,
  `dtultcomp` datetime DEFAULT NULL,
  `codigo_m` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`id`, `codbar`, `codgrupo`, `descricao`, `descresu`, `estinicial`, `estatual`, `minimo`, `unidade`, `codfor`, `indlucro`, `prevenda1`, `prevenda2`, `prevenda3`, `prevenda4`, `prevenda5`, `dtultvenda`, `dtcadastro`, `Ativo`, `PRD_CFO`, `PRD_IPI`, `PRD_SIT`, `PRD_CLF`, `PRD_QTU`, `PRD_DCA`, `PRD_VLA`, `PRD_DCM`, `PRD_ICM`, `PRD_DCP`, `Precocusto`, `PRD_TPP`, `operador`, `datatual`, `dtultcomp`, `codigo_m`) VALUES
(1, ' ', 1, 'PENTE DE MEMORIA 256 MB', 'ALICATE', NULL, -2, 0, 'PC', 14, 163, 5, 5, 5, 5, 5, '2004-08-16 00:00:00', '2002-04-24 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 18, 0, 1.9, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
(2, ' ', 4, 'PLACA DE VIDEO DE 486 ', 'ARAME GALV. 10', NULL, 100, 500, 'KG', 2, 41, 4.23, 4, 4, 4, 4, '2004-08-18 00:00:00', '2002-04-26 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 18, 0, 3.18, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
(3, ' ', 4, 'PLACA MSI 256 MB', 'ARAME GALV.18', NULL, 0, 0, 'KG', 2, 55, 6.2, 6, 6, 6, 6, '2004-02-27 00:00:00', '2002-04-26 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 18, 0, 4.76, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
(14, NULL, 1, 'CHAVE DE FENDA PEQUENA', 'CH FENDA PEQUENA', NULL, 100, NULL, 'UN', 14, 55, 0, 0, 0, 0, 0, '2008-01-21 00:00:00', '2002-04-26 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, 18, 0, 5, 'A', NULL, NULL, NULL, 1),
(15, ' ', 1, 'CHAVE DE FENDA GRANDE', 'CH FENDA GRANDE', NULL, 0, 0, 'UN', 14, 100, 3, 3, 3, 3, 3, '2002-10-16 00:00:00', '2002-04-26 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 18, 0, 1.49, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
(16, ' ', 1, 'CHAVE PHILIPS', 'CHAVE PHILIPS', NULL, 0, 0, 'UN', 14, 0, 1.5, 2, 2, 2, 2, '2002-10-16 00:00:00', '2002-04-26 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 18, 0, 0.69, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
(193, NULL, 5, 'FRETE', 'FRETE', NULL, 0, NULL, 'UN', 0, 0, 0, 0, 0, 0, 0, NULL, '2002-05-27 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 'A', NULL, NULL, NULL, 1),
(463, NULL, 6, 'MASCARA RESP DESC KSN S/VALV', 'MASCARA RESP DES', NULL, 0, NULL, 'UN', 187, 138, 3, 3, 3, 3, 3, '2004-03-25 00:00:00', '2003-09-01 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 1.19, 'A', NULL, NULL, NULL, 1),
(464, NULL, 6, 'PROTETOR AURICULAR PVC USE PLUG', 'PROTETOR USEPLUG', NULL, 0, NULL, 'UN', 187, 37, 1.5, 2, 2, 2, 2, '2003-09-01 00:00:00', '2003-09-01 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0.56, 'A', NULL, NULL, NULL, 1),
(465, NULL, 6, 'PROTETOR AURICULAR C/HASTE PLAST.PLUS', 'PROTETOR C/HASTE', NULL, 0, NULL, 'UN', 187, 134, 14, 14, 14, 14, 14, '2003-09-01 00:00:00', '2003-09-01 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, 6.89, 'A', NULL, NULL, NULL, 1),
(469, NULL, 6, 'BOTINA ELATICO VQ', 'BOTINA ELAST.VQ', NULL, 0, NULL, 'UN', 190, 59, 35, 35, 35, 35, 35, '2004-03-25 00:00:00', '2003-09-30 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 23.2, 'A', NULL, NULL, NULL, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD UNIQUE KEY `codprod` (`id`),
  ADD KEY `descricao` (`descricao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
