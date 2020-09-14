-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 14 Wrz 2020, 03:28
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `onlineventure`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Occaecati et sint.', 'Quo et eum reiciendis est voluptas laudantium dignissimos. Sed placeat voluptas consectetur. Dolore suscipit quia eum doloribus commodi quae.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(2, 'Inventore dolor.', 'Quia ducimus deleniti impedit. Nobis sint ea exercitationem qui. Aspernatur numquam eaque ipsa omnis.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(3, 'Aut et voluptatem.', 'Consectetur fugit repellendus id aliquid voluptatem architecto aut. Recusandae qui rerum quod laudantium aut omnis vitae doloribus. Dolor quo sunt corrupti nemo ut odio est.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(4, 'Omnis velit ducimus.', 'Voluptas sapiente qui ab iste nesciunt suscipit. Repellendus eum blanditiis fugiat a reiciendis molestiae eos. Est sunt ex ut beatae. Distinctio sed in excepturi nostrum soluta.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(5, 'Magnam sunt maxime.', 'Illo quos tenetur quo sit aspernatur qui. Qui non sit nihil eveniet atque voluptatibus et. Officiis repellat officia quia enim et.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(6, 'Dolorum molestiae.', 'Distinctio sequi quia qui quo unde occaecati eos. Fugiat fugiat ipsum iusto. Eveniet fugiat eligendi perspiciatis. Dolor suscipit autem debitis consectetur.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(7, 'Animi et.', 'Voluptatem vero quae doloremque sint perferendis pariatur. Velit sed laborum ut voluptatem quod nulla. Enim molestiae qui suscipit ea consequuntur. Ea tenetur totam consequuntur enim sunt sed.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(8, 'Qui eius at est ad.', 'Dolorem tenetur occaecati hic. Cumque est qui tempore repellat repellendus est. Dolor ut temporibus deleniti alias.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(9, 'Eius pariatur odit.', 'Est ducimus quasi harum eum rerum aut voluptas repudiandae. Quasi maxime nesciunt eveniet non. Et fugit et dolores occaecati necessitatibus recusandae eos. Est quam dolor possimus et.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(10, 'Expedita eveniet.', 'Veritatis repudiandae doloremque explicabo qui inventore doloribus iusto. Occaecati consectetur excepturi ipsa dolor quia ut iure. Sed id eligendi et deserunt maiores.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(11, 'Quasi recusandae.', 'Maiores velit consectetur dolores possimus libero sit sed. Eos dolor quisquam est adipisci quis. Reiciendis atque dolores repellendus qui corporis rerum.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(12, 'Aut itaque.', 'Atque eos vel aut distinctio sunt et. Ea qui pariatur dolores laboriosam provident. Explicabo saepe ut quos repudiandae est odit in aut.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(13, 'Dolorem est iste.', 'Error repellat ut nobis dolore velit voluptates. Sint aperiam sunt voluptate veritatis adipisci. Et quia est porro est impedit.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(14, 'Voluptas similique.', 'Nam quo esse officia laboriosam qui distinctio debitis. Et natus necessitatibus necessitatibus nisi. Ab natus a vitae sed. Aut ipsam blanditiis voluptas qui.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(15, 'Nemo facere aliquam.', 'Tempore consequatur repudiandae voluptatem saepe ut. Et reprehenderit ratione et consectetur. Vel quas quo et et tenetur. Itaque et accusantium aut enim eveniet labore qui tempore.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(16, 'Nesciunt architecto.', 'Saepe officia soluta sed repellendus quidem quo voluptas. Consequuntur aliquid quibusdam tempora laboriosam sunt nulla perspiciatis voluptas.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(17, 'Eum consequatur.', 'In adipisci ut harum et quidem quis. Hic qui eos sapiente eos doloribus. Voluptate consequatur aspernatur fugit nihil sit quisquam qui. Rerum qui eos minus sunt dolore eum.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(18, 'Accusantium.', 'Modi numquam suscipit quas est. Mollitia aspernatur cum velit et. Nisi maiores et laborum modi dignissimos et numquam. Nam et totam architecto quibusdam et excepturi error nemo.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(19, 'Exercitationem.', 'Nesciunt dolores et voluptatum eos eum velit qui. Dolores sed officia repellendus dolorem dignissimos. Nulla occaecati id numquam debitis temporibus.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(20, 'Qui sit sunt quis.', 'Sed et doloremque provident unde distinctio. Aliquam id possimus veniam magnam rerum. Eos consequuntur omnis sunt quisquam expedita.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(21, 'Vel sunt magnam.', 'Quis impedit accusamus tempora autem. Sed odit voluptas molestiae distinctio ut commodi aspernatur. Natus repudiandae sequi a vitae optio aut.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(22, 'Fugiat asperiores.', 'Rerum quos et voluptas consequatur totam est. Labore laborum nobis placeat voluptates quia repudiandae architecto. Minima et placeat quam minus.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(23, 'Qui est nam nemo.', 'Aut nemo quam hic sit. Error natus molestias nesciunt voluptas eveniet. Provident in et rerum.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(24, 'Quis perferendis.', 'Quas quas non magni error. Laboriosam laborum beatae est beatae. Rerum numquam dolores laudantium est molestiae ratione ipsa.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(25, 'Eius blanditiis.', 'Sequi quibusdam totam voluptatem. In sint incidunt vel laboriosam reiciendis qui. Et ex perspiciatis iure sed. Aut soluta enim ab beatae. Possimus placeat facere aut numquam placeat cumque.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(26, 'Dolores ab sint non.', 'Quia voluptates recusandae molestias soluta aperiam quod. Nihil ut sed sunt quia ab adipisci nulla excepturi. Et ut omnis cum ducimus asperiores eos ea.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(27, 'Ab repellendus.', 'Eum ut molestias qui voluptatem non. Ut aut fuga veniam rerum sint.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(28, 'Repellat sed est in.', 'Consequatur maxime odio aperiam necessitatibus enim. Corporis quia est nesciunt. Enim aspernatur sit nihil quas molestias ipsum ipsa.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(29, 'Et fugit eum.', 'Consequatur fugiat velit quia molestiae sapiente facere. Ut amet officia dolores ut. Odit non quia magni est.', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(30, 'Est totam unde.', 'Repellendus minima eum qui blanditiis tempore magnam. Quis sed reprehenderit pariatur nesciunt exercitationem natus ut. Consectetur odit harum aliquid aperiam veritatis omnis ducimus exercitationem.', '2020-09-14 00:56:14', '2020-09-14 00:56:14');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles_users`
--

CREATE TABLE `articles_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `articles_users`
--

INSERT INTO `articles_users` (`id`, `user_id`, `article_id`, `created_at`, `updated_at`) VALUES
(1, '2', '2', '2020-10-12 00:56:15', '2020-09-26 00:56:15'),
(2, '3', '9', '2020-09-26 00:56:15', '2020-09-21 00:56:15'),
(3, '5', '13', '2020-10-07 00:56:15', '2020-10-14 00:56:15'),
(4, '3', '9', '2020-10-12 00:56:15', '2020-10-14 00:56:15'),
(5, '2', '30', '2020-09-16 00:56:15', '2020-09-26 00:56:15'),
(6, '2', '12', '2020-09-17 00:56:15', '2020-09-21 00:56:15'),
(7, '5', '15', '2020-09-18 00:56:15', '2020-10-08 00:56:15'),
(8, '3', '25', '2020-10-09 00:56:15', '2020-10-08 00:56:15'),
(9, '1', '12', '2020-10-10 00:56:15', '2020-10-12 00:56:15'),
(10, '4', '10', '2020-10-04 00:56:15', '2020-09-28 00:56:15'),
(11, '5', '29', '2020-10-08 00:56:15', '2020-10-14 00:56:15'),
(12, '2', '30', '2020-10-04 00:56:15', '2020-09-24 00:56:15'),
(13, '2', '27', '2020-10-13 00:56:15', '2020-09-30 00:56:15'),
(14, '3', '23', '2020-09-14 00:56:15', '2020-09-16 00:56:15'),
(15, '2', '22', '2020-09-18 00:56:15', '2020-09-20 00:56:15'),
(16, '5', '21', '2020-10-14 00:56:15', '2020-09-25 00:56:15'),
(17, '1', '30', '2020-09-14 00:56:15', '2020-09-27 00:56:15'),
(18, '3', '17', '2020-09-16 00:56:15', '2020-09-27 00:56:15'),
(19, '3', '19', '2020-09-27 00:56:15', '2020-10-10 00:56:15'),
(20, '2', '27', '2020-09-25 00:56:15', '2020-10-10 00:56:15'),
(21, '4', '12', '2020-10-05 00:56:15', '2020-09-26 00:56:15'),
(22, '2', '17', '2020-09-14 00:56:15', '2020-09-24 00:56:15'),
(23, '2', '20', '2020-09-14 00:56:15', '2020-09-17 00:56:15'),
(24, '3', '29', '2020-10-09 00:56:15', '2020-09-20 00:56:15'),
(25, '3', '23', '2020-09-15 00:56:15', '2020-09-18 00:56:15'),
(26, '3', '29', '2020-09-26 00:56:15', '2020-10-12 00:56:15'),
(27, '2', '23', '2020-09-19 00:56:15', '2020-09-24 00:56:15'),
(28, '1', '18', '2020-09-17 00:56:15', '2020-10-14 00:56:15'),
(29, '2', '6', '2020-10-03 00:56:15', '2020-09-14 00:56:15'),
(30, '4', '6', '2020-09-16 00:56:15', '2020-10-03 00:56:15');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_09_11_132209_articles', 1),
(2, '2020_09_11_132710_users', 1),
(3, '2020_09_11_133805_articles_users', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `nickname`, `name`, `surname`, `password`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'ewelch', 'Jarret', 'Steuber', '$2y$10$dPJWBjjpCwyAL5VIF.qB2.eKeJ7rqY83WOuGP7w73as6Tm22CSM/e', '', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(2, 'friesen.susie', 'Rubye', 'Hammes', '$2y$10$aQpY1t8EhUZqKapwiIjiuOaqb1YYHA3dwl10.O0TbUSBefJn7nP5y', '', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(3, 'gaetano50', 'Alfred', 'Fahey', '$2y$10$XhB.8mBYC1BzZTNEvc2oievI86iU2xPkrkn7QN3JXt5z241rDnRTi', '', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(4, 'monte.goldner', 'Claire', 'Rogahn', '$2y$10$xXrGtrteM.fnvGEwEkaNx.guZtY6smARm6zl5X.rOCxzZamE4YwIK', '', '2020-09-14 00:56:14', '2020-09-14 00:56:14'),
(5, 'cesar43', 'Rebekah', 'Welch', '$2y$10$tl0MmgRPqB5ZBfG0U0CLOuMtMtA1csb45a9FUfbpWj8xYe395/0R.', 'blpHVDZIUnlXV3laNk15VWdSTktjZ2l4YnlhNGJTVkZ2V3RkRFVsWg==', '2020-09-14 00:56:14', '2020-09-14 01:20:45');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `articles_users`
--
ALTER TABLE `articles_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nickname_unique` (`nickname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `articles_users`
--
ALTER TABLE `articles_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
