-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jun-2021 às 03:42
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistemas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso`
--

CREATE TABLE `acesso` (
  `id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `tabela` varchar(30) NOT NULL,
  `acesso` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `acesso`
--

INSERT INTO `acesso` (`id`, `tipo_id`, `tabela`, `acesso`) VALUES
(1, 1, 'acessos', 'S'),
(5, 1, 'log', 'S'),
(6, 1, 'menus', 'N'),
(8, 1, 'usuarios', 'S'),
(12, 1, 'home', 'S'),
(13, 1, 'veiculos', 'S'),
(14, 1, 'cor', 'S'),
(15, 1, 'marca', 'S'),
(16, 1, 'tipo', 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cor`
--

CREATE TABLE `cor` (
  `id` int(11) NOT NULL,
  `cor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cor`
--

INSERT INTO `cor` (`id`, `cor`) VALUES
(1, 'branca'),
(2, 'preta'),
(3, 'prata'),
(4, 'azul');

-- --------------------------------------------------------

--
-- Estrutura da tabela `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `ip` varchar(25) NOT NULL,
  `tabela` varchar(25) NOT NULL,
  `acao` varchar(100) NOT NULL,
  `tabela_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `log`
--

INSERT INTO `log` (`id`, `usuario_id`, `data`, `ip`, `tabela`, `acao`, `tabela_id`) VALUES
(1, 1, '2021-03-30 20:20:23', '::1', 'categorias', 'listar', NULL),
(2, 1, '2021-03-30 20:20:29', '::1', 'produtos', 'cadastros', NULL),
(3, 1, '2021-03-30 20:21:07', '::1', 'clientes', 'relatorios', NULL),
(4, 1, '2021-03-30 20:21:13', '::1', 'vendas', 'cadastros', NULL),
(5, 1, '2021-03-30 20:21:40', '::1', 'categorias', 'cadastros', NULL),
(6, 1, '2021-03-30 20:21:41', '::1', 'categorias', 'listar', NULL),
(7, 1, '2021-03-30 20:21:43', '::1', 'categorias', 'cadastros', NULL),
(8, 1, '2021-03-30 20:22:34', '::1', 'categorias', 'listar', NULL),
(9, 1, '2021-03-30 20:22:37', '::1', 'categorias', 'cadastros', 2),
(10, 1, '2021-03-30 20:22:49', '::1', 'categorias', 'cadastros', NULL),
(11, 1, '2021-03-30 20:22:50', '::1', 'categorias', 'listar', NULL),
(12, 1, '2021-03-30 20:22:52', '::1', 'categorias', 'cadastros', 4),
(13, 1, '2021-03-30 20:23:44', '::1', 'categorias', 'listar', NULL),
(14, 1, '2021-03-30 20:23:45', '::1', 'categorias', 'editar', 1),
(15, 1, '2021-03-30 20:23:57', '::1', 'categorias', 'listar', NULL),
(16, 1, '2021-03-30 20:24:03', '::1', 'categorias', 'editar', 3),
(17, 1, '2021-03-30 20:24:05', '::1', 'categorias', 'listar', NULL),
(18, 1, '2021-03-30 20:25:22', '::1', 'categorias', 'excluir', 2),
(19, 1, '2021-03-30 20:25:24', '::1', 'categorias', 'listar', NULL),
(20, 1, '2021-04-04 21:14:42', '::1', 'home', 'paginas', NULL),
(21, 1, '2021-04-04 21:14:45', '::1', 'produtos', 'cadastros', NULL),
(22, 1, '2021-04-04 21:14:47', '::1', 'produtos', 'listar', NULL),
(23, 1, '2021-04-04 21:15:00', '::1', 'tipos', 'cadastros', NULL),
(24, 1, '2021-04-04 21:15:12', '::1', 'clientes', 'cadastros', NULL),
(25, 1, '2021-04-04 21:17:24', '::1', 'produtos', 'cadastros', NULL),
(26, 1, '2021-04-04 21:17:26', '::1', 'produtos', 'listar', NULL),
(27, 1, '2021-04-04 21:17:40', '::1', 'cidades', 'cadastros', NULL),
(28, 1, '2021-04-05 20:07:26', '::1', 'home', 'paginas', NULL),
(29, 1, '2021-04-05 20:07:36', '::1', 'categorias', 'cadastros', NULL),
(30, 1, '2021-04-05 20:07:49', '::1', 'categorias', 'listar', NULL),
(31, 1, '2021-04-05 20:07:58', '::1', 'produtos', 'cadastros', NULL),
(32, 1, '2021-04-05 20:08:28', '::1', 'produtos', 'listar', NULL),
(33, 1, '2021-04-05 20:08:44', '::1', 'categorias', 'cadastros', NULL),
(34, 1, '2021-04-05 20:08:45', '::1', 'categorias', 'listar', NULL),
(35, 1, '2021-04-05 20:08:54', '::1', 'categorias', 'editar', 1),
(36, 1, '2021-04-05 20:12:39', '::1', 'categorias', 'cadastros', NULL),
(37, 1, '2021-04-05 20:12:43', '::1', 'categorias', 'salvar', NULL),
(38, 1, '2021-04-05 20:12:44', '::1', 'categorias', 'listar', NULL),
(39, 1, '2021-04-05 22:09:07', '::1', 'categorias', 'listar', NULL),
(40, 1, '2021-04-06 17:37:45', '::1', 'produtos', 'cadastros', NULL),
(41, 1, '2021-04-06 17:38:27', '::1', 'produtos', 'cadastros', NULL),
(42, 1, '2021-04-06 18:28:59', '::1', 'tipos', 'cadastros', NULL),
(43, 1, '2021-04-06 18:29:08', '::1', 'tipos', 'cadastros', NULL),
(44, 1, '2021-04-06 18:29:11', '::1', 'categorias', 'salvar', NULL),
(45, 1, '2021-04-06 18:29:13', '::1', 'tipos', 'cadastros', NULL),
(46, 1, '2021-04-06 18:29:36', '::1', 'tipos', 'cadastros', NULL),
(47, 1, '2021-04-06 18:29:39', '::1', 'tipos', 'salvar', NULL),
(48, 1, '2021-04-06 18:29:40', '::1', 'tipos', 'listar', NULL),
(49, 1, '2021-04-06 18:29:54', '::1', 'tipos', 'editar', 14),
(50, 1, '2021-04-06 18:29:59', '::1', 'tipos', 'salvar', NULL),
(51, 1, '2021-04-06 18:30:00', '::1', 'tipos', 'listar', NULL),
(52, 1, '2021-04-06 18:30:03', '::1', 'tipos', 'excluir', 14),
(53, 1, '2021-04-06 18:30:04', '::1', 'tipos', 'listar', NULL),
(54, 1, '2021-04-06 19:19:23', '::1', 'tipos', 'cadastros', NULL),
(55, 1, '2021-04-06 19:19:32', '::1', 'tipos', 'listar', NULL),
(56, 1, '2021-04-06 19:19:49', '::1', 'produtos', 'cadastros', NULL),
(57, 1, '2021-04-06 19:19:53', '::1', 'produtos', 'listar', NULL),
(58, 1, '2021-04-06 19:26:30', '::1', 'produtos', 'editar', 1),
(59, 1, '2021-04-06 19:27:41', '::1', 'produtos', 'editar', 1),
(60, 1, '2021-04-06 19:34:05', '::1', 'produtos', 'editar', 1),
(61, 1, '2021-04-06 19:35:27', '::1', 'produtos', 'editar', 1),
(62, 1, '2021-04-06 19:41:27', '::1', 'produtos', 'editar', 1),
(63, 1, '2021-04-06 19:41:34', '::1', 'produtos', 'cadastros', NULL),
(64, 1, '2021-04-06 19:41:37', '::1', 'produtos', 'listar', NULL),
(65, 1, '2021-04-06 19:41:43', '::1', 'produtos', 'editar', 4),
(66, 1, '2021-04-06 19:41:52', '::1', 'produtos', 'listar', NULL),
(67, 1, '2021-04-06 19:41:57', '::1', 'produtos', 'editar', 9),
(68, 1, '2021-04-06 19:44:32', '::1', 'produtos', 'cadastros', NULL),
(69, 1, '2021-04-06 19:44:40', '::1', 'produtos', 'listar', NULL),
(70, 1, '2021-04-06 19:44:45', '::1', 'produtos', 'editar', 4),
(71, 1, '2021-04-06 19:50:26', '::1', 'produtos', 'editar', 4),
(72, 1, '2021-04-06 19:50:35', '::1', 'produtos', 'editar', 4),
(73, 1, '2021-04-06 19:55:28', '::1', 'produtos', 'editar', 4),
(74, 1, '2021-04-06 19:55:59', '::1', 'produtos', 'editar', 4),
(75, 1, '2021-04-06 19:56:16', '::1', 'produtos', 'editar', 4),
(76, 1, '2021-04-06 19:56:43', '::1', 'produtos', 'editar', 4),
(77, 1, '2021-04-06 19:58:32', '::1', 'produtos', 'editar', 4),
(78, 1, '2021-04-06 19:59:24', '::1', 'produtos', 'editar', 4),
(79, 1, '2021-04-06 19:59:28', '::1', 'produtos', 'cadastros', NULL),
(80, 1, '2021-04-06 20:00:16', '::1', 'produtos', 'cadastros', NULL),
(81, 1, '2021-04-06 20:00:21', '::1', 'produtos', 'listar', NULL),
(82, 1, '2021-04-06 20:00:24', '::1', 'produtos', 'editar', 1),
(83, 1, '2021-04-06 20:02:02', '::1', 'produtos', 'salvar', NULL),
(84, 1, '2021-04-06 20:02:03', '::1', 'produtos', 'salvar', NULL),
(85, 1, '2021-04-06 20:02:04', '::1', 'produtos', 'editar', 1),
(86, 1, '2021-04-06 20:02:15', '::1', 'produtos', 'listar', NULL),
(87, 1, '2021-04-06 20:02:18', '::1', 'produtos', 'editar', 1),
(88, 1, '2021-04-06 20:04:48', '::1', 'produtos', 'salvar', NULL),
(89, 1, '2021-04-06 20:04:50', '::1', 'produtos', 'editar', 1),
(90, 1, '2021-04-06 20:04:52', '::1', 'produtos', 'listar', NULL),
(91, 1, '2021-04-06 20:05:01', '::1', 'produtos', 'editar', 1),
(92, 1, '2021-04-06 20:06:19', '::1', 'produtos', 'salvar', NULL),
(93, 1, '2021-04-06 20:06:21', '::1', 'produtos', 'editar', 1),
(94, 1, '2021-04-06 20:06:23', '::1', 'produtos', 'listar', NULL),
(95, 1, '2021-04-06 20:06:28', '::1', 'produtos', 'editar', 1),
(96, 1, '2021-04-06 20:06:31', '::1', 'produtos', 'salvar', NULL),
(97, 1, '2021-04-06 20:06:32', '::1', 'produtos', 'editar', 1),
(98, 1, '2021-04-06 20:06:35', '::1', 'produtos', 'listar', NULL),
(99, 1, '2021-04-06 20:08:34', '::1', 'produtos', 'editar', 1),
(100, 1, '2021-04-06 20:08:40', '::1', 'produtos', 'salvar', NULL),
(101, 1, '2021-04-06 20:08:42', '::1', 'produtos', 'editar', 1),
(102, 1, '2021-04-06 20:08:48', '::1', 'produtos', 'listar', NULL),
(103, 1, '2021-04-06 20:08:52', '::1', 'produtos', 'editar', 2),
(104, 1, '2021-04-06 20:09:00', '::1', 'produtos', 'salvar', NULL),
(105, 1, '2021-04-06 20:09:01', '::1', 'produtos', 'editar', 2),
(106, 1, '2021-04-06 20:09:08', '::1', 'produtos', 'listar', NULL),
(107, 1, '2021-04-06 20:09:10', '::1', 'produtos', 'editar', 2),
(108, 1, '2021-04-06 20:09:16', '::1', 'produtos', 'salvar', NULL),
(109, 1, '2021-04-06 20:09:18', '::1', 'produtos', 'editar', 2),
(110, 1, '2021-04-06 20:09:23', '::1', 'produtos', 'listar', NULL),
(111, 1, '2021-04-06 20:12:35', '::1', 'produtos', 'listar', NULL),
(112, 1, '2021-04-06 20:13:33', '::1', 'produtos', 'listar', NULL),
(113, 1, '2021-04-06 20:14:35', '::1', 'produtos', 'editar', 1),
(114, 1, '2021-04-06 20:51:13', '::1', 'produtos', 'editar', 1),
(115, 1, '2021-04-08 19:28:05', '::1', 'cidades', 'cadastros', NULL),
(116, 1, '2021-04-08 19:34:24', '::1', 'categorias', 'cadastros', NULL),
(117, 1, '2021-04-08 19:34:49', '::1', 'categorias', 'cadastros', NULL),
(118, 1, '2021-04-08 20:03:29', '::1', 'cidades', 'cadastros', NULL),
(119, 1, '2021-04-08 20:05:20', '::1', 'cidades', 'cadastros', NULL),
(120, 1, '2021-04-08 20:05:46', '::1', 'cidades', 'cadastros', NULL),
(121, 1, '2021-04-08 20:06:01', '::1', 'cidades', 'cadastros', NULL),
(122, 1, '2021-04-08 20:06:34', '::1', 'cidades', 'cadastros', NULL),
(123, 1, '2021-04-08 20:06:37', '::1', 'cidades', 'cadastros', NULL),
(124, 1, '2021-04-08 20:07:03', '::1', 'cidades', 'cadastros', NULL),
(125, 1, '2021-04-08 21:27:06', '::1', 'cidades', 'cadastros', NULL),
(126, 1, '2021-04-08 21:27:13', '::1', 'home', 'paginas', NULL),
(127, 1, '2021-04-20 20:07:43', '::1', 'home', 'paginas', NULL),
(128, 1, '2021-04-20 20:08:09', '::1', 'clientes', 'cadastros', NULL),
(129, 1, '2021-04-20 20:14:54', '::1', 'cidades', 'cadastros', NULL),
(130, 1, '2021-04-20 20:15:01', '::1', 'clientes', 'cadastros', NULL),
(131, 1, '2021-04-20 20:15:04', '::1', 'clientes', 'cadastros', NULL),
(132, 1, '2021-04-20 20:15:06', '::1', 'clientes', 'listar', NULL),
(133, 1, '2021-04-20 20:15:10', '::1', 'clientes', 'cadastros', NULL),
(134, 1, '2021-04-20 20:18:00', '::1', 'clientes', 'cadastros', NULL),
(135, 1, '2021-04-20 20:36:35', '::1', 'clientes', 'cadastros', NULL),
(136, 1, '2021-04-20 20:37:08', '::1', 'home', 'paginas', NULL),
(137, 1, '2021-04-20 20:37:12', '::1', 'clientes', 'cadastros', NULL),
(138, 1, '2021-04-20 20:37:42', '::1', 'home', 'paginas', NULL),
(139, 1, '2021-04-20 20:37:47', '::1', 'clientes', 'cadastros', NULL),
(140, 1, '2021-04-22 19:15:06', '::1', 'home', 'paginas', NULL),
(141, 1, '2021-04-22 19:15:15', '::1', 'clientes', 'relatorios', NULL),
(142, 1, '2021-04-22 19:15:52', '::1', 'clientes', 'listar', NULL),
(143, 1, '2021-04-22 19:15:56', '::1', 'clientes', 'relatorios', NULL),
(144, 1, '2021-04-22 19:16:20', '::1', 'logs', 'relatorios', NULL),
(145, 1, '2021-04-22 19:18:52', '::1', 'cidades', 'cadastros', NULL),
(146, 1, '2021-04-22 19:18:55', '::1', 'cidades', 'listar', NULL),
(147, 1, '2021-04-22 19:19:19', '::1', 'cidades', 'editar', 2),
(148, 1, '2021-04-22 19:19:21', '::1', 'cidades', 'listar', NULL),
(149, 1, '2021-04-22 19:19:37', '::1', 'clientes', 'cadastros', NULL),
(150, 1, '2021-04-22 19:20:30', '::1', 'usuarios', 'cadastros', NULL),
(151, 1, '2021-04-22 19:20:56', '::1', 'usuarios', 'listar', NULL),
(152, 1, '2021-04-22 19:21:50', '::1', 'clientes', 'cadastros', NULL),
(153, 1, '2021-04-22 19:26:24', '::1', 'clientes', 'cadastros', NULL),
(154, 1, '2021-04-22 19:34:21', '::1', 'clientes', 'cadastros', NULL),
(155, 1, '2021-04-22 19:39:26', '::1', 'clientes', 'cadastros', NULL),
(156, 1, '2021-04-22 19:40:03', '::1', 'clientes', 'cadastros', NULL),
(157, 1, '2021-04-22 19:51:22', '::1', 'clientes', 'cadastros', NULL),
(158, 1, '2021-04-22 19:53:54', '::1', 'clientes', 'cadastros', NULL),
(159, 1, '2021-04-22 20:00:07', '::1', 'clientes', 'cadastros', NULL),
(160, 1, '2021-04-22 20:06:13', '::1', 'clientes', 'cadastros', NULL),
(161, 1, '2021-04-22 20:12:22', '::1', 'clientes', 'cadastros', NULL),
(162, 1, '2021-04-22 20:14:35', '::1', 'clientes', 'cadastros', NULL),
(163, 1, '2021-04-22 20:16:56', '::1', 'clientes', 'editar', 1),
(164, 1, '2021-04-22 20:34:48', '::1', 'clientes', 'editar', 1),
(165, 1, '2021-04-22 20:35:42', '::1', 'clientes', 'editar', 1),
(166, 1, '2021-04-22 20:35:59', '::1', 'clientes', 'editar', 1),
(167, 1, '2021-04-22 20:36:47', '::1', 'clientes', 'editar', 1),
(168, 1, '2021-04-22 21:16:24', '::1', 'clientes', 'cadastros', NULL),
(169, 1, '2021-04-22 21:16:33', '::1', 'summernote', 'editar', 0),
(170, 1, '2021-04-22 21:16:33', '::1', 'parsley.min.js.map', 'js', NULL),
(171, 1, '2021-04-22 21:16:33', '::1', 'summernote', 'editar', 0),
(172, 1, '2021-04-22 21:17:06', '::1', 'clientes', 'cadastros', NULL),
(173, 1, '2021-04-22 21:18:23', '::1', 'clientes', 'cadastros', NULL),
(174, 1, '2021-04-22 21:19:23', '::1', 'summernote', 'editar', 0),
(175, 1, '2021-04-22 21:19:23', '::1', 'parsley.min.js.map', 'js', NULL),
(176, 1, '2021-04-22 21:19:23', '::1', 'summernote', 'editar', 0),
(177, 1, '2021-04-22 21:19:31', '::1', 'clientes', 'cadastros', NULL),
(178, 1, '2021-04-22 21:19:31', '::1', 'summernote', 'editar', 0),
(179, 1, '2021-04-22 21:19:31', '::1', 'parsley.min.js.map', 'js', NULL),
(180, 1, '2021-04-22 21:19:31', '::1', 'summernote', 'editar', 0),
(181, 1, '2021-04-22 21:24:09', '::1', 'clientes', 'cadastros', NULL),
(182, 1, '2021-04-22 21:24:09', '::1', 'summernote', 'editar', 0),
(183, 1, '2021-04-22 21:24:09', '::1', 'summernote', 'editar', 0),
(184, 1, '2021-04-22 21:24:09', '::1', 'parsley.min.js.map', 'js', NULL),
(185, 1, '2021-04-22 21:28:49', '::1', 'clientes', 'cadastros', NULL),
(186, 1, '2021-04-22 21:28:49', '::1', 'summernote', 'editar', 0),
(187, 1, '2021-04-22 21:28:50', '::1', 'parsley.min.js.map', 'js', NULL),
(188, 1, '2021-04-22 21:28:50', '::1', 'summernote', 'editar', 0),
(189, 1, '2021-04-22 21:30:24', '::1', 'clientes', 'cadastros', NULL),
(190, 1, '2021-04-22 21:30:25', '::1', 'summernote', 'editar', 0),
(191, 1, '2021-04-22 21:30:25', '::1', 'parsley.min.js.map', 'js', NULL),
(192, 1, '2021-04-22 21:30:25', '::1', 'summernote', 'editar', 0),
(193, 1, '2021-04-22 21:39:34', '::1', 'clientes', 'cadastros', NULL),
(194, 1, '2021-04-22 21:39:34', '::1', 'summernote', 'editar', 0),
(195, 1, '2021-04-22 21:39:34', '::1', 'summernote', 'editar', 0),
(196, 1, '2021-04-22 21:39:34', '::1', 'parsley.min.js.map', 'js', NULL),
(197, 1, '2021-04-22 21:40:09', '::1', 'clientes', 'cadastros', NULL),
(198, 1, '2021-04-22 21:40:09', '::1', 'summernote', 'editar', 0),
(199, 1, '2021-04-22 21:40:09', '::1', 'summernote', 'editar', 0),
(200, 1, '2021-04-22 21:40:10', '::1', 'parsley.min.js.map', 'js', NULL),
(201, 1, '2021-04-22 21:40:12', '::1', 'clientes', 'cadastros', NULL),
(202, 1, '2021-04-22 21:40:13', '::1', 'summernote', 'editar', 0),
(203, 1, '2021-04-22 21:40:13', '::1', 'summernote', 'editar', 0),
(204, 1, '2021-04-22 21:40:13', '::1', 'parsley.min.js.map', 'js', NULL),
(205, 1, '2021-04-22 21:41:26', '::1', 'clientes', 'cadastros', NULL),
(206, 1, '2021-04-22 21:41:27', '::1', 'summernote', 'editar', 0),
(207, 1, '2021-04-22 21:41:27', '::1', 'parsley.min.js.map', 'js', NULL),
(208, 1, '2021-04-22 21:41:27', '::1', 'summernote', 'editar', 0),
(209, 1, '2021-04-22 22:00:59', '::1', 'clientes', 'cadastros', NULL),
(210, 1, '2021-04-22 22:01:00', '::1', 'summernote', 'editar', 0),
(211, 1, '2021-04-22 22:01:00', '::1', 'parsley.min.js.map', 'js', NULL),
(212, 1, '2021-04-22 22:01:00', '::1', 'summernote', 'editar', 0),
(213, 1, '2021-04-27 19:10:45', '::1', 'home', 'paginas', NULL),
(214, 1, '2021-04-27 19:10:48', '::1', 'clientes', 'cadastros', NULL),
(215, 1, '2021-04-27 19:14:07', '::1', 'clientes', 'listar', NULL),
(216, 1, '2021-04-27 19:14:08', '::1', 'clientes', 'cadastros', NULL),
(217, 1, '2021-04-27 19:15:52', '::1', 'summernote', 'editar', 0),
(218, 1, '2021-04-27 19:15:52', '::1', 'summernote', 'editar', 0),
(219, 1, '2021-04-27 19:15:52', '::1', 'parsley.min.js.map', 'js', NULL),
(220, 1, '2021-04-27 19:15:53', '::1', 'clientes', 'cadastros', NULL),
(221, 1, '2021-04-27 19:15:54', '::1', 'summernote', 'editar', 0),
(222, 1, '2021-04-27 19:15:54', '::1', 'summernote', 'editar', 0),
(223, 1, '2021-04-27 19:15:54', '::1', 'parsley.min.js.map', 'js', NULL),
(224, 1, '2021-04-27 19:17:07', '::1', 'clientes', 'cadastros', NULL),
(225, 1, '2021-04-27 19:17:07', '::1', 'summernote', 'editar', 0),
(226, 1, '2021-04-27 19:17:07', '::1', 'summernote', 'editar', 0),
(227, 1, '2021-04-27 19:17:07', '::1', 'parsley.min.js.map', 'js', NULL),
(228, 1, '2021-04-27 19:23:01', '::1', 'categorias', 'cadastros', NULL),
(229, 1, '2021-04-27 19:23:02', '::1', 'parsley.min.js.map', 'js', NULL),
(230, 1, '2021-04-27 19:23:02', '::1', 'summernote', 'editar', 0),
(231, 1, '2021-04-27 19:23:02', '::1', 'summernote', 'editar', 0),
(232, 1, '2021-04-27 19:23:03', '::1', 'categorias', 'listar', NULL),
(233, 1, '2021-04-27 19:23:04', '::1', 'summernote', 'editar', 0),
(234, 1, '2021-04-27 19:23:04', '::1', 'summernote', 'editar', 0),
(235, 1, '2021-04-27 19:23:04', '::1', 'parsley.min.js.map', 'js', NULL),
(236, 1, '2021-04-27 19:24:12', '::1', 'categorias', 'listar', NULL),
(237, 1, '2021-04-27 19:24:16', '::1', 'clientes', 'cadastros', NULL),
(238, 1, '2021-04-27 19:24:41', '::1', 'clientes1', 'cadastros', NULL),
(239, 1, '2021-04-27 19:24:52', '::1', 'clientes', 'editar', 1),
(240, 1, '2021-04-27 19:31:30', '::1', 'clientes', 'editar', 1),
(241, 1, '2021-04-27 19:31:33', '::1', 'clientes', 'cadastros', NULL),
(242, 1, '2021-04-27 19:31:40', '::1', 'summernote', 'editar', 0),
(243, 1, '2021-04-27 19:31:40', '::1', 'summernote', 'editar', 0),
(244, 1, '2021-04-27 19:31:40', '::1', 'parsley.min.js.map', 'js', NULL),
(245, 1, '2021-04-27 19:53:36', '::1', 'clientes', 'cadastros', NULL),
(246, 1, '2021-04-27 19:53:37', '::1', 'summernote', 'editar', 0),
(247, 1, '2021-04-27 19:53:37', '::1', 'summernote', 'editar', 0),
(248, 1, '2021-04-27 19:53:37', '::1', 'parsley.min.js.map', 'js', NULL),
(249, 1, '2021-04-27 19:55:21', '::1', 'clientes', 'cadastros', NULL),
(250, 1, '2021-04-27 19:55:21', '::1', 'summernote', 'editar', 0),
(251, 1, '2021-04-27 19:55:21', '::1', 'summernote', 'editar', 0),
(252, 1, '2021-04-27 19:55:21', '::1', 'parsley.min.js.map', 'js', NULL),
(253, 1, '2021-04-27 20:01:04', '::1', 'clientes', 'cadastros', NULL),
(254, 1, '2021-04-27 20:01:04', '::1', 'summernote', 'editar', 0),
(255, 1, '2021-04-27 20:01:04', '::1', 'summernote', 'editar', 0),
(256, 1, '2021-04-27 20:01:04', '::1', 'parsley.min.js.map', 'js', NULL),
(257, 1, '2021-04-27 20:05:42', '::1', 'clientes', 'salvar', NULL),
(258, 1, '2021-04-27 20:05:58', '::1', 'clientes', 'salvar', NULL),
(259, 1, '2021-04-27 20:06:26', '::1', 'clientes', 'salvar', NULL),
(260, 1, '2021-04-27 20:08:06', '::1', 'clientes', 'salvar', NULL),
(261, 1, '2021-04-27 20:09:50', '::1', 'clientes', 'salvar', NULL),
(262, 1, '2021-04-27 20:20:16', '::1', 'clientes', 'salvar', NULL),
(263, 1, '2021-04-27 20:22:57', '::1', 'clientes', 'salvar', NULL),
(264, 1, '2021-04-27 20:23:55', '::1', 'clientes', 'salvar', NULL),
(265, 1, '2021-04-27 20:24:05', '::1', 'clientes', 'salvar', NULL),
(266, 1, '2021-04-27 20:24:57', '::1', 'clientes', 'salvar', NULL),
(267, 1, '2021-04-27 20:25:02', '::1', 'clientes', 'cadastros', NULL),
(268, 1, '2021-04-29 19:11:30', '::1', 'home', 'paginas', NULL),
(269, 1, '2021-04-29 19:11:34', '::1', 'clientes', 'cadastros', NULL),
(270, 1, '2021-04-29 19:12:38', '::1', 'clientes', 'salvar', NULL),
(271, 1, '2021-04-29 19:17:31', '::1', 'clientes', 'salvar', NULL),
(272, 1, '2021-04-29 19:17:36', '::1', 'clientes', 'cadastros', NULL),
(273, 1, '2021-04-29 19:19:44', '::1', 'clientes', 'salvar', NULL),
(274, 1, '2021-04-29 19:24:10', '::1', 'clientes', 'salvar', NULL),
(275, 1, '2021-04-29 19:24:18', '::1', 'clientes', 'cadastros', NULL),
(276, 1, '2021-04-29 19:24:37', '::1', 'clientes', 'salvar', NULL),
(277, 1, '2021-04-29 19:24:41', '::1', 'clientes', 'cadastros', NULL),
(278, 1, '2021-04-29 19:25:09', '::1', 'clientes', 'salvar', NULL),
(279, 1, '2021-04-29 19:29:02', '::1', 'clientes', 'cadastros', NULL),
(280, 1, '2021-04-29 19:29:13', '::1', 'clientes', 'salvar', NULL),
(281, 1, '2021-04-29 19:29:18', '::1', 'clientes', 'cadastros', NULL),
(282, 1, '2021-04-29 19:29:35', '::1', 'clientes', 'salvar', NULL),
(283, 1, '2021-04-29 19:44:43', '::1', 'clientes', 'salvar', NULL),
(284, 1, '2021-04-29 19:44:48', '::1', 'clientes', 'cadastros', NULL),
(285, 1, '2021-04-29 19:46:56', '::1', 'clientes', 'salvar', NULL),
(286, 1, '2021-04-29 19:47:21', '::1', 'clientes', 'salvar', NULL),
(287, 1, '2021-04-29 19:48:07', '::1', 'clientes', 'cadastros', NULL),
(288, 1, '2021-04-29 19:48:32', '::1', 'clientes', 'salvar', NULL),
(289, 1, '2021-04-29 19:48:33', '::1', 'clientes', 'cadastros', NULL),
(290, 1, '2021-04-29 19:56:11', '::1', 'clientes', 'editar', 3),
(291, 1, '2021-04-29 19:56:59', '::1', 'clientes', 'salvar', NULL),
(292, 1, '2021-04-29 19:58:01', '::1', 'clientes', 'salvar', NULL),
(293, 1, '2021-04-29 19:59:55', '::1', 'clientes', 'salvar', NULL),
(294, 1, '2021-04-29 20:01:58', '::1', 'clientes', 'salvar', NULL),
(295, 1, '2021-04-29 20:02:00', '::1', 'clientes', 'editar', 3),
(296, 1, '2021-04-29 20:02:10', '::1', 'clientes', 'cadastros', 0),
(297, 1, '2021-04-29 20:02:20', '::1', 'clientes', 'editar', 0),
(298, 1, '2021-04-29 20:03:40', '::1', 'clientes', 'editar', 0),
(299, 1, '2021-04-29 20:06:06', '::1', 'clientes', 'editar', 0),
(300, 1, '2021-04-29 20:07:13', '::1', 'clientes', 'editar', 0),
(301, 1, '2021-04-29 20:07:19', '::1', 'clientes', 'editar', 0),
(302, 1, '2021-04-29 20:07:22', '::1', 'clientes', 'editar', 3),
(303, 1, '2021-04-29 20:07:26', '::1', 'clientes', 'editar', 30),
(304, 1, '2021-04-29 20:07:32', '::1', 'clientes', 'editar', 1),
(305, 1, '2021-04-29 20:07:41', '::1', 'clientes', 'editar', 0),
(306, 1, '2021-04-29 20:07:47', '::1', 'clientes', 'cadastros', 0),
(307, 1, '2021-04-29 20:07:59', '::1', 'clientes', 'cadastros', 0),
(308, 1, '2021-04-29 20:14:10', '::1', 'clientes', 'cadastros', NULL),
(309, 1, '2021-04-29 20:14:12', '::1', 'clientes', 'cadastros', NULL),
(310, 1, '2021-04-29 20:14:29', '::1', 'clientes', 'editar', 1),
(311, 1, '2021-04-29 20:14:29', '::1', 'clientes', 'editar', 1),
(312, 1, '2021-04-29 20:14:31', '::1', 'clientes', 'editar', 1),
(313, 1, '2021-04-29 20:14:50', '::1', 'clientes', 'salvar', NULL),
(314, 1, '2021-04-29 20:15:05', '::1', 'clientes', 'editar', 1),
(315, 1, '2021-04-29 20:16:24', '::1', 'clientes', 'cadastros', NULL),
(316, 1, '2021-04-29 20:16:42', '::1', 'clientes', 'editar', 1),
(317, 1, '2021-04-29 20:19:30', '::1', 'clientes', 'salvar', NULL),
(318, 1, '2021-04-29 20:19:30', '::1', 'clientes', 'salvar', NULL),
(319, 1, '2021-04-29 20:19:33', '::1', 'clientes', 'editar', 1),
(320, 1, '2021-04-29 20:20:05', '::1', 'clientes', 'salvar', NULL),
(321, 1, '2021-04-29 20:23:02', '::1', 'clientes', 'salvar', NULL),
(322, 1, '2021-04-29 20:23:14', '::1', 'clientes', 'salvar', NULL),
(323, 1, '2021-04-29 20:23:14', '::1', 'clientes', 'salvar', NULL),
(324, 1, '2021-04-29 20:23:16', '::1', 'clientes', 'editar', 1),
(325, 1, '2021-04-29 20:25:02', '::1', 'clientes', 'editar', 2),
(326, 1, '2021-04-29 20:25:15', '::1', 'clientes', 'salvar', NULL),
(327, 1, '2021-04-29 20:25:17', '::1', 'clientes', 'editar', 2),
(328, 1, '2021-04-29 20:25:43', '::1', 'clientes', 'salvar', NULL),
(329, 1, '2021-04-29 20:25:45', '::1', 'clientes', 'editar', 2),
(330, 1, '2021-04-29 20:34:34', '::1', 'clientes', 'listar', NULL),
(331, 1, '2021-04-29 20:34:53', '::1', 'clientes', 'editar', 2),
(332, 1, '2021-04-29 20:35:17', '::1', 'vendas', 'cadastros', NULL),
(333, 1, '2021-04-29 20:35:41', '::1', 'clientes', 'cadastros', NULL),
(334, 1, '2021-04-29 20:35:43', '::1', 'clientes', 'editar', 1),
(335, 1, '2021-04-29 20:35:43', '::1', 'clientes', 'editar', 1),
(336, 1, '2021-04-29 20:35:54', '::1', 'vendas', 'cadastros', NULL),
(337, 1, '2021-04-29 21:20:59', '::1', 'vendas', 'cadastros', NULL),
(338, 1, '2021-04-29 21:38:54', '::1', 'vendas', 'cadastros', NULL),
(339, 1, '2021-04-29 21:52:32', '::1', 'vendas', 'cadastros', NULL),
(340, 1, '2021-04-29 22:03:42', '::1', 'vendas', 'cadastros', NULL),
(341, 1, '2021-04-29 22:04:15', '::1', 'vendas', 'cadastros', NULL),
(342, 1, '2021-05-04 19:17:13', '::1', 'home', 'paginas', NULL),
(343, 1, '2021-05-04 19:20:23', '::1', 'vendas', 'cadastros', NULL),
(344, 1, '2021-05-04 19:27:42', '::1', 'vendas', 'cadastros', NULL),
(345, 1, '2021-05-04 19:34:11', '::1', 'vendas', 'cadastros', NULL),
(346, 1, '2021-05-04 19:34:21', '::1', 'summernote', 'editar', 0),
(347, 1, '2021-05-04 19:34:21', '::1', 'summernote', 'editar', 0),
(348, 1, '2021-05-04 19:34:21', '::1', 'parsley.min.js.map', 'js', NULL),
(349, 1, '2021-05-04 19:35:28', '::1', 'vendas', 'cadastros', NULL),
(350, 1, '2021-05-04 19:35:28', '::1', 'summernote', 'editar', 0),
(351, 1, '2021-05-04 19:35:28', '::1', 'summernote', 'editar', 0),
(352, 1, '2021-05-04 19:35:28', '::1', 'parsley.min.js.map', 'js', NULL),
(353, 1, '2021-05-04 19:36:01', '::1', 'vendas', 'cadastros', NULL),
(354, 1, '2021-05-04 19:36:01', '::1', 'summernote', 'editar', 0),
(355, 1, '2021-05-04 19:36:01', '::1', 'summernote', 'editar', 0),
(356, 1, '2021-05-04 19:36:01', '::1', 'parsley.min.js.map', 'js', NULL),
(357, 1, '2021-05-04 19:36:38', '::1', 'vendas', 'cadastros', NULL),
(358, 1, '2021-05-04 19:36:38', '::1', 'summernote', 'editar', 0),
(359, 1, '2021-05-04 19:36:38', '::1', 'parsley.min.js.map', 'js', NULL),
(360, 1, '2021-05-04 19:36:38', '::1', 'summernote', 'editar', 0),
(361, 1, '2021-05-04 19:38:06', '::1', 'vendas', 'cadastros', NULL),
(362, 1, '2021-05-04 19:38:07', '::1', 'summernote', 'editar', 0),
(363, 1, '2021-05-04 19:38:07', '::1', 'summernote', 'editar', 0),
(364, 1, '2021-05-04 19:38:07', '::1', 'parsley.min.js.map', 'js', NULL),
(365, 1, '2021-05-04 19:39:36', '::1', 'vendas', 'cadastros', NULL),
(366, 1, '2021-05-04 19:39:37', '::1', 'summernote', 'editar', 0),
(367, 1, '2021-05-04 19:39:37', '::1', 'parsley.min.js.map', 'js', NULL),
(368, 1, '2021-05-04 19:39:37', '::1', 'summernote', 'editar', 0),
(369, 1, '2021-05-04 19:39:48', '::1', 'vendas', 'cadastros', NULL),
(370, 1, '2021-05-04 19:39:49', '::1', 'summernote', 'editar', 0),
(371, 1, '2021-05-04 19:39:49', '::1', 'summernote', 'editar', 0),
(372, 1, '2021-05-04 19:39:49', '::1', 'parsley.min.js.map', 'js', NULL),
(373, 1, '2021-05-04 19:44:03', '::1', 'vendas', 'salvar', NULL),
(374, 1, '2021-05-04 19:44:04', '::1', 'summernote', 'editar', 0),
(375, 1, '2021-05-04 19:44:04', '::1', 'summernote', 'editar', 0),
(376, 1, '2021-05-04 19:44:04', '::1', 'parsley.min.js.map', 'js', NULL),
(377, 1, '2021-05-04 19:44:12', '::1', 'vendas', 'salvar', NULL),
(378, 1, '2021-05-04 19:44:12', '::1', 'summernote', 'editar', 0),
(379, 1, '2021-05-04 19:44:12', '::1', 'parsley.min.js.map', 'js', NULL),
(380, 1, '2021-05-04 19:44:12', '::1', 'summernote', 'editar', 0),
(381, 1, '2021-05-04 19:44:39', '::1', 'vendas', 'salvar', NULL),
(382, 1, '2021-05-04 19:44:39', '::1', 'summernote', 'editar', 0),
(383, 1, '2021-05-04 19:44:39', '::1', 'summernote', 'editar', 0),
(384, 1, '2021-05-04 19:44:39', '::1', 'parsley.min.js.map', 'js', NULL),
(385, 1, '2021-05-04 19:44:43', '::1', 'vendas', 'cadastros', NULL),
(386, 1, '2021-05-04 19:44:44', '::1', 'summernote', 'editar', 0),
(387, 1, '2021-05-04 19:44:44', '::1', 'parsley.min.js.map', 'js', NULL),
(388, 1, '2021-05-04 19:44:44', '::1', 'summernote', 'editar', 0),
(389, 1, '2021-05-04 20:01:17', '::1', 'vendas', 'salvar', NULL),
(390, 1, '2021-05-04 20:01:17', '::1', 'summernote', 'editar', 0),
(391, 1, '2021-05-04 20:01:17', '::1', 'summernote', 'editar', 0),
(392, 1, '2021-05-04 20:01:17', '::1', 'parsley.min.js.map', 'js', NULL),
(393, 1, '2021-05-04 20:04:24', '::1', 'vendas', 'salvar', NULL),
(394, 1, '2021-05-04 20:04:24', '::1', 'summernote', 'editar', 0),
(395, 1, '2021-05-04 20:04:24', '::1', 'summernote', 'editar', 0),
(396, 1, '2021-05-04 20:04:24', '::1', 'parsley.min.js.map', 'js', NULL),
(397, 1, '2021-05-04 20:04:44', '::1', 'vendas', 'salvar', NULL),
(398, 1, '2021-05-04 20:04:44', '::1', 'summernote', 'editar', 0),
(399, 1, '2021-05-04 20:04:44', '::1', 'summernote', 'editar', 0),
(400, 1, '2021-05-04 20:04:44', '::1', 'parsley.min.js.map', 'js', NULL),
(401, 1, '2021-05-04 20:04:47', '::1', 'vendas', 'salvar', NULL),
(402, 1, '2021-05-04 20:04:47', '::1', 'summernote', 'editar', 0),
(403, 1, '2021-05-04 20:04:47', '::1', 'summernote', 'editar', 0),
(404, 1, '2021-05-04 20:04:47', '::1', 'parsley.min.js.map', 'js', NULL),
(405, 1, '2021-05-04 20:04:54', '::1', 'vendas', 'salvar', NULL),
(406, 1, '2021-05-04 20:04:54', '::1', 'summernote', 'editar', 0),
(407, 1, '2021-05-04 20:04:54', '::1', 'parsley.min.js.map', 'js', NULL),
(408, 1, '2021-05-04 20:04:55', '::1', 'summernote', 'editar', 0),
(409, 1, '2021-05-04 20:09:40', '::1', 'vendas', 'salvar', NULL),
(410, 1, '2021-05-04 20:09:41', '::1', 'summernote', 'editar', 0),
(411, 1, '2021-05-04 20:09:41', '::1', 'summernote', 'editar', 0),
(412, 1, '2021-05-04 20:09:41', '::1', 'parsley.min.js.map', 'js', NULL),
(413, 1, '2021-05-04 20:10:21', '::1', 'vendas', 'salvar', NULL),
(414, 1, '2021-05-04 20:10:22', '::1', 'summernote', 'editar', 0),
(415, 1, '2021-05-04 20:10:22', '::1', 'summernote', 'editar', 0),
(416, 1, '2021-05-04 20:10:22', '::1', 'parsley.min.js.map', 'js', NULL),
(417, 1, '2021-05-04 20:10:22', '::1', 'vendas', 'editar', 8),
(418, 1, '2021-05-04 20:10:23', '::1', 'summernote', 'editar', 0),
(419, 1, '2021-05-04 20:10:23', '::1', 'summernote', 'editar', 0),
(420, 1, '2021-05-04 20:10:23', '::1', 'parsley.min.js.map', 'js', NULL),
(421, 1, '2021-05-04 20:21:22', '::1', 'vendas', 'editar', 8),
(422, 1, '2021-05-04 20:21:33', '::1', 'vendas', 'editar', 1),
(423, 1, '2021-05-04 20:22:58', '::1', 'vendas', 'editar', 1),
(424, 1, '2021-05-04 20:23:09', '::1', 'vendas', 'salvar', NULL),
(425, 1, '2021-05-04 20:23:10', '::1', 'vendas', 'editar', 1),
(426, 1, '2021-05-04 20:23:18', '::1', 'vendas', 'editar', 8),
(427, 1, '2021-05-04 20:23:25', '::1', 'vendas', 'salvar', NULL),
(428, 1, '2021-05-04 20:23:25', '::1', 'vendas', 'editar', 8),
(429, 1, '2021-05-04 20:25:14', '::1', 'vendas', 'editar', 8),
(430, 1, '2021-05-04 20:26:15', '::1', 'vendas', 'editar', 8),
(431, 1, '2021-05-04 20:26:19', '::1', 'vendas', 'editar', 8),
(432, 1, '2021-05-04 20:27:30', '::1', 'vendas', 'cadastros', NULL),
(433, 1, '2021-05-04 20:27:33', '::1', 'vendas', 'editar', 8),
(434, 1, '2021-05-04 20:31:15', '::1', 'vendas', 'editar', 8),
(435, 1, '2021-05-04 20:33:05', '::1', 'vendas', 'editar', 8),
(436, 1, '2021-05-04 20:33:18', '::1', 'vendas', 'editar', 8),
(437, 1, '2021-05-04 20:33:23', '::1', 'vendas', 'cadastros', NULL),
(438, 1, '2021-05-04 20:33:27', '::1', 'vendas', 'editar', 8),
(439, 1, '2021-05-04 20:33:38', '::1', 'vendas', 'cadastros', NULL),
(440, 1, '2021-05-06 19:12:37', '::1', 'home', 'paginas', NULL),
(441, 1, '2021-05-06 19:12:41', '::1', 'vendas', 'cadastros', NULL),
(442, 1, '2021-05-06 19:13:23', '::1', 'vendas', 'listar', NULL),
(443, 1, '2021-05-06 19:17:13', '::1', 'vendas', 'cadastros', NULL),
(444, 1, '2021-05-06 19:17:14', '::1', 'vendas', 'listar', NULL),
(445, 1, '2021-05-06 19:38:00', '::1', 'vendas', 'listar', NULL),
(446, 1, '2021-05-06 19:40:30', '::1', 'vendas', 'listar', NULL),
(447, 1, '2021-05-06 19:44:32', '::1', 'vendas', 'listar', NULL),
(448, 1, '2021-05-06 19:44:51', '::1', 'vendas', 'listar', NULL),
(449, 1, '2021-05-06 19:48:09', '::1', 'vendas', 'listar', NULL),
(450, 1, '2021-05-06 19:51:44', '::1', 'vendas', 'editar', 8),
(451, 1, '2021-05-06 19:51:48', '::1', 'vendas', 'listar', NULL),
(452, 1, '2021-05-06 19:51:49', '::1', 'vendas', 'editar', 8),
(453, 1, '2021-05-06 19:51:54', '::1', 'vendas', 'salvar', NULL),
(454, 1, '2021-05-06 19:51:54', '::1', 'vendas', 'editar', 8),
(455, 1, '2021-05-06 19:51:56', '::1', 'vendas', 'listar', NULL),
(456, 1, '2021-05-06 19:51:59', '::1', 'vendas', 'editar', 1),
(457, 1, '2021-05-06 19:52:02', '::1', 'vendas', 'salvar', NULL),
(458, 1, '2021-05-06 19:52:02', '::1', 'vendas', 'editar', 1),
(459, 1, '2021-05-06 19:52:03', '::1', 'vendas', 'listar', NULL),
(460, 1, '2021-05-06 19:52:08', '::1', 'vendas', 'editar', 1),
(461, 1, '2021-05-06 19:52:11', '::1', 'vendas', 'salvar', NULL),
(462, 1, '2021-05-06 19:52:11', '::1', 'vendas', 'editar', 1),
(463, 1, '2021-05-06 20:03:35', '::1', 'vendas', 'listar', NULL),
(464, 1, '2021-05-06 20:03:37', '::1', 'vendas', 'editar', 1),
(465, 1, '2021-05-06 20:10:20', '::1', 'vendas', 'editar', 1),
(466, 1, '2021-05-06 20:10:25', '::1', 'vendas', 'listar', NULL),
(467, 1, '2021-05-06 20:10:26', '::1', 'vendas', 'editar', 8),
(468, 1, '2021-05-06 20:10:28', '::1', 'vendas', 'listar', NULL),
(469, 1, '2021-05-06 20:10:29', '::1', 'vendas', 'editar', 7),
(470, 1, '2021-05-06 20:10:31', '::1', 'vendas', 'listar', NULL),
(471, 1, '2021-05-06 20:10:32', '::1', 'vendas', 'editar', 1),
(472, 1, '2021-05-06 20:14:30', '::1', 'vendas', 'editar', 1),
(473, 1, '2021-05-06 20:21:19', '::1', 'vendas', 'editar', 1),
(474, 1, '2021-05-06 20:25:58', '::1', 'vendas', 'editar', 1),
(475, 1, '2021-05-06 20:27:58', '::1', 'vendas', 'editar', 1),
(476, 1, '2021-05-06 20:28:13', '::1', 'vendas', 'editar', 1),
(477, 1, '2021-05-06 21:17:51', '::1', 'vendas', 'editar', 1),
(478, 1, '2021-05-06 21:17:58', '::1', 'summernote', 'editar', 0),
(479, 1, '2021-05-06 21:17:58', '::1', 'summernote', 'editar', 0),
(480, 1, '2021-05-06 21:17:58', '::1', 'parsley.min.js.map', 'js', NULL),
(481, 1, '2021-05-06 21:20:03', '::1', 'vendas', 'editar', 1),
(482, 1, '2021-05-06 21:20:03', '::1', 'summernote', 'editar', 0),
(483, 1, '2021-05-06 21:20:04', '::1', 'summernote', 'editar', 0),
(484, 1, '2021-05-06 21:20:04', '::1', 'parsley.min.js.map', 'js', NULL),
(485, 1, '2021-05-06 21:20:04', '::1', 'summernote', 'editar', 0),
(486, 1, '2021-05-06 21:20:04', '::1', 'summernote', 'editar', 0),
(487, 1, '2021-05-06 21:20:04', '::1', 'parsley.min.js.map', 'js', NULL),
(488, 1, '2021-05-06 21:25:58', '::1', 'vendas', 'editar', 1),
(489, 1, '2021-05-06 21:25:58', '::1', 'summernote', 'editar', 0),
(490, 1, '2021-05-06 21:25:58', '::1', 'summernote', 'editar', 0),
(491, 1, '2021-05-06 21:25:58', '::1', 'parsley.min.js.map', 'js', NULL),
(492, 1, '2021-05-06 21:25:59', '::1', 'summernote', 'editar', 0),
(493, 1, '2021-05-06 21:25:59', '::1', 'summernote', 'editar', 0),
(494, 1, '2021-05-06 21:25:59', '::1', 'parsley.min.js.map', 'js', NULL),
(495, 1, '2021-05-06 21:26:44', '::1', 'vendas', 'editar', 1),
(496, 1, '2021-05-06 21:51:58', '::1', 'vendas', 'editar', 1),
(497, 1, '2021-05-06 21:53:17', '::1', 'vendas', 'listar', NULL),
(498, 1, '2021-05-06 21:53:18', '::1', 'vendas', 'editar', 7),
(499, 1, '2021-05-13 19:31:09', '::1', 'home', 'paginas', NULL),
(500, 1, '2021-05-13 19:31:12', '::1', 'vendas', 'cadastros', NULL),
(501, 1, '2021-05-13 19:31:14', '::1', 'vendas', 'listar', NULL),
(502, 1, '2021-05-13 19:31:20', '::1', 'vendas', 'editar', 7),
(503, 1, '2021-05-13 19:32:24', '::1', 'vendas', 'listar', NULL),
(504, 1, '2021-05-13 19:32:27', '::1', 'vendas', 'editar', 7),
(505, 1, '2021-05-13 19:39:14', '::1', 'vendas', 'listar', NULL),
(506, 1, '2021-05-13 19:39:17', '::1', 'vendas', 'editar', 7),
(507, 1, '2021-05-13 19:39:24', '::1', 'vendas', 'listar', NULL),
(508, 1, '2021-05-13 19:39:26', '::1', 'vendas', 'editar', 1),
(509, 1, '2021-05-13 19:39:31', '::1', 'vendas', 'listar', NULL),
(510, 1, '2021-05-13 19:39:32', '::1', 'vendas', 'editar', 8),
(511, 1, '2021-05-13 19:39:37', '::1', 'vendas', 'listar', NULL),
(512, 1, '2021-05-13 19:39:39', '::1', 'vendas', 'editar', 7),
(513, 1, '2021-05-13 20:28:17', '::1', 'vendas', 'editar', 7),
(514, 1, '2021-05-13 20:37:47', '::1', 'vendas', 'editar', 7),
(515, 1, '2021-05-13 21:02:19', '::1', 'vendas', 'listar', NULL),
(516, 1, '2021-05-13 21:02:21', '::1', 'vendas', 'editar', 1),
(517, 1, '2021-05-13 21:02:33', '::1', 'vendas', 'listar', NULL),
(518, 1, '2021-05-13 21:02:35', '::1', 'vendas', 'editar', 7),
(519, 1, '2021-05-13 21:02:35', '::1', 'vendas', 'salvar', NULL),
(520, 1, '2021-05-13 21:02:35', '::1', 'vendas', 'editar', 7),
(521, 1, '2021-05-13 21:03:32', '::1', 'vendas', 'editar', 7),
(522, 1, '2021-05-13 21:03:51', '::1', 'vendas', 'editar', 7),
(523, 1, '2021-05-13 21:04:00', '::1', 'vendas', 'editar', 7),
(524, 1, '2021-05-13 21:04:52', '::1', 'vendas', 'editar', 7),
(525, 1, '2021-05-13 21:05:37', '::1', 'vendas', 'editar', 7),
(526, 1, '2021-05-13 21:11:12', '::1', 'vendas', 'editar', 7),
(527, 1, '2021-05-13 21:11:54', '::1', 'vendas', 'editar', 7),
(528, 1, '2021-05-13 21:12:41', '::1', 'vendas', 'editar', 7),
(529, 1, '2021-05-13 21:12:54', '::1', 'vendas', 'editar', 7),
(530, 1, '2021-05-13 21:13:09', '::1', 'vendas', 'editar', 7),
(531, 1, '2021-05-13 21:13:31', '::1', 'vendas', 'editar', 7),
(532, 1, '2021-05-13 21:13:43', '::1', 'vendas', 'editar', 7),
(533, 1, '2021-05-13 21:15:34', '::1', 'vendas', 'editar', 7),
(534, 1, '2021-05-13 21:16:39', '::1', 'produtos', 'cadastros', NULL),
(535, 1, '2021-05-13 21:16:41', '::1', 'produtos', 'listar', NULL),
(536, 1, '2021-05-13 21:16:53', '::1', 'vendas', 'cadastros', NULL),
(537, 1, '2021-05-13 21:16:55', '::1', 'vendas', 'listar', NULL),
(538, 1, '2021-05-13 21:16:56', '::1', 'vendas', 'editar', 1),
(539, 1, '2021-05-13 21:29:12', '::1', 'vendas', 'editar', 1),
(540, 1, '2021-05-13 21:50:08', '::1', 'vendas', 'editar', 1),
(541, 1, '2021-05-13 21:50:16', '::1', 'vendas', 'listar', NULL),
(542, 1, '2021-05-13 21:50:17', '::1', 'vendas', 'editar', 7),
(543, 1, '2021-05-13 21:50:34', '::1', 'vendas', 'listar', NULL),
(544, 1, '2021-05-13 21:50:35', '::1', 'vendas', 'editar', 1),
(545, 1, '2021-05-13 21:50:38', '::1', 'vendas', 'listar', NULL),
(546, 1, '2021-05-13 21:50:39', '::1', 'vendas', 'editar', 7),
(547, 1, '2021-05-13 21:50:59', '::1', 'vendas', 'listar', NULL),
(548, 1, '2021-05-13 21:51:01', '::1', 'vendas', 'editar', 1),
(549, 1, '2021-05-13 21:51:07', '::1', 'vendas', 'listar', NULL),
(550, 1, '2021-05-13 21:51:10', '::1', 'vendas', 'editar', 7),
(551, 1, '2021-05-13 21:58:37', '::1', 'vendas', 'listar', NULL),
(552, 1, '2021-05-13 21:58:41', '::1', 'vendas', 'editar', 7),
(553, 1, '2021-05-13 22:04:36', '::1', 'vendas', 'editar', 7),
(554, 1, '2021-05-13 22:04:56', '::1', 'summernote', 'editar', 0),
(555, 1, '2021-05-13 22:04:56', '::1', 'summernote', 'editar', 0),
(556, 1, '2021-05-13 22:04:56', '::1', 'parsley.min.js.map', 'js', NULL),
(557, 1, '2021-05-13 22:05:53', '::1', 'vendas', 'editar', 7),
(558, 1, '2021-05-13 22:05:53', '::1', 'summernote', 'editar', 0),
(559, 1, '2021-05-13 22:05:53', '::1', 'summernote', 'editar', 0),
(560, 1, '2021-05-13 22:05:53', '::1', 'parsley.min.js.map', 'js', NULL),
(561, 1, '2021-05-18 19:15:17', '::1', 'home', 'paginas', NULL),
(562, 1, '2021-05-18 19:15:21', '::1', 'vendas', 'cadastros', NULL),
(563, 1, '2021-05-18 19:15:33', '::1', 'vendas', 'salvar', NULL),
(564, 1, '2021-05-18 19:15:33', '::1', 'vendas', 'editar', 9),
(565, 1, '2021-05-18 19:15:58', '::1', 'vendas', 'salvar', NULL),
(566, 1, '2021-05-18 19:15:58', '::1', 'vendas', 'editar', 9),
(567, 1, '2021-05-18 19:17:20', '::1', 'vendas', 'salvar', NULL),
(568, 1, '2021-05-18 19:17:21', '::1', 'vendas', 'editar', 9),
(569, 1, '2021-05-18 19:17:24', '::1', 'vendas', 'salvar', NULL),
(570, 1, '2021-05-18 19:17:25', '::1', 'vendas', 'editar', 9),
(571, 1, '2021-05-18 19:17:36', '::1', 'vendas', 'salvar', NULL),
(572, 1, '2021-05-18 19:17:36', '::1', 'vendas', 'editar', 9),
(573, 1, '2021-05-18 19:20:43', '::1', 'vendas', 'editar', 9),
(574, 1, '2021-05-18 19:21:40', '::1', 'vendas', 'editar', 9),
(575, 1, '2021-05-18 19:23:05', '::1', 'vendas', 'editar', 9),
(576, 1, '2021-05-18 19:23:38', '::1', 'vendas', 'editar', 9),
(577, 1, '2021-05-18 19:24:25', '::1', 'vendas', 'editar', 9),
(578, 1, '2021-05-18 19:25:03', '::1', 'parsley.min.js.map', 'js', NULL),
(579, 1, '2021-05-18 19:25:03', '::1', 'summernote', 'editar', 0),
(580, 1, '2021-05-18 19:25:03', '::1', 'summernote', 'editar', 0),
(581, 1, '2021-05-18 19:26:32', '::1', 'vendas', 'editar', 9),
(582, 1, '2021-05-18 19:26:33', '::1', 'summernote', 'editar', 0),
(583, 1, '2021-05-18 19:26:33', '::1', 'summernote', 'editar', 0),
(584, 1, '2021-05-18 19:26:33', '::1', 'parsley.min.js.map', 'js', NULL),
(585, 1, '2021-05-18 19:31:18', '::1', 'vendas', 'editar', 9),
(586, 1, '2021-05-18 19:41:45', '::1', 'summernote', 'editar', 0),
(587, 1, '2021-05-18 19:41:45', '::1', 'parsley.min.js.map', 'js', NULL),
(588, 1, '2021-05-18 19:56:20', '::1', 'vendas', 'editar', 9),
(589, 1, '2021-05-18 19:56:22', '::1', 'vendas', 'editar', 9),
(590, 1, '2021-05-18 19:56:25', '::1', 'vendas', 'editar', 9),
(591, 1, '2021-05-18 19:57:29', '::1', 'vendas', 'editar', 9),
(592, 1, '2021-05-18 20:01:06', '::1', 'vendas', 'editar', 9),
(593, 1, '2021-05-18 20:05:08', '::1', 'vendas', 'editar', 9),
(594, 1, '2021-05-18 20:05:38', '::1', 'vendas', 'editar', 9),
(595, 1, '2021-05-18 20:05:45', '::1', 'vendas', 'cadastros', NULL),
(596, 1, '2021-05-18 20:05:52', '::1', 'vendas', 'salvar', NULL),
(597, 1, '2021-05-18 20:05:52', '::1', 'vendas', 'editar', 10),
(598, 1, '2021-05-18 20:07:01', '::1', 'vendas', 'salvar', NULL),
(599, 1, '2021-05-18 20:07:01', '::1', 'vendas', 'editar', 10),
(600, 1, '2021-05-18 20:07:24', '::1', 'usuarios', 'cadastros', NULL),
(601, 1, '2021-05-18 20:07:32', '::1', 'usuarios', 'listar', NULL),
(602, 1, '2021-05-18 20:07:34', '::1', 'usuarios', 'editar', 1),
(603, 1, '2021-05-18 20:07:39', '::1', 'usuarios', 'listar', NULL),
(604, 1, '2021-05-18 20:07:43', '::1', 'usuarios', 'editar', 3),
(605, 1, '2021-05-18 20:08:24', '::1', 'usuarios', 'salvar', NULL),
(606, 1, '2021-05-18 20:08:48', '::1', 'tipos', 'cadastros', NULL),
(607, 1, '2021-05-18 20:08:50', '::1', 'tipos', 'listar', NULL),
(608, 1, '2021-05-18 20:17:12', '::1', 'categorias', 'cadastros', NULL),
(609, 1, '2021-05-18 20:17:18', '::1', 'produtos', 'cadastros', NULL),
(610, 1, '2021-05-18 20:17:25', '::1', 'tipos', 'cadastros', NULL),
(611, 1, '2021-05-18 20:17:37', '::1', 'produtos', 'cadastros', NULL),
(612, 1, '2021-05-18 20:17:42', '::1', 'produtos', 'listar', NULL),
(613, 1, '2021-05-18 20:24:14', '::1', 'home', 'paginas', NULL),
(614, 1, '2021-05-18 20:24:59', '::1', 'home', 'paginas', NULL),
(615, 1, '2021-05-18 20:25:34', '::1', 'home', 'paginas', NULL),
(616, 1, '2021-05-18 20:26:23', '::1', 'categorias', 'cadastros', NULL),
(617, 1, '2021-05-18 20:26:29', '::1', 'categorias', 'listar', NULL),
(618, 1, '2021-05-18 20:26:42', '::1', 'categorias', 'listar', NULL),
(619, 1, '2021-05-18 20:26:42', '::1', 'categorias', 'cadastros', NULL),
(620, 1, '2021-05-18 20:26:43', '::1', 'home', 'paginas', NULL),
(621, 1, '2021-05-18 20:27:09', '::1', 'home', 'paginas', NULL),
(622, 1, '2021-05-18 20:27:14', '::1', 'categorias', 'cadastros', NULL),
(623, 1, '2021-05-18 20:27:16', '::1', 'produtos', 'cadastros', NULL),
(624, 1, '2021-05-18 20:27:19', '::1', 'cidades', 'cadastros', NULL),
(625, 1, '2021-05-18 20:27:21', '::1', 'clientes', 'cadastros', NULL),
(626, 1, '2021-05-18 20:27:25', '::1', 'clientes', 'listar', NULL),
(627, 1, '2021-05-18 20:27:31', '::1', 'vendas', 'cadastros', NULL),
(628, 1, '2021-05-18 20:32:12', '::1', 'categorias', 'cadastros', NULL),
(629, 1, '2021-05-18 20:32:15', '::1', 'produtos', 'cadastros', NULL),
(630, 1, '2021-05-18 20:32:17', '::1', 'cidades', 'cadastros', NULL),
(631, 1, '2021-05-18 20:32:20', '::1', 'clientes', 'cadastros', NULL),
(632, 1, '2021-05-18 20:32:23', '::1', 'tipos', 'cadastros', NULL),
(633, 1, '2021-05-18 20:32:26', '::1', 'usuarios', 'cadastros', NULL),
(634, 1, '2021-05-18 20:32:57', '::1', 'categorias', 'cadastros', NULL),
(635, 1, '2021-05-18 20:33:06', '::1', 'cidades', 'cadastros', NULL),
(636, 1, '2021-05-18 20:33:08', '::1', 'vendas', 'cadastros', NULL),
(637, 1, '2021-05-18 20:33:11', '::1', 'clientes', 'relatorios', NULL),
(638, 1, '2021-05-18 20:33:14', '::1', 'vendas', 'relatorios', NULL),
(639, 1, '2021-05-18 20:33:17', '::1', 'logs', 'relatorios', NULL),
(640, 1, '2021-05-20 21:34:06', '::1', 'home', 'paginas', NULL),
(641, 1, '2021-05-20 21:36:01', '::1', 'home', 'paginas', NULL),
(642, 1, '2021-05-20 21:36:11', '::1', 'categorias', 'cadastros', NULL),
(643, 1, '2021-05-20 21:36:14', '::1', 'produtos', 'cadastros', NULL),
(644, 1, '2021-05-20 21:36:17', '::1', 'cidades', 'cadastros', NULL),
(645, 1, '2021-05-20 21:38:31', '::1', 'cidades', 'cadastros', NULL),
(646, 1, '2021-05-20 21:39:15', '::1', 'categorias', 'cadastros', NULL),
(647, 1, '2021-05-20 21:39:20', '::1', 'produtos', 'cadastros', NULL),
(648, 1, '2021-05-20 21:39:23', '::1', 'cidades', 'cadastros', NULL),
(649, 1, '2021-05-20 21:39:26', '::1', 'clientes', 'cadastros', NULL),
(650, 1, '2021-05-20 21:39:28', '::1', 'tipos', 'cadastros', NULL),
(651, 1, '2021-05-20 21:39:30', '::1', 'usuarios', 'cadastros', NULL),
(652, 1, '2021-05-20 21:41:22', '::1', 'usuarios', 'cadastros', NULL),
(653, 1, '2021-05-20 21:41:44', '::1', 'usuarios', 'cadastros', NULL),
(654, 1, '2021-05-20 21:41:50', '::1', 'categorias', 'cadastros', NULL),
(655, 1, '2021-05-20 21:41:52', '::1', 'produtos', 'cadastros', NULL),
(656, 1, '2021-05-20 21:41:55', '::1', 'cidades', 'cadastros', NULL),
(657, 1, '2021-05-20 21:43:45', '::1', 'cidades', 'cadastros', NULL),
(658, 1, '2021-05-20 21:44:03', '::1', 'cidades', 'salvar', NULL),
(659, 1, '2021-05-20 21:44:09', '::1', 'cidades', 'listar', NULL),
(660, 1, '2021-05-20 21:51:48', '::1', 'cidades', 'listar', NULL),
(661, 1, '2021-05-20 21:58:43', '::1', 'cidades', 'listar', NULL),
(662, 1, '2021-05-20 22:00:19', '::1', 'cidades', 'listar', NULL),
(663, 1, '2021-05-21 11:57:52', '::1', 'cidades', 'listar', NULL),
(664, 1, '2021-05-21 11:57:52', '::1', 'cidades', 'cadastros', NULL),
(665, 1, '2021-05-21 17:43:15', '::1', 'cidades', 'cadastros', NULL),
(666, 1, '2021-05-21 17:43:15', '::1', 'cidades', 'listar', NULL),
(667, 1, '2021-05-27 16:05:45', '::1', 'home', 'paginas', NULL),
(668, 1, '2021-05-27 16:06:05', '::1', 'home', 'paginas', NULL),
(669, 1, '2021-05-27 16:06:09', '::1', 'acessos', 'cadastros', NULL),
(670, 1, '2021-05-27 16:06:12', '::1', 'categorias', 'cadastros', NULL),
(671, 1, '2021-05-27 16:06:14', '::1', 'cidades', 'cadastros', NULL),
(672, 1, '2021-05-27 16:06:16', '::1', 'menus', 'cadastros', NULL),
(673, 1, '2021-05-27 16:06:19', '::1', 'produtos', 'cadastros', NULL),
(674, 1, '2021-05-27 16:06:22', '::1', 'usuarios', 'cadastros', NULL),
(675, 1, '2021-05-27 16:07:18', '::1', 'usuarios', 'cadastros', NULL),
(676, 1, '2021-05-27 16:07:43', '::1', 'vendas', 'relatorios', NULL),
(677, 1, '2021-05-27 16:08:02', '::1', 'acessos', 'cadastros', NULL),
(678, 1, '2021-05-27 16:14:04', '::1', 'acessos', 'cadastros', NULL),
(679, 1, '2021-05-27 16:14:17', '::1', 'acessos', 'cadastros', NULL),
(680, 1, '2021-05-27 16:14:32', '::1', 'acessos', 'cadastros', NULL),
(681, 1, '2021-05-27 16:14:36', '::1', 'acessos', 'cadastros', NULL),
(682, 1, '2021-05-27 16:14:49', '::1', 'acessos', 'cadastros', NULL),
(683, 1, '2021-05-27 16:14:50', '::1', 'acessos', 'cadastros', NULL),
(684, 1, '2021-05-27 16:14:54', '::1', 'acessos', 'cadastros', NULL),
(685, 1, '2021-05-27 16:15:40', '::1', 'acessos', 'cadastros', NULL),
(686, 1, '2021-05-27 16:15:42', '::1', 'acessos', 'cadastros', NULL),
(687, 1, '2021-05-27 16:15:43', '::1', 'acessos', 'listar', NULL),
(688, 1, '2021-05-27 16:19:17', '::1', 'acessos', 'listar', NULL),
(689, 1, '2021-05-27 16:19:19', '::1', 'acessos', 'listar', NULL),
(690, 1, '2021-05-27 16:19:27', '::1', 'acessos', 'listar', NULL),
(691, 1, '2021-05-27 16:19:41', '::1', 'acessos', 'listar', NULL),
(692, 1, '2021-05-27 16:19:52', '::1', 'acessos', 'listar', NULL),
(693, 1, '2021-05-27 16:19:59', '::1', 'acessos', 'listar', NULL),
(694, 1, '2021-05-27 16:20:39', '::1', 'acessos', 'listar', NULL),
(695, 1, '2021-05-27 16:20:44', '::1', 'acessos', 'listar', NULL),
(696, 1, '2021-05-27 16:23:40', '::1', 'acessos', 'cadastros', NULL),
(697, 1, '2021-05-27 16:23:48', '::1', 'acessos', 'salvar', NULL),
(698, 1, '2021-05-27 16:23:49', '::1', 'acessos', 'cadastros', NULL),
(699, 1, '2021-05-27 16:23:53', '::1', 'acessos', 'listar', NULL),
(700, 1, '2021-05-27 16:23:56', '::1', 'acessos', 'editar', 1),
(701, 1, '2021-05-27 16:24:07', '::1', 'acessos', 'editar', 1),
(702, 1, '2021-05-27 16:24:11', '::1', 'acessos', 'salvar', NULL),
(703, 1, '2021-05-27 16:24:13', '::1', 'acesso', 'listar', NULL),
(704, 1, '2021-05-27 16:24:41', '::1', 'menus', 'cadastros', NULL),
(705, 1, '2021-05-27 16:31:26', '::1', 'menus', 'cadastros', NULL),
(706, 1, '2021-05-27 16:31:55', '::1', 'menus', 'cadastros', NULL),
(707, 1, '2021-05-27 16:31:59', '::1', 'menus', 'editar', 1),
(708, 1, '2021-05-27 16:34:58', '::1', 'menus', 'editar', 1),
(709, 1, '2021-05-27 16:35:20', '::1', 'menus', 'editar', 1),
(710, 1, '2021-05-27 16:35:24', '::1', 'menus', 'listar', NULL),
(711, 1, '2021-05-27 16:35:30', '::1', 'menus', 'cadastros', NULL),
(712, 1, '2021-05-27 16:36:27', '::1', 'menus', 'listar', NULL),
(713, 1, '2021-05-27 16:36:29', '::1', 'menus', 'editar', 1),
(714, 1, '2021-05-27 16:36:31', '::1', 'menus', 'salvar', NULL),
(715, 1, '2021-05-27 16:36:33', '::1', 'menus', 'listar', NULL),
(716, 1, '2021-05-27 16:36:36', '::1', 'menus', 'editar', 1),
(717, 1, '2021-05-27 16:36:51', '::1', 'menus', 'salvar', NULL),
(718, 1, '2021-05-27 16:36:53', '::1', 'menus', 'listar', NULL),
(719, 1, '2021-06-05 18:24:18', '::1', 'home', 'paginas', NULL),
(720, 1, '2021-06-05 18:24:23', '::1', 'acessos', 'cadastros', NULL),
(721, 1, '2021-06-05 18:24:28', '::1', 'clientes', 'cadastros', NULL),
(722, 1, '2021-06-05 18:24:33', '::1', 'produtos', 'cadastros', NULL),
(723, 1, '2021-06-05 18:24:36', '::1', 'produtos', 'listar', NULL),
(724, 1, '2021-06-05 18:24:40', '::1', 'produtos', 'editar', 1),
(725, 1, '2021-06-05 18:25:16', '::1', 'vendas', 'relatorios', NULL),
(726, 1, '2021-06-05 18:25:49', '::1', 'vendas', 'cadastros', NULL),
(727, 1, '2021-06-05 18:25:54', '::1', 'menus', 'cadastros', NULL),
(728, 1, '2021-06-05 18:25:59', '::1', 'menus', 'listar', NULL),
(729, 1, '2021-06-05 18:26:18', '::1', 'menus', 'cadastros', NULL),
(730, 1, '2021-06-05 18:26:33', '::1', 'menus', 'listar', NULL),
(731, 1, '2021-06-05 18:26:39', '::1', 'menus', 'editar', 1),
(732, 1, '2021-06-05 18:26:54', '::1', 'acessos', 'cadastros', NULL),
(733, 1, '2021-06-05 18:26:58', '::1', 'categorias', 'cadastros', NULL),
(734, 1, '2021-06-05 18:27:06', '::1', 'logs', 'relatorios', NULL),
(735, 1, '2021-06-07 12:14:12', '::1', 'home', 'paginas', NULL),
(736, 1, '2021-06-07 12:14:16', '::1', 'categorias', 'cadastros', NULL),
(737, 1, '2021-06-07 12:14:21', '::1', 'clientes', 'cadastros', NULL),
(738, 1, '2021-06-07 12:14:28', '::1', 'produtos', 'cadastros', NULL),
(739, 1, '2021-06-07 12:14:33', '::1', 'produtos', 'cadastros', NULL),
(740, 1, '2021-06-07 12:15:21', '::1', 'menus', 'cadastros', NULL),
(741, 1, '2021-06-07 12:15:38', '::1', 'menus', 'listar', NULL),
(742, 1, '2021-06-07 12:15:49', '::1', 'menus', 'editar', 1),
(743, 1, '2021-06-07 12:17:11', '::1', 'menus', 'cadastros', NULL),
(744, 1, '2021-06-07 12:19:00', '::1', 'menus', 'salvar', NULL),
(745, 1, '2021-06-07 12:19:01', '::1', 'menus', 'listar', NULL),
(746, 1, '2021-06-07 13:14:10', '::1', 'menus', 'listar', NULL),
(747, 1, '2021-06-07 13:14:25', '::1', 'menus', 'cadastros', NULL),
(748, 1, '2021-06-07 13:14:27', '::1', 'menus', 'listar', NULL),
(749, 1, '2021-06-07 13:15:20', '::1', 'menus', 'listar', NULL),
(750, 1, '2021-06-07 13:15:33', '::1', 'home', 'paginas', NULL),
(751, 1, '2021-06-07 13:15:38', '::1', 'menus', 'cadastros', NULL),
(752, 1, '2021-06-07 13:15:42', '::1', 'menus', 'listar', NULL),
(753, 1, '2021-06-07 13:19:48', '::1', 'menus', 'listar', NULL),
(754, 1, '2021-06-07 13:19:52', '::1', 'veiculos', 'cadastros', NULL),
(755, 1, '2021-06-07 13:20:04', '::1', 'produtos', 'cadastros', NULL),
(756, 1, '2021-06-07 13:28:20', '::1', 'veiculos', 'cadastros', NULL),
(757, 1, '2021-06-07 13:48:41', '::1', 'veiculos', 'cadastros', NULL),
(758, 1, '2021-06-07 13:49:28', '::1', 'veiculos', 'cadastros', NULL),
(759, 1, '2021-06-07 13:50:16', '::1', 'veiculos', 'cadastros', NULL),
(760, 1, '2021-06-07 13:52:46', '::1', 'veiculos', 'cadastros', NULL),
(761, 1, '2021-06-07 13:56:43', '::1', 'veiculos', 'cadastros', NULL);
INSERT INTO `log` (`id`, `usuario_id`, `data`, `ip`, `tabela`, `acao`, `tabela_id`) VALUES
(762, 1, '2021-06-07 14:00:33', '::1', 'veiculos', 'cadastros', NULL),
(763, 1, '2021-06-07 14:03:06', '::1', 'veiculos', 'cadastros', NULL),
(764, 1, '2021-06-07 14:03:53', '::1', 'veiculos', 'cadastros', NULL),
(765, 1, '2021-06-07 14:04:16', '::1', 'veiculos', 'cadastros', NULL),
(766, 1, '2021-06-07 14:04:43', '::1', 'veiculos', 'cadastros', NULL),
(767, 1, '2021-06-07 14:10:56', '::1', 'veiculos', 'cadastros', NULL),
(768, 1, '2021-06-07 14:13:10', '::1', 'veiculos', 'cadastros', NULL),
(769, 1, '2021-06-07 14:13:14', '::1', 'cidades', 'cadastros', NULL),
(770, 1, '2021-06-07 14:13:17', '::1', 'veiculos', 'cadastros', NULL),
(771, 1, '2021-06-07 14:49:43', '::1', 'veiculos', 'listar', NULL),
(772, 1, '2021-06-07 14:50:38', '::1', 'veiculos', 'listar', NULL),
(773, 1, '2021-06-07 14:59:06', '::1', 'veiculos', 'listar', NULL),
(774, 1, '2021-06-07 15:17:19', '::1', 'veiculos', 'listar', NULL),
(775, 1, '2021-06-07 15:17:20', '::1', 'veiculos', 'editar', 1),
(776, 1, '2021-06-07 15:27:15', '::1', 'veiculos', 'editar', 1),
(777, 1, '2021-06-07 15:27:15', '::1', 'veiculos', 'editar', 1),
(778, 1, '2021-06-07 15:27:27', '::1', 'summernote', 'editar', 0),
(779, 1, '2021-06-07 15:27:27', '::1', 'summernote', 'editar', 0),
(780, 1, '2021-06-07 15:27:27', '::1', 'parsley.min.js.map', 'js', NULL),
(781, 1, '2021-06-07 15:28:04', '::1', 'veiculos', 'editar', 1),
(782, 1, '2021-06-07 15:28:07', '::1', 'veiculos', 'editar', 1),
(783, 1, '2021-06-07 15:28:12', '::1', 'veiculos', 'cadastros', NULL),
(784, 1, '2021-06-07 15:28:23', '::1', 'home', 'paginas', NULL),
(785, 1, '2021-06-07 15:28:41', '::1', 'veiculos', 'cadastros', NULL),
(786, 1, '2021-06-07 15:28:42', '::1', 'veiculos', 'listar', NULL),
(787, 1, '2021-06-07 15:28:48', '::1', 'veiculos', 'listar', NULL),
(788, 1, '2021-06-07 15:31:43', '::1', 'veiculos', 'listar', NULL),
(789, 1, '2021-06-07 15:33:51', '::1', 'veiculos', 'listar', NULL),
(790, 1, '2021-06-07 16:27:27', '::1', 'veiculos', 'cadastros', NULL),
(791, 1, '2021-06-07 16:27:29', '::1', 'veiculos', 'listar', NULL),
(792, 1, '2021-06-07 16:27:31', '::1', 'veiculos', 'cadastros', NULL),
(793, 1, '2021-06-07 16:27:34', '::1', 'veiculos', 'listar', NULL),
(794, 1, '2021-06-07 16:31:05', '::1', 'veiculos', 'cadastros', NULL),
(795, 1, '2021-06-07 16:31:53', '::1', 'veiculos', 'salvar', NULL),
(796, 1, '2021-06-07 16:32:19', '::1', 'veiculos', 'cadastros', NULL),
(797, 1, '2021-06-07 16:34:33', '::1', 'veiculos', 'salvar', NULL),
(798, 1, '2021-06-07 16:36:08', '::1', 'veiculos', 'cadastros', NULL),
(799, 1, '2021-06-07 16:36:19', '::1', 'veiculos', 'salvar', NULL),
(800, 1, '2021-06-07 16:36:26', '::1', 'summernote', 'editar', 0),
(801, 1, '2021-06-07 16:36:26', '::1', 'summernote', 'editar', 0),
(802, 1, '2021-06-07 16:36:26', '::1', 'parsley.min.js.map', 'js', NULL),
(803, 1, '2021-06-07 16:44:54', '::1', 'veiculos', 'cadastros', NULL),
(804, 1, '2021-06-07 16:45:03', '::1', 'veiculos', 'cadastros', NULL),
(805, 1, '2021-06-07 16:45:05', '::1', 'veiculos', 'listar', NULL),
(806, 1, '2021-06-07 16:45:08', '::1', 'veiculos', 'cadastros', NULL),
(807, 1, '2021-06-07 16:45:55', '::1', 'veiculos', 'salvar', NULL),
(808, 1, '2021-06-07 16:51:28', '::1', 'veiculos', 'cadastros', NULL),
(809, 1, '2021-06-07 16:51:35', '::1', 'veiculos', 'salvar', NULL),
(810, 1, '2021-06-07 16:51:39', '::1', 'veiculos', 'cadastros', NULL),
(811, 1, '2021-06-07 16:51:42', '::1', 'veiculos', 'listar', NULL),
(812, 1, '2021-06-07 16:52:17', '::1', 'veiculos', 'editar', 2),
(813, 1, '2021-06-07 16:52:58', '::1', 'veiculos', 'listar', NULL),
(814, 1, '2021-06-07 16:53:28', '::1', 'veiculos', 'editar', 2),
(815, 1, '2021-06-07 16:53:45', '::1', 'veiculos', 'salvar', NULL),
(816, 1, '2021-06-07 16:53:47', '::1', 'veiculos', 'editar', 2),
(817, 1, '2021-06-07 16:53:50', '::1', 'veiculos', 'listar', NULL),
(818, 1, '2021-06-07 16:54:44', '::1', 'veiculos', 'editar', 1),
(819, 1, '2021-06-07 16:55:52', '::1', 'veiculos', 'salvar', NULL),
(820, 1, '2021-06-07 16:55:58', '::1', 'veiculos', 'editar', 1),
(821, 1, '2021-06-07 16:56:01', '::1', 'veiculos', 'listar', NULL),
(822, 1, '2021-06-07 16:57:11', '::1', 'veiculos', 'listar', NULL),
(823, 1, '2021-06-07 16:57:13', '::1', 'veiculos', 'cadastros', NULL),
(824, 1, '2021-06-07 16:57:55', '::1', 'veiculos', 'salvar', NULL),
(825, 1, '2021-06-07 16:57:58', '::1', 'veiculos', 'cadastros', NULL),
(826, 1, '2021-06-07 17:00:35', '::1', 'acessos', 'cadastros', NULL),
(827, 1, '2021-06-07 17:00:41', '::1', 'veiculos', 'cadastros', NULL),
(828, 1, '2021-06-07 17:00:42', '::1', 'veiculos', 'listar', NULL),
(829, 1, '2021-06-07 18:51:54', '::1', 'produtos', 'cadastros', NULL),
(830, 1, '2021-06-07 18:51:57', '::1', 'veiculos', 'cadastros', NULL),
(831, 1, '2021-06-07 18:51:59', '::1', 'veiculos', 'listar', NULL),
(832, 1, '2021-06-07 19:03:46', '::1', 'veiculos', 'cadastros', NULL),
(833, 1, '2021-06-07 19:04:25', '::1', 'veiculos', 'salvar', NULL),
(834, 1, '2021-06-07 19:04:27', '::1', 'veiculos', 'cadastros', NULL),
(835, 1, '2021-06-07 19:05:56', '::1', 'veiculos', 'listar', NULL),
(836, 1, '2021-06-08 12:27:51', '::1', 'home', 'paginas', NULL),
(837, 1, '2021-06-08 12:28:01', '::1', 'veiculos', 'cadastros', NULL),
(838, 1, '2021-06-08 12:28:03', '::1', 'veiculos', 'listar', NULL),
(839, 1, '2021-06-08 12:28:06', '::1', 'veiculos', 'cadastros', NULL),
(840, 1, '2021-06-08 12:28:50', '::1', 'veiculos', 'salvar', NULL),
(841, 1, '2021-06-08 12:28:53', '::1', 'veiculos', 'cadastros', NULL),
(842, 1, '2021-06-08 12:28:55', '::1', 'veiculos', 'listar', NULL),
(843, 1, '2021-06-08 12:29:00', '::1', 'veiculos', 'editar', 5),
(844, 1, '2021-06-08 12:36:19', '::1', 'veiculos', 'listar', NULL),
(845, 1, '2021-06-08 12:36:25', '::1', 'veiculos', 'excluir', 5),
(846, 1, '2021-06-08 12:36:26', '::1', 'veiculos', 'listar', NULL),
(847, 1, '2021-06-08 12:36:31', '::1', 'veiculos', 'listar', NULL),
(848, 1, '2021-06-08 12:36:36', '::1', 'veiculos', 'excluir', 4),
(849, 1, '2021-06-08 12:36:37', '::1', 'veiculos', 'listar', NULL),
(850, 1, '2021-06-08 12:36:39', '::1', 'veiculos', 'listar', NULL),
(851, 1, '2021-06-08 12:36:40', '::1', 'veiculos', 'cadastros', NULL),
(852, 1, '2021-06-08 12:37:12', '::1', 'veiculos', 'salvar', NULL),
(853, 1, '2021-06-08 12:37:14', '::1', 'veiculos', 'cadastros', NULL),
(854, 1, '2021-06-08 12:37:16', '::1', 'veiculos', 'listar', NULL),
(855, 1, '2021-06-08 12:38:08', '::1', 'veiculos', 'listar', NULL),
(856, 1, '2021-06-08 12:40:42', '::1', 'veiculos', 'listar', NULL),
(857, 1, '2021-06-08 12:43:58', '::1', 'veiculos', 'cadastros', NULL),
(858, 1, '2021-06-08 12:45:23', '::1', 'veiculos', 'salvar', NULL),
(859, 1, '2021-06-08 12:45:25', '::1', 'veiculos', 'cadastros', NULL),
(860, 1, '2021-06-08 12:45:27', '::1', 'veiculos', 'listar', NULL),
(861, 1, '2021-06-08 12:46:20', '::1', 'acessos', 'cadastros', NULL),
(862, 1, '2021-06-08 12:46:26', '::1', 'categorias', 'cadastros', NULL),
(863, 1, '2021-06-08 12:46:30', '::1', 'clientes', 'cadastros', NULL),
(864, 1, '2021-06-08 12:46:43', '::1', 'acessos', 'cadastros', NULL),
(865, 1, '2021-06-08 12:47:15', '::1', 'acessos', 'salvar', NULL),
(866, 1, '2021-06-08 12:47:16', '::1', 'acessos', 'listar', NULL),
(867, 1, '2021-06-08 12:47:20', '::1', 'tipos', 'cadastros', NULL),
(868, 1, '2021-06-08 12:47:26', '::1', 'acessos', 'cadastros', NULL),
(869, 1, '2021-06-08 12:47:35', '::1', 'acessos', 'listar', NULL),
(870, 1, '2021-06-08 12:47:52', '::1', 'tipos', 'cadastros', NULL),
(871, 1, '2021-06-08 12:48:00', '::1', 'menus', 'cadastros', NULL),
(872, 1, '2021-06-08 12:48:17', '::1', 'acessos', 'cadastros', NULL),
(873, 1, '2021-06-08 12:48:36', '::1', 'veiculos', 'cadastros', NULL),
(874, 1, '2021-06-08 12:48:38', '::1', 'veiculos', 'listar', NULL),
(875, 1, '2021-06-08 12:48:45', '::1', 'veiculos', 'excluir', 7),
(876, 1, '2021-06-08 12:48:47', '::1', 'veiculos', 'listar', NULL),
(877, 1, '2021-06-08 12:50:53', '::1', 'usuarios', 'cadastros', NULL),
(878, 1, '2021-06-08 12:51:57', '::1', 'usuarios', 'salvar', NULL),
(879, 1, '2021-06-08 12:52:00', '::1', 'usuarios', 'cadastros', NULL),
(880, 4, '2021-06-08 12:52:42', '::1', 'home', 'paginas', NULL),
(881, 4, '2021-06-08 12:52:47', '::1', 'veiculos', 'cadastros', NULL),
(882, 4, '2021-06-08 12:52:49', '::1', 'veiculos', 'listar', NULL),
(883, 4, '2021-06-08 12:52:54', '::1', 'veiculos', 'cadastros', NULL),
(884, 4, '2021-06-08 12:53:36', '::1', 'veiculos', 'salvar', NULL),
(885, 4, '2021-06-08 12:53:38', '::1', 'veiculos', 'cadastros', NULL),
(886, 4, '2021-06-08 12:53:40', '::1', 'veiculos', 'listar', NULL),
(887, 4, '2021-06-08 14:03:38', '::1', 'home', 'paginas', NULL),
(888, 4, '2021-06-08 14:04:03', '::1', 'veiculos', 'cadastros', NULL),
(889, 4, '2021-06-08 14:04:05', '::1', 'veiculos', 'listar', NULL),
(890, 4, '2021-06-08 14:05:25', '::1', 'veiculos', 'listar', NULL),
(891, 4, '2021-06-08 14:05:35', '::1', 'veiculos', 'cadastros', NULL),
(892, 4, '2021-06-08 14:06:24', '::1', 'veiculos', 'salvar', NULL),
(893, 4, '2021-06-08 14:07:15', '::1', 'veiculos', 'cadastros', NULL),
(894, 4, '2021-06-08 14:07:18', '::1', 'veiculos', 'listar', NULL),
(895, 4, '2021-06-08 14:09:16', '::1', 'veiculos', 'excluir', 8),
(896, 4, '2021-06-08 14:09:18', '::1', 'veiculos', 'listar', NULL),
(897, 4, '2021-06-08 14:16:14', '::1', 'veiculos', 'cadastros', NULL),
(898, 4, '2021-06-08 18:09:02', '::1', 'home', 'paginas', NULL),
(899, 4, '2021-06-08 18:09:49', '::1', 'menus', 'cadastros', NULL),
(900, 4, '2021-06-08 18:09:55', '::1', 'veiculos', 'cadastros', NULL),
(901, 4, '2021-06-08 18:09:57', '::1', 'veiculos', 'listar', NULL),
(902, 4, '2021-06-08 18:10:38', '::1', 'veiculos', 'listar', NULL),
(903, 4, '2021-06-08 18:14:49', '::1', 'veiculos', 'cadastros', NULL),
(904, 4, '2021-06-08 18:14:51', '::1', 'veiculos', 'cadastros', NULL),
(905, 4, '2021-06-08 18:15:22', '::1', 'veiculos', 'salvar', NULL),
(906, 4, '2021-06-08 18:15:25', '::1', 'veiculos', 'cadastros', NULL),
(907, 4, '2021-06-08 18:15:27', '::1', 'veiculos', 'listar', NULL),
(908, 4, '2021-06-08 18:21:05', '::1', 'veiculos', 'listar', NULL),
(909, 4, '2021-06-08 18:22:16', '::1', 'veiculos', 'editar', 9),
(910, 4, '2021-06-08 18:22:34', '::1', 'veiculos', 'salvar', NULL),
(911, 4, '2021-06-08 18:22:35', '::1', 'veiculos', 'editar', 9),
(912, 4, '2021-06-08 18:22:38', '::1', 'veiculos', 'listar', NULL),
(913, 4, '2021-06-08 18:22:42', '::1', 'veiculos', 'excluir', 10),
(914, 4, '2021-06-08 18:22:43', '::1', 'veiculos', 'listar', NULL),
(915, 4, '2021-06-08 18:22:45', '::1', 'veiculos', 'listar', NULL),
(916, 4, '2021-06-08 18:27:10', '::1', 'usuarios', 'cadastros', NULL),
(917, 4, '2021-06-08 18:27:56', '::1', 'usuarios', 'cadastros', NULL),
(918, 4, '2021-06-08 18:27:57', '::1', 'usuarios', 'cadastros', NULL),
(919, 4, '2021-06-08 18:28:00', '::1', 'usuarios', 'cadastros', NULL),
(920, 4, '2021-06-08 18:28:09', '::1', 'usuarios', 'cadastros', NULL),
(921, 4, '2021-06-08 18:28:46', '::1', 'home', 'paginas', NULL),
(922, 4, '2021-06-08 18:28:49', '::1', 'usuarios', 'cadastros', NULL),
(923, 4, '2021-06-08 18:29:53', '::1', 'usuarios', 'cadastros', NULL),
(924, 4, '2021-06-08 18:29:53', '::1', 'usuarios', 'cadastros', NULL),
(925, 4, '2021-06-08 18:29:57', '::1', 'usuarios', 'cadastros', NULL),
(926, 4, '2021-06-08 18:31:21', '::1', 'usuarios', 'cadastros', NULL),
(927, 1, '2021-06-08 18:32:07', '::1', 'home', 'paginas', NULL),
(928, 1, '2021-06-08 18:32:10', '::1', 'usuarios', 'cadastros', NULL),
(929, 1, '2021-06-08 18:33:40', '::1', 'usuarios', 'cadastros', NULL),
(930, 4, '2021-06-08 19:38:23', '::1', 'home', 'paginas', NULL),
(931, 4, '2021-06-08 19:38:26', '::1', 'veiculos', 'cadastros', NULL),
(932, 4, '2021-06-08 19:38:28', '::1', 'veiculos', 'cadastros', NULL),
(933, 4, '2021-06-08 19:38:59', '::1', 'veiculos', 'salvar', NULL),
(934, 4, '2021-06-08 19:39:46', '::1', 'veiculos', 'cadastros', NULL),
(935, 4, '2021-06-08 19:39:49', '::1', 'veiculos', 'listar', NULL),
(936, 4, '2021-06-08 19:39:56', '::1', 'veiculos', 'excluir', 11),
(937, 4, '2021-06-08 19:39:58', '::1', 'veiculos', 'listar', NULL),
(938, 4, '2021-06-08 19:40:00', '::1', 'veiculos', 'cadastros', NULL),
(939, 4, '2021-06-08 19:40:38', '::1', 'veiculos', 'salvar', NULL),
(940, 4, '2021-06-08 19:40:40', '::1', 'veiculos', 'cadastros', NULL),
(941, 4, '2021-06-08 19:40:42', '::1', 'veiculos', 'listar', NULL),
(942, 4, '2021-06-08 19:42:19', '::1', 'menus', 'cadastros', NULL),
(943, 4, '2021-06-08 19:42:22', '::1', 'menus', 'listar', NULL),
(944, 4, '2021-06-08 19:43:04', '::1', 'menus', 'editar', 12),
(945, 4, '2021-06-08 19:43:11', '::1', 'menus', 'salvar', NULL),
(946, 4, '2021-06-08 19:43:13', '::1', 'menus', 'listar', NULL),
(947, 4, '2021-06-08 19:44:30', '::1', 'home', 'paginas', NULL),
(948, 4, '2021-06-08 19:46:06', '::1', 'home', 'paginas', NULL),
(949, 4, '2021-06-08 19:46:20', '::1', 'home', 'paginas', NULL),
(950, 4, '2021-06-08 19:47:26', '::1', 'categorias', 'cadastros', NULL),
(951, 4, '2021-06-08 19:48:10', '::1', 'categorias', 'cadastros', NULL),
(952, 4, '2021-06-08 19:48:26', '::1', 'home', 'paginas', NULL),
(953, 4, '2021-06-08 19:48:41', '::1', 'home', 'paginas', NULL),
(954, 4, '2021-06-08 19:48:45', '::1', 'categorias', 'cadastros', NULL),
(955, 4, '2021-06-08 19:48:46', '::1', 'home', 'paginas', NULL),
(956, 4, '2021-06-08 19:49:01', '::1', 'home', 'paginas', NULL),
(957, 4, '2021-06-08 19:49:34', '::1', 'home', 'paginas', NULL),
(958, 4, '2021-06-08 19:49:35', '::1', 'home', 'paginas', NULL),
(959, 4, '2021-06-08 19:49:39', '::1', 'usuarios', 'cadastros', NULL),
(960, 4, '2021-06-08 19:49:40', '::1', 'home', 'paginas', NULL),
(961, 4, '2021-06-08 19:52:43', '::1', 'veiculos', 'cadastros', NULL),
(962, 4, '2021-06-08 19:55:08', '::1', 'veiculos', 'cadastros', NULL),
(963, 4, '2021-06-08 19:55:55', '::1', 'home', 'paginas', NULL),
(964, 4, '2021-06-08 21:26:08', '::1', 'home', 'paginas', NULL),
(965, 4, '2021-06-08 21:26:11', '::1', 'home', 'paginas', NULL),
(966, 4, '2021-06-08 21:26:12', '::1', 'home', 'paginas', NULL),
(967, 4, '2021-06-08 21:27:05', '::1', 'menus', 'cadastros', NULL),
(968, 4, '2021-06-08 21:27:07', '::1', 'menus', 'listar', NULL),
(969, 4, '2021-06-08 21:27:23', '::1', 'menus', 'excluir', 1),
(970, 4, '2021-06-08 21:27:25', '::1', 'menus', 'listar', NULL),
(971, 4, '2021-06-08 21:27:28', '::1', 'menus', 'excluir', 2),
(972, 4, '2021-06-08 21:27:30', '::1', 'menus', 'listar', NULL),
(973, 4, '2021-06-08 21:27:34', '::1', 'menus', 'excluir', 3),
(974, 4, '2021-06-08 21:27:38', '::1', 'menus', 'listar', NULL),
(975, 4, '2021-06-08 21:27:41', '::1', 'menus', 'excluir', 4),
(976, 4, '2021-06-08 21:27:42', '::1', 'menus', 'listar', NULL),
(977, 4, '2021-06-08 21:28:00', '::1', 'menus', 'excluir', 6),
(978, 4, '2021-06-08 21:28:02', '::1', 'menus', 'listar', NULL),
(979, 4, '2021-06-08 21:28:06', '::1', 'menus', 'excluir', 7),
(980, 4, '2021-06-08 21:28:07', '::1', 'menus', 'listar', NULL),
(981, 4, '2021-06-08 21:28:16', '::1', 'menus', 'excluir', 9),
(982, 4, '2021-06-08 21:28:18', '::1', 'menus', 'listar', NULL),
(983, 4, '2021-06-08 21:28:27', '::1', 'menus', 'excluir', 10),
(984, 4, '2021-06-08 21:28:28', '::1', 'menus', 'listar', NULL),
(985, 4, '2021-06-08 21:28:37', '::1', 'menus', 'excluir', 12),
(986, 4, '2021-06-08 21:28:38', '::1', 'menus', 'listar', NULL),
(987, 4, '2021-06-08 21:28:50', '::1', 'menus', 'excluir', 11),
(988, 4, '2021-06-08 21:28:52', '::1', 'menus', 'listar', NULL),
(989, 4, '2021-06-08 21:28:56', '::1', 'home', 'paginas', NULL),
(990, 4, '2021-06-08 21:29:14', '::1', 'menus', 'cadastros', NULL),
(991, 4, '2021-06-08 21:29:20', '::1', 'menus', 'listar', NULL),
(992, 4, '2021-06-08 21:31:58', '::1', 'home', 'paginas', NULL),
(993, 4, '2021-06-08 21:32:01', '::1', 'veiculos', 'cadastros', NULL),
(994, 4, '2021-06-08 21:32:04', '::1', 'usuarios', 'cadastros', NULL),
(995, 4, '2021-06-08 21:32:11', '::1', 'veiculos', 'cadastros', NULL),
(996, 4, '2021-06-08 21:32:14', '::1', 'home', 'paginas', NULL),
(997, 4, '2021-06-08 21:32:15', '::1', 'home', 'paginas', NULL),
(998, 4, '2021-06-08 21:32:16', '::1', 'home', 'paginas', NULL),
(999, 4, '2021-06-08 21:32:17', '::1', 'home', 'paginas', NULL),
(1000, 4, '2021-06-08 21:32:25', '::1', 'veiculos', 'cadastros', NULL),
(1001, 4, '2021-06-08 21:32:27', '::1', 'usuarios', 'cadastros', NULL),
(1002, 4, '2021-06-08 21:37:13', '::1', 'usuarios', 'cadastros', NULL),
(1003, 4, '2021-06-08 21:37:15', '::1', 'home', 'paginas', NULL),
(1004, 4, '2021-06-08 21:45:36', '::1', 'home', 'paginas', NULL),
(1005, 4, '2021-06-08 21:45:38', '::1', 'veiculos', 'cadastros', NULL),
(1006, 4, '2021-06-08 21:45:40', '::1', 'veiculos', 'listar', NULL),
(1007, 4, '2021-06-08 21:48:19', '::1', 'usuarios', 'cadastros', NULL),
(1008, 4, '2021-06-08 21:49:22', '::1', 'usuarios', 'cadastros', NULL),
(1009, 4, '2021-06-08 21:52:16', '::1', 'home', 'paginas', NULL),
(1010, 4, '2021-06-08 21:52:18', '::1', 'veiculos', 'cadastros', NULL),
(1011, 4, '2021-06-08 21:52:20', '::1', 'veiculos', 'listar', NULL),
(1012, 4, '2021-06-08 21:59:38', '::1', 'home', 'paginas', NULL),
(1013, 4, '2021-06-08 21:59:41', '::1', 'usuarios', 'cadastros', NULL),
(1014, 4, '2021-06-08 21:59:44', '::1', 'veiculos', 'cadastros', NULL),
(1015, 4, '2021-06-08 21:59:46', '::1', 'usuarios', 'cadastros', NULL),
(1016, 4, '2021-06-08 22:00:41', '::1', 'home', 'paginas', NULL),
(1017, 4, '2021-06-08 22:02:16', '::1', 'home', 'paginas', NULL),
(1018, 4, '2021-06-08 22:02:55', '::1', 'home', 'paginas', NULL),
(1019, 4, '2021-06-08 22:02:59', '::1', 'usuarios', 'cadastros', NULL),
(1020, 4, '2021-06-08 22:03:02', '::1', 'veiculos', 'cadastros', NULL),
(1021, 4, '2021-06-08 22:03:06', '::1', 'veiculos', 'listar', NULL),
(1022, 4, '2021-06-08 22:03:43', '::1', 'home', 'paginas', NULL),
(1023, 4, '2021-06-08 22:08:26', '::1', 'veiculos', 'cadastros', NULL),
(1024, 4, '2021-06-08 22:08:27', '::1', 'usuarios', 'cadastros', NULL),
(1025, 4, '2021-06-08 22:08:29', '::1', 'home', 'paginas', NULL),
(1026, 4, '2021-06-08 22:08:30', '::1', 'home', 'paginas', NULL),
(1027, 4, '2021-06-08 22:08:32', '::1', 'usuarios', 'cadastros', NULL),
(1028, 4, '2021-06-08 22:15:00', '::1', 'veiculos', 'cadastros', NULL),
(1029, 4, '2021-06-08 22:19:20', '::1', 'veiculos', 'cadastros', NULL),
(1030, 4, '2021-06-08 22:19:22', '::1', 'veiculos', 'listar', NULL),
(1031, 4, '2021-06-08 22:19:27', '::1', 'veiculos', 'excluir', 12),
(1032, 4, '2021-06-08 22:19:28', '::1', 'veiculos', 'listar', NULL),
(1033, 4, '2021-06-08 22:19:58', '::1', 'home', 'paginas', NULL),
(1034, 4, '2021-06-08 22:20:00', '::1', 'home', 'paginas', NULL),
(1035, 4, '2021-06-08 22:20:04', '::1', 'home', 'paginas', NULL),
(1036, 4, '2021-06-08 22:20:07', '::1', 'home', 'paginas', NULL),
(1037, 4, '2021-06-08 22:22:51', '::1', 'veiculos', 'cadastros', NULL),
(1038, 4, '2021-06-08 22:22:54', '::1', 'usuarios', 'cadastros', NULL),
(1039, 4, '2021-06-08 22:22:58', '::1', 'veiculos', 'cadastros', NULL),
(1040, 4, '2021-06-08 22:23:00', '::1', 'veiculos', 'cadastros', NULL),
(1041, 4, '2021-06-08 22:23:39', '::1', 'veiculos', 'salvar', NULL),
(1042, 4, '2021-06-08 22:23:41', '::1', 'veiculos', 'cadastros', NULL),
(1043, 4, '2021-06-08 22:23:43', '::1', 'veiculos', 'listar', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`id`, `marca`) VALUES
(1, 'Ford'),
(2, 'Jac'),
(3, 'Chevrolet');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `icone` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `tabela` varchar(50) NOT NULL,
  `submenu` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `menu`
--

INSERT INTO `menu` (`id`, `nome`, `icone`, `url`, `tabela`, `submenu`) VALUES
(5, 'Menus', 'fas fa-bars', 'cadastros/menus', 'menus', 'C'),
(8, 'Usuários', 'fas fa-user', 'cadastros/usuarios', 'usuarios', 'C'),
(13, 'Veiculos', 'fa fa-car', 'cadastros/veiculos', 'veiculos', 'C');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`id`, `tipo`) VALUES
(1, 'Admin'),
(2, 'Funcionário');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `ativo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `login`, `senha`, `foto`, `tipo_id`, `ativo`) VALUES
(1, 'Steve Jobisson', 'steve@jobisson.com', 'steve', '$2y$10$8sk6AfAW3b98X6GcdATA2OEtS/M2odQyQpbXXIp.WH.oKb.bjZ/cq', 'jobs', 1, 'S'),
(3, 'Hysteven Ispilberg', 'spil@berg.com.br', 'hysteven', 'spilberg', '', 1, 'N'),
(4, 'Robson Melo', 'melo@melo.com', 'robson', '$2y$10$Y.aKwTFaKI4btdGj2.8xY.ny306dHKmJecop8EFxLkKAmtyxgxuYG', '1623167517_1', 1, 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `anomodelo` year(4) NOT NULL,
  `anofabricacao` year(4) NOT NULL,
  `valor` double NOT NULL,
  `tipo` enum('novo','seminovo','','') NOT NULL,
  `fotodestaque` varchar(50) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `cor_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `opcionais` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `modelo`, `anomodelo`, `anofabricacao`, `valor`, `tipo`, `fotodestaque`, `marca_id`, `cor_id`, `usuario_id`, `opcionais`) VALUES
(1, 'Ranger', 2020, 2020, 80000, 'seminovo', 'ranger', 1, 1, 1, 'ar condicionado, vidros eletricos, travas eletricas, som.'),
(2, 'Onix', 2021, 2021, 50000, 'novo', 'modelo_1623095495_1', 3, 2, 1, '<p>Completo com rodas esportivas e teto solar.</p>'),
(3, 'Jac T40', 2020, 2019, 65000, 'seminovo', 'modelo_1623095875_1', 2, 1, 1, '<p>Completo.</p>'),
(4, 'carro teste', 1980, 1980, 10000, 'seminovo', 'modelo_1623166632_1', 3, 3, 1, '<p>testando</p>'),
(9, 'Del Rey', 1985, 1985, 30000, 'seminovo', 'Del Rey_1623171985_', 1, 2, 4, '<p>Banco de couro.</p>'),
(13, 'teste123', 2021, 2020, 50000, 'novo', 'teste123_1623201819_4', 3, 4, 4, '<p>completo</p>');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acesso`
--
ALTER TABLE `acesso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_id` (`tipo_id`);

--
-- Índices para tabela `cor`
--
ALTER TABLE `cor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipo` (`tipo`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `tipo_id` (`tipo_id`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cor_id` (`cor_id`),
  ADD KEY `marca_id` (`marca_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acesso`
--
ALTER TABLE `acesso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `cor`
--
ALTER TABLE `cor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1044;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `acesso`
--
ALTER TABLE `acesso`
  ADD CONSTRAINT `acesso_ibfk_1` FOREIGN KEY (`tipo_id`) REFERENCES `tipo` (`id`);

--
-- Limitadores para a tabela `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`tipo_id`) REFERENCES `tipo` (`id`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cor_id`) REFERENCES `cor` (`id`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`),
  ADD CONSTRAINT `veiculo_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;