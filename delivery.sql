-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Nov-2017 às 16:33
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome_produto` varchar(30) DEFAULT NULL,
  `tipo_produto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome_produto`, `tipo_produto`) VALUES
(1, 'Pizza', 'Mussarela'),
(2, 'Pizza', 'Calabresa'),
(3, 'Pizza', 'Mixta'),
(4, 'Pizza', '4 Queijos'),
(5, 'Pizza', 'Margarita'),
(6, 'Pizza', 'Mussarela'),
(7, 'Pizza', 'Calabresa'),
(8, 'Pizza', 'Mixta'),
(9, 'Pizza', '4 Queijos'),
(10, 'Pizza', 'Margarita'),
(11, 'Sanduíche', 'Hamburger'),
(12, 'Sanduíche', 'Cheesburger'),
(13, 'Sanduíche', 'Queijo Quente'),
(14, 'Sanduíche', 'Hamburger'),
(15, 'Sanduíche', 'Hot Dog'),
(16, 'Refrigerante', 'Coca Cola'),
(17, 'Refrigerante', 'Fanta Laranja'),
(18, 'Refrigerante', 'Fanta Uva'),
(19, 'Refrigerante', 'Guarana Garoto'),
(20, 'Refrigerante', 'H2O'),
(21, 'Salgado', 'Pastel'),
(22, 'Salgado', 'Quibe'),
(23, 'Salgado', 'Unha de Caranguejo'),
(24, 'Salgado', 'Coxinha de Galinha'),
(25, 'Salgado', 'Esfirra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
