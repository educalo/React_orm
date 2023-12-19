-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2023 a las 19:48:16
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd`
--
CREATE DATABASE IF NOT EXISTS `bd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `commentBody` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`commentBody`) VALUES
('aaaaaaaa'),
('bbbbbbbb'),
('aaaaaaaa'),
('bbbbbbbb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `title` varchar(100) NOT NULL,
  `postText` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`title`, `postText`, `username`) VALUES
('a', 'a', 'a'),
('b', 'b', 'b'),
('a', 'a', 'a'),
('b', 'b', 'b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Base de datos: `dawtarde`
--
CREATE DATABASE IF NOT EXISTS `dawtarde` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dawtarde`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `idPost` int(11) NOT NULL,
  `tematica` varchar(255) NOT NULL,
  `cuerpo` text NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`idPost`, `tematica`, `cuerpo`, `titulo`, `idUsuario`) VALUES
(2, 'hola', 'terer', 'adiosfwff', 4),
(4, 'titulo', 'hola que tal', 'tematica', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `pass`) VALUES
(1, 'enrique', '12345'),
(2, 'administrador', 'password'),
(3, 'eduardo', '8c31b65bdecdc9f18b695d7318186fd1feed690d'),
(4, 'enrique2', '8cb2237d0679ca88db6464eac60da96345513964'),
(5, 'dsdvsdvds', '9c47643e1bc89fb250179286ee48f68d51546a5f');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idPost`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `idPost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`);
--
-- Base de datos: `dnd`
--
CREATE DATABASE IF NOT EXISTS `dnd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dnd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `armaduras`
--

CREATE TABLE `armaduras` (
  `IDarmadura` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `CA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `armaduras`
--

INSERT INTO `armaduras` (`IDarmadura`, `nombre`, `CA`) VALUES
(1, 'Acolchada', 11),
(2, 'Cuero tachonado', 12),
(3, 'Camisote de mallas', 13),
(4, 'Coraza', 14),
(5, 'Placas y mallas', 15),
(6, 'Completa', 18),
(7, 'test', 16),
(8, 'eewwe', 12),
(9, 'djdjdj', 222),
(10, 'dasddas', 333),
(11, 'antonio', 111),
(12, 'martarmadura', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `armas`
--

CREATE TABLE `armas` (
  `IDarma` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `daño` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `armas`
--

INSERT INTO `armas` (`IDarma`, `nombre`, `daño`, `tipo`) VALUES
(1, 'Espadon', '2d6', 'A dos manos'),
(2, 'Espada corta', '1d6', 'Ligera'),
(3, 'Daga', '1d4', 'Ligera'),
(4, 'Lanza', '1d10', 'De asta'),
(5, 'test', '1d4', 'ligera'),
(6, 'sdff', '12', 'Ligera'),
(7, '27623', '111', 'ligera'),
(8, 'cosa', '33333', 'ligera'),
(9, 'martarma', 'mucho', 'armita');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bufos`
--

CREATE TABLE `bufos` (
  `IDbufo` int(11) NOT NULL,
  `CA` int(11) DEFAULT NULL,
  `HP` int(11) DEFAULT NULL,
  `Ataque` int(11) DEFAULT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Daño` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bufos`
--

INSERT INTO `bufos` (`IDbufo`, `CA`, `HP`, `Ataque`, `Nombre`, `Daño`) VALUES
(1, 2, 0, 0, 'Escudo de la fe', '0'),
(2, 0, 0, 0, 'Arma sagrada', '2d8'),
(3, 0, 8, 0, 'Auxilio', '0'),
(4, 0, 0, 2, 'Bendecir', 'd4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `IDjug` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`IDjug`, `nombre`, `pass`) VALUES
(1, 'Enrique', '12345'),
(2, 'ivan', '99800b85d3383e3a2fb45eb7d0066a4879a9dad0'),
(3, 'rafa', '$2y$10$US9WCZStzG95a25/kWlfmeSaNlHTVW7KtCEvGdUD4HR1AaU8BEPSq'),
(4, 'marta', '8cb2237d0679ca88db6464eac60da96345513964'),
(5, 'katia', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(6, 'test', '12345'),
(7, 'hola', '99800b85d3383e3a2fb45eb7d0066a4879a9dad0'),
(8, 'alvaro', '5b2d0c210c4a9fd6aeaf2eaedf8273be993c90c2'),
(9, 'antonio', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(10, 'tu', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(11, 'oscar', 'da39a3ee5e6b4b0d3255bfef95601890afd80709'),
(12, 'elena', '291c6b2df1bac379d47f5557f9e564a1f6618bf7'),
(13, 'esperanto', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje`
--

CREATE TABLE `personaje` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `idJugador` int(11) DEFAULT NULL,
  `raza` varchar(255) DEFAULT NULL,
  `clase` varchar(255) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `CA` int(11) DEFAULT NULL,
  `HP` int(11) DEFAULT NULL,
  `ATK` int(11) DEFAULT NULL,
  `Daño` varchar(255) DEFAULT NULL,
  `Fuerza` int(11) NOT NULL,
  `Destreza` int(11) NOT NULL,
  `Constitucion` int(11) NOT NULL,
  `Inteligencia` int(11) NOT NULL,
  `Sabiduría` int(11) NOT NULL,
  `Carisma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personaje`
--

INSERT INTO `personaje` (`ID`, `nombre`, `idJugador`, `raza`, `clase`, `nivel`, `CA`, `HP`, `ATK`, `Daño`, `Fuerza`, `Destreza`, `Constitucion`, `Inteligencia`, `Sabiduría`, `Carisma`) VALUES
(1, 'Esperanto', 1, 'Humano', 'Paladín', 13, 22, 110, 9, '2d6', 18, 10, 16, 8, 10, 16),
(2, 'Esperanto', 2, 'Humano', 'Paladín', 5, 20, 54, 5, '6', 18, 10, 16, 12, 10, 18),
(5, 'test', 6, 'test', 'test', 5, 1, 1, 1, '1', 1, 1, 1, 1, 1, 1),
(8, 'hola', 7, 'hola', 'hola', 10, 10, 10, 10, '10', 10, 10, 10, 10, 10, 10),
(9, 'probando', 8, 'test', 'test', 13, 18, 27, 10, '', 10, 10, 10, 10, 10, 10),
(11, 'antonio', 12, 'test', 'test', 13, 58, 10, 10, '10', 10, 10, 10, 10, 10, 10),
(13, 'test', 13, 'test', 'test', 15, 14, 25, 10, NULL, 10, 10, 10, 10, 10, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `armaduras`
--
ALTER TABLE `armaduras`
  ADD PRIMARY KEY (`IDarmadura`);

--
-- Indices de la tabla `armas`
--
ALTER TABLE `armas`
  ADD PRIMARY KEY (`IDarma`);

--
-- Indices de la tabla `bufos`
--
ALTER TABLE `bufos`
  ADD PRIMARY KEY (`IDbufo`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`IDjug`);

--
-- Indices de la tabla `personaje`
--
ALTER TABLE `personaje`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idJugador` (`idJugador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `armaduras`
--
ALTER TABLE `armaduras`
  MODIFY `IDarmadura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `armas`
--
ALTER TABLE `armas`
  MODIFY `IDarma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `bufos`
--
ALTER TABLE `bufos`
  MODIFY `IDbufo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `IDjug` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `personaje`
--
ALTER TABLE `personaje`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personaje`
--
ALTER TABLE `personaje`
  ADD CONSTRAINT `personaje_ibfk_1` FOREIGN KEY (`idJugador`) REFERENCES `jugador` (`IDjug`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bd\",\"table\":\"comments\"},{\"db\":\"bd\",\"table\":\"posts\"},{\"db\":\"bd\",\"table\":\"Comments\"},{\"db\":\"bd\",\"table\":\"users\"},{\"db\":\"bd\",\"table\":\"Users\"},{\"db\":\"bd\",\"table\":\"Posts\"},{\"db\":\"dawtarde\",\"table\":\"usuarios\"},{\"db\":\"dawtarde\",\"table\":\"posts\"},{\"db\":\"dnd\",\"table\":\"armas\"},{\"db\":\"dnd\",\"table\":\"armaduras\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('pokemondb', 'equipo', 'mote');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-12-19 18:46:26', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `pokemondb`
--
CREATE DATABASE IF NOT EXISTS `pokemondb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pokemondb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cantidad_tipo_pokemon`
--

CREATE TABLE `cantidad_tipo_pokemon` (
  `tipo` varchar(10) DEFAULT NULL,
  `cantidad` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `idPokemon` int(11) NOT NULL,
  `mote` varchar(255) NOT NULL,
  `lvl` int(11) NOT NULL,
  `pokemon` varchar(255) NOT NULL,
  `idPokedex` int(11) NOT NULL,
  `tip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`idPokemon`, `mote`, `lvl`, `pokemon`, `idPokedex`, `tip`) VALUES
(1, 'Lechugo', 5, 'Bulbasaur', 1, 'Planta'),
(4, 'loquesea', 14, 'hola', 12, 'hola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pc`
--

CREATE TABLE `pc` (
  `idPokemon` int(11) NOT NULL,
  `mote` varchar(255) DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL,
  `pokemon` varchar(255) DEFAULT NULL,
  `idPokedex` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `numero_pokedex` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `peso` double NOT NULL,
  `altura` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`numero_pokedex`, `nombre`, `peso`, `altura`) VALUES
(1, 'Bulbasaur', 6.9, 0.7),
(2, 'Ivysaur', 13, 1),
(3, 'Venasaur', 100, 2),
(4, 'Charmander', 8.5, 0.6),
(5, 'Charmeleon', 19, 1.1),
(6, 'Charizard', 90.5, 1.7),
(7, 'Squirtle', 9, 0.5),
(8, 'Wartortle', 22.5, 1),
(9, 'Blastoise', 85.5, 1.6),
(10, 'Caperpie', 2.9, 0.3),
(11, 'Metapod', 9.9, 0.7),
(12, 'Butterfree', 32, 1.1),
(13, 'Weedle', 3.2, 0.3),
(14, 'Kakuna', 10, 0.6),
(15, 'Beedrill', 29.5, 1),
(16, 'Pidgey', 1.8, 0.3),
(17, 'Pidgeotto', 30, 1.1),
(18, 'Pidgeot', 39.5, 1.5),
(19, 'Rattata', 3.5, 0.3),
(20, 'Raticate', 18.5, 0.7),
(21, 'Spearow', 2, 0.3),
(22, 'Fearow', 38, 1.2),
(23, 'Ekans', 6.9, 2),
(24, 'Arbok', 65, 3.5),
(25, 'Pikachu', 6, 0.4),
(26, 'Raichu', 30, 0.8),
(27, 'Sandshrew', 12, 0.6),
(28, 'Sandslash', 29.5, 1),
(29, 'Nidoran♀', 7, 0.4),
(30, 'Nidorina', 20, 0.8),
(31, 'Nidoqueen', 60, 1.3),
(32, 'Nidoran♂', 9, 0.5),
(33, 'Nidorino', 19.5, 0.9),
(34, 'Nidoking', 62, 1.4),
(35, 'Clefairy', 7.5, 0.6),
(36, 'Clefable', 40, 1.3),
(37, 'Vulpix', 9.9, 0.6),
(38, 'Ninetales', 19.9, 1.1),
(39, 'Jigglypuff', 5.5, 0.5),
(40, 'Wigglytuff', 12, 1),
(41, 'Zubat', 7.5, 0.8),
(42, 'Golbat', 55, 1.6),
(43, 'Oddish', 5.4, 0.5),
(44, 'Gloom', 8.6, 0.8),
(45, 'Vileplume', 18.6, 1.2),
(46, 'Paras', 5.4, 0.3),
(47, 'Parasect', 29.5, 1),
(48, 'Venonat', 30, 1),
(49, 'Venomoth', 12.5, 1.5),
(50, 'Digglet', 0.8, 0.2),
(51, 'Dugtrio', 33.3, 0.7),
(52, 'Meowth', 4.2, 0.4),
(53, 'Persian', 32, 1),
(54, 'Psyduck', 19.6, 0.8),
(55, 'Golduck', 76.6, 1.7),
(56, 'Mankey', 28, 0.5),
(57, 'Primeape', 32, 1),
(58, 'Growlithe', 19, 0.7),
(59, 'Arcanine', 155, 1.9),
(60, 'Poliwag', 12.4, 0.6),
(61, 'Poliwhirl', 20, 1),
(62, 'Poliwrath', 54, 1.3),
(63, 'Abra', 19.5, 0.9),
(64, 'Kadabra', 56.5, 1.3),
(65, 'Alakazam', 48, 1.5),
(66, 'Machop', 19.5, 0.8),
(67, 'Mackoke', 70.5, 1.5),
(68, 'Machamp', 130, 1.6),
(69, 'Bellsprout', 4, 0.7),
(70, 'Weepinbell', 6.4, 1),
(71, 'Victreebel', 15.5, 1.7),
(72, 'Tentacool', 45.5, 0.9),
(73, 'Tentacruel', 55, 1.6),
(74, 'Geodude', 20, 0.4),
(75, 'Graveler', 105, 1),
(76, 'Golem', 300, 1.4),
(77, 'Ponyta', 30, 1),
(78, 'Rapidash', 95, 1.7),
(79, 'Slowpoke', 36, 1.2),
(80, 'Slowbro', 78.5, 1.6),
(81, 'Magnemite', 6, 0.3),
(82, 'Magneton', 60, 1),
(83, 'Farfetch\'d', 15, 0.8),
(84, 'Doduo', 39.2, 1.4),
(85, 'Dodrio', 85.2, 1.8),
(86, 'Seel', 90, 1.1),
(87, 'Dewgong', 120, 1.7),
(88, 'Grimer', 30, 0.9),
(89, 'Muk', 30, 1.2),
(90, 'Shellder', 4, 0.3),
(91, 'Cloyster', 132.5, 1.5),
(92, 'Gastly', 0.1, 1.3),
(93, 'Haunter', 0.1, 1.6),
(94, 'Gengar', 40.5, 1.5),
(95, 'Onix', 210, 8.8),
(96, 'Drowzee', 32.4, 1),
(97, 'Hypno', 75.6, 1.6),
(98, 'Krabby', 6.5, 0.4),
(99, 'Kingler', 60, 1.3),
(100, 'Voltorb', 10.4, 0.5),
(101, 'Electrode', 66.6, 1.2),
(102, 'Exeggcute', 2.5, 0.4),
(103, 'Exeggutor', 120, 2),
(104, 'Cubone', 6.5, 0.4),
(105, 'Marowak', 45, 1),
(106, 'Hitmonlee', 49.8, 1.5),
(107, 'Hitmonchan', 50.2, 1.4),
(108, 'Lickitung', 65, 1.2),
(109, 'Koffing', 1, 0.6),
(110, 'Weezing', 9.5, 1.2),
(111, 'Rhyhorn', 115, 1),
(112, 'Rhydon', 120, 1.9),
(113, 'Chansey', 34.6, 1.1),
(114, 'Tangela', 35, 1),
(115, 'Kangaskhan', 80, 2.2),
(116, 'Horsea', 8, 0.4),
(117, 'Seadra', 25, 1.2),
(118, 'Goldeen', 15, 0.6),
(119, 'Seaking', 39, 1.3),
(120, 'Staryu', 34.5, 0.8),
(121, 'Starmie', 80, 1.1),
(122, 'Mr. Mime', 54.5, 1.3),
(123, 'Scyther', 56, 1.5),
(124, 'Jynx', 40.6, 1.4),
(125, 'Electabuzz', 30, 1.1),
(126, 'Magmar', 44.5, 1.3),
(127, 'Pinsir', 55, 1.5),
(128, 'Tauros', 88.4, 1.4),
(129, 'Magikarp', 10, 0.9),
(130, 'Gyarados', 235, 6.5),
(131, 'Lapras', 220, 2.5),
(132, 'Ditto', 4, 0.3),
(133, 'Eevee', 6.5, 0.3),
(134, 'Vaporeon', 29, 1),
(135, 'Jolteon', 24.5, 0.8),
(136, 'Flareon', 25, 0.9),
(137, 'Porygon', 36.5, 0.8),
(138, 'Omanyte', 7.5, 4),
(139, 'Omastar', 35, 1),
(140, 'Kabuto', 11.5, 0.5),
(141, 'Kabutops', 40.5, 1.3),
(142, 'Aerodactyl', 59, 1.8),
(143, 'Snorlax', 460, 2.1),
(144, 'Articuno', 55.4, 1.7),
(145, 'Zapdos', 52.6, 1.6),
(146, 'Moltres', 60, 2),
(147, 'Dratini', 3.3, 1.8),
(148, 'Dragonair', 16.5, 4),
(149, 'Dragonite', 210, 2.2),
(150, 'Mewtwo', 122, 2),
(151, 'Mew', 4, 0.4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon_tipo`
--

CREATE TABLE `pokemon_tipo` (
  `numero_pokedex` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemon_tipo`
--

INSERT INTO `pokemon_tipo` (`numero_pokedex`, `id_tipo`) VALUES
(1, 10),
(1, 14),
(2, 10),
(2, 14),
(3, 10),
(3, 14),
(4, 6),
(5, 6),
(6, 6),
(6, 15),
(7, 1),
(8, 1),
(9, 1),
(10, 2),
(11, 2),
(12, 2),
(12, 15),
(13, 2),
(13, 14),
(14, 2),
(14, 14),
(15, 2),
(15, 14),
(16, 9),
(16, 15),
(17, 9),
(17, 15),
(18, 9),
(18, 15),
(19, 9),
(20, 9),
(21, 9),
(21, 15),
(22, 9),
(22, 15),
(23, 14),
(24, 14),
(25, 4),
(26, 4),
(27, 13),
(28, 13),
(29, 14),
(30, 14),
(31, 13),
(31, 14),
(32, 14),
(33, 14),
(34, 13),
(34, 14),
(35, 9),
(36, 9),
(37, 6),
(38, 6),
(39, 9),
(40, 9),
(41, 14),
(41, 15),
(42, 14),
(42, 15),
(43, 10),
(43, 14),
(44, 10),
(44, 14),
(45, 10),
(45, 14),
(46, 2),
(46, 10),
(47, 2),
(47, 10),
(48, 2),
(48, 14),
(49, 2),
(49, 14),
(50, 13),
(51, 13),
(52, 9),
(53, 9),
(54, 1),
(55, 1),
(56, 8),
(57, 8),
(58, 6),
(59, 6),
(60, 1),
(61, 1),
(62, 1),
(62, 8),
(63, 11),
(64, 12),
(65, 13),
(66, 8),
(67, 8),
(68, 8),
(69, 10),
(69, 14),
(70, 10),
(70, 14),
(71, 10),
(71, 14),
(72, 1),
(72, 14),
(73, 1),
(73, 14),
(74, 12),
(74, 13),
(75, 12),
(75, 13),
(76, 12),
(76, 13),
(77, 6),
(78, 6),
(79, 1),
(79, 11),
(80, 1),
(80, 11),
(81, 4),
(82, 4),
(83, 9),
(83, 15),
(84, 9),
(84, 15),
(85, 9),
(85, 15),
(86, 1),
(86, 7),
(87, 1),
(87, 7),
(88, 14),
(89, 14),
(90, 1),
(91, 1),
(91, 7),
(92, 5),
(92, 14),
(93, 5),
(93, 14),
(94, 5),
(94, 14),
(95, 12),
(95, 13),
(96, 11),
(97, 11),
(98, 1),
(99, 1),
(100, 4),
(101, 4),
(102, 10),
(102, 11),
(103, 10),
(103, 11),
(104, 13),
(105, 13),
(106, 8),
(107, 8),
(108, 9),
(109, 14),
(110, 14),
(111, 12),
(111, 13),
(112, 12),
(112, 13),
(113, 9),
(114, 10),
(115, 9),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(121, 11),
(122, 11),
(123, 2),
(123, 15),
(124, 7),
(124, 11),
(125, 4),
(126, 6),
(127, 2),
(128, 9),
(129, 1),
(130, 1),
(130, 15),
(131, 1),
(131, 7),
(132, 9),
(133, 9),
(134, 1),
(135, 4),
(136, 6),
(137, 9),
(138, 1),
(138, 12),
(139, 1),
(139, 12),
(140, 1),
(140, 12),
(141, 1),
(141, 12),
(142, 12),
(142, 15),
(143, 9),
(144, 7),
(144, 15),
(145, 4),
(145, 15),
(146, 6),
(146, 15),
(147, 3),
(148, 3),
(149, 3),
(149, 15),
(150, 11),
(151, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `id_tipo_ataque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `nombre`, `id_tipo_ataque`) VALUES
(1, 'Agua', 2),
(2, 'Bicho', 1),
(3, 'Dragón', 2),
(4, 'Eléctrico', 2),
(5, 'Fantasma', 1),
(6, 'Fuego', 2),
(7, 'Hielo', 2),
(8, 'Lucha', 1),
(9, 'Normal', 1),
(10, 'Planta', 2),
(11, 'Psíquico', 2),
(12, 'Roca', 1),
(13, 'Tierra', 1),
(14, 'Veneno', 1),
(15, 'Volador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usu` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usu`, `user`, `pass`) VALUES
(1, 'enrique', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`idPokemon`),
  ADD KEY `idPokedex` (`idPokedex`);

--
-- Indices de la tabla `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`idPokemon`),
  ADD KEY `idPokedex` (`idPokedex`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`numero_pokedex`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `idPokemon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pc`
--
ALTER TABLE `pc`
  MODIFY `idPokemon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`idPokedex`) REFERENCES `pokemon` (`numero_pokedex`);

--
-- Filtros para la tabla `pc`
--
ALTER TABLE `pc`
  ADD CONSTRAINT `pc_ibfk_1` FOREIGN KEY (`idPokedex`) REFERENCES `pokemon` (`numero_pokedex`);
--
-- Base de datos: `probando`
--
CREATE DATABASE IF NOT EXISTS `probando` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `probando`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablaprueba`
--

CREATE TABLE `tablaprueba` (
  `column_name` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
