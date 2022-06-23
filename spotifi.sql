-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2022 a las 19:03:48
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotifi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes`
--

CREATE TABLE `albumes` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`id`, `artista_id`, `nombre`) VALUES
(1, 4, 'Blurryface'),
(2, 2, 'After Hours'),
(3, 3, 'Rascal Flatts'),
(4, 1, 'Native'),
(5, 5, 'FIFA 16 Soundtrack'),
(6, 6, 'Don\'t Kill the Magic'),
(7, 7, 'Ashes'),
(8, 8, 'Divide'),
(9, 9, 'Absolute Music 77'),
(10, 10, 'Tribute'),
(11, 11, 'True'),
(12, 12, 'Night Visions'),
(13, 13, 'Trending Hits 2022'),
(14, 14, 'Hybrid Theory'),
(15, 15, 'Still the Same... Great Rock Classics of Our Time'),
(16, 16, 'Mylo Xyloto'),
(17, 17, 'Back in Black'),
(18, 18, 'Wolfmother'),
(19, 19, 'V'),
(20, 20, 'Sheer Heart Attack'),
(21, 45, 'colores'),
(22, 45, 'Jose'),
(23, 45, 'vibras'),
(24, 45, 'la familia'),
(25, 45, 'energia'),
(26, 45, 'summer vacation'),
(27, 50, 'Walls'),
(28, 43, 'Travis Scott SoundTrack'),
(29, 21, 'NECTAR'),
(30, 23, 'Is This It'),
(31, 45, 'Colores'),
(32, 28, 'GOD IS GOOD'),
(33, 71, 'level of concern ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_canciones`
--

CREATE TABLE `album_canciones` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `album_canciones`
--

INSERT INTO `album_canciones` (`id`, `album_id`, `cancion_id`) VALUES
(1, 1, 4),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 8),
(6, 6, 5),
(7, 7, 11),
(8, 8, 6),
(9, 9, 13),
(10, 10, 9),
(11, 11, 10),
(12, 12, 12),
(13, 13, 14),
(14, 14, 15),
(15, 15, 16),
(16, 16, 17),
(17, 17, 18),
(18, 18, 19),
(19, 19, 20),
(20, 20, 7),
(28, 27, 33),
(29, 27, 36),
(30, 27, 38),
(31, 27, 39),
(32, 27, 40),
(33, 27, 43),
(34, 27, 61),
(35, 28, 128),
(36, 29, 73),
(37, 29, 30),
(38, 29, 32),
(39, 29, 45),
(40, 29, 37),
(41, 32, 66),
(42, 29, 23),
(43, 31, 150),
(44, 29, 53),
(45, 29, 47),
(46, 31, 158),
(47, 29, 22),
(48, 31, 154),
(49, 29, 64),
(50, 30, 101),
(51, 30, 141),
(52, 30, 147),
(53, 30, 87),
(54, 30, 105),
(55, 30, 109),
(56, 30, 114),
(57, 30, 119),
(58, 30, 149),
(59, 30, 136),
(60, 30, 138),
(61, 30, 141),
(62, 28, 115),
(63, 28, 52),
(64, 28, 70),
(65, 28, 104),
(66, 28, 44),
(67, 32, 152),
(68, 32, 102),
(69, 32, 142),
(70, 32, 78),
(71, 32, 56),
(72, 32, 120),
(73, 32, 74),
(74, 32, 110),
(75, 32, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `imagen`) VALUES
(1, 'OneRepublic', 'https://thehappening.com/wp-content/uploads/2017/07/one-republic-1024x694.jpg'),
(2, 'The Weeknd', 'https://upload.wikimedia.org/wikipedia/commons/7/79/4u.jpg'),
(3, 'Rascal Flatts', 'https://direct.rhapsody.com/imageserver/images/alb.491734263/500x500.jpg'),
(4, 'Twenty One Pilots', 'https://ismorbo.com/wp-content/uploads/2020/06/twenty-one-pilots-9.jpg'),
(5, 'KALEO', 'https://okdiario.com/img/2020/03/19/kaleo.jpg'),
(6, 'MAGIC!', 'http://www.tuconcierto.net/wp-content/uploads/2015/08/magic.jpg'),
(7, 'Stellar', 'https://cdns-images.dzcdn.net/images/cover/0d8a0936170cf1df72b440726eda4f5f/500x500.jpg'),
(8, 'Ed Sheeran', 'https://jenesaispop.com/wp-content/uploads/2022/04/ed-sheeran-696x522.jpg'),
(9, 'OMI', 'https://www.telemundo.com/sites/nbcutelemundo/files/images/promo/article/2015/08/28/omi-6.jpg'),
(10, 'John Newman', 'https://upload.wikimedia.org/wikipedia/commons/5/57/John-Newman_2014-01-18_1846_photoby-Adam-Bielawski.jpg'),
(11, 'Avicii', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Avicii_2014_003.jpg/640px-Avicii_2014_003.jpg'),
(12, 'Imagine Dragons', 'https://i.scdn.co/image/ab6761610000e5eb920dc1f617550de8388f368e'),
(13, 'BoyWithUke', 'https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/d/e/e/a/deea4bdb13aa38798b9ffa7739214b5b.jpg'),
(14, 'Linkin Park', 'https://www.elsoldemexico.com.mx/gossip/celebridades/9f17kc-linkin-park-3.jpg/ALTERNATES/LANDSCAPE_1140/linkin%20park%203.jpg'),
(15, 'Rod Stewart', 'https://static.independent.co.uk/2021/10/22/19/ROD_STEWART-AGRESI%C3%93N_84865.jpg?width=1200'),
(16, 'Coldplay', 'https://jenesaispop.com/wp-content/uploads/2021/09/coldplay.jpeg'),
(17, 'AC/DC', 'https://www.chicagotribune.com/resizer/BSODD0laKW39eg_hJlI2Fel1AFY=/1200x0/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/2GMXU7FAAZXJIWU3DXU'),
(18, 'Wolfmother', 'https://e.snmc.io/i/1200/s/0911e23bcd38da5e98e73bb489e012ad/5848814'),
(19, 'Maroon 5', 'https://noticias.radiorama.mx/wp-content/uploads/2021/12/Marron-5-regresara-a-Mexico-en-2022.jpg'),
(20, 'Queen', 'https://imagenes.elpais.com/resizer/FcU60fB_oYBSjBOezEmSyU3q3nY=/414x0/arc-anglerfish-eu-central-1-prod-prisa.s3.amazonaws.com/public/64DNMLCPWMN2WCBR'),
(21, 'Joji', 'https://garajedelrock.com/wp-content/uploads/2020/09/joji-run_1290_834.jpg'),
(22, 'Bad bunny', 'https://imagenes.elpais.com/resizer/g5CQUvxeO2ErM2-GRPzWPXegTZ0=/1200x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/TV22SJWVXKNIHD4EFA66URS'),
(23, 'The Strokes ', 'https://upload.wikimedia.org/wikipedia/commons/6/65/The_Strokes_by_Roger_Woolman.jpg'),
(25, 'Faraón Love Shady\r\n', 'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/J5NMFGGUFFGPZPA3HRFAXTJUQA.jpg'),
(27, 'Chris Brown', 'https://media.resources.festicket.com/www/artists/65226632_10157553665991654_5836595229364322304_o.jpg'),
(28, 'Kanye West', 'https://www.eltiempo.com/files/image_640_428/uploads/2020/11/05/5fa3ea27e7019.jpeg'),
(36, 'Taylor Swift', 'https://upload.wikimedia.org/wikipedia/commons/d/d9/191125_Taylor_Swift_at_the_2019_American_Music_Awards.png'),
(37, 'Michael Jackson\r\n', 'https://images-na.ssl-images-amazon.com/images/I/61xgsBsRjSL.jpg'),
(38, 'Jhay Cortez', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Jhay-cortez-imagen.jpg/1200px-Jhay-cortez-imagen.jpg'),
(39, 'Anuel AA', 'https://upload.wikimedia.org/wikipedia/commons/2/2a/Anuel_AA_Entrevista_2018.png'),
(43, 'Travis Scott', 'https://static.wikia.nocookie.net/featteca/images/e/ea/Travis_Scott_Fortnite.png/revision/latest?cb=20201028003159&path-prefix=es'),
(45, 'J Balvin', 'http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcS_pDQzjnYhAU23joQ6kr5r7k6m5-NEavOxgvWu4yNMhyjB45r1GdtLqsnqw61H'),
(46, 'BTS', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/BTS_on_the_Billboard_Music_Awards_red_carpet%2C_1_May_2019.jpg/1200px-BTS_on_the_Billboard_M'),
(47, 'Mitski', 'https://cdns-images.dzcdn.net/images/artist/a1c32bae74c5b58d59899ced20c61e75/500x500.jpg'),
(49, 'LMFAO', 'https://i.discogs.com/O6sMfO9PUgsU9tkpOJv8KV3uC9fsuLHPUeZhP7XW3_Q/rs:fit/g:sm/q:90/h:530/w:473/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9BLTEyMjky/MDIt'),
(50, 'Louis Tomlinson', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0W0hdoIe9DBcYPm4kyenAxg3mOpzhLvxCzg&usqp=CAU'),
(51, 'Set It Off', 'https://2.bp.blogspot.com/-E88j48cnV-o/XGWyy_xZRCI/AAAAAAAAAb8/-OqNoVvlGGAwkFtZuKpFQyPBtG7dE53IgCLcBGAs/s1600/SET%2BIT%2BOFF%2B1.jpg'),
(52, 'El David', 'https://cdn2.excelsior.com.mx/media/pictures/2019/05/26/2153623.jpg'),
(53, 'Tyga', 'https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/8/3/c/9/83c9e3e41fb583278d5196c0f64e606e.jpg'),
(54, 'Madonna', 'https://upload.wikimedia.org/wikipedia/commons/b/b1/Madonna_Rebel_Heart_Tour_2015_-_Stockholm_%2823051472299%29_%28cropped%29.jpg'),
(55, 'Lana Del Rey', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Lana_Del_Rey_%40_Grammy_Museum_10_13_2019_%2849311023203%29.jpg/1200px-Lana_Del_Rey_%40_Gram'),
(56, 'Shakira', 'https://static01.nyt.com/images/2017/05/27/arts/27SHAKIRA/27SHAKIRA-superJumbo.jpg'),
(57, 'Alicia Keys ', 'https://upload.wikimedia.org/wikipedia/commons/2/2e/AliciaKeys2013%2C2.jpg'),
(58, 'Harry Styles ', 'https://media.revistagq.com/photos/5d1ac2e327422255c8e336e4/2:3/w_2432,h_3648,c_limit/GettyImages-931619330.jpg'),
(61, 'Grupo Arriesgado', 'https://www.elsoldesinaloa.com.mx/local/f5uqo2-grupo-arriesgado/ALTERNATES/LANDSCAPE_1140/Grupo-Arriesgado'),
(62, 'Diferente Nivel ', 'https://yt3.ggpht.com/3NB780r5JGfO5QmfBPrl19d0Dhp2KFpiWFscb-w9bvWyqWE4gujIOIjadnvXOQ9pzNMIqmIfLEw=s900-c-k-c0x00ffffff-no-rj'),
(63, 'Post Malone', 'https://media.revistagq.com/photos/5ca5f278f464886ad1f4933e/2:3/w_560,h_840,c_limit/post_malone_161.jpeg'),
(64, 'kanye west', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tiempox.com%2Fcelebridades%2F2022%2F4%2F22%2Fkanye-west-afirma-que-su-familia-esta-en-peligro-en'),
(65, 'Wos', 'https://i.ytimg.com/vi/RNLsc_DWDUw/maxresdefault.jpg'),
(66, 'Chalino Sanchéz', 'https://www.infobae.com/new-resizer/YwUiSZhhToDv9Bh7c3XFKqE8uL4=/1200x900/filters:format(webp):quality(85)//cloudfront-us-east-1.images.arcpublishing.'),
(67, 'Wos', 'https://i.ytimg.com/vi/RNLsc_DWDUw/maxresdefault.jpg'),
(68, 'Doja Cat', 'https://storage.googleapis.com/www-factornueve-com/2022/03/bdfe2423-doja-cat.webp'),
(69, 'Kurt Cobain ', 'https://upload.wikimedia.org/wikipedia/commons/5/57/Kurt_Cobain_1991_cropped.jpg'),
(70, 'tweny one pilots', 'https://www.latercera.com/resizer/Qje--Hk0HQ37RcUCrwwJVHulYD8=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/H5GPEGW6MBHXPCA7J'),
(71, 'twenty one pilots', 'https://img.gruporeforma.com/imagenes/960x640/6/38/5037538.jpg'),
(72, 'Grupo Marrano', 'https://i1.sndcdn.com/avatars-sRqnE6GkQuXE2twO-qP1hrw-t500x500.jpg'),
(73, 'Grupo Marrano', 'https://i1.sndcdn.com/avatars-sRqnE6GkQuXE2twO-qP1hrw-t500x500.jpg'),
(74, 'Jacboys', 'https://m.media-amazon.com/images/I/81iAiTV0o4L._AC_SL1500_.jpg'),
(75, 'Oasis', 'https://los40.com/los40/imagenes/2021/01/25/los40classic/1611576404_337965_1611576647_gigante_normal.jpg'),
(76, 'Oasis', 'https://los40.com/los40/imagenes/2021/01/25/los40classic/1611576404_337965_1611576647_gigante_normal.jpg'),
(77, 'julion alvarez', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `genero_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `disponible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `artista_id`, `duracion`, `genero_id`, `fecha`, `disponible`) VALUES
(1, 'Counting Stars', 1, '00:04:19', 1, '2013-06-14', 1),
(2, 'Blinding Lights', 2, '00:03:21', 4, '2020-11-29', 1),
(3, 'Life is a Highway', 3, '00:04:36', 3, '2006-06-09', 1),
(4, 'Stressed Out', 4, '00:03:22', 3, '2015-11-10', 1),
(5, 'Rude', 6, '00:03:44', 1, '2014-02-24', 1),
(6, 'Shape of You', 8, '00:03:53', 1, '2017-01-06', 1),
(7, 'Killer Queen', 20, '00:03:00', 3, '1974-10-21', 1),
(8, 'Way Down We Go', 5, '00:03:39', 8, '2015-08-07', 1),
(9, 'Love me Again', 10, '00:04:00', 1, '2013-05-17', 1),
(10, 'Wake Me Up', 11, '00:04:09', 2, '2013-06-17', 1),
(11, 'Ashes', 7, '00:02:46', 1, '2020-05-03', 1),
(12, 'Radioactive', 12, '00:03:07', 3, '2012-10-29', 1),
(13, 'Cheerleader', 9, '00:02:54', 11, '2014-05-19', 1),
(14, 'Toxic', 13, '00:02:48', 11, '2021-10-21', 1),
(15, 'In The End', 14, '00:03:36', 3, '2001-10-09', 1),
(16, 'Fooled Around and Fell in Love', 15, '00:03:48', 1, '2009-10-25', 1),
(17, 'Paradise', 16, '00:04:20', 1, '2011-09-12', 1),
(18, 'Back in Black', 17, '00:04:15', 3, '1980-07-25', 1),
(19, 'Joker and the Thief', 18, '00:04:40', 3, '0000-00-00', 1),
(20, 'Sugar', 19, '00:03:55', 1, '2015-01-13', 1),
(22, 'Sanctuary', 21, '00:03:00', 4, '2019-06-14', 1),
(23, 'Gimme Love', 21, '00:03:34', 4, '2020-04-19', 1),
(24, 'Cunumi - Faraon Love Shady (Video Oficial)\r\n', 25, '03:27:00', 5, '0000-00-00', 1),
(30, 'Ew', 21, '00:03:27', 4, '2020-09-25', 1),
(31, 'Oh me vengo - Faraón Love Shady [Video Oficial]\r\n', 25, '02:07:00', 5, '0000-00-00', 1),
(32, 'Like You Do', 21, '00:04:00', 4, '2020-09-25', 1),
(33, 'Kill my Mind', 50, '00:03:41', 1, '2020-01-31', 1),
(36, 'Only The Brave', 50, '00:01:44', 1, '2020-01-31', 1),
(37, 'Daylight', 21, '00:02:43', 4, '2020-08-06', 1),
(38, 'Walls', 50, '00:03:50', 1, '2020-01-31', 1),
(39, 'Too Young', 50, '00:03:49', 1, '2020-01-31', 1),
(40, 'Two of Us', 50, '00:03:38', 1, '2020-01-31', 1),
(41, 'All Too Well', 36, '00:00:10', 1, '2012-10-22', 1),
(42, 'ME!', 36, '00:04:08', 1, '2019-04-26', 1),
(43, 'Habit', 50, '00:03:05', 1, '2020-01-31', 1),
(44, 'SICKO MODE', 43, '00:05:15', 7, '2018-08-02', 1),
(45, 'YEAH RIGHT', 21, '00:02:54', 4, '2018-05-08', 1),
(46, 'Miss You', 50, '00:03:22', 1, '2017-12-08', 1),
(47, 'SLOW DANCING IN THE DARK', 21, '00:03:29', 4, '2018-09-12', 1),
(48, 'Nobody', 47, '00:03:24', 3, '2018-01-17', 1),
(49, 'Washing Machine Heart', 47, '00:02:09', 3, '2018-01-17', 1),
(50, 'Praise God', 28, '00:03:47', 7, '2021-08-29', 1),
(51, 'Back to You', 50, '00:03:19', 1, '2017-08-06', 1),
(52, 'Antidote', 43, '00:04:26', 7, '2015-07-28', 1),
(53, 'Run', 21, '00:03:15', 4, '2020-03-06', 1),
(54, 'Just Like You', 50, '00:03:25', 1, '2017-10-17', 1),
(55, 'Oh me vengo - Faraón Love Shady [Video Oficial]\r\n', 25, '02:07:00', 5, '0000-00-00', 1),
(56, 'Hurricane', 28, '00:04:03', 7, '2022-04-29', 1),
(58, 'Highest in the Room', 43, '00:02:55', 7, '2019-10-03', 1),
(59, 'Who´s in control', 51, '03:06:00', 1, '0000-00-00', 0),
(60, 'PANOCHA - Faraón Love Shady [Video Oficial]', 25, '02:20:00', 5, '2020-08-08', 1),
(61, 'Don\'t Let It Break Your Heart', 50, '00:03:25', 1, '2020-01-31', 1),
(62, 'Billie Jean', 37, '04:55:00', 4, '1983-01-01', 1),
(63, 'Beat It\r\n', 37, '04:58:00', 4, '1983-01-01', 1),
(64, 'Tick Tock', 21, '00:02:12', 4, '2020-09-25', 1),
(65, 'OUT WEST', 43, '00:02:43', 7, '2019-12-26', 1),
(66, 'Jesus Lord', 28, '00:08:58', 7, '2021-08-29', 1),
(67, 'Soy Guapo - Faraón Love Shady [ Video Oficial ]\r\n', 25, '02:24:00', 5, '2022-08-27', 1),
(69, 'who\'s in control', 51, '03:06:00', 1, '0000-00-00', 1),
(70, 'Can\'t Say', 43, '00:03:20', 7, '2018-08-02', 1),
(71, 'Enchanted', 36, '00:05:55', 10, '2010-01-01', 1),
(72, 'Dear John', 36, '00:06:44', 1, '2019-02-01', 1),
(73, '777', 21, '00:03:01', 4, '2020-09-25', 1),
(74, 'Jesus Lord pt2', 28, '00:11:30', 7, '2022-08-29', 1),
(75, 'Projector', 51, '03:24:00', 1, '0000-00-00', 1),
(76, 'Real Men', 47, '00:02:42', 1, '2012-01-31', 1),
(77, 'First Love / Late Spring', 47, '00:04:38', 2, '2014-11-11', 1),
(78, 'No Child Left Behind', 28, '00:02:58', 7, '2021-08-29', 1),
(81, 'goosebumps', 43, '00:04:05', 7, '2016-09-15', 1),
(83, 'Nomás tú', 52, '00:02:38', 2, '2021-02-11', 1),
(84, 'Que bonito fue', 52, '00:02:29', 2, '2019-08-26', 1),
(87, 'Sefless', 23, '00:03:24', 3, '2020-04-10', 1),
(89, 'Skeleton', 51, '04:13:00', 1, '0000-00-00', 1),
(100, 'ASTROTHUNDER', 43, '00:02:24', 7, '2018-08-02', 1),
(101, 'Chances', 23, '00:03:36', 3, '2020-04-10', 1),
(102, 'Come to Life', 28, '00:05:10', 7, '2021-09-27', 1),
(103, 'waka waka', 56, '00:03:31', 1, '2012-04-18', 1),
(104, 'YOSEMITE', 43, '00:04:32', 7, '2018-11-30', 1),
(105, '50/50', 23, '00:02:43', 3, '2020-04-19', 1),
(106, 'Dangerous', 51, '02:04:00', 1, '0000-00-00', 1),
(107, 'The Moment I Knew', 36, '00:04:46', 1, '2021-11-11', 1),
(108, 'Blank Space', 36, '00:03:52', 1, '2022-04-12', 1),
(109, 'Machu Picchu', 23, '00:03:29', 3, '2019-06-14', 1),
(110, 'Lord I Need You', 28, '00:02:42', 7, '2022-04-27', 1),
(112, 'Me and My Husband', 47, '00:02:17', 2, '2018-08-17', 1),
(113, 'Why Didn\'t You Stop Me?', 47, '00:02:21', 2, '2018-08-17', 1),
(114, 'Games', 23, '00:03:51', 3, '2020-04-10', 1),
(115, 'TKN', 43, '00:02:10', 7, '2020-06-06', 1),
(116, 'Playing with bad luck', 51, '02:58:00', 1, '0000-00-00', 1),
(117, 'La canción\r\n', 45, '04:10:00', 5, '0000-00-00', 1),
(118, 'Rojo', 45, '04:45:00', 5, '0000-00-00', 1),
(119, 'Is This It', 23, '00:03:03', 3, '2020-04-10', 1),
(120, 'Pure Souls', 28, '00:05:58', 7, '2021-11-14', 1),
(121, 'Man in the Mirror\r\n', 37, '05:03:00', 1, '1988-01-18', 1),
(122, 'Smooth Criminal - Edición radio\r\n', 37, '04:17:00', 1, '1988-11-14', 1),
(123, 'They Don\'t Care About Us\r\n', 37, '04:41:00', 1, '1995-01-01', 1),
(124, 'Black or White\r\n', 37, '03:17:00', 4, '1991-10-01', 1),
(125, 'Jam', 37, '07:50:00', 4, '1991-01-01', 1),
(126, 'Speed Demon\r\n', 37, '10:10:00', 4, '1989-10-12', 1),
(127, 'Peekaboo', 51, '02:51:00', 1, '0000-00-00', 1),
(128, 'STARGAZING', 43, '00:04:31', 7, '2018-08-03', 1),
(129, 'Soma', 23, '00:02:33', 3, '2019-06-14', 1),
(130, 'amarillo', 45, '00:02:38', 5, '2021-04-16', 1),
(131, 'Quizás', 52, '00:04:33', 2, '2019-11-26', 1),
(132, 'El abrazo más largo del mundo', 52, '00:02:56', 2, '2019-11-28', 1),
(133, 'Catch A Break', 51, '03:06:00', 1, '0000-00-00', 1),
(134, 'I Almost Do', 36, '00:04:05', 1, '2018-12-12', 1),
(135, 'The Man', 36, '00:03:12', 1, '2019-08-22', 1),
(136, 'Someday', 23, '00:03:03', 3, '2019-06-14', 1),
(137, 'rojo', 45, '00:02:31', 5, '2021-04-07', 1),
(138, 'Reptilia', 23, '00:03:39', 3, '2020-09-25', 1),
(139, 'A Pearl', 47, '00:02:36', 2, '2018-08-17', 1),
(140, 'A Horse Named Cold Air', 47, '00:02:03', 2, '2018-08-17', 1),
(141, 'Automatic Stop', 23, '00:03:27', 3, '2018-05-08', 1),
(142, 'Hold My Liquor', 28, '00:05:26', 7, '2018-07-21', 1),
(143, 'morado', 45, '00:03:20', 1, '2021-04-22', 1),
(144, 'Paper Rings', 36, '00:04:43', 1, '2019-08-22', 1),
(145, 'The Magic 8', 51, '03:04:00', 1, '0000-00-00', 1),
(147, 'Under Control', 23, '00:03:07', 3, '2020-08-06', 1),
(148, 'Qué Más Pues?', 45, '03:36:00', 5, '0000-00-00', 1),
(149, 'UN DÍA (ONE DAY)\r\n', 45, '04:09:00', 5, '0000-00-00', 1),
(150, 'azul', 45, '00:03:23', 5, '2021-04-21', 1),
(151, '22', 36, '00:03:06', 1, '2019-05-02', 1),
(152, 'Ghost Town', 28, '00:04:31', 7, '2018-11-06', 1),
(153, 'Why Not Me', 51, '02:38:00', 1, '0000-00-00', 1),
(154, 'rosa', 45, '00:03:10', 5, '2021-04-27', 1),
(155, 'Vete si quieres', 52, '00:03:48', 2, '2019-09-27', 1),
(156, 'Momento de olvidarte', 52, '00:03:36', 2, '2020-01-24', 1),
(157, 'Soy Guapo - Faraón Love Shady [ Video Oficial ]\r\n', 25, '00:03:20', 5, '2022-04-13', 1),
(158, 'verde', 45, '00:02:23', 5, '2021-04-27', 1),
(159, 'Soy Guapo - Faraón Love Shady [ Video Oficial ]\r\n', 25, '00:03:20', 5, '2020-08-08', 1),
(160, 'Better Than This', 51, '03:46:00', 1, '0000-00-00', 1),
(161, 'Soy Guapo - Faraón Love Shady [ Video Oficial ]\r\n', 25, '00:03:20', 5, '2020-08-08', 1),
(162, 'Morado', 45, '03:44:00', 5, '0000-00-00', 1),
(163, 'Mi gente', 45, '03:05:00', 5, '0000-00-00', 1),
(164, 'A Burning Hill', 47, '00:01:49', 2, '2016-06-17', 1),
(165, 'I Bet on Losing Dogs', 47, '00:02:50', 2, '2016-06-17', 1),
(166, 'Negro', 45, '03:25:00', 5, '0000-00-00', 1),
(167, 'Lo Que Dios Quiera', 45, '03:14:00', 5, '0000-00-00', 1),
(172, 'Vino tinto', 52, '00:02:52', 2, '2019-11-27', 1),
(173, 'Rosa', 45, '03:49:00', 5, '0000-00-00', 1),
(174, 'Ahora dice\r\n', 45, '04:40:00', 5, '0000-00-00', 1),
(175, 'Loyal', 27, '00:04:30', 4, '2014-03-24', 1),
(176, 'Look at Me Now', 27, '00:04:10', 12, '2011-03-10', 1),
(177, 'Ayo', 27, '00:06:00', 7, '2015-02-03', 1),
(178, 'Love More', 27, '00:04:14', 4, '2013-08-29', 1),
(179, 'Next To You ', 27, '00:06:03', 4, '2011-06-11', 1),
(180, 'No Guidance', 27, '00:04:22', 4, '2019-06-07', 1),
(181, 'Say Goodbye ', 27, '00:04:23', 4, '2009-10-25', 1),
(182, 'Kiss Kiss ', 27, '00:04:18', 4, '2009-10-25', 1),
(183, 'Don\'t Wake Me Up ', 27, '00:03:46', 6, '2012-06-11', 1),
(184, 'Party', 27, '00:05:03', 4, '2016-12-15', 1),
(185, 'Los mitotes', 61, '02:37:00', 13, '2020-04-16', 1),
(186, 'Ismael', 61, '02:49:00', 13, '2021-05-06', 1),
(187, 'Me pones a temblar ', 62, '00:03:15', 14, '2020-04-16', 1),
(188, 'la muchacha del salado', 61, '00:02:46', 13, '2021-06-17', 1),
(189, '22/57', 62, '00:02:15', 14, '2021-04-16', 1),
(190, 'el chapio', 61, '02:56:00', 13, '2020-07-09', 1),
(191, 'El primo ', 62, '00:03:00', 14, '2020-05-18', 1),
(192, 'Wow', 63, '02:29:00', 12, '0000-00-00', 0),
(193, 'chaparrita batallosa', 61, '02:56:00', 13, '2020-08-12', 1),
(194, 'Soy de sinaloa', 62, '00:02:20', 14, '2021-06-16', 1),
(195, 'Wow', 63, '02:29:00', 12, '0000-00-00', 126),
(196, 'Como pasa mi vida', 62, '00:02:12', 14, '2020-04-16', 1),
(197, 'wow', 63, '02:29:00', 12, '0000-00-00', 1),
(198, 'La linea directa', 61, '03:14:00', 13, '2021-04-14', 1),
(199, 'Circles', 63, '00:03:35', 12, '2019-09-03', 0),
(200, 'wow', 63, '02:29:00', 12, '0000-00-00', 1),
(201, 'Circles', 63, '00:03:35', 12, '2019-09-03', 1),
(202, 'Las nieves de Enero', 66, '03:33:00', 13, '0000-00-00', 1),
(203, 'Hablamos Mañana', 22, '00:04:00', 5, '2020-02-29', 1),
(204, 'MELON VINO', 67, '02:56:00', 12, '2019-09-06', 1),
(206, 'Las nieves de Enero', 66, '03:33:00', 13, '1992-02-01', 1),
(207, 'La Santa', 22, '00:03:26', 5, '2020-02-29', 1),
(208, 'A Tu Merced', 22, '00:02:55', 5, '2020-02-29', 0),
(209, 'A Tu Merced', 22, '00:02:55', 5, '2020-02-29', 1),
(210, '25/', 22, '00:04:03', 5, '2020-02-29', 1),
(211, 'Streets', 68, '03:43:00', 1, '2019-12-08', 1),
(212, 'shy away', 71, '02:56:00', 4, '2020-04-02', 1),
(213, 'Something in the Way\r\n', 69, '00:05:21', 12, '2005-04-01', 1),
(214, 'choker', 71, '02:37:00', 4, '2021-04-14', 1),
(215, 'La Dificil', 22, '00:02:43', 5, '2020-02-29', 1),
(216, 'formidable', 71, '02:56:00', 3, '2020-08-12', 1),
(217, 'polarize', 71, '02:37:00', 3, '2020-07-09', 1),
(219, 'El Ansioso', 72, '03:25:00', 14, '2003-01-01', 1),
(220, 'lane boy', 71, '02:56:00', 5, '2021-06-17', 1),
(221, 'heaydirtisoul', 71, '02:56:00', 4, '2021-05-06', 1),
(222, 'Si Veo A Tu Mamá', 22, '00:02:50', 5, '2020-02-29', 1),
(223, 'Alma enamorada', 66, '02:55:00', 13, '1992-03-14', 1),
(224, 'good day', 71, '02:56:00', 4, '2020-04-16', 1),
(225, 'cancer', 71, '02:56:00', 3, '2021-04-14', 1),
(226, 'Woman', 68, '03:05:00', 1, '2021-04-23', 1),
(227, 'GANG GANG', 74, '04:05:00', 1, '2019-06-23', 1),
(228, 'Out west', 74, '02:40:00', 1, '2019-03-10', 0),
(229, 'Out west', 74, '02:40:00', 1, '2019-03-10', 1),
(231, 'Wonderwall', 76, '04:18:00', 3, '1995-02-04', 1),
(232, 'los mitotes ', 61, '03:17:00', 13, '2020-04-15', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `favoritas`
--

INSERT INTO `favoritas` (`id`, `usuario_id`, `cancion_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 18),
(5, 5, 5),
(6, 6, 11),
(7, 7, 17),
(8, 8, 14),
(9, 9, 3),
(10, 10, 12),
(11, 2, 18),
(12, 2, 140),
(13, 2, 73),
(14, 2, 10),
(15, 2, 20),
(16, 2, 192),
(17, 15, 44),
(18, 2, 130),
(19, 2, 19),
(20, 15, 52),
(21, 15, 115),
(22, 13, 62),
(23, 13, 141),
(24, 13, 100),
(25, 13, 24),
(26, 13, 47),
(27, 13, 122),
(28, 13, 145),
(29, 13, 18),
(30, 4, 18),
(31, 4, 63),
(32, 4, 41),
(33, 4, 179),
(34, 24, 37),
(35, 24, 124),
(37, 24, 73),
(39, 24, 32),
(40, 24, 63),
(41, 24, 23),
(43, 24, 141),
(44, 24, 18),
(46, 24, 194),
(47, 25, 73),
(48, 11, 67),
(49, 25, 32),
(50, 25, 23),
(51, 25, 53),
(52, 25, 47),
(53, 25, 37),
(54, 25, 136),
(55, 25, 101),
(56, 22, 63),
(57, 25, 105),
(58, 11, 69),
(60, 25, 30),
(61, 22, 60),
(62, 25, 87),
(63, 22, 44),
(64, 22, 7),
(65, 52, 6),
(66, 52, 20),
(67, 51, 43),
(68, 51, 41),
(69, 51, 38),
(70, 51, 33),
(71, 51, 36),
(72, 51, 41),
(73, 51, 222),
(74, 51, 215),
(75, 18, 215),
(76, 13, 18),
(77, 18, 15),
(78, 48, 41),
(79, 48, 46),
(80, 18, 222),
(81, 18, 222),
(82, 20, 41),
(83, 20, 139),
(84, 20, 112),
(85, 20, 164),
(86, 20, 209),
(87, 20, 49),
(88, 20, 177),
(89, 20, 62),
(90, 20, 38),
(91, 20, 103),
(92, 20, 231),
(93, 20, 40),
(94, 14, 100),
(95, 14, 30),
(96, 14, 117),
(97, 14, 103),
(98, 14, 46),
(99, 30, 15),
(100, 30, 16),
(101, 30, 23),
(102, 26, 100),
(103, 26, 174),
(104, 26, 209);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Pop'),
(2, 'Folktronica'),
(3, 'Rock'),
(4, 'R&B'),
(5, 'Reguetón'),
(6, 'Electrónica'),
(7, 'Rap'),
(8, 'Blues Rock'),
(9, 'Clásica '),
(10, 'Country'),
(11, 'Reggae'),
(12, 'HipHop'),
(13, 'Norteño'),
(14, 'Norteño ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id`, `nombre`, `precio`) VALUES
(1, 'individual', 115),
(2, 'duo', 149),
(3, 'universitario', 57),
(4, 'familiar', 179);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `imagen`, `usuario_id`) VALUES
(1, 'MyMusic', 'https://i.pinimg.com/736x/3e/fb/43/3efb439549f62ab88bf4809c65c37f6d.jpg', 1),
(2, 'La unica y la mejor', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwall.alphacoders.com%2Fby_sub_category.php%3Fid%3D134833%26name%3DLe%25C3%25B3n%2BFondos%2Bde%2Bpant', 2),
(3, 'LaMusica', 'https://i.ytimg.com/vi/ssamaitsFC0/maxresdefault.jpg', 3),
(4, 'Reggae', 'https://m.media-amazon.com/images/I/51kQ6h6nzpL._AC_SY355_.jpg', 4),
(5, 'Hernandez Music', 'https://rockcontent.com/es/wp-content/uploads/sites/3/2021/07/Cual-es-el-papel-de-la-musica-en-el-marketing-1.png', 5),
(6, 'Pop', 'https://bangbranding.com/blog/wp-content/uploads/2016/11/700x511_SliderInterior.jpg', 6),
(7, 'Nancy10', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRViOKKRhKPSJQu1GD-mnlQG0WgPVyiWxsnag&usqp=CAU', 7),
(8, 'Musica Paredes', 'https://upload.wikimedia.org/wikipedia/commons/0/06/M%C3%BAsica.jpg', 8),
(9, 'CarlosJiménez', 'https://ruizhealytimes.com/wp-content/uploads/2020/11/musica.jpg', 9),
(10, 'Bimbos Music', 'https://static.laverdad.es/www/multimedia/202010/15/media/cortadas/musica_peque-kVzE-U120467130699AMF-624x385@RC.jpg', 10),
(11, 'Rock', 'https://i0.wp.com/con2bemolesradio.com/wp-content/uploads/2017/11/ROCK.jpg?fit=350%2C401&ssl=1', 4),
(12, 'La unica y la mejor', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwall.alphacoders.com%2Fby_sub_category.php%3Fid%3D134833%26name%3DLe%25C3%25B3n%2BFondos%2Bde%2Bpant', 2),
(13, 'Musica Perrona', 'https://legismusic.com/wp-content/uploads/2016/09/musica-electronica-sin-copyright-1.jpg', 13),
(14, 'Un Poco De Todo ', 'https://static.wikia.nocookie.net/youtubepedia/images/1/13/43220532_244145019609588_738371209657319424_n.png/revision/latest?cb=20190208175636&path-pr', 14),
(15, 'Saga Faraón hasta la muerte', 'https://i.scdn.co/image/ab6761610000e5eb5c61da77a807c57d376102af ', 11),
(16, 'Pa pistear 2022', 'https://www.elsoldesinaloa.com.mx/local/f5uqo2-grupo-arriesgado/ALTERNATES/LANDSCAPE_1140/Grupo-Arriesgado', 16),
(18, 'Rancheronas 2022', 'https://yt3.ggpht.com/3NB780r5JGfO5QmfBPrl19d0Dhp2KFpiWFscb-w9bvWyqWE4gujIOIjadnvXOQ9pzNMIqmIfLEw=s900-c-k-c0x00ffffff-no-rj', 17),
(19, 'michelle´s playlist', 'https://i.pinimg.com/736x/d7/a1/e6/d7a1e6934abfcda42bdc3b82897cf0ed.jpg', 20),
(20, 'Merequetengue', 'https://st.depositphotos.com/1594920/4197/i/600/depositphotos_41976461-stock-photo-close-up-of-a-young.jpg', 24),
(21, 'MiMusicadelTravis', 'https://static.wikia.nocookie.net/featteca/images/e/ea/Travis_Scott_Fortnite.png/revision/latest?cb=20201028003159&path-prefix=es', 15),
(22, 'frida´s playlist', 'https://i.pinimg.com/236x/36/96/52/36965261702dc8c4f156448573846867.jpg', 19),
(23, 'Musica GOD', 'http://patrullaroja.cl/wp-content/uploads/2020/08/Animes-general.jpg', 13),
(24, 'MisGustosSonMejoresQueLosTuyos', 'http://pm1.narvii.com/6864/dd8e3208c80bf5582696b7c908e780396f9562b3r1-400-400v2_uhq.jpg', 25),
(25, 'Musica del YE', 'https://cdns-images.dzcdn.net/images/cover/58f2b66205a31c42cd1d340b99735d7c/350x350.jpg', 22),
(26, 'Pa´ perrear', '', 23),
(27, 'MAWZ', 'https://pbs.twimg.com/profile_images/1425580199354249225/qhnGnPpc_400x400.jpg', 26),
(29, 'Pa´ limpiar la casa', '', 29),
(30, 'JBalvin', 'https://i.scdn.co/image/ab67706f00000003942fe04507d4e1e28e162fa6', 18),
(31, 'UnPocoDePop', 'https://m.media-amazon.com/images/I/51kQ6h6nzpL._AC_SY355_.jpg', 4),
(32, 'elsewhere', 'https://rock101online.mx/wp-content/uploads/2022/01/setitoff_artwork.jpg', 30),
(33, 'Musica Chila', 'https://scontent.fcul3-1.fna.fbcdn.net/v/t1.6435-9/198835350_289302125936504_4864033853275288844_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=cZLc', 13),
(34, 'Un Poquito De Todo ', 'https://yt3.ggpht.com/NAQnmk0UkryqfD7WRgYF6CI6n1T4hYQcaUxsn4WAkfzkbT5U8OGqg0trZKQ4_4gaTTrokreUHw=s900-c-k-c0x00ffffff-no-rj', 14),
(35, 'Sebaslist', 'https://educacion30.b-cdn.net/wp-content/uploads/2019/10/music-978x652.jpg.webp', 13),
(36, 'darkness', 'https://bangbranding.com/blog/wp-content/uploads/2016/11/700x511_SliderInterior.jpg', 4),
(44, 'Maduras', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRht2jAe7FJIGarHB1AeHAMmeeXLeNA3KoBJw&usqp=CAU', 24),
(52, 'e&J', 'https://www.latercera.com/resizer/YeONp9zv1ZK-FMd3pIRn4Bh3l9M=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/5NQG6KMC5JHDXLEGR', 35),
(53, 'JBalvin', 'https://i.scdn.co/image/ab67706f00000003942fe04507d4e1e28e162fa6', 18),
(55, 'Elpiratadeculiacan', 'https://www.debate.com.mx/__export/1632891809981/sites/debate/img/2021/09/28/cholos-iztapalapa.jpg_242310155.jpg', 24),
(57, 'sonidero 2007', 'https://acnews.blob.core.windows.net/imgnews/large/NAZ_7f90344f0faa47238e5d0179a3f10c7f.jpg', 22),
(58, 'Rolitas pa\' pistear', 'https://www.lachicuela.com/base05/2022/02/ddfheserhe.jpg', 42),
(59, 'MiMusicadelTravis2', 'https://static.wikia.nocookie.net/featteca/images/e/ea/Travis_Scott_Fortnite.png/revision/latest?cb=20201028003159&path-prefix=es', 15),
(60, 'MiMusicadelTravis3', 'https://static.wikia.nocookie.net/featteca/images/e/ea/Travis_Scott_Fortnite.png/revision/latest?cb=20201028003159&path-prefix=es', 15),
(62, 'Revueltos 2022', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFRUXGB8ZGRgXGCAfGxwgISEfIB8dHh4fICggHR4lHSAfITMhJyorLi4uIB8zODMtNygtLysBCgoKDg0', 16),
(63, 'Alpz', 'https://setlist.me/wp-content/uploads/2019/12/bad-bunny-albumcover_music.jpg', 27),
(65, 'revueltos 2022', 'https://www3.gobiernodecanarias.org/medusa/ecoescuela/ucticee/files/2020/01/grupo_rock.png', 16),
(66, 'Todo Mixxx 2021', 'https://celebrity.land/wp-content/uploads/2021/04/1618242410_maxresdefault-750x536.jpg', 17),
(67, '2 horas', 'https://i.pinimg.com/originals/a2/0f/55/a20f55a397940157510418cd38be83f4.jpg', 19),
(68, ':)', 'https://i.pinimg.com/736x/30/83/b0/3083b0448d3b70be0e3e6dc9d781bf0a.jpg', 20),
(69, 'Cholitas Rebeldes ', 'https://st3.depositphotos.com/1729220/13018/i/950/depositphotos_130181280-stock-photo-monkey-wearing-suit.jpg', 25),
(70, 'Musica PRO', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhUYGRgaGhwaHBwaGhoaGhwcGhoaGhgYGRocIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8', 39),
(71, 'Música PERRONA', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8gwpoXjNy1dG-Vx9WycOezPJs8vc5o9R2kA&usqp=CAU', 38),
(72, 'se hace la que no me conoce', 'https://contemplativosactivos.files.wordpress.com/2019/08/z249.-ejemplo.jpg', 22),
(73, 'Deja de ser naco Mr.WorldWide', 'https://www.infobae.com/new-resizer/UVxFzI4zeEqWhBbpyhLm4U3Zg9k=/1200x900/filters:format(webp):quality(85)//cloudfront-us-east-1.images.arcpublishing.', 25),
(74, 'confidencial', 'https://definicion.de/wp-content/uploads/2009/12/peligro-1.png', 30),
(75, 'No confidencial', 'https://www3.gobiernodecanarias.org/medusa/mediateca/ecoescuela/wp-content/uploads/sites/2/2013/11/11-Senal-de-peligro-indeterminado.png', 30),
(76, 'uwu', 'https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/social_share_large/public/Purina%C2%AE%20Como%20elegir%20un%20nuevo%20gatito.jpg?ito', 26),
(77, 'unu', 'https://ladogmami.com/wp-content/uploads/2021/03/16.-Feb-Nombres-graciosos-y-curiosos-para-perritos-pequenos.jpg', 26),
(80, 'rumorosa', 'https://i.pinimg.com/originals/8e/d3/9d/8ed39d4535326e4e10eb26f6cdc1684e.jpg', 20),
(82, 'heavy', 'https://img.gruporeforma.com/imagenes/960x640/6/38/5037538.jpg', 43),
(84, 'pablo', 'https://www.google.com/search?q=foto+para+playlist&tbm=isch&source=iu&ictx=1&vet=1&fir=O8MUa3HY8UauNM%252CS-o4VMavvLAIoM%252C_%253B5auYxxMSbv0BgM%252C', 44),
(86, 'Juan', 'https://www.google.com/search?q=foto+para+playlist&tbm=isch&source=iu&ictx=1&vet=1&fir=O8MUa3HY8UauNM%252CS-o4VMavvLAIoM%252C_%253B5auYxxMSbv0BgM%252C', 44),
(87, 'valeriaplay', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Findiehoy.com%2Fnoticias%2Fgorillaz-tendra-una-pelicula-animada-en-netflix%2F&psig=AOvVaw1yrOEIM5Iehl', 45),
(88, 'valerialoquilla', 'sa=i&url=https%3A%2F%2Fwww.revistagq.com%2Fnoticias%2Fcultura%2Farticulos%2Fgorillaz-banda-mas-relevante-siglo-¿', 45),
(89, 'Hernan', 'https://www.google.com/search?q=foto+para+playlist&tbm=isch&source=iu&ictx=1&vet=1&fir=O8MUa3HY8UauNM%252CS-o4VMavvLAIoM%252C_%253B5auYxxMSbv0BgM%252C', 44),
(90, 'D´ Todo Un Poco', '', 29),
(91, 'tulipan', 'report%2Fnews%2F7520-el-irresistible-encanto-de-los-tulipanes&psig=AOvVaw26vLrpjg9A-rAnJ_EWf8j9&ust=1651188920489000&source=images&cd=vfe&ved=0CAkQjRx', 29),
(92, 'tulipan', 'report%2Fnews%2F7520-el-irresistible-encanto-de-los-tulipanes&psig=AOvVaw26vLrpjg9A-rAnJ_EWf8j9&ust=1651188920489000&source=images&cd=vfe&ved=0CAkQjRx', 29),
(94, 'Pa\' matarse 2022', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUSFRgVEhYSGBgYEhESERIYGBgSGBISGBQZGRkYGBgcIS4lHB4rHxgZJjgmKy8xNTU1GiQ7QDs2Py40NTEBDAwMBgY', 19),
(95, 'Pa\' matarse 2022', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5-69V-HYqPIS21CpPJgiaqA1aOC-sgOXFC85OOZ3G548qX6MKmqYjq4xN9wNEFR6LD1A&usqp=CAU', 19),
(96, 'mix', 'https://www.google.com/search?q=mix&biw=1366&bih=657&tbm=isch&source=lnms&sa=X&ved=2ahUKEwilxOXCu7X3AhXUDEQIHV95DkYQ_AUoAnoECAEQBA#imgrc=v3O4cYa4Z4LnO', 50),
(97, 'mix', 'https://www.google.com/search?q=mix&biw=1366&bih=657&tbm=isch&source=lnms&sa=X&ved=2ahUKEwilxOXCu7X3AhXUDEQIHV95DkYQ_AUoAnoECAEQBA#imgrc=v3O4cYa4Z4LnO', 50),
(98, 'idk', '', 48),
(99, 'Música Chida', 'https://i.ytimg.com/vi/kIGQSJVZGMA/hqdefault.jpg', 14),
(100, 'karla', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.rcnradio.com%2Festilo-de-vida%2Fla-historia-detras-del-video', 45),
(101, 'baile', '', 28),
(102, 'pa inspirarme', '', 23),
(103, 'pa la casita', '', 23),
(104, 'baile 2.0', '', 28),
(105, 'Pachillar', '', 46),
(106, 'PaTarea', '', 46),
(107, 'Padormir', '', 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist_canciones`
--

INSERT INTO `playlist_canciones` (`id`, `playlist_id`, `cancion_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(7, 3, 10),
(8, 4, 13),
(9, 5, 18),
(10, 6, 6),
(11, 7, 9),
(12, 8, 20),
(13, 9, 7),
(14, 10, 15),
(15, 6, 1),
(16, 5, 19),
(18, 3, 16),
(19, 8, 8),
(20, 10, 10),
(21, 14, 2),
(22, 14, 11),
(23, 2, 2),
(24, 2, 24),
(25, 2, 45),
(26, 2, 83),
(27, 2, 62),
(28, 2, 174),
(29, 11, 18),
(30, 11, 133),
(31, 2, 59),
(32, 2, 104),
(33, 13, 51),
(34, 13, 71),
(35, 13, 62),
(36, 13, 124),
(37, 13, 157),
(38, 13, 2),
(39, 13, 174),
(40, 11, 51),
(41, 11, 52),
(42, 21, 52),
(43, 11, 160),
(44, 11, 160),
(45, 20, 73),
(46, 14, 18),
(47, 14, 62),
(48, 14, 63),
(49, 14, 130),
(50, 14, 124),
(51, 14, 150),
(52, 14, 1),
(53, 14, 43),
(54, 14, 24),
(55, 14, 132),
(56, 14, 152),
(57, 14, 13),
(58, 14, 33),
(59, 14, 117),
(60, 14, 163),
(61, 14, 175),
(62, 14, 176),
(63, 14, 31),
(64, 14, 148),
(65, 23, 63),
(66, 23, 108),
(67, 23, 140),
(68, 23, 160),
(69, 23, 133),
(70, 23, 72),
(71, 23, 18),
(72, 23, 12),
(73, 21, 81),
(74, 20, 2),
(75, 22, 2),
(76, 22, 139),
(77, 20, 62),
(78, 20, 63),
(79, 21, 58),
(80, 20, 30),
(81, 20, 124),
(82, 25, 2),
(83, 19, 164),
(84, 19, 41),
(85, 21, 65),
(86, 20, 47),
(87, 31, 62),
(88, 31, 63),
(89, 25, 174),
(90, 20, 37),
(91, 21, 44),
(92, 25, 62),
(93, 31, 41),
(94, 31, 62),
(95, 21, 128),
(96, 31, 18),
(97, 31, 108),
(98, 21, 115),
(99, 20, 32),
(100, 31, 139),
(101, 31, 141),
(102, 25, 138),
(103, 20, 23),
(104, 20, 136),
(105, 22, 165),
(106, 22, 112),
(107, 31, 12),
(108, 20, 18),
(110, 24, 73),
(111, 25, 63),
(113, 24, 73),
(114, 24, 136),
(115, 19, 108),
(116, 19, 48),
(117, 35, 2),
(118, 35, 11),
(119, 35, 51),
(120, 35, 73),
(121, 35, 160),
(122, 35, 2),
(123, 35, 134),
(124, 35, 41),
(125, 24, 32),
(126, 24, 105),
(127, 24, 47),
(128, 24, 23),
(129, 22, 48),
(130, 22, 49),
(131, 24, 141),
(133, 24, 18),
(134, 19, 5),
(135, 19, 17),
(136, 24, 62),
(137, 16, 190),
(138, 36, 113),
(139, 36, 11),
(140, 16, 188),
(141, 24, 188),
(142, 22, 113),
(143, 22, 135),
(145, 24, 166),
(146, 16, 186),
(147, 36, 8),
(148, 36, 160),
(149, 24, 194),
(150, 18, 189),
(151, 16, 193),
(152, 24, 87),
(153, 19, 40),
(154, 19, 38),
(155, 18, 191),
(156, 22, 160),
(157, 22, 1),
(158, 18, 196),
(159, 34, 180),
(160, 34, 184),
(161, 34, 162),
(162, 34, 78),
(163, 34, 163),
(164, 34, 5),
(165, 34, 6),
(166, 34, 44),
(167, 34, 148),
(168, 34, 118),
(169, 34, 4),
(170, 34, 14),
(171, 34, 149),
(172, 34, 159),
(173, 32, 89),
(174, 19, 62),
(175, 19, 135),
(176, 18, 194),
(177, 16, 198),
(178, 18, 187),
(179, 32, 106),
(181, 32, 116),
(182, 53, 148),
(183, 32, 127),
(184, 44, 103),
(185, 32, 133),
(186, 18, 190),
(187, 44, 176),
(188, 44, 177),
(189, 44, 106),
(190, 32, 145),
(191, 57, 63),
(192, 44, 150),
(193, 57, 18),
(194, 44, 17),
(195, 57, 174),
(196, 44, 130),
(197, 59, 52),
(198, 59, 70),
(200, 55, 105),
(201, 57, 124),
(202, 32, 59),
(203, 55, 124),
(204, 55, 51),
(205, 57, 138),
(206, 59, 81),
(207, 59, 44),
(208, 53, 150),
(209, 55, 48),
(210, 65, 18),
(211, 55, 176),
(212, 65, 73),
(213, 55, 153),
(214, 66, 41),
(215, 65, 62),
(216, 55, 141),
(217, 59, 65),
(218, 65, 189),
(219, 66, 62),
(220, 55, 2),
(221, 65, 105),
(222, 66, 189),
(223, 60, 52),
(224, 60, 70),
(225, 27, 32),
(226, 65, 130),
(227, 60, 58),
(228, 60, 100),
(229, 66, 190),
(230, 66, 174),
(231, 60, 65),
(232, 27, 144),
(233, 66, 46),
(234, 72, 20),
(235, 27, 148),
(236, 58, 2),
(237, 58, 11),
(238, 58, 18),
(239, 58, 52),
(240, 58, 62),
(241, 58, 63),
(242, 58, 100),
(243, 58, 150),
(244, 58, 174),
(245, 58, 105),
(246, 58, 13),
(247, 58, 23),
(248, 58, 24),
(249, 58, 132),
(250, 58, 17),
(251, 66, 155),
(252, 67, 32),
(253, 67, 63),
(254, 66, 185),
(255, 72, 122),
(256, 72, 78),
(257, 66, 50),
(258, 72, 117),
(259, 73, 2),
(260, 68, 174),
(261, 68, 6),
(262, 73, 11),
(263, 73, 52),
(264, 73, 73),
(265, 73, 105),
(266, 73, 130),
(267, 69, 1),
(269, 72, 130),
(272, 68, 208),
(273, 68, 139),
(276, 69, 3),
(277, 69, 189),
(278, 69, 139),
(279, 68, 193),
(280, 68, 124),
(281, 69, 208),
(282, 69, 40),
(283, 69, 23),
(284, 68, 108),
(285, 68, 5),
(286, 68, 49),
(287, 68, 103),
(288, 68, 42),
(289, 68, 46),
(290, 26, 201),
(291, 26, 222),
(292, 26, 208),
(293, 26, 203),
(294, 75, 164),
(295, 75, 174),
(296, 75, 52),
(297, 16, 160),
(298, 75, 71),
(299, 75, 140),
(300, 75, 207),
(301, 75, 178),
(302, 75, 212),
(303, 75, 209),
(304, 70, 62),
(305, 71, 18),
(306, 26, 215),
(307, 80, 114),
(308, 80, 177),
(309, 26, 207),
(310, 76, 189),
(311, 76, 164),
(312, 76, 130),
(313, 76, 63),
(314, 76, 63),
(315, 76, 76),
(316, 76, 109),
(317, 76, 139),
(318, 76, 176),
(319, 76, 30),
(320, 82, 214),
(321, 80, 223),
(322, 80, 51),
(323, 82, 225),
(324, 80, 41),
(325, 80, 63),
(326, 82, 217),
(327, 82, 224),
(328, 74, 151),
(329, 74, 189),
(330, 74, 210),
(331, 74, 105),
(332, 74, 73),
(333, 74, 164),
(334, 74, 164),
(335, 74, 140),
(336, 74, 208),
(337, 74, 223),
(338, 77, 140),
(339, 77, 140),
(340, 27, 73),
(341, 67, 208),
(342, 67, 223),
(343, 84, 208),
(344, 84, 219),
(345, 84, 174),
(346, 84, 18),
(347, 86, 22),
(348, 86, 139),
(349, 29, 208),
(350, 29, 118),
(351, 67, 174),
(352, 67, 106),
(353, 29, 187),
(354, 29, 174),
(355, 80, 208),
(356, 80, 223),
(357, 88, 18),
(358, 88, 151),
(359, 89, 18),
(360, 89, 41),
(361, 89, 51),
(362, 89, 204),
(363, 89, 210),
(364, 90, 223),
(365, 90, 52),
(366, 67, 56),
(367, 67, 62),
(368, 84, 130),
(369, 84, 158),
(370, 88, 62),
(371, 88, 208),
(372, 86, 164),
(373, 86, 194),
(374, 90, 46),
(375, 90, 203),
(376, 88, 63),
(377, 88, 130),
(378, 90, 20),
(379, 29, 164),
(380, 88, 174),
(381, 88, 51),
(382, 88, 11),
(383, 88, 223),
(384, 91, 132),
(385, 91, 2),
(386, 91, 206),
(387, 91, 83),
(388, 91, 131),
(389, 100, 73),
(390, 100, 105),
(391, 100, 139),
(392, 100, 189),
(393, 100, 41),
(394, 98, 41),
(395, 98, 51),
(397, 102, 215),
(398, 102, 220),
(399, 101, 223),
(400, 101, 224),
(401, 102, 222),
(402, 101, 225),
(403, 103, 4),
(404, 103, 10),
(405, 103, 9),
(406, 107, 60),
(407, 107, 50),
(408, 107, 40),
(409, 106, 55),
(410, 106, 45),
(412, 105, 32),
(413, 105, 23),
(414, 105, 76);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(140) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(300) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'King de Pollo - Burger King', 'Nuestro original King de Pollo® se prepara con pollo empanizado con dos rebanadas de queso amarillo y combinación de lechugas y mayonesa cremosa sobre un pan suave alargado con ajonjolí.', 'https://i.imgur.com/asztoFP.png'),
(2, 'Guacamole Crunch King - Burger King', 'Descubre un mundo nuevo lleno de sabor con doble carne a la parrilla, cremoso guacamole, lechuga fresca, rodajas de jalapeño ,queso Monterrey, tocino y cebollitas crujientes. ', 'https://i.imgur.com/A4xH3vd.png'),
(3, 'Epura', '¡Acompaña tus combos con una botella de Epura!', 'https://i.imgur.com/bMJHSNV.png'),
(4, 'CUATRO QUESOS', 'La pizza pensada en los amantes del queso. Queso mozzarella, queso crema, queso cheddar, queso parmesano.\r\nIngredientes: Queso Crema, Mozzarella, Parmesano y Cheddar\r\n', 'https://i.imgur.com/I0zGTsm.png'),
(5, 'EXTRAVAGANZZA', 'La pizza más incluyente de nuestras especialidades. Pepperoni, carne molida, jamón, chorizo, pimiento, cebolla, champiñones, aceitunas, extra queso.\r\nIngredientes: Pepperoni, Carne Molida, Jamón', 'https://i.imgur.com/Uo1P88d.png'),
(6, 'PEPPERONI LOVERS - Domino´s', 'Salsa de Tomate, Queso 100% Mozzarella, Doble Pepperoni, Extra Mozzarella y Orégano', 'https://i.imgur.com/xf1IK8h.png'),
(7, 'Original Grilled Chicken Salad - Carls jr.', 'Mezcla de lechugas con pollo a la parrilla, cebolla, tomate, pepinos. Acompañela con el aderezo de su elección y sus ya tradicionales crotones.\r\n\r\n', 'https://i.imgur.com/PDdJa20.jpeg'),
(8, 'Double Western Bacon Cheeseburger - Carls jr.', 'Dos piezas de carne 100% de res asada a la parrilla, salsa BBQ, rebanadas de tocino, queso americano y aros de cebolla empanizados.', 'https://i.imgur.com/sFyp8ja.jpeg'),
(9, 'Desayuno del Rey - Burger King.', 'Desayuna como Rey con este completo desayuno que incluye: Tres hotcakes, huevo revuelto, papas Hasbrown y jamón.', 'https://i.imgur.com/0DZzxqX.png'),
(10, 'Chopsui - tai pak', 'El chop suey de pollo es una mezcla de carne y verduras salteadas al wok con salsas de soja o de ostras a fuego muy fuerte. Se puede hacer de diferentes tipos de carne o también utilizar algunos crust', 'https://i.imgur.com/1wFDzUc.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contrasena`, `usuario`, `telefono`, `membresia_id`) VALUES
(1, 'Paulo Irizar', 'paulocesar@gmail.com', '1075829357', 'Paulo_05', '6674960172', 1),
(2, 'Stephen Ochoa', '8astephen@gmail.com', 'Fresalimon1209', 'xSnick62', '6670234561', 3),
(3, 'Jorge Roberto', 'jorge@gmail.com', '1038u492', 'Jorgitox', '6673215927', 2),
(4, 'Juan Pablo', 'jpcastañeda@gmail.com', 'jp29534aup8', 'El_JP', '6670320183', 1),
(5, 'Francisco Hernandez', 'Francisco@gmail.com', 'francisco01245', 'Franckgames', '6674013852', 3),
(6, 'Luis Angel', 'luisito@hotmail.com', 'luisillo123', 'Luisito', '6671039285', 1),
(7, 'Nancy Gutiérrez', 'Nancygutierrez@gmail.com', 'gutierrez3801_nancy', 'Nancy38', '6676128375', 4),
(8, 'Armando Paredes', 'armandop@gmail.com', 'paredes_armando', 'ArmandoPared', '6674019375', 2),
(9, 'Carlos Jiménez', 'carlosjimenez@gmail.com', 'Jimenezcarlos10', 'Carlitos', '6678318410', 4),
(10, 'Elian Alejandro', 'AlejandroE@hotmail.com', 'windows1023', 'Binbos', '6673910257', 1),
(11, 'López Sánchez Ary Daniel', 'ary.lopez@cetis107.edu.mx', '1234567890', 'aryDaniel', '6671431757', 4),
(13, 'Sebastian', 'Sebastianco@gmail.com', '6d4238aa264ead0c8339eb577a2dbd90', 'MiniPoderoso', '4777012341', 2),
(14, 'Bernardo Bejarano', 'bernardo@gmail.com', 'ca2f7d35b358ed930b4ed28bbf951925', 'Bernax', '6647688630', 1),
(15, 'Francisco López', 'francisco@gmail.com', '1112223333444', 'franciscolopez_22', '6673330000', 3),
(16, 'Alex Ivan Sanchez Miranda ', 'alexgo12233@outlook.com', 'bc73e13d69b6c5c3837743ba40b9c0b8', 'AlexSanchez', '6673603291', 1),
(17, 'Leonel Alberto Loaiza Felix', 'leonelloaiza@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'LeoFelixx09', '6672656235', 1),
(18, 'Armando Sandoval', 'armandos@gmail.com', '343817fa02440513ce03e9d1f1e44dc7', 'ArmandoS', '6671234567', 1),
(19, 'Frida Sosa', 'frida.sosa@gmail.com', '1234567', 'frida_sosa', '675479790', 2),
(20, 'Paola Sanchez', 'paola.sanchez@gmail.com', '12345678', 'Paola_Sanchez', '6750214583', 2),
(22, 'Jesus Omar Rodriguez Torres', 'jesus2317@gmail.com', 'jesus2317', 'jesus2317', '667 666 66', 1),
(23, 'Juan Robledo', 'juan.robledo@cetis107.edu.mx', 'SoyBichosexual777', 'Juan Robledo', '6671344046', 1),
(24, 'Rodrigo Bobadilla', 'rori@gmail.com', 'tubertculos69', 'rodbomberas96', '6675142963', 2),
(25, 'Jose Angel Guerrero ', 'ja2167282@gmail.com', 'TheStrokes>TuBandaFav', 'Moris1404', '667 451 95', 2),
(26, 'Paula Alejandra', 'paucastro@gmail.com', '15363546832ds', 'Ale_9', '6674832628', 2),
(27, 'Abimael López Armenta', 'abimaellpz28@gmail.com', 'uwu', 'Abimaellpz1', '6673444466', 3),
(28, 'Carlos Jacobo', 'carlosjacobo@gmail.com', 'Tilinmuerdes', 'Carlos Jacobo', '5656235723', 1),
(29, 'Mónica Sofía ', 'sofranco1014@gmail.com', 'moleverde1013', 'Sofía Franco', '6674820933', 3),
(30, 'Alejandro Alfaro', 'Alfaro85@gmail.com', 'bananachupo123', 'Zypol', '6672676308', 4),
(34, 'Jorge Martinez', 'jorch123@gmail.com', 'Chalino123', 'Jorch123', '6623627791', 1),
(35, 'estrella gonzález', 'estrella0823@gmail.com', 'adios1234567', 'estrellagc', '6675473836', 2),
(38, 'Angulo López Carlos Fernando', 'licenciado123@gmail.com', 'contrasena', 'El_Lic', '667634833', 1),
(39, 'López Guzmán José Luis', 'luisssssss@gmail.com', 'contrasena1', 'luisss', '6676498590', 1),
(42, 'Rodrigo osuna', 'rodricale1217@gmail.com', '1234567', 'haleRodrigo', '6677954089', 1),
(43, 'Jesus manuel velazquez urtuzuastegui', 'jesus12345@gmail.com', '693402b1dc456ceecc9bcd5aa2d1f4e9', 'jesus809', '6673871944', 3),
(44, 'miguelito', 'miguelito69@gmail.com', 'Elbichosiuu', 'miguelito', '667273283', 1),
(45, 'valeria', 'vrodcar@gmail.com', 'valeria123', 'valeria', '6675676878', 1),
(46, 'Cristian Antonio Lizarraga Chavez', 'Crislizarraga222@gmail.com', 'me gusta la manzana', 'Tiliner #1', '6675475752', 1),
(48, 'Nicole Espinoza', 'nicolees@gmail.com', 'nicole123', 'nicole', '6674792585', 1),
(49, 'Joan Elizandro Ochoa Iribe', 'Joan.Ochoa@Cetis107.edu.mx', 'gfvrfgvtgv', 'SHISHILOKA20005', '8596734758', 3),
(50, 'kassandra sanchez chavez', 'kassandra.sanchez@cetis107.edu.mx', 'b0f74cb56fd5e5d35e9271d0b6185f10', 'kass88', '6654857459', 2),
(51, 'Lydia Arlett Valdes Delgado', 'lydia.valdes@cetis107.edu.mx', '2b32365870afdda18090e64e787f5ab1', 'arlett28', '6671010356', 1),
(52, 'Valeria Duran Moreno', 'valeria.duran@cetis107.edu.mx', '0574ed1ea4c76c564b0fdc77155c0d55', 'vale5174', '6671854263', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`);

--
-- Indices de la tabla `album_canciones`
--
ALTER TABLE `album_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `genero_id` (`genero_id`),
  ADD KEY `artista_id_2` (`artista_id`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `cancion_id_2` (`cancion_id`),
  ADD KEY `playlist_id_2` (`playlist_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `album_canciones`
--
ALTER TABLE `album_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD CONSTRAINT `albumes_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`);

--
-- Filtros para la tabla `album_canciones`
--
ALTER TABLE `album_canciones`
  ADD CONSTRAINT `album_canciones_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albumes` (`id`),
  ADD CONSTRAINT `album_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `canciones_ibfk_2` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
