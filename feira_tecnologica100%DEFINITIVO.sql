-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05/11/2026 às 02:39
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `feira_tecnologica`
--
CREATE DATABASE IF NOT EXISTS `feira_tecnologica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `feira_tecnologica`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `comentario` text NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `atualizado_em` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `post_id`, `usuario_id`, `empresa_id`, `comentario`, `criado_em`, `atualizado_em`) VALUES
(25, 11, 19, NULL, 'Gostei da matéria, bem objetiva.', '2025-09-20 20:18:11', '2025-09-20 20:18:11'),
(26, 11, 31, NULL, 'Importante acompanhar de perto, obrigado por divulgar.', '2025-09-21 02:36:23', '2025-09-21 02:36:23'),
(27, 12, 30, NULL, 'Vale cuidar também da manutenção depois que ficar pronto.', '2025-10-26 22:22:52', '2025-10-26 22:22:52'),
(28, 12, 13, NULL, 'Alguém sabe onde encontrar mais informações?', '2025-10-28 03:06:51', '2025-10-28 03:06:51'),
(29, 12, 23, NULL, 'Quero ver o resultado final depois.', '2025-10-28 07:25:36', '2025-10-28 07:25:36'),
(30, 12, 21, NULL, 'Fico feliz de ver tecnologia e cultura andando juntas por aqui.', '2025-10-28 10:15:07', '2025-10-28 10:15:07'),
(31, 12, 34, NULL, 'Importante acompanhar de perto, obrigado por divulgar.', '2025-10-28 10:44:14', '2025-10-28 10:44:14'),
(32, 13, NULL, 11, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2025-11-08 19:24:39', '2025-11-08 19:24:39'),
(33, 13, 18, NULL, 'Gostei da matéria, bem objetiva.', '2025-11-09 07:44:52', '2025-11-09 07:44:52'),
(34, 13, 30, NULL, 'Vale cuidar também da manutenção depois que ficar pronto.', '2025-11-09 22:16:08', '2025-11-09 22:16:08'),
(35, 13, 27, NULL, 'Obrigada por trazer essa informação, eu não sabia!', '2025-11-10 03:52:18', '2025-11-10 03:52:18'),
(36, 13, 25, NULL, 'Tomara que o prazo seja cumprido.', '2025-11-10 05:32:49', '2025-11-10 05:32:49'),
(37, 13, 22, NULL, 'Vou comentar com a família, todo mundo vai querer saber.', '2025-11-11 03:14:23', '2025-11-11 03:14:23'),
(38, 13, NULL, 6, 'Que bom que gostaram! Em breve teremos mais novidades.', '2025-11-11 03:30:45', '2025-11-11 03:30:45'),
(39, 14, 25, NULL, 'Tomara que o prazo seja cumprido.', '2025-11-19 23:39:51', '2025-11-19 23:39:51'),
(40, 14, NULL, 11, 'Divulgando para a nossa rede também.', '2025-11-20 16:06:27', '2025-11-20 16:06:27'),
(41, 14, 26, NULL, 'Vou comentar com a família, todo mundo vai querer saber.', '2025-11-21 04:49:16', '2025-11-21 04:49:16'),
(42, 15, 24, NULL, 'Que programação boa, parabéns à organização!', '2025-12-06 12:31:50', '2025-12-06 12:31:50'),
(43, 15, 11, NULL, 'Se chover, o evento continua? Alguém sabe?', '2025-12-06 19:36:27', '2025-12-06 19:36:27'),
(44, 15, 23, NULL, 'Vai ter acessibilidade no local?', '2025-12-07 01:52:13', '2025-12-07 01:52:13'),
(45, 15, 19, NULL, 'A entrada é gratuita mesmo? Preciso levar algo?', '2025-12-07 07:35:39', '2025-12-07 07:35:39'),
(46, 15, 12, NULL, 'Chamei o pessoal da faculdade para ir também.', '2025-12-07 13:26:24', '2025-12-07 13:26:24'),
(47, 16, 26, NULL, 'Quero ver o resultado final depois.', '2025-12-17 06:21:40', '2025-12-17 06:21:40'),
(48, 16, NULL, 14, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2025-12-17 12:00:00', '2025-12-17 12:00:00'),
(49, 16, 17, NULL, 'Compartilhei no grupo do bairro.', '2025-12-17 12:40:54', '2025-12-17 12:40:54'),
(50, 16, NULL, 7, 'Ótimo trabalho, equipe! Acompanhando de perto.', '2025-12-17 15:01:10', '2025-12-17 15:01:10'),
(51, 16, 18, NULL, 'Ótima iniciativa, a região precisa de mais ações assim.', '2025-12-18 07:37:45', '2025-12-18 07:37:45'),
(52, 17, 26, NULL, 'Vou levar a família toda, as crianças vão adorar.', '2026-01-26 22:21:00', '2026-01-26 22:21:00'),
(53, 17, 10, NULL, 'Que programação boa, parabéns à organização!', '2026-01-27 01:40:16', '2026-01-27 01:40:16'),
(54, 17, 8, NULL, 'Alguém vai? Vamos combinar de ir juntos.', '2026-01-28 01:42:08', '2026-01-28 01:42:08'),
(55, 18, 14, NULL, 'Será que vai ter continuidade nos próximos meses?', '2026-02-12 18:09:29', '2026-02-12 18:09:29'),
(56, 18, 8, NULL, 'Que bom ver a cidade andando assim, Ribeirão Pires merece!', '2026-02-14 11:08:25', '2026-02-14 11:08:25'),
(57, 19, 8, NULL, 'Moro por perto e já deu para perceber a mudança, ficou muito bom.', '2026-03-19 13:38:47', '2026-03-19 13:38:47'),
(58, 19, 6, NULL, 'Importante acompanhar de perto, obrigado por divulgar.', '2026-03-19 14:11:06', '2026-03-19 14:11:06'),
(59, 19, 10, NULL, 'Vou comentar com a família, todo mundo vai querer saber.', '2026-03-21 02:06:19', '2026-03-21 02:06:19'),
(60, 20, 22, NULL, 'Tomara que o prazo seja cumprido.', '2026-04-22 21:20:03', '2026-04-22 21:20:03'),
(61, 20, 31, NULL, 'Compartilhei no grupo do bairro.', '2026-04-23 13:52:46', '2026-04-23 13:52:46'),
(62, 20, 25, NULL, 'Isso ajuda muito o comércio da região.', '2026-04-24 07:59:54', '2026-04-24 07:59:54'),
(63, 20, NULL, 6, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-04-24 16:17:09', '2026-04-24 16:17:09'),
(64, 20, 15, NULL, 'Boa notícia! Espero que chegue a todos os bairros.', '2026-04-24 16:39:38', '2026-04-24 16:39:38'),
(65, 20, 21, NULL, 'Ótima iniciativa, a região precisa de mais ações assim.', '2026-04-25 01:30:36', '2026-04-25 01:30:36'),
(66, 21, 25, NULL, 'Que bom ver a cidade andando assim, Ribeirão Pires merece!', '2026-05-26 07:33:58', '2026-05-26 07:33:58'),
(67, 21, 28, NULL, 'Alguém sabe onde encontrar mais informações?', '2026-05-26 14:17:52', '2026-05-26 14:17:52'),
(68, 21, 7, NULL, 'Adoro morar aqui, a cidade sempre surpreende.', '2026-05-26 16:46:30', '2026-05-26 16:46:30'),
(69, 21, 16, NULL, 'Quero ver o resultado final depois.', '2026-05-27 10:48:40', '2026-05-27 10:48:40'),
(70, 21, 9, NULL, 'Moro por perto e já deu para perceber a mudança, ficou muito bom.', '2026-05-27 23:02:38', '2026-05-27 23:02:38'),
(71, 22, 22, NULL, 'Boa notícia! Espero que chegue a todos os bairros.', '2026-06-14 05:04:15', '2026-06-14 05:04:15'),
(72, 22, 17, NULL, 'Importante acompanhar de perto, obrigado por divulgar.', '2026-06-14 10:19:33', '2026-06-14 10:19:33'),
(73, 22, NULL, 18, 'Seguimos juntos pela cidade, obrigado a todos!', '2026-06-15 10:15:28', '2026-06-15 10:15:28'),
(74, 22, 9, NULL, 'Quero ver o resultado final depois.', '2026-06-15 15:22:40', '2026-06-15 15:22:40'),
(75, 23, NULL, 12, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-06-18 14:49:48', '2026-06-18 14:49:48'),
(76, 23, NULL, 6, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-06-19 07:41:14', '2026-06-19 07:41:14'),
(77, 23, 21, NULL, 'Ótima iniciativa, a região precisa de mais ações assim.', '2026-06-19 12:39:14', '2026-06-19 12:39:14'),
(78, 23, 33, NULL, 'Que bom ver a cidade andando assim, Ribeirão Pires merece!', '2026-06-19 15:19:29', '2026-06-19 15:19:29'),
(79, 23, 25, NULL, 'Importante acompanhar de perto, obrigado por divulgar.', '2026-06-19 19:52:15', '2026-06-19 19:52:15'),
(80, 24, NULL, 17, 'Que bom que gostaram! Em breve teremos mais novidades.', '2026-06-21 05:47:29', '2026-06-21 05:47:29'),
(81, 24, 29, NULL, 'Obrigada por trazer essa informação, eu não sabia!', '2026-06-21 16:15:15', '2026-06-21 16:15:15'),
(82, 24, NULL, 6, 'Que bom que gostaram! Em breve teremos mais novidades.', '2026-06-21 17:01:52', '2026-06-21 17:01:52'),
(83, 24, 30, NULL, 'Boa notícia! Espero que chegue a todos os bairros.', '2026-06-22 05:33:52', '2026-06-22 05:33:52'),
(84, 25, 15, NULL, 'Vou comentar com a família, todo mundo vai querer saber.', '2026-06-24 16:24:16', '2026-06-24 16:24:16'),
(85, 25, NULL, 6, 'Que bom que gostaram! Em breve teremos mais novidades.', '2026-06-24 21:32:35', '2026-06-24 21:32:35'),
(86, 25, 34, NULL, 'Quero ver o resultado final depois.', '2026-06-25 17:08:35', '2026-06-25 17:08:35'),
(87, 25, 11, NULL, 'Importante acompanhar de perto, obrigado por divulgar.', '2026-06-25 18:56:23', '2026-06-25 18:56:23'),
(88, 25, 16, NULL, 'Fico feliz de ver tecnologia e cultura andando juntas por aqui.', '2026-06-26 11:14:08', '2026-06-26 11:14:08'),
(89, 26, 8, NULL, 'Alguém sabe onde encontrar mais informações?', '2026-06-27 14:05:39', '2026-06-27 14:05:39'),
(90, 26, 22, NULL, 'Que sirva de exemplo para as outras cidades do Grande ABC.', '2026-06-27 21:44:11', '2026-06-27 21:44:11'),
(91, 26, 13, NULL, 'Quero ver o resultado final depois.', '2026-06-28 18:34:58', '2026-06-28 18:34:58'),
(92, 26, NULL, 15, 'Divulgando para a nossa rede também.', '2026-06-29 01:25:11', '2026-06-29 01:25:11'),
(93, 26, 26, NULL, 'Boa notícia! Espero que chegue a todos os bairros.', '2026-06-29 06:55:38', '2026-06-29 06:55:38'),
(94, 27, 25, NULL, 'Boa notícia! Espero que chegue a todos os bairros.', '2026-07-01 01:16:42', '2026-07-01 01:16:42'),
(95, 27, 21, NULL, 'Ótima iniciativa, a região precisa de mais ações assim.', '2026-07-01 21:24:36', '2026-07-01 21:24:36'),
(96, 27, 13, NULL, 'Adoro morar aqui, a cidade sempre surpreende.', '2026-07-02 07:58:50', '2026-07-02 07:58:50'),
(97, 27, 10, NULL, 'Obrigada por trazer essa informação, eu não sabia!', '2026-07-03 00:49:32', '2026-07-03 00:49:32'),
(98, 27, 22, NULL, 'Isso ajuda muito o comércio da região.', '2026-07-03 03:38:12', '2026-07-03 03:38:12'),
(99, 28, 28, NULL, 'Vou comentar com a família, todo mundo vai querer saber.', '2026-07-04 22:31:02', '2026-07-04 22:31:02'),
(100, 28, 26, NULL, 'Compartilhei no grupo do bairro.', '2026-07-06 05:45:13', '2026-07-06 05:45:13'),
(101, 28, 9, NULL, 'Obrigada por trazer essa informação, eu não sabia!', '2026-07-06 22:05:31', '2026-07-06 22:05:31'),
(102, 28, 31, NULL, 'Parabéns a todos os envolvidos!', '2026-07-06 22:13:33', '2026-07-06 22:13:33'),
(103, 28, 6, NULL, 'Quero ver o resultado final depois.', '2026-07-06 22:25:20', '2026-07-06 22:25:20'),
(104, 28, NULL, 6, 'Que bom que gostaram! Em breve teremos mais novidades.', '2026-07-07 08:33:10', '2026-07-07 08:33:10'),
(105, 29, 20, NULL, 'Alguém sabe onde encontrar mais informações?', '2026-07-07 22:59:03', '2026-07-07 22:59:03'),
(106, 29, 21, NULL, 'Notícia importante para quem mora na Estância.', '2026-07-08 01:21:57', '2026-07-08 01:21:57'),
(107, 29, 9, NULL, 'Vou comentar com a família, todo mundo vai querer saber.', '2026-07-08 22:03:46', '2026-07-08 22:03:46'),
(108, 30, 7, NULL, 'Obrigada por trazer essa informação, eu não sabia!', '2026-07-09 14:58:22', '2026-07-09 14:58:22'),
(109, 29, NULL, 12, 'Seguimos juntos pela cidade, obrigado a todos!', '2026-07-10 01:44:37', '2026-07-10 01:44:37'),
(110, 29, 9, NULL, 'Boa notícia! Espero que chegue a todos os bairros.', '2026-07-10 02:29:04', '2026-07-10 02:29:04'),
(111, 30, 8, NULL, 'Parabéns a todos os envolvidos!', '2026-07-10 20:15:14', '2026-07-10 20:15:14'),
(112, 31, 30, NULL, 'Tomara que o prazo seja cumprido.', '2026-07-12 22:31:06', '2026-07-12 22:31:06'),
(113, 31, 22, NULL, 'Adoro morar aqui, a cidade sempre surpreende.', '2026-07-13 04:14:31', '2026-07-13 04:14:31'),
(114, 31, 16, NULL, 'Fico feliz de ver tecnologia e cultura andando juntas por aqui.', '2026-07-13 21:14:22', '2026-07-13 21:14:22'),
(115, 31, NULL, 18, 'Divulgando para a nossa rede também.', '2026-07-14 04:49:31', '2026-07-14 04:49:31'),
(116, 31, 25, NULL, 'Importante acompanhar de perto, obrigado por divulgar.', '2026-07-14 07:13:01', '2026-07-14 07:13:01'),
(117, 31, 17, NULL, 'Compartilhei no grupo do bairro.', '2026-07-14 08:20:45', '2026-07-14 08:20:45'),
(118, 31, NULL, 11, 'Que bom que gostaram! Em breve teremos mais novidades.', '2026-07-15 10:28:21', '2026-07-15 10:28:21'),
(119, 32, NULL, 19, 'Que bom que gostaram! Em breve teremos mais novidades.', '2026-07-18 21:48:51', '2026-07-18 21:48:51'),
(120, 32, 35, NULL, 'Vale cuidar também da manutenção depois que ficar pronto.', '2026-07-19 21:18:30', '2026-07-19 21:18:30'),
(121, 32, 24, NULL, 'Que sirva de exemplo para as outras cidades do Grande ABC.', '2026-07-19 22:53:10', '2026-07-19 22:53:10'),
(122, 33, 12, NULL, 'Compartilhei no grupo do bairro.', '2026-07-24 12:06:56', '2026-07-24 12:06:56'),
(123, 33, NULL, 11, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-07-24 17:46:47', '2026-07-24 17:46:47'),
(124, 33, 14, NULL, 'Isso ajuda muito o comércio da região.', '2026-07-24 22:55:52', '2026-07-24 22:55:52'),
(125, 34, NULL, 7, 'Seguimos juntos pela cidade, obrigado a todos!', '2026-07-28 00:25:00', '2026-07-28 00:25:00'),
(126, 34, 24, NULL, 'Tomara que o prazo seja cumprido.', '2026-07-29 01:53:56', '2026-07-29 01:53:56'),
(127, 34, 10, NULL, 'Alguém sabe onde encontrar mais informações?', '2026-07-29 02:39:14', '2026-07-29 02:39:14'),
(128, 34, 8, NULL, 'Que bom ver a cidade andando assim, Ribeirão Pires merece!', '2026-07-29 05:00:41', '2026-07-29 05:00:41'),
(129, 34, NULL, 11, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-07-29 22:24:50', '2026-07-29 22:24:50'),
(130, 34, 16, NULL, 'Adoro morar aqui, a cidade sempre surpreende.', '2026-07-29 22:42:46', '2026-07-29 22:42:46'),
(131, 35, 25, NULL, 'Se chover, o evento continua? Alguém sabe?', '2026-08-07 12:33:26', '2026-08-07 12:33:26'),
(132, 35, 20, NULL, 'Obrigada por divulgar, quase passou batido.', '2026-08-07 13:27:24', '2026-08-07 13:27:24'),
(133, 35, NULL, 8, 'Divulgando para a nossa rede também.', '2026-08-07 14:48:12', '2026-08-07 14:48:12'),
(134, 35, 35, NULL, 'Chamei o pessoal da faculdade para ir também.', '2026-08-07 23:52:08', '2026-08-07 23:52:08'),
(135, 35, NULL, 11, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-08-08 06:55:29', '2026-08-08 06:55:29'),
(136, 35, 25, NULL, 'Esse eu não perco!', '2026-08-09 09:27:09', '2026-08-09 09:27:09'),
(143, 37, NULL, 15, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-08-20 14:06:44', '2026-08-20 14:06:44'),
(144, 37, 23, NULL, 'Se chover, o evento continua? Alguém sabe?', '2026-08-21 01:06:51', '2026-08-21 01:06:51'),
(145, 37, 35, NULL, 'Qual o melhor horário para chegar sem pegar muita fila?', '2026-08-21 10:09:03', '2026-08-21 10:09:03'),
(146, 38, NULL, 12, 'Estamos felizes em fazer parte dessa comunidade!', '2026-08-22 00:16:40', '2026-08-22 00:16:40'),
(147, 38, NULL, 6, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-08-22 02:55:48', '2026-08-22 02:55:48'),
(148, 38, 35, NULL, 'Esse eu não perco!', '2026-08-22 09:41:21', '2026-08-22 09:41:21'),
(149, 37, 24, NULL, 'Alguém vai? Vamos combinar de ir juntos.', '2026-08-22 13:13:08', '2026-08-22 13:13:08'),
(150, 37, 23, NULL, 'Evento assim movimenta o comércio e a cidade, adoro.', '2026-08-22 13:33:37', '2026-08-22 13:33:37'),
(151, 37, NULL, 11, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-08-22 16:03:25', '2026-08-22 16:03:25'),
(152, 38, 13, NULL, 'Que programação boa, parabéns à organização!', '2026-08-22 20:30:22', '2026-08-22 20:30:22'),
(153, 38, 18, NULL, 'Chamei o pessoal da faculdade para ir também.', '2026-08-22 22:13:16', '2026-08-22 22:13:16'),
(154, 38, 28, NULL, 'Se chover, o evento continua? Alguém sabe?', '2026-08-23 09:19:48', '2026-08-23 09:19:48'),
(160, 8, NULL, 13, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-09-14 01:16:53', '2026-09-14 01:16:53'),
(167, 8, 21, NULL, 'Parabéns a todos os envolvidos!', '2026-09-15 00:59:23', '2026-09-15 00:59:23'),
(170, 8, NULL, 5, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-09-15 15:25:27', '2026-09-15 15:25:27'),
(195, 44, 15, NULL, 'Tem estacionamento perto? Costuma lotar.', '2026-09-30 15:35:51', '2026-09-30 15:35:51'),
(197, 44, 25, NULL, 'Se chover, o evento continua? Alguém sabe?', '2026-09-30 16:55:49', '2026-09-30 16:55:49'),
(199, 44, 24, NULL, 'Já fui na edição passada e recomendo muito.', '2026-09-30 19:39:29', '2026-09-30 19:39:29'),
(203, 44, 8, NULL, 'Chamei o pessoal da faculdade para ir também.', '2026-10-01 10:09:59', '2026-10-01 10:09:59'),
(205, 48, 16, NULL, 'Que programação boa, parabéns à organização!', '2026-10-17 09:35:51', '2026-10-17 09:35:51'),
(207, 48, 30, NULL, 'Vai ter acessibilidade no local?', '2026-10-18 08:01:35', '2026-10-18 08:01:35'),
(208, 48, 6, NULL, 'Vou levar a família toda, as crianças vão adorar.', '2026-10-18 09:33:34', '2026-10-18 09:33:34'),
(210, 48, NULL, 6, 'Obrigado pelo carinho de todos! Será um prazer receber vocês.', '2026-10-19 11:54:06', '2026-10-19 11:54:06'),
(224, 53, 21, NULL, 'Vou levar a família toda, as crianças vão adorar.', '2026-10-29 22:48:00', '2026-10-29 22:48:00'),
(228, 53, 19, NULL, 'Obrigada por divulgar, quase passou batido.', '2026-10-30 14:33:34', '2026-10-30 14:33:34'),
(231, 54, 30, NULL, 'Esse eu não perco!', '2026-10-30 23:15:17', '2026-10-30 23:15:17'),
(233, 54, 5, NULL, 'Alguém vai? Vamos combinar de ir juntos.', '2026-10-31 13:02:55', '2026-10-31 13:02:55'),
(234, 54, 19, NULL, 'Chamei o pessoal da faculdade para ir também.', '2026-10-31 22:54:12', '2026-10-31 22:54:12'),
(235, 54, 29, NULL, 'Vou com certeza! Já marquei na agenda.', '2026-11-01 08:12:25', '2026-11-01 08:12:25'),
(236, 54, 32, NULL, 'Obrigada por divulgar, quase passou batido.', '2026-11-01 23:30:04', '2026-11-01 23:30:04'),
(247, 25, 36, NULL, 'triste', '2026-11-05 01:35:16', '2026-11-05 01:35:16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `email`, `senha`, `criado_em`) VALUES
(1, 'cigarro world', '2@2', '$2b$10$RBzdmhpZDv86khbZVPvjneSloV.1LZ/T3ENJsA2FdinmTITnCQPqe', '2026-09-12 03:00:50'),
(2, 'Ribeirao', '1@1', '$2b$10$SihhVPcKzMrBp/kfBoWHIO667bvK5wAXe6wh7MZ1582jnuZ04ihKi', '2026-09-12 16:02:17'),
(3, 'Cafeteria da rata', 'ratinha@gmail.com', '$2b$10$CEvqsoP59YeLqI3FwcBNLeATmp2k9rg5plhk1BQzE5N8IrZJ9aAR6', '2026-09-12 23:57:42'),
(4, 'rata do café', 'ratinha2@gmail.com', '$2b$10$Q5FTwtZPydsOljty8IpMEe/Nj/ps6gTA0.H84axHcsLBd2rJFXJ8a', '2026-09-13 20:53:51'),
(5, 'Delicias na cozinha', 'deleciasnacozinha@gmail.com', '$2b$10$BVM.brjey6oxtmeBwfgey.kBVveB8aMMXe1wY6buw1nmr8MD0Qwt2', '2026-09-13 23:40:44'),
(6, 'Prefeitura de Ribeirão Pires', 'prefeitura@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-01 09:00:00'),
(7, 'Secretaria de Cultura de Ribeirão Pires', 'cultura@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-01 18:00:00'),
(8, 'EMARP – Escola Municipal de Artes', 'emarp@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-02 03:00:00'),
(9, 'Secretaria de Desenvolvimento Econômico e Empreendedorismo', 'desenvolvimento@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-02 12:00:00'),
(10, 'Sebrae-SP', 'sebrae@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-02 21:00:00'),
(11, 'Chocolândia', 'chocolandia@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-03 06:00:00'),
(12, 'Cervejaria Órbita', 'orbita@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-03 15:00:00'),
(13, 'ACIARP', 'aciarp@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-04 00:00:00'),
(14, 'Secretaria de Turismo de Ribeirão Pires', 'turismo@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-04 09:00:00'),
(15, 'Corrida Asas para Isabela', 'asasparaisabela@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-04 18:00:00'),
(16, 'Secretaria de Assistência, Participação e Inclusão Social', 'assistencia@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-05 03:00:00'),
(17, 'CMDCA Ribeirão Pires', 'cmdca@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-05 12:00:00'),
(18, 'COMPIR Ribeirão Pires', 'compir@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-05 21:00:00'),
(19, 'Conselho de Pastores de Ribeirão Pires', 'pastores@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-06 06:00:00'),
(20, 'Pinacoteca Municipal Guilherme de Carvalho Dias', 'pinacoteca@exemplo.com.br', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-06 15:00:00'),
(21, 'CRIADOR SUPREMO', 'henriquezarap@gmail.com', '$2b$10$BAOkKoSHlStBO3dJVrTEnuER6RByXdHMortpx2dsuPM739j88aaBm', '2026-11-05 01:37:53');

-- --------------------------------------------------------

--
-- Estrutura para tabela `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `usuario_id`, `empresa_id`, `criado_em`) VALUES
(23, 11, NULL, 1, '2025-09-20 19:39:04'),
(24, 11, 25, NULL, '2025-09-22 02:05:41'),
(25, 11, 12, NULL, '2025-09-22 07:12:47'),
(26, 11, 8, NULL, '2025-09-22 11:21:25'),
(27, 11, 35, NULL, '2025-09-22 11:59:38'),
(28, 11, 32, NULL, '2025-09-22 13:09:35'),
(29, 11, 24, NULL, '2025-09-22 14:10:32'),
(30, 11, NULL, 14, '2025-09-22 16:11:29'),
(31, 11, 21, NULL, '2025-09-22 16:43:18'),
(32, 12, 21, NULL, '2025-10-26 22:20:05'),
(33, 12, 22, NULL, '2025-10-27 03:08:12'),
(34, 12, 33, NULL, '2025-10-27 06:47:33'),
(35, 12, 13, NULL, '2025-10-27 17:28:33'),
(36, 12, 17, NULL, '2025-10-27 17:48:17'),
(37, 12, 28, NULL, '2025-10-27 19:02:02'),
(38, 12, 7, NULL, '2025-10-27 23:00:20'),
(39, 12, 25, NULL, '2025-10-27 23:23:30'),
(40, 12, 23, NULL, '2025-10-28 01:34:16'),
(41, 12, 26, NULL, '2025-10-28 03:16:41'),
(42, 12, 16, NULL, '2025-10-28 05:50:37'),
(43, 12, 15, NULL, '2025-10-28 06:06:27'),
(44, 12, NULL, 5, '2025-10-28 12:54:25'),
(45, 12, 35, NULL, '2025-10-28 14:34:48'),
(46, 12, 30, NULL, '2025-10-28 19:29:09'),
(47, 13, 18, NULL, '2025-11-09 01:53:05'),
(48, 13, 24, NULL, '2025-11-09 09:40:11'),
(49, 13, 9, NULL, '2025-11-10 02:15:46'),
(50, 13, 27, NULL, '2025-11-10 04:06:23'),
(51, 13, 20, NULL, '2025-11-10 14:37:57'),
(52, 14, 35, NULL, '2025-11-18 21:39:56'),
(53, 14, 8, NULL, '2025-11-18 22:40:18'),
(54, 14, 20, NULL, '2025-11-19 02:19:54'),
(55, 14, 12, NULL, '2025-11-19 04:21:41'),
(56, 14, 22, NULL, '2025-11-19 04:41:19'),
(57, 14, NULL, 8, '2025-11-19 06:26:51'),
(58, 14, 15, NULL, '2025-11-19 08:18:27'),
(59, 14, 11, NULL, '2025-11-19 10:58:45'),
(60, 14, 6, NULL, '2025-11-19 11:49:09'),
(61, 14, NULL, 4, '2025-11-19 15:41:49'),
(62, 14, 16, NULL, '2025-11-19 16:29:51'),
(63, 14, 21, NULL, '2025-11-19 17:03:12'),
(64, 14, 18, NULL, '2025-11-20 00:36:07'),
(65, 14, 14, NULL, '2025-11-20 03:36:02'),
(66, 14, 13, NULL, '2025-11-20 04:39:14'),
(67, 14, 29, NULL, '2025-11-20 06:22:26'),
(68, 14, 26, NULL, '2025-11-20 06:30:27'),
(69, 14, 34, NULL, '2025-11-20 06:37:50'),
(70, 14, 27, NULL, '2025-11-20 08:32:25'),
(71, 14, 30, NULL, '2025-11-20 09:56:38'),
(72, 14, 32, NULL, '2025-11-20 15:55:51'),
(73, 14, NULL, 12, '2025-11-20 18:52:30'),
(74, 14, 19, NULL, '2025-11-20 20:52:33'),
(75, 15, 23, NULL, '2025-12-05 13:03:44'),
(76, 15, 31, NULL, '2025-12-05 13:53:46'),
(77, 15, 10, NULL, '2025-12-05 13:54:40'),
(78, 15, 21, NULL, '2025-12-05 15:46:27'),
(79, 15, 27, NULL, '2025-12-05 17:22:50'),
(80, 15, 9, NULL, '2025-12-05 19:45:42'),
(81, 15, 12, NULL, '2025-12-06 02:21:22'),
(82, 15, 11, NULL, '2025-12-06 10:08:45'),
(83, 15, 26, NULL, '2025-12-06 11:46:30'),
(84, 15, 25, NULL, '2025-12-06 11:54:00'),
(85, 15, 14, NULL, '2025-12-06 13:18:08'),
(86, 15, 18, NULL, '2025-12-06 13:46:02'),
(87, 15, 20, NULL, '2025-12-06 15:24:47'),
(88, 15, 24, NULL, '2025-12-06 16:23:05'),
(89, 15, 17, NULL, '2025-12-06 20:48:41'),
(90, 15, 28, NULL, '2025-12-06 22:41:46'),
(91, 15, NULL, 9, '2025-12-07 00:15:54'),
(92, 15, 29, NULL, '2025-12-07 01:11:55'),
(93, 15, 22, NULL, '2025-12-07 01:54:02'),
(94, 15, 7, NULL, '2025-12-07 11:05:36'),
(95, 16, 25, NULL, '2025-12-16 20:19:32'),
(96, 16, NULL, 6, '2025-12-17 02:13:13'),
(97, 16, 6, NULL, '2025-12-17 06:32:41'),
(98, 16, 34, NULL, '2025-12-18 01:43:02'),
(99, 16, 22, NULL, '2025-12-18 04:02:55'),
(100, 16, 10, NULL, '2025-12-18 15:28:55'),
(101, 17, 21, NULL, '2026-01-26 19:55:46'),
(102, 17, 29, NULL, '2026-01-27 00:43:50'),
(103, 17, 11, NULL, '2026-01-27 01:56:15'),
(104, 17, 34, NULL, '2026-01-27 05:21:53'),
(105, 17, 15, NULL, '2026-01-27 07:14:08'),
(106, 17, 25, NULL, '2026-01-27 09:43:05'),
(107, 17, NULL, 13, '2026-01-27 13:28:20'),
(108, 17, 5, NULL, '2026-01-27 14:22:24'),
(109, 17, 14, NULL, '2026-01-27 18:00:43'),
(110, 17, 8, NULL, '2026-01-27 19:33:36'),
(111, 17, 20, NULL, '2026-01-27 19:34:41'),
(112, 17, 19, NULL, '2026-01-27 23:39:35'),
(113, 17, 31, NULL, '2026-01-28 03:01:03'),
(114, 17, 13, NULL, '2026-01-28 09:09:12'),
(115, 17, 10, NULL, '2026-01-28 09:38:24'),
(116, 17, NULL, 16, '2026-01-28 10:25:02'),
(117, 17, 28, NULL, '2026-01-28 10:52:25'),
(118, 17, NULL, 4, '2026-01-28 10:56:02'),
(119, 17, 24, NULL, '2026-01-28 11:37:33'),
(120, 17, 23, NULL, '2026-01-28 15:09:14'),
(121, 17, 18, NULL, '2026-01-28 16:58:00'),
(122, 18, 23, NULL, '2026-02-12 10:12:36'),
(123, 18, 34, NULL, '2026-02-12 10:19:24'),
(124, 18, 10, NULL, '2026-02-12 13:22:23'),
(125, 18, 13, NULL, '2026-02-12 13:46:43'),
(126, 18, 15, NULL, '2026-02-13 03:51:01'),
(127, 18, 7, NULL, '2026-02-13 03:55:02'),
(128, 18, 21, NULL, '2026-02-13 04:11:42'),
(129, 18, 31, NULL, '2026-02-13 15:10:29'),
(130, 18, 14, NULL, '2026-02-13 15:23:06'),
(131, 19, 17, NULL, '2026-03-19 06:45:23'),
(132, 19, 33, NULL, '2026-03-19 09:13:47'),
(133, 19, 34, NULL, '2026-03-19 13:56:24'),
(134, 19, 24, NULL, '2026-03-19 23:21:09'),
(135, 19, 15, NULL, '2026-03-20 01:31:35'),
(136, 19, 11, NULL, '2026-03-20 02:07:05'),
(137, 19, 32, NULL, '2026-03-20 02:17:14'),
(138, 19, 18, NULL, '2026-03-20 02:39:21'),
(139, 19, 35, NULL, '2026-03-20 05:06:11'),
(140, 19, NULL, 6, '2026-03-20 05:58:20'),
(141, 19, 27, NULL, '2026-03-20 06:58:46'),
(142, 19, 29, NULL, '2026-03-20 08:16:40'),
(143, 19, 25, NULL, '2026-03-20 09:21:46'),
(144, 19, 8, NULL, '2026-03-20 11:22:18'),
(145, 19, 6, NULL, '2026-03-20 12:50:09'),
(146, 19, 19, NULL, '2026-03-20 17:32:02'),
(147, 19, NULL, 17, '2026-03-20 20:30:43'),
(148, 20, 26, NULL, '2026-04-22 19:46:30'),
(149, 20, 31, NULL, '2026-04-22 20:16:04'),
(150, 20, 23, NULL, '2026-04-22 20:38:09'),
(151, 20, 30, NULL, '2026-04-23 05:19:14'),
(152, 20, 12, NULL, '2026-04-23 11:11:15'),
(153, 20, 17, NULL, '2026-04-23 13:07:59'),
(154, 20, 28, NULL, '2026-04-23 14:43:29'),
(155, 20, 35, NULL, '2026-04-23 23:27:54'),
(156, 20, 10, NULL, '2026-04-24 05:26:05'),
(157, 20, 33, NULL, '2026-04-24 09:58:19'),
(158, 20, 9, NULL, '2026-04-24 09:59:06'),
(159, 20, 18, NULL, '2026-04-24 10:06:05'),
(160, 20, 16, NULL, '2026-04-24 10:58:23'),
(161, 21, NULL, 12, '2026-05-26 06:11:52'),
(162, 21, 26, NULL, '2026-05-26 09:38:05'),
(163, 21, 6, NULL, '2026-05-26 15:04:49'),
(164, 21, 12, NULL, '2026-05-26 20:01:35'),
(165, 21, 9, NULL, '2026-05-26 21:08:58'),
(166, 21, 21, NULL, '2026-05-26 22:17:12'),
(167, 21, NULL, 13, '2026-05-27 00:53:40'),
(168, 21, 27, NULL, '2026-05-27 04:19:06'),
(169, 21, 28, NULL, '2026-05-27 04:26:34'),
(170, 21, 34, NULL, '2026-05-27 05:31:12'),
(171, 21, 16, NULL, '2026-05-27 10:57:43'),
(172, 21, 22, NULL, '2026-05-27 13:16:35'),
(173, 21, NULL, 16, '2026-05-27 16:43:50'),
(174, 21, 17, NULL, '2026-05-27 17:23:08'),
(175, 22, 27, NULL, '2026-06-13 13:17:02'),
(176, 22, 14, NULL, '2026-06-14 13:44:47'),
(177, 22, 23, NULL, '2026-06-14 14:40:14'),
(178, 22, NULL, 4, '2026-06-14 23:39:02'),
(179, 22, 32, NULL, '2026-06-15 03:43:51'),
(180, 23, 14, NULL, '2026-06-17 12:43:16'),
(181, 23, 28, NULL, '2026-06-18 00:28:36'),
(182, 23, NULL, 7, '2026-06-18 10:56:49'),
(183, 23, 17, NULL, '2026-06-18 13:55:53'),
(184, 23, 9, NULL, '2026-06-18 18:48:35'),
(185, 23, 16, NULL, '2026-06-18 22:59:12'),
(186, 23, 25, NULL, '2026-06-19 01:37:16'),
(187, 23, 11, NULL, '2026-06-19 03:09:49'),
(188, 23, NULL, 12, '2026-06-19 03:17:20'),
(189, 23, 22, NULL, '2026-06-19 08:09:26'),
(190, 23, 35, NULL, '2026-06-19 11:12:12'),
(191, 24, 15, NULL, '2026-06-21 02:05:34'),
(192, 24, 28, NULL, '2026-06-21 02:20:23'),
(193, 24, 13, NULL, '2026-06-21 11:31:16'),
(194, 24, NULL, 5, '2026-06-21 18:39:50'),
(195, 24, 20, NULL, '2026-06-21 18:51:33'),
(196, 24, 24, NULL, '2026-06-21 19:39:05'),
(197, 24, 14, NULL, '2026-06-22 02:44:00'),
(198, 24, 35, NULL, '2026-06-22 04:04:36'),
(199, 24, 31, NULL, '2026-06-22 05:51:04'),
(200, 24, 17, NULL, '2026-06-22 07:19:18'),
(201, 24, 7, NULL, '2026-06-22 09:59:25'),
(202, 24, 8, NULL, '2026-06-22 16:41:10'),
(203, 25, 15, NULL, '2026-06-24 20:36:52'),
(204, 25, 9, NULL, '2026-06-24 21:00:25'),
(205, 25, 17, NULL, '2026-06-24 22:28:48'),
(206, 25, 12, NULL, '2026-06-24 22:37:05'),
(207, 25, 18, NULL, '2026-06-25 05:05:38'),
(208, 25, 19, NULL, '2026-06-25 07:13:47'),
(209, 25, 11, NULL, '2026-06-25 07:26:09'),
(210, 25, 31, NULL, '2026-06-25 07:32:31'),
(211, 25, 28, NULL, '2026-06-25 07:33:40'),
(212, 25, 22, NULL, '2026-06-25 09:24:11'),
(213, 25, 10, NULL, '2026-06-25 11:20:15'),
(214, 25, NULL, 5, '2026-06-25 12:00:09'),
(215, 25, 23, NULL, '2026-06-25 12:11:31'),
(216, 25, NULL, 7, '2026-06-25 17:51:49'),
(217, 25, 30, NULL, '2026-06-25 20:23:49'),
(218, 25, 20, NULL, '2026-06-25 21:23:18'),
(219, 25, 27, NULL, '2026-06-26 03:43:39'),
(220, 25, NULL, 19, '2026-06-26 04:03:49'),
(221, 25, 33, NULL, '2026-06-26 04:54:21'),
(222, 25, 25, NULL, '2026-06-26 05:51:32'),
(223, 25, 16, NULL, '2026-06-26 09:40:51'),
(224, 25, 34, NULL, '2026-06-26 10:08:27'),
(225, 26, 13, NULL, '2026-06-27 12:51:46'),
(226, 26, 6, NULL, '2026-06-27 17:47:06'),
(227, 26, 33, NULL, '2026-06-27 18:59:39'),
(228, 26, 34, NULL, '2026-06-27 23:22:49'),
(229, 26, NULL, 1, '2026-06-28 00:28:08'),
(230, 26, 25, NULL, '2026-06-28 01:41:52'),
(231, 26, NULL, 17, '2026-06-28 03:03:38'),
(232, 26, 31, NULL, '2026-06-28 03:16:06'),
(233, 26, 20, NULL, '2026-06-28 08:11:50'),
(234, 26, 5, NULL, '2026-06-28 14:56:04'),
(235, 26, 29, NULL, '2026-06-28 21:19:15'),
(236, 26, 30, NULL, '2026-06-29 01:31:48'),
(237, 26, 8, NULL, '2026-06-29 03:16:45'),
(238, 26, 12, NULL, '2026-06-29 04:30:10'),
(239, 26, NULL, 14, '2026-06-29 08:10:00'),
(240, 26, 32, NULL, '2026-06-29 09:23:10'),
(241, 26, 15, NULL, '2026-06-29 09:55:15'),
(242, 27, 6, NULL, '2026-06-30 21:28:44'),
(243, 27, 29, NULL, '2026-06-30 22:14:02'),
(244, 27, 17, NULL, '2026-07-01 00:08:21'),
(245, 27, 16, NULL, '2026-07-01 08:00:16'),
(246, 27, 33, NULL, '2026-07-01 09:25:44'),
(247, 27, 24, NULL, '2026-07-01 13:27:31'),
(248, 27, 34, NULL, '2026-07-01 15:16:37'),
(249, 27, 31, NULL, '2026-07-01 15:40:29'),
(250, 27, NULL, 5, '2026-07-01 17:12:22'),
(251, 27, 35, NULL, '2026-07-01 20:17:48'),
(252, 27, 13, NULL, '2026-07-01 22:39:18'),
(253, 27, 25, NULL, '2026-07-01 23:27:04'),
(254, 27, 15, NULL, '2026-07-02 03:28:29'),
(255, 27, 23, NULL, '2026-07-02 04:40:29'),
(256, 27, 5, NULL, '2026-07-02 06:35:41'),
(257, 27, 20, NULL, '2026-07-02 06:50:14'),
(258, 27, 32, NULL, '2026-07-02 08:17:31'),
(259, 27, 30, NULL, '2026-07-02 11:53:40'),
(260, 27, NULL, 3, '2026-07-02 12:55:13'),
(261, 27, 18, NULL, '2026-07-02 14:25:08'),
(262, 27, 9, NULL, '2026-07-02 16:32:02'),
(263, 28, 11, NULL, '2026-07-04 21:14:37'),
(264, 28, 21, NULL, '2026-07-05 03:25:05'),
(265, 28, NULL, 2, '2026-07-05 11:45:16'),
(266, 28, NULL, 11, '2026-07-05 14:31:13'),
(267, 28, 18, NULL, '2026-07-06 01:26:18'),
(268, 28, 12, NULL, '2026-07-06 02:22:38'),
(269, 28, NULL, 15, '2026-07-06 04:43:48'),
(270, 29, 33, NULL, '2026-07-08 00:32:44'),
(271, 29, 13, NULL, '2026-07-08 02:20:22'),
(272, 29, 27, NULL, '2026-07-08 09:38:23'),
(273, 29, 22, NULL, '2026-07-08 11:57:02'),
(274, 29, NULL, 16, '2026-07-08 14:31:17'),
(275, 30, 11, NULL, '2026-07-09 00:44:33'),
(276, 30, 33, NULL, '2026-07-09 04:25:55'),
(277, 29, 16, NULL, '2026-07-09 04:34:25'),
(278, 30, 10, NULL, '2026-07-09 04:41:21'),
(279, 30, 29, NULL, '2026-07-09 05:33:31'),
(280, 29, 10, NULL, '2026-07-09 10:05:43'),
(281, 30, 12, NULL, '2026-07-09 11:40:45'),
(282, 29, 29, NULL, '2026-07-09 14:11:49'),
(283, 30, 31, NULL, '2026-07-09 15:38:48'),
(284, 30, 21, NULL, '2026-07-09 16:18:49'),
(285, 29, 19, NULL, '2026-07-09 19:47:03'),
(286, 30, 18, NULL, '2026-07-09 19:55:37'),
(287, 30, 26, NULL, '2026-07-09 20:00:53'),
(288, 29, 9, NULL, '2026-07-09 21:07:33'),
(289, 30, 35, NULL, '2026-07-09 22:39:05'),
(290, 30, NULL, 4, '2026-07-10 00:17:02'),
(291, 30, 5, NULL, '2026-07-10 01:12:45'),
(292, 30, 7, NULL, '2026-07-10 04:13:12'),
(293, 30, NULL, 1, '2026-07-10 09:22:18'),
(294, 31, 5, NULL, '2026-07-12 12:43:36'),
(295, 31, 25, NULL, '2026-07-13 07:36:06'),
(296, 31, 18, NULL, '2026-07-13 08:56:25'),
(297, 31, 34, NULL, '2026-07-13 14:37:42'),
(298, 31, 32, NULL, '2026-07-13 17:02:12'),
(299, 31, 22, NULL, '2026-07-13 22:44:11'),
(300, 31, 9, NULL, '2026-07-14 01:58:21'),
(301, 31, 11, NULL, '2026-07-14 10:13:11'),
(302, 31, 10, NULL, '2026-07-14 11:13:59'),
(303, 32, 30, NULL, '2026-07-18 14:44:39'),
(304, 32, 21, NULL, '2026-07-18 17:53:53'),
(305, 32, 16, NULL, '2026-07-18 19:11:31'),
(306, 32, 22, NULL, '2026-07-19 08:08:22'),
(307, 32, 31, NULL, '2026-07-19 09:38:33'),
(308, 32, NULL, 7, '2026-07-19 20:58:43'),
(309, 32, NULL, 5, '2026-07-20 02:27:17'),
(310, 32, 19, NULL, '2026-07-20 02:38:57'),
(311, 32, NULL, 8, '2026-07-20 05:07:48'),
(312, 33, 7, NULL, '2026-07-23 13:58:40'),
(313, 33, 10, NULL, '2026-07-23 16:00:48'),
(314, 33, 22, NULL, '2026-07-23 17:49:45'),
(315, 33, 17, NULL, '2026-07-24 07:12:53'),
(316, 34, 24, NULL, '2026-07-27 13:13:25'),
(317, 34, 8, NULL, '2026-07-27 14:30:43'),
(318, 34, 19, NULL, '2026-07-28 03:56:55'),
(319, 34, NULL, 10, '2026-07-28 05:35:06'),
(320, 34, 6, NULL, '2026-07-28 15:49:19'),
(321, 34, 11, NULL, '2026-07-28 16:02:52'),
(322, 34, 33, NULL, '2026-07-28 21:55:27'),
(323, 34, 20, NULL, '2026-07-28 23:11:32'),
(324, 34, 10, NULL, '2026-07-29 00:21:58'),
(325, 34, NULL, 16, '2026-07-29 01:59:48'),
(326, 34, 23, NULL, '2026-07-29 02:35:35'),
(327, 34, 12, NULL, '2026-07-29 02:37:13'),
(328, 34, 18, NULL, '2026-07-29 07:02:09'),
(329, 35, NULL, 9, '2026-08-07 12:37:25'),
(330, 35, 6, NULL, '2026-08-07 16:11:24'),
(331, 35, 29, NULL, '2026-08-07 22:14:23'),
(332, 35, 17, NULL, '2026-08-07 22:20:21'),
(333, 35, 13, NULL, '2026-08-08 04:37:38'),
(334, 35, 12, NULL, '2026-08-08 05:25:52'),
(335, 35, 11, NULL, '2026-08-08 13:17:04'),
(336, 35, NULL, 7, '2026-08-08 18:36:42'),
(337, 35, 5, NULL, '2026-08-09 00:14:32'),
(338, 35, NULL, 13, '2026-08-09 02:03:40'),
(347, 37, 16, NULL, '2026-08-20 12:08:35'),
(348, 37, NULL, 18, '2026-08-20 13:33:48'),
(349, 37, NULL, 17, '2026-08-20 18:05:35'),
(350, 37, 9, NULL, '2026-08-20 18:33:25'),
(351, 37, 7, NULL, '2026-08-20 20:26:03'),
(352, 37, 5, NULL, '2026-08-20 22:07:55'),
(353, 37, 13, NULL, '2026-08-20 22:52:55'),
(354, 37, 34, NULL, '2026-08-21 00:49:40'),
(355, 37, 25, NULL, '2026-08-21 11:30:33'),
(356, 38, 33, NULL, '2026-08-21 12:23:53'),
(357, 38, 12, NULL, '2026-08-21 13:30:38'),
(358, 37, 30, NULL, '2026-08-21 15:40:14'),
(359, 38, 11, NULL, '2026-08-21 17:00:13'),
(360, 37, 12, NULL, '2026-08-21 18:31:01'),
(361, 38, 5, NULL, '2026-08-21 19:02:26'),
(362, 38, 9, NULL, '2026-08-21 20:52:47'),
(363, 38, 10, NULL, '2026-08-21 22:59:49'),
(364, 37, 10, NULL, '2026-08-22 00:04:35'),
(365, 37, 23, NULL, '2026-08-22 00:17:52'),
(366, 37, 19, NULL, '2026-08-22 04:05:29'),
(367, 38, 32, NULL, '2026-08-22 04:35:37'),
(368, 37, 20, NULL, '2026-08-22 05:18:11'),
(369, 37, NULL, 3, '2026-08-22 07:05:15'),
(370, 38, 29, NULL, '2026-08-22 09:33:00'),
(371, 37, 21, NULL, '2026-08-22 09:51:18'),
(372, 38, 14, NULL, '2026-08-22 11:40:54'),
(373, 38, 24, NULL, '2026-08-22 15:47:13'),
(374, 38, 27, NULL, '2026-08-22 16:04:59'),
(375, 38, 30, NULL, '2026-08-22 20:21:10'),
(376, 38, 8, NULL, '2026-08-22 20:22:12'),
(377, 38, 26, NULL, '2026-08-22 20:23:13'),
(378, 38, 7, NULL, '2026-08-23 06:47:47'),
(379, 38, 20, NULL, '2026-08-23 08:20:39'),
(380, 38, 34, NULL, '2026-08-23 09:34:12'),
(381, 38, 21, NULL, '2026-08-23 10:09:54'),
(398, 8, 11, NULL, '2026-09-14 02:13:31'),
(403, 8, 30, NULL, '2026-09-14 06:47:17'),
(409, 8, 21, NULL, '2026-09-14 09:33:26'),
(412, 8, NULL, 9, '2026-09-14 12:33:57'),
(423, 8, 28, NULL, '2026-09-15 04:39:48'),
(425, 8, 19, NULL, '2026-09-15 05:09:55'),
(431, 8, 20, NULL, '2026-09-15 13:04:10'),
(435, 8, 9, NULL, '2026-09-15 18:39:38'),
(437, 8, 25, NULL, '2026-09-15 22:39:09'),
(469, 44, NULL, 16, '2026-09-29 10:10:27'),
(484, 44, 35, NULL, '2026-09-29 21:54:04'),
(485, 44, NULL, 10, '2026-09-30 00:27:27'),
(486, 44, 6, NULL, '2026-09-30 01:10:28'),
(491, 44, 13, NULL, '2026-09-30 05:00:34'),
(493, 44, 18, NULL, '2026-09-30 05:21:53'),
(496, 44, 14, NULL, '2026-09-30 08:31:53'),
(500, 44, 21, NULL, '2026-09-30 12:05:20'),
(509, 44, 24, NULL, '2026-09-30 18:12:07'),
(512, 44, 19, NULL, '2026-09-30 23:41:43'),
(516, 44, 22, NULL, '2026-10-01 05:02:13'),
(518, 44, NULL, 14, '2026-10-01 05:47:14'),
(522, 48, NULL, 2, '2026-10-16 21:49:10'),
(529, 48, 17, NULL, '2026-10-17 06:04:36'),
(530, 48, 8, NULL, '2026-10-17 06:46:55'),
(531, 48, 26, NULL, '2026-10-17 07:01:45'),
(538, 48, 32, NULL, '2026-10-17 19:18:14'),
(539, 48, 13, NULL, '2026-10-17 19:33:37'),
(544, 48, 22, NULL, '2026-10-18 03:24:22'),
(547, 48, 9, NULL, '2026-10-18 11:55:56'),
(548, 48, 11, NULL, '2026-10-18 16:12:33'),
(577, 53, 24, NULL, '2026-10-28 14:51:28'),
(597, 53, NULL, 8, '2026-10-29 02:33:18'),
(598, 53, 29, NULL, '2026-10-29 02:39:23'),
(599, 53, 30, NULL, '2026-10-29 03:58:11'),
(614, 53, 9, NULL, '2026-10-29 15:13:16'),
(619, 53, 20, NULL, '2026-10-29 21:01:05'),
(627, 54, 17, NULL, '2026-10-30 12:36:03'),
(628, 54, 33, NULL, '2026-10-30 12:45:30'),
(629, 54, 12, NULL, '2026-10-30 12:51:27'),
(630, 54, NULL, 18, '2026-10-30 15:37:06'),
(631, 54, 32, NULL, '2026-10-30 15:58:30'),
(632, 54, NULL, 12, '2026-10-30 18:18:00'),
(633, 54, 25, NULL, '2026-10-30 18:38:41'),
(634, 54, 22, NULL, '2026-10-30 19:31:42'),
(635, 54, NULL, 14, '2026-10-30 22:25:14'),
(636, 54, 34, NULL, '2026-10-31 00:29:09'),
(637, 54, 5, NULL, '2026-10-31 02:41:01'),
(638, 54, 14, NULL, '2026-10-31 03:21:45'),
(639, 54, 7, NULL, '2026-10-31 10:35:21'),
(640, 54, 16, NULL, '2026-10-31 10:52:34'),
(641, 54, 23, NULL, '2026-10-31 12:54:16'),
(642, 54, 27, NULL, '2026-10-31 16:45:08'),
(643, 54, 29, NULL, '2026-10-31 19:43:29'),
(644, 54, 10, NULL, '2026-10-31 20:36:58'),
(645, 54, 21, NULL, '2026-11-01 00:12:57'),
(646, 54, 8, NULL, '2026-11-01 10:12:56'),
(662, 25, 36, NULL, '2026-11-05 01:35:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `tipo` enum('noticia','evento') NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `data_evento` date DEFAULT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp(),
  `atualizado_em` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posts`
--

INSERT INTO `posts` (`id`, `empresa_id`, `tipo`, `titulo`, `descricao`, `imagem`, `data_evento`, `criado_em`, `atualizado_em`) VALUES
(8, 5, 'noticia', 'Novo bolo de cenoura e chocolate', 'Ingredientes (8 porções)\r\n\r\nMassa\r\nóleo\r\n1/2 xícara (chá) de óleo\r\ncenoura\r\n3 cenouras médias raladas\r\novo\r\n4 ovos\r\naçúcar\r\n2 xícaras (chá) de açúcar\r\nfarinha de trigo\r\n2 e 1/2 xícaras (chá) de farinha de trigo\r\nfermento em pó químico\r\n1 colher (sopa) de fermento em pó\r\nCobertura\r\nmanteiga\r\n1 colher (sopa) de manteiga\r\nchocolate em pó\r\n3 colheres (sopa) de chocolate em pó\r\naçúcar\r\n1 xícara (chá) de açúcar\r\nleite\r\n1 xícara (chá) de leite\r\n\r\nUtensílios\r\nBatedeira\r\nBatedeira\r\nComprar\r\nLiquidificador\r\nLiquidificador\r\nComprar\r\n\r\nFormo de bolo\r\nFormo de bolo\r\nComprar\r\nPrato de sobremesa\r\nPrato de sobremesa\r\nComprar\r\nAo clicar em comprar você será redirecionado para um site externo\r\n\r\n\r\nModo de preparo\r\nModo de preparo : 40min\r\n1\r\nMassa\r\nEm um liquidificador, adicione a cenoura, os ovos e o óleo, depois misture.\r\n\r\n2\r\nAcrescente o açúcar e bata novamente por 5 minutos.\r\n\r\n3\r\nEm uma tigela ou na batedeira, adicione a farinha de trigo e depois misture novamente.\r\n\r\n4\r\nAcrescente o fermento e misture lentamente com uma colher.\r\n\r\n5\r\nAsse em um forno preaquecido a 180° C por aproximadamente 40 minutos.\r\n\r\n6\r\nCobertura\r\nDespeje em uma tigela a manteiga, o chocolate em pó, o açúcar e o leite, depois misture.\r\n\r\n7\r\nLeve a mistura ao fogo e continue misturando até obter uma consistência cremosa, depois despeje a calda por cima do bolo.', '1789343280954-843360760.png', NULL, '2026-09-13 23:48:01', '2026-09-13 23:48:01'),
(11, 7, 'noticia', 'Ribeirão Pires cria a Academia de Letras durante a 4ª FLIRP', 'O prefeito Guto Volpi sancionou a lei que institui a Alerp (Academia de Letras de Ribeirão Pires) no primeiro dia da 4ª Feira Literária. A sede ficará no Centro Histórico e Literário Ricardo Nardelli.\r\n\r\nA edição homenageou a escritora Cecília Meireles e ocupou o Paço Municipal com mesas literárias, lançamentos independentes e programação cultural para a família.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4258375', '1.jpg', NULL, '2025-09-20 19:26:00', '2026-11-05 00:46:19'),
(12, 6, 'noticia', 'Festa Italiana Solidária encerra com cerca de 23 mil visitantes', 'A 3ª edição da festa terminou no domingo (26) com show internacional da cantora Mafalda Minnozzi e público rotativo de aproximadamente 23 mil pessoas.\r\n\r\nA renda das vendas de comidas e bebidas é destinada a 17 entidades sociais. Neste ano o evento mudou para o Paço Municipal, deixando a tenda do Complexo Ayrton Senna.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4265415', '2.jpg', NULL, '2025-10-26 20:30:00', '2026-11-05 00:49:53'),
(13, 6, 'noticia', 'Prefeitura projeta receita de R$ 607,9 milhões para 2026', 'A proposta orçamentária prevê crescimento de 4,98% sobre a estimativa de R$ 579 milhões deste ano, pouco acima da inflação.\r\n\r\nSaúde e obras aparecem como prioridades do governo do prefeito Guto Volpi.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4268236', '3.jpg', NULL, '2025-11-08 16:58:00', '2026-11-05 00:49:39'),
(14, 13, 'noticia', 'Prefeito apresenta nova Vila do Doce e lança o Natal Mágico 2025', 'Em evento no Ribeirão Pires Futebol Clube, Guto Volpi mostrou o projeto de revitalização da Vila do Doce, que amplia o espaço e reforça a segurança após o incidente de setembro.\r\n\r\nO Natal Mágico, feito com a ACIARP, terá Papai Noel na Vila do Doce às sextas, sábados e domingos a partir de 28 de novembro.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4270258', '4.jpg', NULL, '2025-11-18 21:37:00', '2026-11-05 00:49:23'),
(15, 13, 'evento', 'Natal Mágico 2025 abre a temporada de festas na Vila do Doce e no Paço', 'A abertura oficial do Natal Mágico acontece no sábado, 6 de dezembro, com atrações no Paço Municipal e cenários temáticos inéditos na Vila do Doce.\r\n\r\nO evento é uma parceria da Prefeitura com a ACIARP e comerciantes da região central, e incentiva o comércio local.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4272365', '5.jpg', '2025-12-06', '2025-12-05 12:00:00', '2026-11-05 00:50:49'),
(16, 14, 'noticia', 'Ribeirão Pires fecha 2025 com 315 mil visitantes nos eventos e pontos turísticos', 'Mais de cem eventos movimentaram a cidade: 25 mil pessoas na Entoada Nordestina, 23 mil na Festa Italiana e cerca de 10 mil na Festa de Santo Antônio e no Festival Oriental.\r\n\r\nPara 2026, o calendário oficial já prevê 127 atividades culturais, esportivas, religiosas e turísticas.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4274906', '6.jpg\r\n', NULL, '2025-12-16 16:47:00', '2026-11-05 00:52:38'),
(17, 6, 'evento', 'Carnaval da Família 2026 toma conta do Paço Municipal', 'A festa acontece no domingo, 8 de fevereiro, a partir das 13h, com DJs, blocos, apresentações musicais e escola de samba para todas as idades.\r\n\r\nA programação abre com DJ e o Bloquinho Fisiomed; às 14h começa o tradicional Bloquinho de Carnaval para crianças e famílias.\r\n\r\nFonte: ABC do ABC — https://www.abcdoabc.com.br/ribeirao-pires-carnaval-da-familia-2026/', '7.jpg', '2026-02-08', '2026-01-26 17:55:00', '2026-11-05 00:54:07'),
(18, 6, 'noticia', 'Carnaval 2026: veja o que abre e fecha em Ribeirão Pires', 'Serviços essenciais funcionam em esquema de plantão durante o feriado de Carnaval.\r\n\r\nO expediente normal é retomado na quarta-feira (18), a partir das 13h.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4284843', '7.jpg', NULL, '2026-02-12 09:10:00', '2026-11-05 00:55:13'),
(19, 14, 'noticia', 'Calendário de eventos de 2026 é aposta da cidade para atrair turistas', 'No aniversário de 72 anos, a Prefeitura destaca uma agenda com Entoada Nordestina, Festival Oriental, Flirp, Festa Italiana, Festa das Nações, feiras de adoção e drive thru de resíduos eletrônicos.\r\n\r\nA cidade apresentou à rede Chocolândia o projeto de apadrinhamento do Festival do Chocolate, modelo que também será aplicado à Entoada Nordestina.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4290812', '8.jpg', NULL, '2026-03-19 05:00:00', '2026-11-05 00:55:24'),
(20, 6, 'noticia', 'Prefeitura anuncia obras, Parque da Juventude e nova pista de skate', 'O pacote inclui requalificação urbana no centro, melhorias de mobilidade e novos espaços de lazer, entre eles uma pista de skate inédita.\r\n\r\nSegundo o prefeito, as entregas das ruas Euclides da Cunha e do Comércio devem terminar entre setembro e outubro, se tudo correr bem.\r\n\r\nFonte: ABC do ABC — https://www.abcdoabc.com.br/ribeirao-pires-obras-parque-da-juventude-skate/', '9.jpg', NULL, '2026-04-22 18:32:00', '2026-11-05 00:56:24'),
(21, 6, 'noticia', 'Ribeirão Pires apresenta projetos de cidade inteligente na Estônia', 'Na Missão Estônia e Finlândia 2026, o prefeito Guto Volpi mostrou o Escudo Digital – Smart Ribeirão Pires, sistema de monitoramento ligado à Muralha Paulista.\r\n\r\nA cidade também apresentou o Aplicativo Ana, com botão do pânico para mulheres com medidas protetivas, e uma plataforma de monitoramento de emissões de gases de efeito estufa.\r\n\r\nFonte: ABC do ABC — https://abcdoabc.com.br/guto-volpi-avancos-ribeirao-pires-missao-europa/', '10.jpg', NULL, '2026-05-25 18:58:00', '2026-11-05 00:57:17'),
(22, 6, 'noticia', 'Novo Mirante Santo Antônio é inaugurado com programação gratuita', 'A revitalização de um dos principais cartões-postais da cidade foi entregue neste sábado (13), às 10h.\r\n\r\nO dia reuniu atividades de tradição religiosa, esporte, diversidade e bem-estar, todas gratuitas.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4328829', '11.jpg', NULL, '2026-06-13 10:00:00', '2026-11-05 00:57:48'),
(23, 6, 'noticia', 'PF cancela porte de arma de parte da GCM de Ribeirão Pires', 'A medida atingiu parte dos guardas após divergências documentais. A Prefeitura diz que as falhas serão corrigidas.\r\n\r\nEnquanto isso, o município alinhou com a Secretaria estadual o envio de efetivo da Polícia Militar para suprir a necessidade.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4329855', '12.jpg', NULL, '2026-06-17 12:00:00', '2026-11-05 01:07:11'),
(24, 6, 'noticia', 'Primeira Feira Mística de Ribeirão Pires reúne 500 pessoas', 'O evento de estreia, realizado em um sábado, teve foco em bem-estar e qualidade de vida e levou cerca de 500 pessoas ao local.\r\n\r\nA expectativa é que a feira volte a fazer parte da agenda da cidade.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4330347', '13.jpg', NULL, '2026-06-20 17:30:00', '2026-11-05 01:07:23'),
(25, 6, 'noticia', 'Carro cai em cratera aberta após fortes chuvas', 'Segundo a Prefeitura, equipes já atuam no local e a rua passa por obras de drenagem. A área está sob avaliação técnica.\r\n\r\nO motorista não ficou ferido.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4331000', '14.jpg', NULL, '2026-06-24 12:00:00', '2026-11-05 01:07:34'),
(26, 6, 'noticia', 'Prefeitura amplia tratamento com cannabis para oncologia e síndrome de Down', 'O serviço público de cannabis medicinal passa a atender também pacientes oncológicos e pessoas com síndrome de Down.\r\n\r\nA cidade foi a primeira a ter uma clínica pública do tipo no país.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4331851', '15.jpg', NULL, '2026-06-27 12:00:00', '2026-11-05 01:07:46'),
(27, 13, 'noticia', 'Abertas as inscrições para o Concurso Princesa do Chocolate 2026', 'O concurso escolhe a representante oficial do Festival do Chocolate e conta com a parceria da ACIARP. As inscrições vão até 4 de julho, presencialmente ou por link virtual.\r\n\r\nA ação faz parte dos preparativos para o festival, que acontece em agosto, às sextas, sábados e domingos.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4332373', '16.jpg', NULL, '2026-06-30 17:30:00', '2026-11-05 01:07:59'),
(28, 6, 'noticia', 'Delegacia da Mulher de Ribeirão Pires chega a 70% das obras', 'O investimento do tesouro municipal passa de R$ 500 mil e a entrega está prevista para o segundo semestre.\r\n\r\nA Prefeitura comemorou o avanço da obra como reforço à rede de proteção às mulheres.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4333240', '17.jpg', NULL, '2026-07-04 12:00:00', '2026-11-05 01:08:10'),
(29, 6, 'noticia', 'Prefeitura não autoriza fim do pagamento em dinheiro no transporte coletivo', 'O município notificou oficialmente a concessionária e determinou que a tarifa em espécie continue sendo aceita.\r\n\r\nO descumprimento pode gerar sanções e multas.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4333897', '18.jpg', NULL, '2026-07-07 22:24:00', '2026-11-05 01:08:22'),
(30, 10, 'noticia', 'Comerciantes de Ribeirão Pires aprendem a usar inteligência artificial nos negócios', 'A capacitação gratuita, feita pela Prefeitura com o Sebrae, reuniu 20 empreendedores na terça-feira (7) e mostrou usos de IA em atendimento, marketing, análise de dados e administração.\r\n\r\nOs participantes poderão pedir consultorias gratuitas de visual merchandising e cliente oculto. Novas ações com o Sebrae devem ocorrer ao longo do ano.\r\n\r\nFonte: ABC do ABC — https://abcdoabc.com.br/ribeirao-pires-capacita-comerciantes-em-ia/', '19.jpg', NULL, '2026-07-08 13:10:00', '2026-11-05 01:08:34'),
(31, 11, 'noticia', 'Festival do Chocolate 2026 deve movimentar R$ 15,4 milhões', 'A expectativa da Prefeitura é de alta de 20% sobre a edição anterior, que movimentou R$ 12,8 milhões.\r\n\r\nO evento acontece entre 7 e 30 de agosto no centro da cidade, em parceria com a Chocolândia.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4334297', '20.jpg', NULL, '2026-07-12 12:00:00', '2026-11-05 01:08:45'),
(32, 19, 'noticia', 'Marcha para Jesus reúne fiéis e reforça tradição de fé na cidade', 'O evento, promovido pelo Conselho de Pastores, faz parte do calendário oficial do município e teve apoio da Prefeitura.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4336041', '21.jpg', NULL, '2026-07-18 12:00:00', '2026-11-05 01:08:58'),
(33, 11, 'noticia', 'Inscrições para a Choco Run seguem abertas', 'A corrida integra a programação do Festival do Chocolate. Os interessados ainda podem se inscrever.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4336957', '22.jpg', NULL, '2026-07-23 12:37:00', '2026-11-05 01:09:11'),
(34, 11, 'noticia', 'Festival do Chocolate reúne 84 comércios confirmados', 'Entre 7 e 30 de agosto, o festival terá shows e gastronomia, e as inscrições seguem abertas para novos empreendedores da cidade.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4337270', '23.jpg', NULL, '2026-07-27 12:00:00', '2026-11-05 01:09:25'),
(35, 11, 'evento', 'Festival do Chocolate 2026 by Chocolândia começa no centro', 'A abertura acontece na sexta-feira, 7 de agosto, e o festival segue às sextas, sábados e domingos até o dia 30. A entrada é gratuita, com doação voluntária de alimento para o Fundo Social de Solidariedade.\r\n\r\nNa programação, shows, danças, gastronomia e intervenções de rua, e apoio ao comércio da região central.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4339899', '1.png', '2026-08-07', '2026-08-07 10:00:00', '2026-11-05 01:25:01'),
(37, 11, 'evento', 'Festival do Chocolate recebe Renato Teixeira e Léo Maia no fim de semana', 'De sexta (21) a domingo (23) o centro de Ribeirão Pires recebe mais uma etapa do festival. A abertura, às 20h no ChocoPaço, junta a Big Band e o Coral Infantil e Juvenil da EMARP.\r\n\r\nA programação inclui gastronomia, atrações para as crianças e shows de nomes da música brasileira.\r\n\r\nFonte: ABC do ABC — https://abcdoabc.com.br/festival-do-chocolate-2026-renato-teixeira/', '2.png', '2026-08-21', '2026-08-20 12:00:00', '2026-11-05 01:28:57'),
(38, 6, 'evento', 'Reunião anual do Comitê de Proteção de Dados discute LGPD e governança', 'O encontro acontece no dia 25, às 8h30, no Anfiteatro Arquimedes Ribeiro. Começa com a prestação de contas das Secretarias sobre a LGPD.\r\n\r\nÀs 10h, certificados para integrantes da Guarda Municipal; o DPO Francisco Máximo fala sobre governança de dados, e Thiago Melo encerra às 10h30 com a palestra Compliance e NR-1.\r\n\r\nFonte: ABC do ABC — https://abcdoabc.com.br/ribeirao-pires-sedia-evento-protecao-dados/', '3.png', '2026-08-25', '2026-08-21 12:00:00', '2026-11-05 01:29:05'),
(44, 7, 'evento', 'Cult Run: corrida de 5 km com intervenções culturais no Paço Municipal', 'A prova acontece no domingo, 18 de outubro, com largada às 7h no Paço Municipal. É promovida pela Secretaria de Cultura, com intervenções culturais ao longo do percurso.\r\n\r\nAs inscrições estão abertas pelo site Minhas Inscrições.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4349799', '4.png', '2026-10-18', '2026-09-29 10:00:00', '2026-11-05 01:29:48'),
(48, 6, 'evento', 'Coral Jovem do Estado se apresenta no Anfiteatro Arquimedes Ribeiro', 'O grupo ligado à Emesp Tom Jobim canta no domingo, 18 de outubro, às 17h, com obras de Maurice Ravel, Eric Whitacre e Ronaldo Miranda, entre outros. A apresentação é gratuita.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4353157', '5.png', '2026-10-18', '2026-10-16 17:05:00', '2026-11-05 01:30:01'),
(53, 6, 'evento', 'Circo no Parque tem edição especial de Halloween', 'A atração circense acontece no sábado, 31 de outubro, dentro da programação cultural da cidade.\r\n\r\nFonte: ABC do ABC — https://www.ribeiraopires.sp.gov.br/', '6.png', '2026-10-31', '2026-10-28 12:00:00', '2026-11-05 01:30:10'),
(54, 8, 'evento', '27ª Mostra de Teatro da EMARP começa com espetáculo convidado', 'A mostra abre na sexta-feira, 30 de outubro, às 20h, com “Tá na Ponta da Língua”, da Cia. As Trinca Ferro de Teatro, e segue pelo fim de semana.\r\n\r\nA agenda do fim de semana inclui ainda o Circo no Parque, o Festival de Vôlei e a Feira Mulheres de Ouro Fino; na segunda (2), o Cemitério Municipal São José terá cinco missas.\r\n\r\nFonte: Diário do Grande ABC — https://www.dgabc.com.br/Noticia/4365998', '7.png', '2026-10-30', '2026-10-30 12:19:00', '2026-11-05 01:30:22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `criado_em` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `criado_em`) VALUES
(1, 'sla', '1@1', '$2b$10$0CRQ4FkWMiaW/BwSe/PYAOy/MSxJNvytsT3ivVEPpuSS.Ztnbn3q2', '2026-09-12 02:55:29'),
(2, 'Henrique', 'henriquezarap@gmail.com', '$2b$10$txfRcqUy51VeE2bKSQ7TBO0TKep/pVnKSAyhbmWs6mq3DB0VnZxge', '2026-09-12 15:19:19'),
(3, 'rata do café', 'ratinha@gmail.com', '$2b$10$czgdokZldPinzYhzIrBxVuSLtq9PITZZjDHvh.bQk5Sq27XXz9HzG', '2026-09-12 23:54:53'),
(4, 'rata do café', 'ratinha2@gmail.com', '$2b$10$2SB/7PFBMqfGM.w/BSszSemxo4oPeBmcRnUNLjpI3sjCF56Q.5tVy', '2026-09-12 23:55:32'),
(5, 'sla', '1@3', '$2b$10$iw./chdWh.rJ4VftxpqlNexZW0.ZOyYkyUPuj9wShlrz8VGYfoSue', '2026-09-13 20:59:07'),
(6, '123', '123@1', '$2b$10$sm8lxK5JLPpnZPcmVPQEy.XSguZ3VmQtX32gEbqA23uGcI3LTm8/2', '2026-09-13 21:04:51'),
(7, 'Beatriz Kenobi', 'beatrizkenobi@gmail.com', '$2b$10$0r5rNcRUQNE0RG0uh95sq./7vSB6GYJG.tQhES.d0UEF0pSwcUDEC', '2026-09-13 23:33:32'),
(8, 'Lucas Almeida', 'lucas.almeida@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-01 14:00:00'),
(9, 'Mariana Souza', 'mariana.souza@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-02 20:00:00'),
(10, 'Rafael Costa', 'rafael.costa@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-04 02:00:00'),
(11, 'Camila Ferreira', 'camila.ferreira@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-05 08:00:00'),
(12, 'Gabriel Santos', 'gabriel.santos@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-06 14:00:00'),
(13, 'Juliana Oliveira', 'juliana.oliveira@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-07 20:00:00'),
(14, 'Pedro Henrique Lima', 'pedro.henrique.lima@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-09 02:00:00'),
(15, 'Larissa Martins', 'larissa.martins@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-10 08:00:00'),
(16, 'Thiago Barbosa', 'thiago.barbosa@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-11 14:00:00'),
(17, 'Beatriz Rocha', 'beatriz.rocha@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-12 20:00:00'),
(18, 'Felipe Carvalho', 'felipe.carvalho@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-14 02:00:00'),
(19, 'Amanda Ribeiro', 'amanda.ribeiro@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-15 08:00:00'),
(20, 'Bruno Gomes', 'bruno.gomes@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-16 14:00:00'),
(21, 'Letícia Nogueira', 'leticia.nogueira@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-17 20:00:00'),
(22, 'Diego Araújo', 'diego.araujo@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-19 02:00:00'),
(23, 'Isabela Moreira', 'isabela.moreira@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-20 08:00:00'),
(24, 'Vinícius Teixeira', 'vinicius.teixeira@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-21 14:00:00'),
(25, 'Natália Cardoso', 'natalia.cardoso@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-22 20:00:00'),
(26, 'Mateus Pereira', 'mateus.pereira@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-24 02:00:00'),
(27, 'Carolina Duarte', 'carolina.duarte@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-25 08:00:00'),
(28, 'André Fonseca', 'andre.fonseca@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-26 14:00:00'),
(29, 'Fernanda Lopes', 'fernanda.lopes@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-27 20:00:00'),
(30, 'Gustavo Nunes', 'gustavo.nunes@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-29 02:00:00'),
(31, 'Patrícia Mendes', 'patricia.mendes@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-30 08:00:00'),
(32, 'Leonardo Batista', 'leonardo.batista@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-08-31 14:00:00'),
(33, 'Sofia Castro', 'sofia.castro@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-09-01 20:00:00'),
(34, 'Rodrigo Pinto', 'rodrigo.pinto@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-09-03 02:00:00'),
(35, 'Bianca Freitas', 'bianca.freitas@exemplo.com', '$2b$10$dWcid7I6nVU7mHZT1esR2OoqSRi0p7S6M/YCU23JgIPWJfJdSaA7.', '2025-09-04 08:00:00'),
(36, 'Henrique', 'kamundongodopakistao@gmail.com', '$2b$10$1l6NGSxPwB/de9AOg4cPJON4nr7W7YnafH4BAXVS5H7uR9Z7nlpAC', '2026-11-05 01:32:46');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `fk_comentarios_empresa` (`empresa_id`);

--
-- Índices de tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id` (`post_id`,`usuario_id`),
  ADD UNIQUE KEY `unique_like_empresa` (`post_id`,`empresa_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `fk_likes_empresa` (`empresa_id`);

--
-- Índices de tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa_id` (`empresa_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_comentarios_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_likes_empresa` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
