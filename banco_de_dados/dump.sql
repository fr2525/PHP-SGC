-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/11/2026 às 16:29
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
-- Estrutura para tabela `tb_apagar`
--

CREATE TABLE `tb_apagar` (
  `CODFOR` int(11) DEFAULT 0,
  `DUPLICATA` varchar(10) DEFAULT NULL,
  `DATAMOV` datetime DEFAULT NULL,
  `VENCTO` datetime DEFAULT NULL,
  `VALOR` double DEFAULT NULL,
  `notafiscal` varchar(10) DEFAULT NULL,
  `DTPAGTO` datetime DEFAULT NULL,
  `VALORPAGO` double DEFAULT NULL,
  `operador` varchar(10) DEFAULT NULL,
  `datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_apagar`
--

INSERT INTO `tb_apagar` (`CODFOR`, `DUPLICATA`, `DATAMOV`, `VENCTO`, `VALOR`, `notafiscal`, `DTPAGTO`, `VALORPAGO`, `operador`, `datatual`) VALUES
(15, '123', '2004-08-17 00:00:00', '2004-09-16 00:00:00', 1569.8, '123', NULL, 0, 'Master', '2004-08-28 00:00:00'),
(15, '1234', '2004-08-18 00:00:00', '2004-09-15 00:00:00', 6000.16, '1234', NULL, 0, 'Master', '2004-08-28 00:00:00'),
(15, '1234', '2004-08-18 00:00:00', '2004-09-15 00:00:00', 6000.16, '1234', NULL, 0, 'Master', '2004-08-28 00:00:00'),
(15, '1234', '2004-08-18 00:00:00', '2004-08-18 00:00:00', 78, '1', NULL, NULL, 'Master', '2004-08-18 00:00:00'),
(15, '1', '2004-08-23 00:00:00', '2004-09-22 00:00:00', 18, '123', NULL, NULL, 'Master', '2004-08-23 00:00:00'),
(15, '1', '2004-08-23 00:00:00', '2004-08-25 00:00:00', 18, '1234', NULL, NULL, 'Master', '2004-08-23 00:00:00'),
(20, '5542', '2004-08-17 00:00:00', '2004-09-16 00:00:00', 1500, '123', NULL, 0, 'Master', '2004-08-28 00:00:00'),
(15, '1', '2004-08-31 00:00:00', '2004-09-01 00:00:00', 210, '54555', NULL, NULL, 'Master', '2004-08-31 00:00:00'),
(15, '1', '2008-01-21 00:00:00', '2008-02-21 00:00:00', 500, '1222', NULL, NULL, 'Master', '2008-01-21 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_caixa`
--

CREATE TABLE `tb_caixa` (
  `Hoje` datetime DEFAULT NULL,
  `Troco` decimal(19,4) DEFAULT NULL,
  `Particular` decimal(19,4) DEFAULT 0.0000,
  `Saidas` decimal(19,4) DEFAULT 0.0000,
  `vvista` decimal(19,4) DEFAULT NULL,
  `vale` decimal(19,4) DEFAULT 0.0000,
  `credito` decimal(19,4) DEFAULT 0.0000
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_caixa`
--

INSERT INTO `tb_caixa` (`Hoje`, `Troco`, `Particular`, `Saidas`, `vvista`, `vale`, `credito`) VALUES
('2004-05-01 00:00:00', 0.0000, NULL, NULL, 21.1100, NULL, NULL),
('2004-08-10 00:00:00', 10.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000),
('2004-08-18 00:00:00', 0.0000, 0.0000, 0.0000, 3.0000, 0.0000, 0.0000),
('2004-09-05 00:00:00', 0.0000, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000),
('2004-09-09 00:00:00', 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000),
('2004-04-21 00:00:00', 0.0000, NULL, NULL, 20.0000, NULL, NULL),
('2004-04-27 00:00:00', 0.0000, NULL, NULL, 20.0000, NULL, NULL),
('2004-04-30 00:00:00', 0.0000, NULL, NULL, 21.1100, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_ccusto`
--

CREATE TABLE `tb_ccusto` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `local` varchar(40) DEFAULT NULL,
  `RES` varchar(30) DEFAULT NULL,
  `TEL` varchar(16) DEFAULT NULL,
  `DDD` varchar(4) DEFAULT NULL,
  `Debito` double DEFAULT NULL,
  `Credito` double DEFAULT NULL,
  `operador` varchar(10) DEFAULT NULL,
  `datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_ccusto`
--

INSERT INTO `tb_ccusto` (`codigo`, `descricao`, `local`, `RES`, `TEL`, `DDD`, `Debito`, `Credito`, `operador`, `datatual`) VALUES
(1, 'VENDAS', NULL, NULL, '         0', '   0', 0, 2272636.65, NULL, '2004-03-30 00:00:00'),
(2, 'OUTRAS RECEITAS', NULL, NULL, '         0', '   0', 61449.03, 0, NULL, '2004-03-31 00:00:00'),
(3, 'SILVIO PARTICULAR', NULL, NULL, '         0', '   0', 161119.07, 0, NULL, '2004-04-01 00:00:00'),
(4, 'DOACAO', NULL, NULL, '         0', '   0', 482.48, 0, NULL, '2003-10-08 00:00:00'),
(5, 'INVESTIMENTO', NULL, NULL, '         0', '   0', 240861.56, 0, NULL, '2004-03-25 00:00:00'),
(6, 'MANUTENCAO', NULL, NULL, '         0', '   0', 11740.37, 0, NULL, '2004-03-16 00:00:00'),
(7, 'ANUNCIOS-DIVULGACAO', NULL, NULL, '         0', '   0', 4081.56, 0, NULL, '2003-11-05 00:00:00'),
(8, 'COMPRAS DE MERCADORIA', NULL, NULL, '       0       0', '0000', 1222921.46, 0, NULL, '2004-04-01 00:00:00'),
(9, 'DESPESAS FIXAS', NULL, NULL, '         0', '   0', 209286.32, 0, NULL, '2004-03-26 00:00:00'),
(10, 'COMBUSTIVEL', NULL, NULL, '         0', '   0', 34172.72, 0, NULL, '2004-03-18 00:00:00'),
(11, 'DESPESAS BANCARIA/JUROS', NULL, NULL, '       0       0', '0000', 161.28, 0, NULL, '2003-06-02 00:00:00');

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
  `ativo` bit(1) NOT NULL DEFAULT b'1',
  `operador` int(11) DEFAULT NULL,
  `datatual` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`id`, `cpf_cnpj`, `nome`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `email`, `celular`, `ativo`, `operador`, `datatual`) VALUES
(1, '11111111111', 'Reinert2222', 'aaaaaaaaaaaaaaaaaa', '21', '', '', 'São Miguel do Oeste', 'SC', '89900-000', 'fabio@hotmail.com', '(11) 111111111', b'1', 1, NULL),
(2, '22222222222', 'Reinertzzz', 'aaaaaaaaaaa', '', '', '', '', '', '', 'fabio2@hotmail.com', '(11) 222222222', b'1', 1, NULL),
(3, '33333333333', 'Reinert3', '', '', '', '', '', '', '', 'fabio3@hotmail.com', '(11) 333333333', b'1', 1, NULL),
(4, '44444444444', 'Reinert4', '', '', '', '', '', '', '', 'fabio4@hotmail.com', '(11) 444444444', b'1', 1, NULL),
(5, '55555555555', 'Reinert5', '', '', '', '', '', '', '', 'fabio5@hotmail.com', '(11) 555555555', b'1', 1, NULL),
(6, '66666666666', 'Reinert6', '', '', '', '', '', '', '', 'fabio6@hotmail.com', '(11) 666666666', b'1', 1, NULL),
(7, '77777777777', 'Reinert7', '', '', '', '', '', '', '', 'fabio7@hotmail.com', '(11) 777777777', b'1', 1, NULL),
(8, '88888888888', 'Reinert8', '', '', '', '', '', '', '', 'fabio8@hotmail.com', '(11) 888888888', b'1', 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_compras`
--

CREATE TABLE `tb_compras` (
  `id_compra` int(11) NOT NULL,
  `Numped` varchar(9) DEFAULT NULL,
  `CODFOR` int(11) DEFAULT 0,
  `Dataped` datetime DEFAULT NULL,
  `dtprevista` datetime DEFAULT NULL,
  `dtentrada` datetime DEFAULT NULL,
  `TIPO_ENT` varchar(1) DEFAULT NULL,
  `NOTAFISC` varchar(10) DEFAULT NULL,
  `DUPLICATA` varchar(10) DEFAULT NULL,
  `VALOR` double DEFAULT NULL,
  `ICMS` double DEFAULT NULL,
  `DESCONTO` double DEFAULT NULL,
  `SUBSTRIBU` double DEFAULT NULL,
  `operador` varchar(10) DEFAULT NULL,
  `datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_despesas`
--

CREATE TABLE `tb_despesas` (
  `Datalanc` datetime DEFAULT NULL,
  `CCusto` int(11) DEFAULT 0,
  `Descricao` varchar(50) DEFAULT NULL,
  `Valor` double DEFAULT 0,
  `operador` varchar(10) DEFAULT NULL,
  `datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_despesas`
--

INSERT INTO `tb_despesas` (`Datalanc`, `CCusto`, `Descricao`, `Valor`, `operador`, `datatual`) VALUES
('2004-08-25 00:00:00', 9, 'aaa', 5, 'Master', '2004-08-25 00:00:00'),
('2004-08-25 00:00:00', 6, ' ', 3.24, 'Master', '2004-08-25 00:00:00'),
('2004-08-25 00:00:00', 6, 'sdklsdsdsd', 80.5, 'Master', '2004-08-25 00:00:00'),
('2004-04-01 00:00:00', 8, 'Comprou gesso em toneis de carvalho', 10.5, 'Master', '2004-08-25 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_entradas`
--

CREATE TABLE `tb_entradas` (
  `CODFOR` varchar(3) DEFAULT NULL,
  `DATAMOV` datetime DEFAULT NULL,
  `dtentrada` datetime DEFAULT NULL,
  `TIPO_ENT` varchar(1) DEFAULT NULL,
  `NOTAFISC` varchar(10) DEFAULT NULL,
  `DUPLICATA` varchar(10) DEFAULT NULL,
  `VENCTO` datetime DEFAULT NULL,
  `VALOR` double DEFAULT NULL,
  `ICMS` double DEFAULT NULL,
  `DESCONTO` double DEFAULT NULL,
  `SUBSTRIBU` double DEFAULT NULL,
  `operador` varchar(10) DEFAULT NULL,
  `datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_entradas`
--

INSERT INTO `tb_entradas` (`CODFOR`, `DATAMOV`, `dtentrada`, `TIPO_ENT`, `NOTAFISC`, `DUPLICATA`, `VENCTO`, `VALOR`, `ICMS`, `DESCONTO`, `SUBSTRIBU`, `operador`, `datatual`) VALUES
('001', '2004-04-20 00:00:00', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('77', '2004-04-20 00:00:00', NULL, NULL, '1', '', NULL, 10, NULL, NULL, NULL, 'Master', '2004-04-26 00:00:00'),
('1', '2004-04-20 00:00:00', NULL, NULL, '122', '', NULL, 10, NULL, NULL, NULL, 'Master', '2004-04-28 00:00:00'),
('1', '2004-04-20 00:00:00', NULL, NULL, '22', '', NULL, 10, NULL, NULL, NULL, 'Master', '2004-04-28 00:00:00'),
('1', '2004-04-20 00:00:00', NULL, NULL, '12333', '', NULL, 10, NULL, NULL, NULL, 'Master', '2004-04-28 00:00:00'),
('1', '2004-04-20 00:00:00', NULL, NULL, '444', '', NULL, 10, NULL, NULL, NULL, 'Master', '2004-04-28 00:00:00'),
('1', '2004-04-20 00:00:00', NULL, NULL, '111', '', NULL, 12, NULL, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('1', '2004-04-20 00:00:00', NULL, NULL, '111', '', NULL, 12, NULL, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('1', '2004-04-20 00:00:00', NULL, NULL, '1234', '', NULL, 12, NULL, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('1', '2004-04-20 00:00:00', NULL, NULL, '122', '', NULL, 12, NULL, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('1', '2004-04-30 00:00:00', NULL, NULL, '123', '', NULL, 10.55, NULL, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('1', '2004-04-30 00:00:00', NULL, NULL, '124', '', NULL, 12, NULL, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('15', '2004-09-16 00:00:00', NULL, NULL, '123', NULL, NULL, 1616.3, NULL, NULL, NULL, 'Master', '2004-08-17 00:00:00'),
('15', '2004-09-16 00:00:00', NULL, NULL, '123', NULL, NULL, 1.87, NULL, NULL, NULL, 'Master', '2004-08-17 00:00:00'),
('15', '2004-08-16 00:00:00', NULL, NULL, '1234', NULL, NULL, 1616.3, NULL, NULL, NULL, 'Master', '2004-08-18 00:00:00'),
('15', '2004-08-15 00:00:00', NULL, NULL, '111', NULL, NULL, 0.8, NULL, NULL, NULL, 'Master', '2004-08-18 00:00:00'),
('15', '2004-08-15 00:00:00', NULL, NULL, '123', NULL, NULL, 1553, NULL, NULL, NULL, 'Master', '2004-08-18 00:00:00'),
('15', '2004-08-15 00:00:00', NULL, NULL, '1', NULL, NULL, 212.96, NULL, NULL, NULL, 'Master', '2004-08-18 00:00:00'),
('15', '2004-08-15 00:00:00', NULL, NULL, '1234', NULL, NULL, 10408.7, NULL, NULL, NULL, 'Master', '2004-08-18 00:00:00'),
('15', '2004-08-15 00:00:00', NULL, NULL, '1234', NULL, NULL, 10408.7, NULL, NULL, NULL, 'Master', '2004-08-18 00:00:00'),
('15', '2004-08-15 00:00:00', NULL, NULL, '1234', NULL, NULL, 10408.7, NULL, NULL, NULL, 'Master', '2004-08-18 00:00:00'),
('15', '2004-08-15 00:00:00', NULL, NULL, '1', NULL, NULL, 78, NULL, NULL, NULL, 'Master', '2004-08-18 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_fornecedores`
--

CREATE TABLE `tb_fornecedores` (
  `id` int(11) NOT NULL,
  `cpf_cnpj` varchar(16) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `operador` int(11) DEFAULT NULL,
  `datatual` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_fornecedores`
--

INSERT INTO `tb_fornecedores` (`id`, `cpf_cnpj`, `nome`, `endereco`, `bairro`, `cidade`, `estado`, `cep`, `email`, `telefone`, `celular`, `operador`, `datatual`) VALUES
(2, '57034192804', 'teste que sobe e desce e desaparece na r', 'rua central da cidade de são miguel do oeste', '', 'São Miguel do Oeste', 'SC', '', 'fr@gmail.com', '', '11495555', NULL, NULL),
(4, '38934691000173', 'Info Sistemas e Info Sistemas e Ci ltda.', 'Rua dos aflitos, 1111', '', '', '', '', 'info@gmail.com', '', '119977770400', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_impostos`
--

CREATE TABLE `tb_impostos` (
  `cod_imposto` varchar(6) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `valor` decimal(19,4) DEFAULT 0.0000,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_impostos`
--

INSERT INTO `tb_impostos` (`cod_imposto`, `descricao`, `valor`, `Operador`, `Datatual`) VALUES
('3', 'Imposto de numero 3', 1500.0000, 'Master', '1899-12-30 00:06:42'),
('4', 'Imposto numero 4', 50.0000, 'Master', '2004-03-28 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_itemcompra`
--

CREATE TABLE `tb_itemcompra` (
  `numped` varchar(9) DEFAULT NULL,
  `NOTAFISC` varchar(10) DEFAULT NULL,
  `ITEM` varchar(3) DEFAULT NULL,
  `codprod` varchar(6) DEFAULT NULL,
  `QTDE` double DEFAULT NULL,
  `PRECOUNIT` double DEFAULT NULL,
  `PDESC` double DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_itemrecebimento`
--

CREATE TABLE `tb_itemrecebimento` (
  `Código` int(11) DEFAULT 0,
  `cod_obra` int(11) DEFAULT 0,
  `banco` varchar(20) DEFAULT NULL,
  `Num_cheque` varchar(20) DEFAULT NULL,
  `Num_NF` int(11) DEFAULT 0,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_itemvenda`
--

CREATE TABLE `tb_itemvenda` (
  `nsu` varchar(9) DEFAULT NULL,
  `codprod` varchar(6) DEFAULT NULL,
  `QTDEp` double DEFAULT NULL,
  `QtdeA` int(11) DEFAULT 0,
  `Precocusto` int(11) DEFAULT 0,
  `PRECOUNIT` double DEFAULT NULL,
  `PREPROMO` double DEFAULT NULL,
  `VALORTOT` double DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_itemvenda`
--

INSERT INTO `tb_itemvenda` (`nsu`, `codprod`, `QTDEp`, `QtdeA`, `Precocusto`, `PRECOUNIT`, `PREPROMO`, `VALORTOT`, `Operador`, `Datatual`) VALUES
('000000001', '000001', 1, NULL, NULL, 20, NULL, NULL, 'Master', '2004-04-27 00:00:00'),
('000000002', '000002', 1, NULL, NULL, 20, NULL, NULL, 'Master', '2004-04-27 00:00:00'),
('000000003', '000003', 1, NULL, NULL, 12, NULL, NULL, 'Master', '2004-04-27 00:00:00'),
('000000004', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('000000005', '000001', 1, 1, NULL, 21.11, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('000000006', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('000000007', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('000000008', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('000000009', '000002', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('000000009', '000002', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('000000010', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-04-30 00:00:00'),
('000000011', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000012', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000013', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000014', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000015', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000016', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000017', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000018', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000019', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000020', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000021', '000002', 10, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000021', '000002', 10, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000022', '000002', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000022', '000002', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000023', '000002', 100, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000023', '000002', 100, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000024', '000001', 100, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000025', '000001', 100, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000050', '000069', 1, NULL, 0, 3, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000050', '000069', 1, NULL, 0, 3, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000051', '000360', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000043', '000001', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000044', '000002', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000045', '000001', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000046', '000001', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000046', '000001', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000046', '000001', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000046', '000001', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000052', '000069', 3, NULL, 0, 1.08, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000052', '000069', 3, NULL, 0, 1.08, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000055', '000002', 1, 1, 3, 50, NULL, 50, 'Master', '2004-08-16 00:00:00'),
('000000055', '000002', 1, 1, 3, 50, NULL, 50, 'Master', '2004-08-16 00:00:00'),
('000000058', '000375', 1, 1, 24, 49, NULL, 49, 'Master', '2004-08-16 00:00:00'),
('000000058', '000375', 1, 1, 24, 49, NULL, 49, 'Master', '2004-08-16 00:00:00'),
('000000059', '000054', 1, 1, 1, 1.5, NULL, 1.5, 'Master', '2004-08-17 00:00:00'),
('000000059', '000054', 1, 1, 1, 1.5, NULL, 1.5, 'Master', '2004-08-17 00:00:00'),
('000000059', '000054', 1, 1, 1, 1.5, NULL, 1.5, 'Master', '2004-08-17 00:00:00'),
('000000059', '000054', 1, 1, 1, 1.5, NULL, 1.5, 'Master', '2004-08-17 00:00:00'),
('000000054', '000375', 1, 1, 24, 1, NULL, 1, 'Master', '2004-09-05 00:00:00'),
('000000057', '000069', 3, 1, 2, 2.12, NULL, 6.36, 'Master', '2004-09-05 00:00:00'),
('000000056', '000476', 1, 1, 18, 1, NULL, 1, 'Master', '2004-09-05 00:00:00'),
('000000060', '000113', 1, 1, 1, 2.5, NULL, 2.5, 'Master', '2006-09-11 00:00:00'),
('000000026', '000001', 100, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000027', '000002', 100, NULL, NULL, 17.5, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000028', '000002', 1, NULL, NULL, 17.5, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000029', '000001', 1, NULL, NULL, 17.5, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000029', '000001', 1, NULL, NULL, 17.5, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000030', '000002', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000031', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000032', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000033', '000002', 1, NULL, NULL, 17.5, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000034', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000035', '000002', 1, NULL, NULL, 17.5, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000036', '000001', 1, NULL, NULL, 17.5, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000037', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000038', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000047', '000001', 1, NULL, NULL, 21.11, NULL, NULL, 'Master', '2004-05-01 00:00:00'),
('000000040', '000001', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000039', '000001', 1, NULL, 0, 1, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
('000000066', '000360', 1, 1, 1, 3, NULL, 3, 'Master', '2004-08-18 00:00:00'),
('000000066', '000360', 1, 1, 1, 3, NULL, 3, 'Master', '2004-08-18 00:00:00'),
('000000067', '000002', 1, 1, 3, 4.5, NULL, 4.5, 'Master', '2004-08-18 00:00:00'),
('000000067', '000002', 1, 1, 3, 4.5, NULL, 4.5, 'Master', '2004-08-18 00:00:00'),
('000000068', '000360', 1, 1, 1, 3, NULL, 3, 'Master', '2004-08-18 00:00:00'),
('000000068', '000360', 1, 1, 1, 3, NULL, 3, 'Master', '2004-08-18 00:00:00'),
('000000054', '000375', 1, 1, 24, 1, NULL, 1, 'Master', '2004-09-05 00:00:00'),
('000000057', '000069', 3, 1, 2, 2.12, NULL, 6.36, 'Master', '2004-09-05 00:00:00'),
('000000056', '000476', 1, 1, 18, 1, NULL, 1, 'Master', '2004-09-05 00:00:00'),
('000000069', '000004', 1, 1, 16, 28, NULL, 28, 'Master', '2004-09-05 00:00:00'),
('000000069', '000007', 1, 1, 16, 28, NULL, 28, 'Master', '2004-09-05 00:00:00'),
('000000070', '000123', 1, 1, 1, 3, NULL, 3, 'Master', '2004-09-05 00:00:00'),
('000000070', '000124', 1, 1, 1, 3, NULL, 3, 'Master', '2004-09-05 00:00:00'),
('000000000', '000001', 100, 100, 18, 27.22, NULL, 2722, 'Master', '2004-09-05 00:00:00'),
('000000071', '000050', 50, 50, 162, 280, NULL, 14000, 'Master', '2004-09-05 00:00:00'),
('000000060', '000113', 1, 1, 1, 2.5, NULL, 2.5, 'Master', '2006-09-11 00:00:00'),
('000000072', '000006', 1, 3, 4, 7, NULL, 7, 'Master', '2008-01-21 00:00:00'),
('000000074', '000004', 1, 1, 10, 18, NULL, 18, 'Master', '2008-01-21 00:00:00'),
('000000075', '000001', 2, 2, 2, 5, NULL, 10, 'Master', '2008-01-21 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_lojas`
--

CREATE TABLE `tb_lojas` (
  `Loja` int(11) NOT NULL,
  `NOME` varchar(34) DEFAULT NULL,
  `ENDERECO` varchar(34) DEFAULT NULL,
  `BAIRRO` varchar(20) DEFAULT NULL,
  `CIDADE` varchar(20) DEFAULT NULL,
  `ESTADO` varchar(2) DEFAULT NULL,
  `CEP` varchar(9) DEFAULT NULL,
  `CGC` varchar(16) DEFAULT NULL,
  `INSC_EST` varchar(13) DEFAULT NULL,
  `TELEFONE` varchar(12) DEFAULT NULL,
  `TELEX` varchar(7) DEFAULT NULL,
  `CELULAR` varchar(12) DEFAULT NULL,
  `MENSAGEM1` varchar(40) DEFAULT NULL,
  `MENSAGEM2` varchar(40) DEFAULT NULL,
  `divCUPOM` tinyint(1) DEFAULT NULL,
  `SENHA` tinyint(1) DEFAULT NULL,
  `ATUALIZAD` tinyint(1) DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL,
  `Palavra` varchar(15) DEFAULT NULL,
  `Impresso` varchar(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_lojas`
--

INSERT INTO `tb_lojas` (`Loja`, `NOME`, `ENDERECO`, `BAIRRO`, `CIDADE`, `ESTADO`, `CEP`, `CGC`, `INSC_EST`, `TELEFONE`, `TELEX`, `CELULAR`, `MENSAGEM1`, `MENSAGEM2`, `divCUPOM`, `SENHA`, `ATUALIZAD`, `Operador`, `Datatual`, `Palavra`, `Impresso`) VALUES
(1, 'Vibe Informatica', 'Rua Marcilio Dias, 27 - loja N5', 'Gonzaga', 'Santos', 'SP', '11060210', '', '', '3288-1450', NULL, '', '', '', 0, 0, 0, 'Master', '2006-09-10 00:00:00', 'Orçamento', '80');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_movestoque`
--

CREATE TABLE `tb_movestoque` (
  `TIPO` int(11) DEFAULT 0,
  `E_S` varchar(1) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `CODVEND` varchar(2) DEFAULT NULL,
  `FARMACIA` varchar(3) DEFAULT NULL,
  `CODPROD` varchar(9) DEFAULT NULL,
  `QTDE` double DEFAULT NULL,
  `PRECOUNIT` double DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_movestoque`
--

INSERT INTO `tb_movestoque` (`TIPO`, `E_S`, `DATA`, `CODVEND`, `FARMACIA`, `CODPROD`, `QTDE`, `PRECOUNIT`, `Operador`, `Datatual`) VALUES
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 10, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 10, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 100, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 100, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 100, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 100, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 100, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 100, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 21.11, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-08-16 00:00:00', '34', NULL, '000001', 1, 1, 'Master', '2004-08-16 00:00:00'),
(1, 'S', '2004-08-16 00:00:00', '34', NULL, '000001', 1, 1, 'Master', '2004-08-16 00:00:00'),
(1, 'S', '2004-08-16 00:00:00', '34', NULL, '000069', 3, 1.08, 'Master', '2004-08-16 00:00:00'),
(1, 'S', '2004-08-16 00:00:00', '34', NULL, '000002', 1, 50, 'Master', '2004-08-16 00:00:00'),
(1, 'S', '2004-08-16 00:00:00', '34', NULL, '000375', 1, 49, 'Master', '2004-08-16 00:00:00'),
(1, 'E', '2004-08-16 00:00:00', NULL, NULL, '377', 100, 161.63, 'Master', '2004-08-16 00:00:00'),
(2, 'E', '2004-08-16 00:00:00', NULL, NULL, '1', 1, 1.9, 'Master', '2004-08-16 00:00:00'),
(2, 'E', '2004-08-16 00:00:00', NULL, NULL, '377', 100, 161.63, 'Master', '2004-08-16 00:00:00'),
(2, 'E', '2004-08-17 00:00:00', NULL, NULL, '377', 10, 161.63, 'Master', '2004-08-17 00:00:00'),
(2, 'E', '2004-08-17 00:00:00', NULL, NULL, '338', 11, 0.17, 'Master', '2004-08-17 00:00:00'),
(1, 'S', '2004-08-17 00:00:00', '34', NULL, '000054', 1, 1.5, 'Master', '2004-08-17 00:00:00'),
(1, 'S', '2004-08-17 00:00:00', '34', NULL, '000054', 1, 1.5, 'Master', '2004-08-17 00:00:00'),
(2, 'E', '2004-08-18 00:00:00', NULL, NULL, '377', 10, 161.63, 'Master', '2004-08-18 00:00:00'),
(2, 'E', '2004-08-18 00:00:00', NULL, NULL, '360', 1, 0.8, 'Master', '2004-08-18 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 50, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 50, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 30, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '1', 30, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(1, 'S', '2004-05-01 00:00:00', '33', NULL, '2', 1, 17.5, 'Master', '2004-05-01 00:00:00'),
(2, 'E', '2004-08-18 00:00:00', NULL, NULL, '73', 100, 15.53, 'Master', '2004-08-18 00:00:00'),
(2, 'E', '2004-08-18 00:00:00', NULL, NULL, '69', 121, 1.76, 'Master', '2004-08-18 00:00:00'),
(2, 'E', '2004-08-18 00:00:00', NULL, NULL, '317', 10, 2.32, 'Master', '2004-08-18 00:00:00'),
(2, 'E', '2004-08-18 00:00:00', NULL, NULL, '317', 10, 2.32, 'Master', '2004-08-18 00:00:00'),
(2, 'E', '2004-08-18 00:00:00', NULL, NULL, '317', 10, 2.32, 'Master', '2004-08-18 00:00:00'),
(2, 'E', '2004-08-18 00:00:00', NULL, NULL, '456', 10, 7.8, 'Master', '2004-08-18 00:00:00'),
(1, 'S', '2004-08-18 00:00:00', '34', NULL, '000360', 1, 3, 'Master', '2004-08-18 00:00:00'),
(1, 'S', '2004-08-18 00:00:00', '34', NULL, '000002', 1, 4.5, 'Master', '2004-08-18 00:00:00'),
(1, 'S', '2004-08-18 00:00:00', '34', NULL, '000360', 1, 3, 'Master', '2004-08-18 00:00:00'),
(2, 'E', '2004-08-23 00:00:00', NULL, NULL, '000476', 1, 18, 'Master', '2004-08-23 00:00:00'),
(2, 'E', '2004-08-23 00:00:00', NULL, NULL, '000476', 1, 18, 'Master', '2004-08-23 00:00:00'),
(2, 'E', '2004-08-31 00:00:00', NULL, NULL, '000069', 100, 2.1, 'Master', '2004-08-31 00:00:00'),
(1, 'S', '2004-09-05 00:00:00', '33', NULL, '000375', 1, 1, 'Master', '2004-09-05 00:00:00'),
(1, 'S', '2004-09-05 00:00:00', '33', NULL, '000069', 3, 2.12, 'Master', '2004-09-05 00:00:00'),
(1, 'S', '2004-09-05 00:00:00', '34', NULL, '000476', 1, 1, 'Master', '2004-09-05 00:00:00'),
(1, 'S', '2004-09-05 00:00:00', '34', NULL, '000360', 1, 3, 'Master', '2004-09-05 00:00:00'),
(8, 'S', '2004-09-09 00:00:00', '99', NULL, '000476', 1, 18, 'Master', '2004-09-09 00:00:00'),
(1, 'S', '2006-09-11 00:00:00', '34', NULL, '000113', 1, 2.5, 'Master', '2006-09-11 00:00:00'),
(2, 'E', '2008-01-21 00:00:00', NULL, NULL, '000014', 100, 5, 'Master', '2008-01-21 00:00:00'),
(1, 'S', '1899-12-30 00:03:25', '33', NULL, '000002', 1, 1.5, 'Master', '1899-12-30 00:03:25'),
(1, 'S', '2004-04-19 00:00:00', '33', NULL, '000471', 100, 1.5, 'Master', '2004-04-19 00:00:00'),
(1, 'S', '2004-04-19 00:00:00', '33', NULL, '000471', 100, 1.5, 'Master', '2004-04-19 00:00:00'),
(1, 'S', '2004-04-19 00:00:00', '33', NULL, '000476', 1, 20, 'Master', '2004-04-19 00:00:00'),
(1, 'S', '2004-04-21 00:00:00', '33', NULL, '1', 1, 20, 'Master', '2004-04-21 00:00:00'),
(1, 'S', '2004-04-21 00:00:00', '33', NULL, '1', 1, 20, 'Master', '2004-04-21 00:00:00'),
(1, 'S', '2004-04-21 00:00:00', '33', NULL, '1', 1, 21, 'Master', '2004-04-21 00:00:00'),
(2, 'E', '2004-04-26 00:00:00', NULL, NULL, '1', 1, 10, 'Master', '2004-04-26 00:00:00'),
(1, 'S', '2004-04-27 00:00:00', '33', NULL, '1', 1, 20, 'Master', '2004-04-27 00:00:00'),
(1, 'S', '2004-04-27 00:00:00', '33', NULL, '2', 1, 20, 'Master', '2004-04-27 00:00:00'),
(1, 'S', '2004-04-27 00:00:00', '34', NULL, '000003', 1, 12, 'Master', '2004-04-27 00:00:00'),
(2, 'E', '2004-04-28 00:00:00', NULL, NULL, '1', 1, 10, 'Master', '2004-04-28 00:00:00'),
(2, 'E', '2004-04-28 00:00:00', NULL, NULL, '1', 1, 10, 'Master', '2004-04-28 00:00:00'),
(2, 'E', '2004-04-28 00:00:00', NULL, NULL, '000003', 1, 10, 'Master', '2004-04-28 00:00:00'),
(2, 'E', '2004-04-28 00:00:00', NULL, NULL, '000003', 1, 10, 'Master', '2004-04-28 00:00:00'),
(2, 'E', '2004-04-30 00:00:00', NULL, NULL, '1', 1, 12, 'Master', '2004-04-30 00:00:00'),
(2, 'E', '2004-04-30 00:00:00', NULL, NULL, '1', 1, 12, 'Master', '2004-04-30 00:00:00'),
(2, 'E', '2004-04-30 00:00:00', NULL, NULL, '1', 1, 12, 'Master', '2004-04-30 00:00:00'),
(2, 'E', '2004-04-30 00:00:00', NULL, NULL, '1', 1, 12, 'Master', '2004-04-30 00:00:00'),
(2, 'E', '2004-04-30 00:00:00', NULL, NULL, '1', 1, 10.55, 'Master', '2004-04-30 00:00:00'),
(1, 'S', '2004-04-30 00:00:00', '33', NULL, '1', 1, 21.11, 'Master', '2004-04-30 00:00:00'),
(1, 'S', '2004-04-30 00:00:00', '33', NULL, '1', 1, 21.11, 'Master', '2004-04-30 00:00:00'),
(1, 'S', '2004-04-30 00:00:00', '33', NULL, '1', 1, 21.11, 'Master', '2004-04-30 00:00:00'),
(1, 'S', '2004-04-30 00:00:00', '33', NULL, '1', 1, 21.11, 'Master', '2004-04-30 00:00:00'),
(1, 'S', '2004-04-30 00:00:00', '33', NULL, '1', 1, 21.11, 'Master', '2004-04-30 00:00:00'),
(2, 'E', '2004-04-30 00:00:00', NULL, NULL, '2', 1, 12, 'Master', '2004-04-30 00:00:00'),
(1, 'S', '2004-04-30 00:00:00', '33', NULL, '2', 1, 21.11, 'Master', '2004-04-30 00:00:00'),
(1, 'S', '2004-04-30 00:00:00', '33', NULL, '2', 1, 21.11, 'Master', '2004-04-30 00:00:00'),
(1, 'S', '2004-04-30 00:00:00', '33', NULL, '1', 1, 21.11, 'Master', '2004-04-30 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_notas`
--

CREATE TABLE `tb_notas` (
  `Código` int(11) NOT NULL,
  `Num_NF` int(11) DEFAULT 0,
  `cod_obra` int(11) DEFAULT 0,
  `medicao` int(11) DEFAULT 0,
  `Valor_da_nota` decimal(19,4) DEFAULT 0.0000,
  `Data` datetime DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_operador`
--

CREATE TABLE `tb_operador` (
  `codoperador` int(11) NOT NULL,
  `NOME` varchar(34) NOT NULL,
  `SENHA` varchar(8) NOT NULL,
  `NIVEL` double NOT NULL,
  `Salario` decimal(19,4) DEFAULT NULL,
  `comissao` int(11) DEFAULT NULL,
  `OPerador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_operador`
--

INSERT INTO `tb_operador` (`codoperador`, `NOME`, `SENHA`, `NIVEL`, `Salario`, `comissao`, `OPerador`, `Datatual`) VALUES
(33, 'Numero 33', '@@A', 3, 0.0000, 1, 'Master', '2004-09-09 00:00:00'),
(34, 'Mais um Balconista de Testes', '@@A', 1, 1000.0000, 5, 'Master', '2004-03-29 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `codprod` varchar(6) DEFAULT NULL,
  `codbar` varchar(13) DEFAULT NULL,
  `codgrupo` int(11) DEFAULT 0,
  `PRD_SUB` varchar(4) DEFAULT NULL,
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
  `PRD_ETQ` varchar(1) DEFAULT NULL,
  `PRD_ICM` double DEFAULT NULL,
  `PRD_DCP` double DEFAULT NULL,
  `Precocusto` double DEFAULT NULL,
  `PRD_KIT` tinyint(1) DEFAULT NULL,
  `PRD_TPP` varchar(1) DEFAULT NULL,
  `operador` varchar(10) DEFAULT NULL,
  `datatual` datetime DEFAULT NULL,
  `dtultcomp` datetime DEFAULT NULL,
  `codigo_m` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`codprod`, `codbar`, `codgrupo`, `PRD_SUB`, `descricao`, `descresu`, `estinicial`, `estatual`, `minimo`, `unidade`, `codfor`, `indlucro`, `prevenda1`, `prevenda2`, `prevenda3`, `prevenda4`, `prevenda5`, `dtultvenda`, `dtcadastro`, `Ativo`, `PRD_CFO`, `PRD_IPI`, `PRD_SIT`, `PRD_CLF`, `PRD_QTU`, `PRD_DCA`, `PRD_VLA`, `PRD_DCM`, `PRD_ETQ`, `PRD_ICM`, `PRD_DCP`, `Precocusto`, `PRD_KIT`, `PRD_TPP`, `operador`, `datatual`, `dtultcomp`, `codigo_m`) VALUES
('000001', ' ', 1, NULL, 'PENTE DE MEMORIA 256 MB', 'ALICATE', NULL, -2, 0, 'PC', 14, 163, 5, 5, 5, 5, 5, '2004-08-16 00:00:00', '2002-04-24 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 18, 0, 1.9, 0, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
('000002', ' ', 4, NULL, 'PLACA DE VIDEO DE 486 ', 'ARAME GALV. 10', NULL, 100, 500, 'KG', 2, 41, 4.23, 4, 4, 4, 4, '2004-08-18 00:00:00', '2002-04-26 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 18, 0, 3.18, 0, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
('000003', ' ', 4, NULL, 'PLACA MSI 256 MB', 'ARAME GALV.18', NULL, 0, 0, 'KG', 2, 55, 6.2, 6, 6, 6, 6, '2004-02-27 00:00:00', '2002-04-26 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 18, 0, 4.76, 0, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
('000014', NULL, 1, NULL, 'CHAVE DE FENDA PEQUENA', 'CH FENDA PEQUENA', NULL, 100, NULL, 'UN', 14, 55, 0, 0, 0, 0, 0, '2008-01-21 00:00:00', '2002-04-26 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 18, 0, 5, 0, 'A', NULL, NULL, NULL, 1),
('000015', ' ', 1, NULL, 'CHAVE DE FENDA GRANDE', 'CH FENDA GRANDE', NULL, 0, 0, 'UN', 14, 100, 3, 3, 3, 3, 3, '2002-10-16 00:00:00', '2002-04-26 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 18, 0, 1.49, 0, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
('000016', ' ', 1, NULL, 'CHAVE PHILIPS', 'CHAVE PHILIPS', NULL, 0, 0, 'UN', 14, 0, 1.5, 2, 2, 2, 2, '2002-10-16 00:00:00', '2002-04-26 00:00:00', 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 18, 0, 0.69, 0, 'A', 'Master', '2008-01-21 00:00:00', NULL, 1),
('000193', NULL, 5, NULL, 'FRETE', 'FRETE', NULL, 0, NULL, 'UN', 0, 0, 0, 0, 0, 0, 0, NULL, '2002-05-27 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 'A', NULL, NULL, NULL, 1),
('000463', NULL, 6, NULL, 'MASCARA RESP DESC KSN S/VALV', 'MASCARA RESP DES', NULL, 0, NULL, 'UN', 187, 138, 3, 3, 3, 3, 3, '2004-03-25 00:00:00', '2003-09-01 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, 1.19, 0, 'A', NULL, NULL, NULL, 1),
('000464', NULL, 6, NULL, 'PROTETOR AURICULAR PVC USE PLUG', 'PROTETOR USEPLUG', NULL, 0, NULL, 'UN', 187, 37, 1.5, 2, 2, 2, 2, '2003-09-01 00:00:00', '2003-09-01 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0.56, 0, 'A', NULL, NULL, NULL, 1),
('000465', NULL, 6, NULL, 'PROTETOR AURICULAR C/HASTE PLAST.PLUS', 'PROTETOR C/HASTE', NULL, 0, NULL, 'UN', 187, 134, 14, 14, 14, 14, 14, '2003-09-01 00:00:00', '2003-09-01 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 0, NULL, 6.89, 0, 'A', NULL, NULL, NULL, 1),
('000469', NULL, 6, NULL, 'BOTINA ELATICO VQ', 'BOTINA ELAST.VQ', NULL, 0, NULL, 'UN', 190, 59, 35, 35, 35, 35, 35, '2004-03-25 00:00:00', '2003-09-30 00:00:00', 1, NULL, 0, NULL, NULL, 0, 0, 0, 0, NULL, 0, 0, 23.2, 0, 'A', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_servicos`
--

CREATE TABLE `tb_servicos` (
  `descricao` varchar(50) DEFAULT NULL,
  `unidade` varchar(3) DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL,
  `cod_servico` int(11) NOT NULL,
  `preco_custo` decimal(19,4) DEFAULT NULL,
  `Preco_venda` decimal(19,4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_servicos`
--

INSERT INTO `tb_servicos` (`descricao`, `unidade`, `Operador`, `Datatual`, `cod_servico`, `preco_custo`, `Preco_venda`) VALUES
('Serviço numero 6 de Testes ', '0', 'Master', '2004-03-28 00:00:00', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipomov`
--

CREATE TABLE `tb_tipomov` (
  `tipo` int(11) NOT NULL,
  `DESCRICAO` varchar(40) DEFAULT NULL,
  `E_S` varchar(1) DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_tipomov`
--

INSERT INTO `tb_tipomov` (`tipo`, `DESCRICAO`, `E_S`, `Operador`, `Datatual`) VALUES
(1, 'SAIDA POR VENDA', 'S', 'Master', '1899-12-30 00:03:36'),
(2, 'ENTRADA POR COMPRA', 'E', NULL, NULL),
(3, 'SAIDA PARA AJUSTE DE ESTOQUE', 'S', 'Master', '1899-12-30 00:08:37'),
(4, 'ENTRADA PARA AJUSTE DE ESTOQUE', 'E', 'Master', '2004-03-28 00:00:00'),
(6, 'SAIDA PARA CONSUMO INTERNO', 'S', 'Master', '1899-12-30 00:08:37'),
(8, 'ENTRADA POR DEVOLUCAO', 'E', NULL, NULL),
(9, 'DOACAO', 'S', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipovend`
--

CREATE TABLE `tb_tipovend` (
  `código` int(11) NOT NULL,
  `DESCRICAO` varchar(40) DEFAULT NULL,
  `ENTRADA` varchar(1) DEFAULT NULL,
  `DIAS` double DEFAULT NULL,
  `PARCELAS` double DEFAULT NULL,
  `ESPECIAL` varchar(50) DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_tipovend`
--

INSERT INTO `tb_tipovend` (`código`, `DESCRICAO`, `ENTRADA`, `DIAS`, `PARCELAS`, `ESPECIAL`, `Operador`, `Datatual`) VALUES
(1, 'CONSUMIDOR A VISTA', 'S', 0, 0, 'Especial como ninguem', 'Master', '2004-04-04 00:00:00'),
(2, 'quinze dias com ENTRADA', 'S', 15, 1, NULL, 'Master', '2004-02-24 00:00:00'),
(3, 'DUAS VEZES SEM ENTRADA', 'N', 30, 2, NULL, 'Master', '2004-02-24 00:00:00'),
(7, 'Fiado', 'N', 0, 0, 'Cliente especial', 'Master', '2004-04-04 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_uni`
--

CREATE TABLE `tb_uni` (
  `UNI_COD` varchar(2) DEFAULT NULL,
  `UNI_DESC` varchar(20) DEFAULT NULL,
  `UNI_QTD` double DEFAULT NULL,
  `OPERADOR` varchar(10) DEFAULT NULL,
  `DATATUAL` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_uni`
--

INSERT INTO `tb_uni` (`UNI_COD`, `UNI_DESC`, `UNI_QTD`, `OPERADOR`, `DATATUAL`) VALUES
('PC', 'PECA', 1, NULL, NULL),
('MT', 'METRO', 1, NULL, NULL),
('UN', 'UNIDADE', 1, NULL, NULL),
('BR', 'BARRA', 1, NULL, NULL),
('CT', 'CENTO', 1, NULL, NULL),
('SC', 'SACO', 1, NULL, NULL),
('RL', 'ROLO', 1, NULL, NULL),
('KG', 'KILO', 1, NULL, NULL),
('CX', 'CAIXA', 1, NULL, NULL),
('GL', 'GALAO', 1, NULL, NULL),
('01', '0.60 X 0.60', 0.36, NULL, NULL),
('02', '1.20 X 2.40', 2.88, NULL, NULL),
('03', '1.20 X 1.80', 2.16, NULL, NULL),
('04', '0.60 X 2.00', 1.2, NULL, NULL),
('05', '0.34', 0.34, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `login` varchar(10) NOT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `senha` varchar(8) NOT NULL,
  `nivel` tinyint(4) NOT NULL,
  `salario` decimal(12,2) DEFAULT NULL,
  `comissao` decimal(5,2) DEFAULT NULL,
  `operador` int(11) DEFAULT NULL,
  `datatual` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_vendas`
--

CREATE TABLE `tb_vendas` (
  `nsu` int(9) NOT NULL,
  `TIPOVENDA` int(11) DEFAULT 0,
  `CODCLI` int(11) DEFAULT 0,
  `DTA_VENDA` datetime DEFAULT NULL,
  `CODVEND` int(11) DEFAULT 0,
  `loja` varchar(3) DEFAULT NULL,
  `CODEMPRE` varchar(3) DEFAULT NULL,
  `CONVENIADO` varchar(12) DEFAULT NULL,
  `DESCONTO` double DEFAULT NULL,
  `NFISCAL` varchar(8) DEFAULT NULL,
  `ITEM` varchar(3) DEFAULT NULL,
  `DATAFECHAD` datetime DEFAULT NULL,
  `Operador` varchar(10) DEFAULT NULL,
  `Datatual` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Despejando dados para a tabela `tb_vendas`
--

INSERT INTO `tb_vendas` (`nsu`, `TIPOVENDA`, `CODCLI`, `DTA_VENDA`, `CODVEND`, `loja`, `CODEMPRE`, `CONVENIADO`, `DESCONTO`, `NFISCAL`, `ITEM`, `DATAFECHAD`, `Operador`, `Datatual`) VALUES
(1, 3, 1, '2004-04-27 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(2, 3, 1, '2004-04-27 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(3, 3, 1, '2004-04-27 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(4, 3, 1, '2004-04-30 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(5, 3, 1, '2004-04-30 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(6, 3, 1, '2004-04-30 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(7, 3, 1, '2004-04-30 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(8, 3, 1, '2004-04-30 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(9, 3, 1, '2004-04-30 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(10, 3, 1, '2004-04-30 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(11, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(12, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(13, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(14, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(15, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(16, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(17, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(18, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(19, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(20, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(21, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(22, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(23, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(24, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(25, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(26, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(27, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(28, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(29, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(30, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(31, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(32, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(33, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(34, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(35, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(36, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(37, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(38, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(39, 3, 1, '2004-08-16 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(40, 3, 1, '2004-08-16 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(43, 3, 1, '2004-08-16 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(44, 3, 1, '2004-08-16 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(45, 3, 1, '2004-08-16 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(46, 3, 1, '2004-08-16 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(47, 3, 1, '2004-05-01 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(52, 3, 184, '2004-08-16 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(54, 1, 1, '2004-09-05 21:15:16', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-09-05 21:15:16'),
(55, 3, 2, '2004-08-16 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(56, 1, 1, '2004-09-05 21:22:30', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-09-05 21:22:30'),
(57, 1, 1, '2004-09-05 21:16:58', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-09-05 21:16:58'),
(58, 3, 171, '2004-08-16 00:00:00', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-16 00:00:00'),
(59, 3, 184, '2004-08-18 22:34:36', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-17 00:00:00'),
(60, 1, 1, '2006-09-11 00:29:39', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2006-09-11 00:29:39'),
(66, 1, 1, '2004-08-18 23:03:12', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-18 23:03:12'),
(67, 1, 1, '2004-08-18 23:08:37', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-18 23:08:37'),
(68, 1, 1, '2004-08-18 23:10:39', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-08-18 23:10:39'),
(69, 0, 1, '2004-09-05 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 3, 2, '2004-09-05 21:34:17', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Master', '2004-09-05 21:34:17'),
(71, 0, 184, '2004-09-05 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 0, 394, '2008-01-21 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 0, 1, '2008-01-21 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 0, 1, '2008-01-21 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_apagar`
--
ALTER TABLE `tb_apagar`
  ADD KEY `CODFOR` (`CODFOR`),
  ADD KEY `DUPLICATA` (`DUPLICATA`);

--
-- Índices de tabela `tb_caixa`
--
ALTER TABLE `tb_caixa`
  ADD UNIQUE KEY `Hoje` (`Hoje`);

--
-- Índices de tabela `tb_ccusto`
--
ALTER TABLE `tb_ccusto`
  ADD KEY `codigo` (`codigo`);

--
-- Índices de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD UNIQUE KEY `Numped` (`Numped`),
  ADD KEY `CODFOR` (`CODFOR`);

--
-- Índices de tabela `tb_fornecedores`
--
ALTER TABLE `tb_fornecedores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `tb_grupos`
--
ALTER TABLE `tb_grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CODGRUPO` (`id`);

--
-- Índices de tabela `tb_itemcompra`
--
ALTER TABLE `tb_itemcompra`
  ADD KEY `numped` (`numped`);

--
-- Índices de tabela `tb_itemrecebimento`
--
ALTER TABLE `tb_itemrecebimento`
  ADD KEY `banco` (`banco`),
  ADD KEY `cod_obra` (`cod_obra`),
  ADD KEY `Num_cheque` (`Num_cheque`);

--
-- Índices de tabela `tb_itemvenda`
--
ALTER TABLE `tb_itemvenda`
  ADD KEY `nsu` (`nsu`);

--
-- Índices de tabela `tb_lojas`
--
ALTER TABLE `tb_lojas`
  ADD PRIMARY KEY (`Loja`);

--
-- Índices de tabela `tb_notas`
--
ALTER TABLE `tb_notas`
  ADD PRIMARY KEY (`Código`);

--
-- Índices de tabela `tb_operador`
--
ALTER TABLE `tb_operador`
  ADD KEY `codoperador` (`codoperador`);

--
-- Índices de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD UNIQUE KEY `codprod` (`codprod`),
  ADD KEY `descricao` (`descricao`);

--
-- Índices de tabela `tb_servicos`
--
ALTER TABLE `tb_servicos`
  ADD KEY `cod_servico` (`cod_servico`);

--
-- Índices de tabela `tb_tipomov`
--
ALTER TABLE `tb_tipomov`
  ADD UNIQUE KEY `tipo` (`tipo`);

--
-- Índices de tabela `tb_tipovend`
--
ALTER TABLE `tb_tipovend`
  ADD KEY `código` (`código`);

--
-- Índices de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD UNIQUE KEY `nsu` (`nsu`),
  ADD KEY `CODCLI` (`CODCLI`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_ccusto`
--
ALTER TABLE `tb_ccusto`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_compras`
--
ALTER TABLE `tb_compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_fornecedores`
--
ALTER TABLE `tb_fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_grupos`
--
ALTER TABLE `tb_grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_lojas`
--
ALTER TABLE `tb_lojas`
  MODIFY `Loja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_notas`
--
ALTER TABLE `tb_notas`
  MODIFY `Código` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_operador`
--
ALTER TABLE `tb_operador`
  MODIFY `codoperador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `tb_servicos`
--
ALTER TABLE `tb_servicos`
  MODIFY `cod_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_tipomov`
--
ALTER TABLE `tb_tipomov`
  MODIFY `tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_tipovend`
--
ALTER TABLE `tb_tipovend`
  MODIFY `código` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  MODIFY `nsu` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
