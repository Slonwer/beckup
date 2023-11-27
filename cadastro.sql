-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/11/2023 às 19:24
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `bills_pays`
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

-- --------------------------------------------------------

--
-- Estrutura para tabela `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `consultas`
--

CREATE TABLE `consultas` (
  `ConsultaID` int(11) NOT NULL,
  `PacienteID` int(11) DEFAULT NULL,
  `MedicoID` int(11) DEFAULT NULL,
  `DataConsulta` date DEFAULT NULL,
  `Diagnostico` varchar(255) DEFAULT NULL,
  `Observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `numero_tel` varchar(20) DEFAULT NULL,
  `web_site` varchar(300) DEFAULT NULL,
  `localizacao` varchar(50) DEFAULT NULL,
  `referencia` varchar(40) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `historicomedico`
--

CREATE TABLE `historicomedico` (
  `HistoricoID` int(11) NOT NULL,
  `PacienteID` int(11) DEFAULT NULL,
  `DataRegistro` datetime DEFAULT NULL,
  `Descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicos`
--

CREATE TABLE `medicos` (
  `MedicoID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Especialidade` varchar(255) DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Especializacao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pacientes`
--

CREATE TABLE `pacientes` (
  `PacienteID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `DataNascimento` date NOT NULL,
  `Sexo` char(1) DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `prescricoes`
--

CREATE TABLE `prescricoes` (
  `PrescricaoID` int(11) NOT NULL,
  `PacienteID` int(11) DEFAULT NULL,
  `MedicoID` int(11) DEFAULT NULL,
  `DataPrescricao` datetime DEFAULT NULL,
  `Medicamentos` text DEFAULT NULL,
  `PrescricaoTexto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `cpf` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `cpf`) VALUES
(9, 'Malan', 'Malar23@Gmail.com', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `bills_pays`
--
ALTER TABLE `bills_pays`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`ConsultaID`),
  ADD KEY `PacienteID` (`PacienteID`),
  ADD KEY `MedicoID` (`MedicoID`);

--
-- Índices de tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historicomedico`
--
ALTER TABLE `historicomedico`
  ADD PRIMARY KEY (`HistoricoID`),
  ADD KEY `PacienteID` (`PacienteID`);

--
-- Índices de tabela `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`MedicoID`);

--
-- Índices de tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`PacienteID`);

--
-- Índices de tabela `prescricoes`
--
ALTER TABLE `prescricoes`
  ADD PRIMARY KEY (`PrescricaoID`),
  ADD KEY `PacienteID` (`PacienteID`),
  ADD KEY `MedicoID` (`MedicoID`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bills_pays`
--
ALTER TABLE `bills_pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `consultas`
--
ALTER TABLE `consultas`
  MODIFY `ConsultaID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historicomedico`
--
ALTER TABLE `historicomedico`
  MODIFY `HistoricoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `medicos`
--
ALTER TABLE `medicos`
  MODIFY `MedicoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `PacienteID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `prescricoes`
--
ALTER TABLE `prescricoes`
  MODIFY `PrescricaoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `consultas`
--
ALTER TABLE `consultas`
  ADD CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`PacienteID`) REFERENCES `pacientes` (`PacienteID`),
  ADD CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`MedicoID`) REFERENCES `medicos` (`MedicoID`);

--
-- Restrições para tabelas `historicomedico`
--
ALTER TABLE `historicomedico`
  ADD CONSTRAINT `historicomedico_ibfk_1` FOREIGN KEY (`PacienteID`) REFERENCES `pacientes` (`PacienteID`);

--
-- Restrições para tabelas `prescricoes`
--
ALTER TABLE `prescricoes`
  ADD CONSTRAINT `prescricoes_ibfk_1` FOREIGN KEY (`PacienteID`) REFERENCES `pacientes` (`PacienteID`),
  ADD CONSTRAINT `prescricoes_ibfk_2` FOREIGN KEY (`MedicoID`) REFERENCES `medicos` (`MedicoID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
