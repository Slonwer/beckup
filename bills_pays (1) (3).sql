-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Nov-2023 às 02:33
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sw1_aulas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bills_pays`
--

CREATE TABLE `bills_pays` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `installments` int(11) DEFAULT NULL,
  `obs` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `due_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `bills_pays`
--

INSERT INTO `bills_pays` (`id`, `nome`, `valor`, `installments`, `obs`, `created`, `modified`, `due_date`) VALUES
(1, 'matheus', 9500, 18, 'Moto', '2023-10-24 22:41:01', '2026-10-31 19:50:44', '2023-11-23'),
(2, 'pedro', 180000, 18, 'carro', '2023-11-13 21:21:00', '1970-12-02 00:00:00', '2023-11-03'),
(3, 'gabriel', 18000, 12, 'moto', '2023-11-13 21:47:00', '1900-01-30 00:00:00', '2024-02-10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bills_pays`
--
ALTER TABLE `bills_pays`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bills_pays`
--
ALTER TABLE `bills_pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
