-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/11/2026 às 04:37
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
-- Estrutura para tabela `tb_grupos`
--

CREATE TABLE `tb_grupos` (
  `id` int(11) NOT NULL,
  `DESCRICAO` varchar(34) DEFAULT NULL,
  `INDLUCRO1` double DEFAULT NULL,
  `INDLUCRO2` double DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_grupos`
--

INSERT INTO `tb_grupos` (`id`, `DESCRICAO`, `INDLUCRO1`, `INDLUCRO2`, `Operador`, `Datatual`) VALUES
(1, 'MEMORIAS', NULL, NULL, 'Master', '2006-09-10 00:00:00'),
(2, 'PLACA MAE', NULL, NULL, 'Master', '2006-09-10 00:00:00'),
(3, 'HD', 15, 10, 'Master', '2006-09-10 00:00:00'),
(4, 'PLACA DE VIDEO', NULL, NULL, 'Master', '2006-09-10 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_grupos`
--
ALTER TABLE `tb_grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CODGRUPO` (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_grupos`
--
ALTER TABLE `tb_grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
