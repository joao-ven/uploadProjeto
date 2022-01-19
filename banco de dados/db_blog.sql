-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Jan-2022 às 22:34
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_blog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(25) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `created_at`, `admin_status`) VALUES
(78, 'joaovenceslaupgm@gmail.com', '06141327206', '2022-01-14 23:10:17', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id`, `nome`, `data_nascimento`) VALUES
(1, 'Venceslau Neto', '2012-01-01'),
(2, 'Isadora', '2000-01-11'),
(122121, 'lilian Tatielle', '2003-07-17'),
(74949495, 'Ana Cristina', '2002-01-12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(2, '::1', 'joaovenceslaupgm@gmail.com', 1642551584),
(3, '::1', 'ntjkfkjjg', 1642552105),
(5, '::1', 'joaovenceslauifpa@gmail.com', 1642554006);

-- --------------------------------------------------------

--
-- Estrutura da tabela `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `titulo` varchar(1024) NOT NULL,
  `conteudo` text NOT NULL,
  `previa` text NOT NULL,
  `slug` varchar(1024) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `url_imagem` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `post`
--

INSERT INTO `post` (`id`, `titulo`, `conteudo`, `previa`, `slug`, `id_autor`, `url_imagem`) VALUES
(1, 'Primeiro post', 'A tecnologia transformou o mundo e também a forma de ganhar dinheiro. Nos tempos atuais, você não precisa mais passar décadas trabalhando até conseguir fazer sucesso. No mercado tecnológico, vemos jovens ricos mesmo antes dos 30 anos.\r\n\r\nCriadores de aplicativos que geram bilhões, esses jovens estão influenciando pessoas e mudando a comunicação no planeta. Conheça os 5 jovens mais ricos na área da tecnologia!\r\n\r\n1. Mark Zuckerberg\r\nPossivelmente um dos mais famosos da lista, Mark Zuckerberg está entre as 5 pessoas mais ricas do mundo. Segundo a Forbes, o norte-americano acumula quase US$ 70 bilhões, valor maior do que o PIB de alguns países. A fortuna do programador vem da criação do Facebook em 2004.\r\n\r\nNa adolescência, Zuckerberg já gostava de criar jogos e programas de computador. Durante a faculdade, o jovem prodígio se juntou a outros colegas da Universidade de Harvard para desenvolver a rede social que o deixaria bilionário. Seu primeiro bilhão foi conquistado aos 23 anos.\r\n\r\n2. Dustin Moskovitz\r\nOutro bilionário do Facebook é o desenvolvedor de sistemas Dustin Moskovitz. Sua fortuna é estimada em aproximadamente US$ 14 bilhões. Colega de quarto de Zuckerberg em Harvard, Moskovitz foi diretor de tecnologia do Facebook. Deixou a rede social em 2008, para fundar o software de gerenciamento de projetos Asana.\r\n\r\n3. Eduardo Saverin\r\nOutro cocriador do Facebook é o brasileiro Eduardo Saverin. O jovem mais rico do Brasil tem um patrimônio de US$ 9,7 bilhões. Bacharel em economia pela Universidade de Harvard, exerceu o papel de diretor financeiro e gerente de negócios nos primórdios do Facebook.\r\n\r\nApós uma batalha jurídica com Zuckerberg, o brasileiro ficou com cerca de 5% das ações da rede social e alcançou seu primeiro milhão antes de completar 30 anos. Hoje, afastado da rede social, o empreendedor vive em Cingapura e investe em projetos no campo da tecnologia.\r\n\r\n4. Evan Spiegel\r\nCom 27 anos, Evan Spiegel é o mais jovem entre os ricos do mercado tecnológico. Seu patrimônio de mais de US$ 3 bilhões foi conquistado pela criação do Snapchat, um aplicativo que permite enviar fotos que desaparecem após um tempo.\r\n\r\nSpiegel cursou artes e ciência na Universidade de Stanford, mas seu envolvimento com a tecnologia veio desde cedo. Quando era criança, passava o tempo livre nos laboratórios da escola e chegou a montar seu primeiro computador ainda na pré-adolescência.\r\n\r\n5. Bobby Murphy\r\nCocriador do Snapchat, Bobby Murphy é apenas dois anos mais velho que Spiegel. Sua fortuna também é avaliada em mais de US$ 3 bilhões. Formado em matemática e ciências da computação pela Universidade de Stanford, criou a maior parte do código do aplicativo Snapchat. Tem descendência filipina e vive atualmente nos Estados Unidos.', 'A tecnologia transformou o mundo e também a forma de ganhar dinheiro. Nos tempos atuais, você não precisa mais passar décadas trabalhando até conseguir fazer sucesso. No mercado tecnológico, vemos jovens ricos mesmo antes dos 30 anos.', 'primeiro-post', 0, ''),
(2, 'Segundo post', 'E no Brasil?\r\nAlém desses 5, outros jovens vêm se destacando no mundo da tecnologia com a criação de aplicativos e empresas. No Brasil, o criador da Samba Tech, uma empresa de vídeos online, Gustavo Caetano foi considerado o Mark Zuckerberg brasileiro e é um dos empreendedores mais influentes para startups.\r\n\r\nOutro nome a ser acompanhado é o de Vinicius Roveda. Seu empreendimento ContaAzul, um software de gestão financeira, foi apontado pela Forbes como “a primeira startup que pode se tornar bilionária no Brasil”.\r\n\r\nEsses jovens mostram que não há idade para fazer sucesso no mercado tecnológico. Basta uma boa ideia e conhecimentos de programação para transformar o futuro.\r\n\r\nCurtiu nosso conteúdo sobre os jovens mais ricos do mercado tecnológico? Então, compartilhe esse post nas redes sociais!', 'E no Brasil?\r\nAlém desses 5, outros jovens vêm se destacando no mundo da tecnologia com a criação de aplicativos e empresas. No Brasil, o criador da Samba Tech, uma empresa de vídeos online, Gustavo Caetano foi considerado o Mark Zuckerberg brasileiro e é um dos empreendedores mais influentes para startups.', 'segundo-post', 0, ''),
(3, 'Aumento do dólar', '<p>\r\n	<span style=\"font-family:arial,helvetica,sans-serif;\">dol&aacute;r subiu e depois baixou</span></p>\r\n', '<p>\r\n	rep_type</p>\r\n', 'aumento-do-dolar', 761413272, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$10$1zxqwu02sXozhotfDwaVWermazYYLmwI5UK7APWSuViNg3fFYmTnS', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1642614923, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_autor_FK` (`id_autor`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Índices para tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74949496;

--
-- AUTO_INCREMENT de tabela `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
