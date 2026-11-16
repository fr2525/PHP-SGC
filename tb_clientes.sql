-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15/11/2026 às 23:54
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
-- Banco de dados: `db_printer3d`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id` int(11) NOT NULL,
  `cpf_cnpj` varchar(16) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `complemento` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `email` varchar(60) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `operador` int(11) DEFAULT NULL,
  `datatual` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`id`, `cpf_cnpj`, `nome`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `email`, `celular`, `operador`, `datatual`) VALUES
(1, '11111111111', 'Reinert', 'aaaaaaaaaaaaaaaaaa', '21', '', '', 'São Miguel do Oeste', 'SC', '89900-000', 'fabio@hotmail.com', '(11) 111111111', 1, NULL),
(2, '22222222222', 'Reinert2', 'aaaaaaaaaaa', '', '', '', '', '', '', 'fabio2@hotmail.com', '(11) 222222222', 1, NULL),
(3, '33333333333', 'Reinert3', '', '', '', '', '', '', '', 'fabio3@hotmail.com', '(11) 333333333', 1, NULL),
(4, '44444444444', 'Reinert4', '', '', '', '', '', '', '', 'fabio4@hotmail.com', '(11) 444444444', 1, NULL),
(5, '55555555555', 'Reinert5', '', '', '', '', '', '', '', 'fabio5@hotmail.com', '(11) 555555555', 1, NULL),
(6, '66666666666', 'Reinert6', '', '', '', '', '', '', '', 'fabio6@hotmail.com', '(11) 666666666', 1, NULL),
(7, '77777777777', 'Reinert7', '', '', '', '', '', '', '', 'fabio7@hotmail.com', '(11) 777777777', 1, NULL),
(8, '88888888888', 'Reinert8', '', '', '', '', '', '', '', 'fabio8@hotmail.com', '(11) 888888888', 1, NULL),
(9, '99999999999', 'Reinert9', '', '', '', '', '', '', '', 'fabio9@hotmail.com', '(11) 999999999', 1, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
