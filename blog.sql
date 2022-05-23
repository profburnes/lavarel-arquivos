-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Maio-2022 às 15:37
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `blog`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Tecnologia'),
(2, 'Esportes'),
(3, 'Cinema');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  `noticia` text NOT NULL,
  `data` date NOT NULL,
  `imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `categorias_id`, `noticia`, `data`, `imagem`) VALUES
(1, 'Esportes - Lorem ipsum dolor sit amet, consectetur adipiscing elit', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla finibus, lorem sed ornare pharetra, ipsum felis laoreet sapien, et rutrum tellus elit a metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In nisl mi, interdum a mollis eget, elementum eu nunc. Aliquam convallis odio a leo blandit, in dignissim justo commodo. Nam vel nulla sed ex fringilla auctor ac id risus. Integer sed convallis orci, at imperdiet dui. Nullam malesuada cursus posuere. Aliquam vehicula tellus in sem lobortis, in ultrices diam volutpat. Vivamus vel orci varius, ullamcorper lorem eu, lacinia nibh. Nunc maximus nulla nec mi facilisis dapibus. Proin non varius arcu. Mauris nec ante sit amet dolor cursus efficitur.', '2022-03-01', '01.jpg'),
(2, 'Esportes - Curabitur ultrices justo nisl', 2, 'Curabitur ultrices justo nisl. Praesent non nunc pharetra, pretium turpis quis, euismod neque. Nam consectetur feugiat elit, eget scelerisque nunc convallis at. Fusce sit amet sodales quam. Nullam faucibus imperdiet lectus, vitae dignissim nisl posuere vel. Sed et fringilla risus. Integer mauris arcu, rutrum sit amet nunc quis, condimentum facilisis elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Maecenas et sem commodo, porta dui at, fringilla elit. Vestibulum cursus nunc vitae purus mollis, sit amet vestibulum nisl consectetur. Quisque et massa ac dolor consectetur bibendum. Ut ut elit libero. Pellentesque mi velit, ultrices dignissim faucibus ac, sollicitudin ut velit.\r\n\r\nDonec eget condimentum sem. Aliquam ut odio velit. Proin cursus viverra nisl, tristique varius justo tempor id. Phasellus eros justo, aliquet et bibendum sit amet, aliquet ut neque. Mauris fermentum, leo non malesuada viverra, turpis augue maximus mi, a pulvinar enim ex quis erat. Phasellus pharetra libero erat, quis maximus justo consectetur venenatis. Morbi vitae dapibus magna. Donec euismod magna vitae augue sodales vestibulum.', '2022-03-11', '02.jpg'),
(3, 'Esporte - Suspendisse malesuada erat id nulla venenatis, non condimentum augue aliquet', 2, 'Suspendisse malesuada erat id nulla venenatis, non condimentum augue aliquet. Aenean elementum suscipit interdum. Pellentesque ut sapien vitae orci luctus hendrerit. Phasellus sem augue, consectetur eu ultrices eget, cursus id odio. Fusce commodo lectus sed nulla auctor ultricies. Etiam lacinia nunc in dolor dignissim tempor. Morbi varius auctor tempor. Morbi faucibus, felis ac iaculis hendrerit, urna eros consequat tellus, quis elementum dui risus in ante. Proin neque justo, vestibulum sed turpis et, ultricies imperdiet lacus. Curabitur eget lorem non eros interdum facilisis non quis urna.\r\n\r\nFusce viverra venenatis consequat. Cras tincidunt sed ligula non luctus. Quisque pulvinar lacinia laoreet. Praesent odio risus, rhoncus at orci vel, imperdiet interdum mi. Etiam eleifend ipsum est, id sagittis nibh ultricies quis. Fusce blandit gravida volutpat. Donec magna magna, bibendum venenatis tellus vel, pulvinar tincidunt dui. Nunc a orci dui. Cras sit amet pharetra purus, eu rhoncus nulla. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras condimentum dignissim nunc quis ultricies. Etiam vel leo sit amet enim scelerisque aliquet. Cras et est dapibus metus semper consequat a et enim. Fusce cursus nisl lectus, at rhoncus urna pharetra id.', '2022-04-11', '03.jpg'),
(4, 'Esportes - Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum eleifend quis nisi at dignissim.', 2, 'Donec finibus metus vel erat porttitor, et tincidunt sem placerat. Nunc sed dolor at ante convallis interdum quis vel tellus. Duis sit amet tellus sit amet velit dapibus congue. Aenean eget orci fringilla nulla venenatis congue at non urna. Pellentesque vestibulum justo nisi. Aliquam convallis ex turpis, sed dapibus nibh consequat at. Aenean vitae nisl diam.\r\n\r\nNam non turpis cursus, tempor erat sed, rutrum lorem. Mauris eget viverra tellus. Morbi dui tortor, lobortis et laoreet vitae, sollicitudin ullamcorper lorem. Proin tristique pulvinar elit a porttitor. Sed nec eros gravida, vulputate nibh ac, ullamcorper risus. Nulla ac pulvinar leo. Mauris tortor urna, ornare ut cursus sed, pharetra eget ligula. Donec ac magna tristique, congue nisl vulputate, tincidunt sem. Sed interdum dapibus diam non condimentum.', '2022-04-11', '04.jpg'),
(5, 'Esportes - Nam non turpis cursus, tempor erat sed, rutrum lorem', 2, 'Donec id interdum leo. Ut urna erat, convallis vitae facilisis ut, iaculis bibendum lorem. Nulla eget diam enim. Vestibulum lorem ipsum, tempus eget tortor a, placerat lacinia ante. Ut viverra ligula a nisl ultrices, ac tempor felis commodo. Morbi vitae augue sodales dolor ultrices dapibus ut vitae nisi. Aliquam massa libero, viverra quis nunc eu, dignissim iaculis lacus. Aenean imperdiet sem ac turpis malesuada, nec cursus neque laoreet. Donec congue imperdiet lorem, ac porttitor erat semper non. Donec felis nisl, egestas et nibh nec, lobortis auctor libero. Maecenas pulvinar congue ligula nec vestibulum. Curabitur porta turpis sit amet mi viverra, id placerat magna pharetra.\r\n\r\nDonec finibus metus vel erat porttitor, et tincidunt sem placerat. Nunc sed dolor at ante convallis interdum quis vel tellus. Duis sit amet tellus sit amet velit dapibus congue. Aenean eget orci fringilla nulla venenatis congue at non urna. Pellentesque vestibulum justo nisi. Aliquam convallis ex turpis, sed dapibus nibh consequat at. Aenean vitae nisl diam.', '2022-04-11', '05.jpg'),
(6, 'Esportes - Sed rhoncus eget erat at efficitur.', 2, 'Sed rhoncus eget erat at efficitur. Mauris laoreet semper arcu, vestibulum posuere sem aliquam nec. Morbi accumsan cursus libero, et mollis nibh tincidunt vel. In pharetra tincidunt ligula id viverra. Aliquam consectetur fringilla congue. Vivamus vulputate libero tortor, eu mattis ligula dignissim eget. Curabitur eget arcu dictum, pretium mauris vel, euismod sem. Quisque ultricies rhoncus nibh, laoreet aliquam ligula sagittis id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque ornare arcu, in finibus urna porta non. Quisque sit amet mi id est dapibus mattis. Vivamus accumsan est sapien, vitae ullamcorper nibh aliquet molestie. Sed maximus mi ut laoreet bibendum. Aliquam eget metus faucibus, consequat metus vitae, iaculis enim. Donec semper sem sit amet lacinia sodales. Donec eget rutrum urna.\r\n\r\nDonec id interdum leo. Ut urna erat, convallis vitae facilisis ut, iaculis bibendum lorem. Nulla eget diam enim. Vestibulum lorem ipsum, tempus eget tortor a, placerat lacinia ante. Ut viverra ligula a nisl ultrices, ac tempor felis commodo. Morbi vitae augue sodales dolor ultrices dapibus ut vitae nisi. Aliquam massa libero, viverra quis nunc eu, dignissim iaculis lacus. Aenean imperdiet sem ac turpis malesuada, nec cursus neque laoreet. Donec congue imperdiet lorem, ac porttitor erat semper non. Donec felis nisl, egestas et nibh nec, lobortis auctor libero. Maecenas pulvinar congue ligula nec vestibulum. Curabitur porta turpis sit amet mi viverra, id placerat magna pharetra.', '2022-04-12', '06.jpg'),
(7, 'Tecnologia - Class aptent taciti sociosqu ad litora torquent per conubia nostra', 1, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum eleifend quis nisi at dignissim. Quisque ut malesuada arcu, quis laoreet dui. Curabitur sem tellus, pellentesque id ultrices id, vehicula id risus. Vestibulum venenatis metus vitae consectetur feugiat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec interdum ac eros eget blandit.\r\n\r\nSed rhoncus eget erat at efficitur. Mauris laoreet semper arcu, vestibulum posuere sem aliquam nec. Morbi accumsan cursus libero, et mollis nibh tincidunt vel. In pharetra tincidunt ligula id viverra. Aliquam consectetur fringilla congue. Vivamus vulputate libero tortor, eu mattis ligula dignissim eget. Curabitur eget arcu dictum, pretium mauris vel, euismod sem. Quisque ultricies rhoncus nibh, laoreet aliquam ligula sagittis id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque ornare arcu, in finibus urna porta non. Quisque sit amet mi id est dapibus mattis. Vivamus accumsan est sapien, vitae ullamcorper nibh aliquet molestie. Sed maximus mi ut laoreet bibendum. Aliquam eget metus faucibus, consequat metus vitae, iaculis enim. Donec semper sem sit amet lacinia sodales. Donec eget rutrum urna.', '2021-04-21', '07.jpg'),
(8, 'Tecnologia - Donec finibus metus vel erat porttitor', 1, 'Curabitur eget arcu dictum, pretium mauris vel, euismod sem. Quisque ultricies rhoncus nibh, laoreet aliquam ligula sagittis id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque ornare arcu, in finibus urna porta non. Quisque sit amet mi id est dapibus mattis. Vivamus accumsan est sapien, vitae ullamcorper nibh aliquet molestie. Sed maximus mi ut laoreet bibendum. Aliquam eget metus faucibus, consequat metus vitae, iaculis enim. Donec semper sem sit amet lacinia sodales. Donec eget rutrum urna.\r\n\r\nDonec id interdum leo. Ut urna erat, convallis vitae facilisis ut, iaculis bibendum lorem. Nulla eget diam enim. Vestibulum lorem ipsum, tempus eget tortor a, placerat lacinia ante. Ut viverra ligula a nisl ultrices, ac tempor felis commodo. Morbi vitae augue sodales dolor ultrices dapibus ut vitae nisi. Aliquam massa libero, viverra quis nunc eu, dignissim iaculis lacus. Aenean imperdiet sem ac turpis malesuada, nec cursus neque laoreet. Donec congue imperdiet lorem, ac porttitor erat semper non. Donec felis nisl, egestas et nibh nec, lobortis auctor libero. Maecenas pulvinar congue ligula nec vestibulum. Curabitur porta turpis sit amet mi viverra, id placerat magna pharetra.', '2020-04-21', '08.jpg'),
(9, 'Tecnologia - Ut urna erat, convallis vitae facilisis ut, iaculis bibendum lorem', 1, 'Ut urna erat, convallis vitae facilisis ut, iaculis bibendum lorem. Nulla eget diam enim. Vestibulum lorem ipsum, tempus eget tortor a, placerat lacinia ante. Ut viverra ligula a nisl ultrices, ac tempor felis commodo. Morbi vitae augue sodales dolor ultrices dapibus ut vitae nisi. Aliquam massa libero, viverra quis nunc eu, dignissim iaculis lacus. Aenean imperdiet sem ac turpis malesuada, nec cursus neque laoreet. Donec congue imperdiet lorem, ac porttitor erat semper non. Donec felis nisl, egestas et nibh nec, lobortis auctor libero. Maecenas pulvinar congue ligula nec vestibulum. Curabitur porta turpis sit amet mi viverra, id placerat magna pharetra.', '2021-04-22', '09.jpg'),
(10, 'Tecnologia - Donec finibus metus vel erat porttitor, et tincidunt sem placerat', 1, 'Donec finibus metus vel erat porttitor, et tincidunt sem placerat. Nunc sed dolor at ante convallis interdum quis vel tellus. Duis sit amet tellus sit amet velit dapibus congue. Aenean eget orci fringilla nulla venenatis congue at non urna. Pellentesque vestibulum justo nisi. Aliquam convallis ex turpis, sed dapibus nibh consequat at. Aenean vitae nisl diam.\r\n\r\nNam non turpis cursus, tempor erat sed, rutrum lorem. Mauris eget viverra tellus. Morbi dui tortor, lobortis et laoreet vitae, sollicitudin ullamcorper lorem. Proin tristique pulvinar elit a porttitor. Sed nec eros gravida, vulputate nibh ac, ullamcorper risus. Nulla ac pulvinar leo. Mauris tortor urna, ornare ut cursus sed, pharetra eget ligula. Donec ac magna tristique, congue nisl vulputate, tincidunt sem. Sed interdum dapibus diam non condimentum.', '2022-04-14', '10.jpg'),
(11, 'Cinema - Quisque ultricies rhoncus nibh', 3, 'Sed rhoncus eget erat at efficitur. Mauris laoreet semper arcu, vestibulum posuere sem aliquam nec. Morbi accumsan cursus libero, et mollis nibh tincidunt vel. In pharetra tincidunt ligula id viverra. Aliquam consectetur fringilla congue. Vivamus vulputate libero tortor, eu mattis ligula dignissim eget. Curabitur eget arcu dictum, pretium mauris vel, euismod sem. Quisque ultricies rhoncus nibh, laoreet aliquam ligula sagittis id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pellentesque ornare arcu, in finibus urna porta non. Quisque sit amet mi id est dapibus mattis. Vivamus accumsan est sapien, vitae ullamcorper nibh aliquet molestie. Sed maximus mi ut laoreet bibendum. Aliquam eget metus faucibus, consequat metus vitae, iaculis enim. Donec semper sem sit amet lacinia sodales. Donec eget rutrum urna.', '2021-05-10', '11.jpg'),
(12, 'Cinema - Donec felis nisl, egestas et nibh nec', 3, 'Donec id interdum leo. Ut urna erat, convallis vitae facilisis ut, iaculis bibendum lorem. Nulla eget diam enim. Vestibulum lorem ipsum, tempus eget tortor a, placerat lacinia ante. Ut viverra ligula a nisl ultrices, ac tempor felis commodo. Morbi vitae augue sodales dolor ultrices dapibus ut vitae nisi. Aliquam massa libero, viverra quis nunc eu, dignissim iaculis lacus. Aenean imperdiet sem ac turpis malesuada, nec cursus neque laoreet. Donec congue imperdiet lorem, ac porttitor erat semper non. Donec felis nisl, egestas et nibh nec, lobortis auctor libero. Maecenas pulvinar congue ligula nec vestibulum. Curabitur porta turpis sit amet mi viverra, id placerat magna pharetra.', '2021-04-19', '12.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorias_id` (`categorias_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
