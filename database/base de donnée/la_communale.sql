-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 06, 2022 at 07:45 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lacommunale`
--

-- --------------------------------------------------------

--
-- Table structure for table `cartes`
--

CREATE TABLE `cartes` (
  `id` int(11) NOT NULL,
  `type_service` varchar(191) NOT NULL,
  `emplacement` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `collectes`
--

CREATE TABLE `collectes` (
  `id` int(11) NOT NULL,
  `montant` int(15) NOT NULL,
  `reseau` varchar(191) NOT NULL,
  `IdProjet` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectes`
--

INSERT INTO `collectes` (`id`, `montant`, `reseau`, `IdProjet`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 25000, 'Orange CI', 1, 'succès', '2022-04-27 20:14:35', '2022-04-27 20:14:35', NULL),
(2, 500000, 'Moov CI', 1, 'Succès', '2022-04-27 20:35:18', '2022-04-27 20:35:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `communes`
--

CREATE TABLE `communes` (
  `id` int(11) NOT NULL,
  `nom` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `communes`
--

INSERT INTO `communes` (`id`, `nom`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ADJAME', '2022-04-12 11:53:52', '2022-04-12 11:53:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `demandeExtraits`
--

CREATE TABLE `demandeExtraits` (
  `id` int(11) NOT NULL,
  `lieu_naissance` varchar(191) NOT NULL,
  `date_naissance` varchar(191) NOT NULL,
  `piece_cni` varchar(191) NOT NULL,
  `copie_extrait` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `titre` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `images` varchar(191) NOT NULL,
  `IdTypeInformation` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `titre`, `description`, `images`, `IdTypeInformation`, `IdUser`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Lulu Feest', 'Temporibus deserunt cumque qui nisi.', 'https://via.placeholder.com/640x480.png/0055cc?text=est', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(3, 'Mya Waters', 'Recusandae tenetur voluptas hic ut repudiandae.', 'https://via.placeholder.com/640x480.png/000088?text=nulla', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(4, 'Mrs. Viola Volkman', 'Et ex omnis aut.', 'https://via.placeholder.com/640x480.png/00ff77?text=quis', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(5, 'Prof. Tod Connelly I', 'Molestiae inventore aut aut sit.', 'https://via.placeholder.com/640x480.png/005566?text=quo', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(6, 'Corine Swift', 'Aut qui provident qui nihil deleniti.', 'https://via.placeholder.com/640x480.png/0033ff?text=et', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(7, 'Mr. Billy Schulist', 'Explicabo voluptatem qui veritatis at.', 'https://via.placeholder.com/640x480.png/00ffff?text=blanditiis', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(8, 'Marjolaine Miller', 'Iste ut dolorem rerum et labore.', 'https://via.placeholder.com/640x480.png/006611?text=omnis', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(9, 'Ahmad Hane', 'Vel adipisci magnam harum nam cupiditate nulla.', 'https://via.placeholder.com/640x480.png/00eeee?text=nostrum', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(10, 'Kian Bechtelar', 'Et sed et nostrum eligendi qui consequatur.', 'https://via.placeholder.com/640x480.png/00aa00?text=beatae', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(11, 'Eugene Pfeffer', 'Sit ad et omnis cumque numquam iusto.', 'https://via.placeholder.com/640x480.png/00aa00?text=placeat', 1, 1, '2022-04-13 17:21:25', '2022-04-13 17:21:25', NULL),
(12, 'Lulu Feest', 'Temporibus deserunt cumque qui nisi.', 'https://via.placeholder.com/640x480.png/0055cc?text=est', 1, 1, '2022-04-13 18:59:01', '2022-04-13 18:59:01', NULL),
(14, 'La Fin Du Monde', 'Jesus revient Bientôt', 'images.jpg', 1, 1, '2022-04-26 11:28:12', '2022-04-26 11:28:12', NULL),
(15, 'La Fin Du Monde', 'Jesus revient Bientôt', 'images.jpg', 1, 1, '2022-04-26 13:41:37', '2022-04-26 13:41:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(10, '2022_04_20_094958_add_deleted_at_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00032d255b2dc34d605fc35b20976a3cdba64d45ea478eb25e7a6d72e134b3bc4fab4b39358c5843', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:25', '2022-04-20 15:17:25', '2023-04-20 15:17:25'),
('00d7f62b53558760e26830ac4103e5e6eb50697b2a1f2c47113daf8bfd1ce7d96bae082c393ff2b0', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:56:53', '2022-04-26 12:56:53', '2023-04-26 12:56:53'),
('00ef53cbaa79523a0a27a3270dd3fbadd073f073d89e809e4eeb493f3fcc55e41f56fcab26298d44', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:52', '2022-05-04 13:56:52', '2023-05-04 13:56:52'),
('013b19838c8e70317ccd6b619a92670f87bbdc4d69cc6462a58ee7c7d527fd4a1a565f8def55e455', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:39:51', '2022-04-20 09:39:51', '2023-04-20 09:39:51'),
('019257ecbaaef2592b36b48ffa940e93481a918101b4bf2ca443beac3d8f2dd4bf6b993836ef5a2c', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:52', '2022-05-03 19:09:52', '2023-05-03 19:09:52'),
('0266b874f0daa069cc455feb01ec0648f8172f3db70b27c5e47c67131801f289bedf3768ab3e977c', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:24:29', '2022-04-19 12:24:29', '2023-04-19 12:24:29'),
('028be0e0614b4cdd776dba12042f2e3fa53be3922690650fbe20f8d1053dc4bb38e979039f02c372', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:23', '2022-04-15 15:03:23', '2023-04-15 15:03:23'),
('02ff0b37362be1658a1a2b5f915e2b1e8d2cf7e4469795a98fa9d1b50920a142d0ddb91a568f4496', 1, 5, 'authToken', '[]', 0, '2022-04-12 16:18:45', '2022-04-12 16:18:45', '2023-04-12 16:18:45'),
('03ab3c87d53de4791b6e1f8f521650d6e3a913c126a02d746edfb2f7284785ab8359540d6d5e8365', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:55:54', '2022-04-26 12:55:54', '2023-04-26 12:55:54'),
('05166c33f152ebf997feedd7e8f57516eea54b2150da3bdbcb9f2a6ea2f3880bd9b557068cf781f4', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:53:37', '2022-04-26 15:53:37', '2023-04-26 15:53:37'),
('0567f4c2119493643f1573edead11eee9d9c3c95e6928864f470906c60e8fe5a1e77992b9906bfaa', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('05a5995aad6603b707d8c1b41c9abf0bc86ccfcee28690de9d57354444be430932d595b9a49821bc', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:11', '2022-04-26 12:59:11', '2023-04-26 12:59:11'),
('06283240f02105c2af04c99c608f2ad503330faef4cd081c24b7dfa3feef23b6dc9bd9e56c68810d', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:24:39', '2022-04-19 12:24:39', '2023-04-19 12:24:39'),
('06795d6d0b917c288e4ca06000e6cca5f908fe53bcc91c7a1a2c19e89e9b28ae71660c02588b31a4', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:12', '2022-05-04 13:26:12', '2023-05-04 13:26:12'),
('06a5edb5ae55bc80ce06b144e3751c6972aa295fa2355455fc058ffd4d0222ddb3fda5139d799741', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:27', '2022-04-20 15:17:27', '2023-04-20 15:17:27'),
('07651db0c39d33f92720f4bf6f8c678099aa18e9c3c1cc942f7f66724e8561b79e84fbfb08d16288', 11, 5, 'authToken', '[]', 0, '2022-05-03 20:02:00', '2022-05-03 20:02:00', '2023-05-03 20:02:00'),
('07ef98b85a1a36088e40975831b8ba1ff7cbab5665d06d927140f0e5715570bd8b7f4eb7766c663e', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:28', '2022-04-26 15:54:28', '2023-04-26 15:54:28'),
('0827f9636b5f00209a46f4fa385767f2564efd3d0f86244baec982cf055228d9d9f03d2666a845ed', 5, 5, 'authToken', '[]', 0, '2022-04-15 12:19:25', '2022-04-15 12:19:25', '2023-04-15 12:19:25'),
('0904dc2b19e53d60ff6335978e9aad67dcf6bf1941a605a98381cc1a172bd598f2d08f9a3ba1ebaf', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:50', '2022-05-03 19:09:50', '2023-05-03 19:09:50'),
('09694045ca20f19b2604d9057c2a7db2fb4f9dbc107141cb185929f850b632552f99c09dd002c2eb', 1, 5, 'authToken', '[]', 0, '2022-04-13 17:39:09', '2022-04-13 17:39:09', '2023-04-13 17:39:09'),
('098696ffa1f15144fb9a01018475faeaa462c021fcf23c76744cbd5211c548797e21503a892cb1d6', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:54', '2022-05-04 13:56:54', '2023-05-04 13:56:54'),
('0996d304788923f34efe3e2403ba77dccd0e9c359821464ff57e0d08629996806fbb1f71d033c078', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:13:17', '2022-04-20 15:13:17', '2023-04-20 15:13:17'),
('09eef69e61aa7bd61f85fce643318dbb3b49a49db87928d271ad3283257ed786b140fd619ae780f2', 1, 5, 'authToken', '[]', 0, '2022-04-26 09:47:23', '2022-04-26 09:47:23', '2023-04-26 09:47:23'),
('09f1953fa63e79e68bab917825883b828fa9a5fd5532268e877d976c908b1fe8125fb9b8f071108b', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:22', '2022-04-15 15:04:22', '2023-04-15 15:04:22'),
('0ac2274cb91cd808e2d99b0cdfd2a687a8583d22b6f6b36efbf95b1556b44a976590c85a1260788b', 2, 5, 'authToken', '[]', 0, '2022-04-27 16:23:54', '2022-04-27 16:23:54', '2023-04-27 16:23:54'),
('0b811998099e2a08993ecb805ad427295585c8eb9eadbe9b69ebb57bf5ede381bb522ac4a98e39f2', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:20:56', '2022-05-03 19:20:56', '2023-05-03 19:20:56'),
('0bbba744872ce16e8b42c6eb56fde89d086d4e71ce403911c2718d49c344fe94c11703537e9a9482', 11, 5, 'authToken', '[]', 0, '2022-05-04 14:32:15', '2022-05-04 14:32:15', '2023-05-04 14:32:15'),
('0be3c96bba777bc84c4ab507b552a2d4ec806b58f4738e2306e86dac4733d64d996b64e9e692a704', 2, 5, 'authToken', '[]', 0, '2022-04-27 14:27:15', '2022-04-27 14:27:15', '2023-04-27 14:27:15'),
('0bf83853e296c3c82644315af7a3eb8fab20925f3813ca938fea949115ce2e39f3257652a3a7a2f0', 7, 5, 'authToken', '[]', 0, '2022-05-04 10:04:42', '2022-05-04 10:04:42', '2023-05-04 10:04:42'),
('0c0f27c3b2611e07805e56f1b828bd91bf8ccd1093b249c4184ed14a90c5e8e5105621074293dcf5', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:36', '2022-04-20 15:17:36', '2023-04-20 15:17:36'),
('0cbf801ae33a2107c159bba4a0d0c4ca40a0baff2274b79bddc3f340bff4a8e47950d6b73fe095f1', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:13:08', '2022-05-03 19:13:08', '2023-05-03 19:13:08'),
('0dfc39556c36a118c80ba91159a44d148f82e99af0b635a0ea6e17ea8d3f2c484e0ad651dcb67e30', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:10:43', '2022-05-03 19:10:43', '2023-05-03 19:10:43'),
('0dfd6f6b71704c323b1d1330af6d75984db71960c6299230cda1c8a373b2fdfbb7cf9ce13146bfa0', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:47', '2022-04-15 15:04:47', '2023-04-15 15:04:47'),
('0e451a2b7fa9ae354b99decc59d94d5f2a5ecf5812b49d3fdd77757dbce910bb5511d6b211c1fe3a', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:49', '2022-04-15 15:03:49', '2023-04-15 15:03:49'),
('0e6e0b5131375d6c1db773b2c1febc88dd608bee0b2c7ad66619391d0e7073c9ac8ed121f1265442', 17, 5, 'authToken', '[]', 0, '2022-04-21 16:30:53', '2022-04-21 16:30:53', '2023-04-21 16:30:53'),
('0e77459932a5267cdc5c85a4a51926fe8e27fa8c5cf954664db788c126f2ee2551a99bdf5bd00c70', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('0e8cefc5664b4db8aced2fca3d0fd3d8f2cb7108fa0371685ef75faec3bb8d188ab45e1b41afc94a', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:50:17', '2022-04-19 10:50:17', '2023-04-19 10:50:17'),
('0f4d819e99c102c8e0e8f40b2ceb5c4ec15f2564c6d82685061fcf9210d03aacfe87bc333cfdc7eb', 7, 5, 'authToken', '[]', 0, '2022-05-05 10:11:06', '2022-05-05 10:11:06', '2023-05-05 10:11:06'),
('0f5ce463aa88cce05457fe5391622f8c484b1e6ea93006a7a20b8d6cc2785da77ad76613a68c1479', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:42', '2022-04-26 12:58:42', '2023-04-26 12:58:42'),
('0fa4848299f19856ecdc14b043578f88bb093a98745757f902b7817b3bff6996a88825c48077efa8', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:42:00', '2022-04-20 09:42:00', '2023-04-20 09:42:00'),
('0fd5207ae7ca247626f78104fdde2cc7ae25d96db3cc38bb1ca067f9440f0e4b05cc5a63c78081c3', 5, 5, 'authToken', '[]', 0, '2022-04-19 14:43:59', '2022-04-19 14:43:59', '2023-04-19 14:43:59'),
('10bfc2c0ac83b663ad9779e9b9c34f264216eb5daadb5550a2ec9a06cf3f01889a7cbe71f9b3cea0', 7, 5, 'authToken', '[]', 0, '2022-04-29 18:00:54', '2022-04-29 18:00:54', '2023-04-29 18:00:54'),
('114327bf3c870633ea0e2692c8b78a2a6052539f2894d7b21417d21977f83bbe00390cafd73f96d9', 2, 5, 'authToken', '[]', 0, '2022-04-27 15:40:09', '2022-04-27 15:40:09', '2023-04-27 15:40:09'),
('114e642f27d121d74178e8ea056a561e0ba74c1ea9e140fd095a1393f7550cef2bf19985cc67d8a7', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:49:24', '2022-04-19 10:49:24', '2023-04-19 10:49:24'),
('12a90dbcadd88721d3211a6d7b07f1547d74c7663366e97505f2f147da8968db162e4edfa293460c', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:54:25', '2022-04-26 12:54:25', '2023-04-26 12:54:25'),
('1327dbab1483d20e28f14d92a7369d6d1b230d9e32939a07b31eee48ab83df8da8146bf6e2d18803', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:45', '2022-04-26 12:58:45', '2023-04-26 12:58:45'),
('13766a8cbdedbb3a019703ffd40008a9bdaaa01597c04b90a5c916437ed92fb8ff8bdb5f0be26481', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:18', '2022-04-26 15:54:18', '2023-04-26 15:54:18'),
('13ca1b2606f2dca5e447e2a3e6832d858174da460b2e857ca04a260c69be633d40a24078bbc029ab', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:21:29', '2022-05-03 19:21:29', '2023-05-03 19:21:29'),
('1405e813cd22f06648bb59c7164ff7bc1d5a91d519aaa25178437791bd5c81845172ffb1bdbcf62c', 2, 5, 'authToken', '[]', 0, '2022-04-29 11:31:25', '2022-04-29 11:31:25', '2023-04-29 11:31:25'),
('14423cd6acbd61a1f5e6a38e4889b2fb03b576be623b42adcc3b67852aca0424417c6334205b1ee5', 5, 5, 'authToken', '[]', 0, '2022-04-19 13:05:21', '2022-04-19 13:05:21', '2023-04-19 13:05:21'),
('153e31b848348d43b5809af4a7726fd9502b2464c167bd832ef9d10d0eb6500922708597a8ac2150', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:52:58', '2022-04-29 15:52:58', '2023-04-29 15:52:58'),
('15b76fc93db47b3509a9e2f68e17643b5b785e270a14f62218ac86db60b31f763a779a84ccdbc2b1', 2, 5, 'authToken', '[]', 0, '2022-04-29 11:51:13', '2022-04-29 11:51:13', '2023-04-29 11:51:13'),
('161a8617b9aba09762d7defc31924f6f4f6dc3b87b69194e236d8f922c0057bbb532bce5029216ff', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:54', '2022-05-04 13:56:54', '2023-05-04 13:56:54'),
('1760975536d7e6d790fa343808ffd4247d139a6a63a542a58f79ac29cff21e7825a58aa9e5300ffa', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:14:07', '2022-04-19 11:14:07', '2023-04-19 11:14:07'),
('176ab46b1d818fd9e8cbbd62757708a76e8f9d84493f2fc9b7b62d4e48eb6fa62bf86e25719f103d', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:33', '2022-04-20 15:17:33', '2023-04-20 15:17:33'),
('185763b8cbf9875b846b7cda4261ec1c9a4c21e525899b65e26cf65becb374e801d939ce81347f6d', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:28', '2022-04-26 15:54:28', '2023-04-26 15:54:28'),
('1890f98d0071a623536aa4ac7e9cbf497bc0a2874ec4ac9768e68a39e64cb64a2567a1547d1e5f6f', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:34:11', '2022-04-19 10:34:11', '2023-04-19 10:34:11'),
('18baf3d90ea881ad8def043399db646a6f6141e4f2277c1b05e0be574db8cb80979a2050d427b338', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:12', '2022-05-04 13:26:12', '2023-05-04 13:26:12'),
('18cab180f79025bc45f056c25f97ce9dcd5cafeb0374aca9ade7b35541da566e5f551709f5d20064', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:53:39', '2022-04-26 12:53:39', '2023-04-26 12:53:39'),
('19d5feb02e791134ece0df7657db481cac65ceadb198a187a205e8530111805ea69e7d3d47ac9b03', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:52', '2022-05-04 13:56:52', '2023-05-04 13:56:52'),
('19f7618cf54d126d020581fc07db8a6e1e941b4d0af3797d86d3ccb18aa0c0cdbc21120345e6508f', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:34', '2022-04-20 15:17:34', '2023-04-20 15:17:34'),
('1a8d42488a8483426adf6f3d60f5754f5ed8c11f5a14d2f5107d9dc17c3975b49d39fd6e80034428', 1, 5, 'authToken', '[]', 0, '2022-05-05 15:59:13', '2022-05-05 15:59:13', '2023-05-05 15:59:13'),
('1aa2f94a9a29fc5d197a683647a93eca607d33bd5bc35a744cd4b6d342af51717686b9636cceaf4d', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:36:33', '2022-05-03 19:36:33', '2023-05-03 19:36:33'),
('1abc6363f736c01091c28ce359c8c46fd2159c5f708b0d30b76a43faafa01fa9ce85077f78c5da9a', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('1b0429c0c268ed699b93c2f7ae9afba950032c0ef1b6749a850d96dcfcacbe6b12049ef2e8419220', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:54:17', '2022-04-26 12:54:17', '2023-04-26 12:54:17'),
('1b3390f7dc04e1a5711b7a787c3885aac8d168fa8948784253a7a1e43c32b1cf679dec77294d19d7', 17, 5, 'authToken', '[]', 0, '2022-04-21 16:31:11', '2022-04-21 16:31:11', '2023-04-21 16:31:11'),
('1b3826a0091f2d35870c9fe5838652578dd8b3f33b2545fa4fa4418036de3907dd367f4bdd579a87', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:12:46', '2022-05-03 19:12:46', '2023-05-03 19:12:46'),
('1b638424e4eed596dcd69cf2307fbd4eb3360ca44dd4e55c5ce6c0d68bdfd648fccfdfac03c5c138', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:21:55', '2022-04-29 10:21:55', '2023-04-29 10:21:55'),
('1c280ba47bd8ba8cf218d84981ff55d1d1ff9425f61406a5e1e51e4720d6607b8135ecd881db4e1d', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:34:11', '2022-04-19 10:34:11', '2023-04-19 10:34:11'),
('1ce9ab965d996a73b69c6b9c99d072039a1a5942af4cc01c37e5e26a730db1af32c6fbf7a0b4b1e8', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:37', '2022-04-26 15:54:37', '2023-04-26 15:54:37'),
('1d22f2fbcad50e4942ca7c4b4a2673c212de6dd96acb70f1dc28d93c76ea6f707f6696aa4ec6699a', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:02:57', '2022-04-15 15:02:57', '2023-04-15 15:02:57'),
('1d80cd3cba393c244c8018b291c0235e5c178398c17d8ba492c21a4706ec52d22d2155f25671472f', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:17:09', '2022-05-03 19:17:09', '2023-05-03 19:17:09'),
('202c70c82c236547891486b4d48c5f869f8d1e7955b5e3ff93818601bcc468c30a9cbfa4afedf2f5', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:26:22', '2022-04-19 12:26:22', '2023-04-19 12:26:22'),
('20b6dc7b5aea833e174dc6c593b279699894b1dce8a04d67322660439d4f26d7113456bf9adf662d', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:46', '2022-05-03 19:09:46', '2023-05-03 19:09:46'),
('216380e74777ff6f0ceb4f29fb66a8c31e59aef4230cae2c11636b2c301fe9eea4fd55964a6d9881', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:28', '2022-04-20 15:17:28', '2023-04-20 15:17:28'),
('216a8465aa251708be82b9ec700750141d64836e1f3c339fad3baa853b366322cb9559b74216564e', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:49', '2022-05-03 19:09:49', '2023-05-03 19:09:49'),
('21a419240f57af3b457a041f0a06d0af0984520cc43c52c73f66c993e57e445ce63a49f3b238e253', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:24:32', '2022-04-19 12:24:32', '2023-04-19 12:24:32'),
('21e5819f4c7aa03d5222048b9783f7bfb6c5d6fe75f71797c587925d3016e5725a7a7550482069a2', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:10:01', '2022-05-03 19:10:01', '2023-05-03 19:10:01'),
('2242852ad94726410ee54487bd0718ad7c242a3f9ee6c0015d6cbb0593200a60465fd546ea2f360f', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:54:39', '2022-04-20 09:54:39', '2023-04-20 09:54:39'),
('22958bd6b2af76e1904e2bbb5a8c6e5382f3a68b10a3b4ae05fddbfe81de51da046f7323da62e763', 7, 5, 'authToken', '[]', 0, '2022-05-06 12:06:37', '2022-05-06 12:06:37', '2023-05-06 12:06:37'),
('22a64729f9c7ae3abf63db3ba067542da489a13f558d8a54b316843f6bb8f13c8d8ee280701abc19', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:23:09', '2022-04-19 12:23:09', '2023-04-19 12:23:09'),
('23470f158b87494466a3abe038e58f8983b0523ce9e6a1e98094968a66c800c90752f0061bf3ed77', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:57', '2022-05-04 13:26:57', '2023-05-04 13:26:57'),
('23c362a470a3c2cfe78305a6084e5d7257af8847fa1c5229a1c37cd680cdf339da7b9f6917b41499', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:51', '2022-05-03 19:09:51', '2023-05-03 19:09:51'),
('247af587e7dd45e09d2bdb65d201ffd863bd29346a7e7fea864d7a48d2f8d7f8af80248b7e2ff410', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:51:13', '2022-04-19 10:51:13', '2023-04-19 10:51:13'),
('265833e842c30924700861ce6e102d90f843589020cb6afc11cbb77cfe0db37e23fab23d3b97ad55', 11, 5, 'authToken', '[]', 0, '2022-05-03 18:59:11', '2022-05-03 18:59:11', '2023-05-03 18:59:11'),
('26a3f3f1973f03eb4af975eb9768ceaf4dc5a3ab7b2f1b5f5b574108ee42fd1bbf652172fe5371e0', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:34', '2022-04-20 15:17:34', '2023-04-20 15:17:34'),
('27415fae69721a30e7cf2588e0f99036cfbba952acb3e7570f968c1e9e8d469ad7807ef493543382', 2, 5, 'authToken', '[]', 0, '2022-04-27 14:34:13', '2022-04-27 14:34:13', '2023-04-27 14:34:13'),
('28659eeac1ae2e95dfe3f909defa589d976e52374310a6388d18bebe8e5aefb01fc58b84f8ed46a4', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:24', '2022-04-26 12:59:24', '2023-04-26 12:59:24'),
('286d2b73c23a27bfeccd1b5110a0c7163dc03e440d9c3c934894bb921fef235e9076942f5f0a316a', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:22:00', '2022-04-19 12:22:00', '2023-04-19 12:22:00'),
('28ffa5127703709e3d44f2f3ce812aa53a01860b91fae176df917502e8244b7f968cf0d6b0750eed', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:53:35', '2022-04-26 15:53:35', '2023-04-26 15:53:35'),
('29911ca2b829f857ec172a3dbd5606d87c2fa38fc78eadd96678b6bba63e5c8b366e8573b1f84bdf', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:54', '2022-05-04 13:56:54', '2023-05-04 13:56:54'),
('29a79fc708e1a621b5749a7944728ccd62ef6eda20881fb46efedbfe9b95da3126aca6a69fc4a25f', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:36', '2022-04-20 15:17:36', '2023-04-20 15:17:36'),
('2ad7782941c213ddafbc2a344c706b078e3c377b31174abf6e0eda2b2b73709196f2942b1d515790', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:54', '2022-05-04 13:56:54', '2023-05-04 13:56:54'),
('2ae99fbf386e466b2ad29208354197efb1551087a37a9c4c3fd5a0b943716f5653ca949fbcb99e1c', 5, 5, 'authToken', '[]', 0, '2022-04-19 13:03:54', '2022-04-19 13:03:54', '2023-04-19 13:03:54'),
('2b613ac35cd124e981378292c6bbeb90f5a13f29e939cb73c8ea26ba4e35584664800ebc2ecb4bf0', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:34:21', '2022-04-19 10:34:21', '2023-04-19 10:34:21'),
('2caf010b77aed8d15c24b8f8660c4159edf16a602b362b5263764edb60cfdeddb66df8156de5f095', 2, 5, 'authToken', '[]', 0, '2022-04-27 14:37:45', '2022-04-27 14:37:45', '2023-04-27 14:37:45'),
('2cff5ac637c6185d2e2e08b3da8ef59a194cc97fb81e33dda0f01017505df70fc02d6e23d67b9e9a', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:59:59', '2022-04-19 11:59:59', '2023-04-19 11:59:59'),
('2d1cb85e3e5a2dbc9f51974d75f6f93a07ceb50349a4b60b9b67e219135521a889c6d632cd15e1fe', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:28', '2022-04-20 15:17:28', '2023-04-20 15:17:28'),
('2d6ed7c8e44f665e33f4239c0998559666cdd5fb759085e975cc6e1cd975bdc6c6b9deb06acc382b', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:56', '2022-05-04 13:56:56', '2023-05-04 13:56:56'),
('2d9fd5f66116c4cef987114c4aa8d4c5527145c33d1926d747f40b1e404b8eefb80cc9501de36fb5', 2, 5, 'authToken', '[]', 0, '2022-04-27 17:07:52', '2022-04-27 17:07:52', '2023-04-27 17:07:52'),
('2dfadcb615d9c130881279602edf806880cdb969fab1b758a874f54a536be15dbad0b5ca9486e8f7', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:12:35', '2022-04-20 15:12:35', '2023-04-20 15:12:35'),
('2e61b050602fb66dfe398b397cf206f1c28602885f7a51c8cc45e57870523de1db6391f0a308a8f1', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:36:50', '2022-05-03 19:36:50', '2023-05-03 19:36:50'),
('2ecec96f7bfed5492046c4f56f68a4c803138bb0731e87e041a822c20185d5611abd39ca6c17e38f', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:36', '2022-04-20 15:17:36', '2023-04-20 15:17:36'),
('307ccfffd767f9f37008dba8aba29688e03c6b4f45cd12a1213ea5c495155d9d9e399affa00f0501', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:04:32', '2022-05-03 19:04:32', '2023-05-03 19:04:32'),
('31152b0e31f64f77b2519048d0fc70d3fd406580d1c470a46964c90d92390a605b9d36d20b66eaa8', 2, 5, 'authToken', '[]', 0, '2022-04-29 11:54:06', '2022-04-29 11:54:06', '2023-04-29 11:54:06'),
('312133c0c3fabe7b733fde30911a233392d3962592c079151271a295b0940a2fd8cf94865559e281', 2, 5, 'authToken', '[]', 0, '2022-04-29 14:29:29', '2022-04-29 14:29:29', '2023-04-29 14:29:29'),
('314855cecedb693e5fd722fce6486281a077552708029c751c4eca208f710a90905f68cff08cea08', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:37', '2022-04-20 15:17:37', '2023-04-20 15:17:37'),
('3256d054129ea3b150b2e8b335499738708a70195c725f7080221d8b264108a44b0e927b3c34b5c9', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:50:10', '2022-04-19 10:50:10', '2023-04-19 10:50:10'),
('326061644e806ca4d2df8ebc5b2145fcf47b40ddb674e6bd3cfde3d033d52363924cf6d116b2ca59', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:50', '2022-05-03 19:09:50', '2023-05-03 19:09:50'),
('33bb689d8fb39e379fe0a96e576f296d398ba87905f463e749c85f895162927587012e62ae7c690e', 11, 5, 'authToken', '[]', 0, '2022-05-03 20:00:56', '2022-05-03 20:00:56', '2023-05-03 20:00:56'),
('33cf172c738c706f6280f3235ddcccf1b40b3cf9439b9389cd6bdbb2374c674ab596b08a9730c855', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:52:24', '2022-04-19 10:52:24', '2023-04-19 10:52:24'),
('344af6ecfa4496690652d1e7f067f5ecaddc3f31da762512e82bd31558827316e72d37752e1cd8ed', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:32:33', '2022-04-20 14:32:33', '2023-04-20 14:32:33'),
('34f582bf39eca360ee2d427157c768bcc44614fe054f87ae6715bfbd16cef1d0c2b14298dddca2ca', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('35510c256f798b55838d88512931b509bfe96e2d632b0bff515f7de99b6c66cea9500191af2a2e1e', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:11', '2022-04-26 12:59:11', '2023-04-26 12:59:11'),
('35b33740aa672b39f13cce5afff8ae752ef25351dae36efbfac3e5972f67cef18704e95f5b83a8e5', 2, 5, 'authToken', '[]', 0, '2022-04-27 15:34:38', '2022-04-27 15:34:38', '2023-04-27 15:34:38'),
('3664648c4e3cf58e2cafc35e37d4330668dc66b4e2e579153e1e12e747d7541e5642195bef5ce252', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:59:36', '2022-04-19 11:59:36', '2023-04-19 11:59:36'),
('373cad797c5e7c5e7fd0c4ba45cde182fc26e3d1df47e1431ccd0cf98487251dc859208d32a09a62', 2, 5, 'authToken', '[]', 0, '2022-04-27 17:10:05', '2022-04-27 17:10:05', '2023-04-27 17:10:05'),
('3768deb37f6f23bf54ede328d3f6f83f42b9d03dea580ddc4da94001873e7a8db42dd81b7104f3df', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:12', '2022-04-26 12:59:12', '2023-04-26 12:59:12'),
('3784d451eb5753a2e510655f4369b4cdb137f1059ab3df82ef2ce630c1516a29612ce3feb60ad24e', 2, 5, 'authToken', '[]', 0, '2022-04-27 17:08:23', '2022-04-27 17:08:23', '2023-04-27 17:08:23'),
('37b293a0d972cd2c696ffd7c5de6955c6206c224356b2f5aae3328b329c6f4218962ad03db4d33a8', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:36', '2022-04-26 15:54:36', '2023-04-26 15:54:36'),
('385f7f85bf4cb858ebebf1323708c8d63658558d64c68748a9dec2931b98b1a6aace9a4ba2758cb4', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:53:37', '2022-04-26 15:53:37', '2023-04-26 15:53:37'),
('38f5176ea29227e94a9fb351e0f8c8e21cffaae6c4ddf1835c7a7b129116430879c933faa14e9dff', 2, 5, 'authToken', '[]', 0, '2022-04-27 16:22:46', '2022-04-27 16:22:46', '2023-04-27 16:22:46'),
('391ff826e3d2977c0c68a3a392899afbef8b18249feae0efd0a818fb7fe96509060d17f7481a11c6', 11, 5, 'authToken', '[]', 0, '2022-05-04 12:25:00', '2022-05-04 12:25:00', '2023-05-04 12:25:00'),
('397dc0924e85371d88b7c7e528cefd2bf591054f04ed4439fe702e3ac208c8193cb45966b3f1ecaf', 7, 5, 'authToken', '[]', 0, '2022-05-06 12:06:49', '2022-05-06 12:06:49', '2023-05-06 12:06:49'),
('399d17d92e6acb10b875bc903d0c4b460a0e1a8aa8bbfb9d3c360524ff6b3d2345a0d438bee01dc8', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:02:57', '2022-04-15 15:02:57', '2023-04-15 15:02:57'),
('399efe413e98b3ee9aa8c11f42fd228a022b6184b2264a6496847abe5b885cf7a6fd0a2f8f44ac2b', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:20:39', '2022-04-29 10:20:39', '2023-04-29 10:20:39'),
('39d0c707682d8c1851893cdb0753880183dbb8be97915bb30cdabc4ab6a947d6079aeff6686c7302', 1, 5, 'authToken', '[]', 0, '2022-04-12 18:37:34', '2022-04-12 18:37:34', '2023-04-12 18:37:34'),
('3a91ed53c75609017130763a5a8f5625939fcd1fec0b7807cb307f5f7730197a6982fd404149173b', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:12:19', '2022-04-20 15:12:19', '2023-04-20 15:12:19'),
('3aad2b6f1a7a0cbda82340ad430c302a6f15a5f3a182e782ba1203cfbe3f0c543b992afa61b93844', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:34:10', '2022-04-19 10:34:10', '2023-04-19 10:34:10'),
('3aeb955ef0f9c54e3013d0feb656644ac8258b5b19155db5d6e33cb732ffbf7955e5eaef21fbe27d', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:54:28', '2022-04-26 12:54:28', '2023-04-26 12:54:28'),
('3afddc804a2bfff153b7b563be76cb4f0ad077a7d1b388f53f0c02a0db92e32d1990915167dbaf28', 11, 5, 'authToken', '[]', 0, '2022-05-04 10:23:30', '2022-05-04 10:23:30', '2023-05-04 10:23:30'),
('3bca4367cb69cd38709327a16bb2f1649c00e0fbc8a428f2f83a7451fc869c5d401d4be79894adda', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:35', '2022-04-20 15:17:35', '2023-04-20 15:17:35'),
('3c577177391c05f2f12108e856432ae3f53b5e59b78a2f90c556e07b167cc99cba6632a2f35b9641', 1, 5, 'authToken', '[]', 0, '2022-05-05 16:05:11', '2022-05-05 16:05:11', '2023-05-05 16:05:11'),
('3ce1fe31711a1cec7b5c2b901486ff8b558f18dbad248f8e6ae594ea5b7fb1bd00fbe211008e63c5', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:50', '2022-05-04 13:56:50', '2023-05-04 13:56:50'),
('3d6db714adaa647bb40be2d621f7108e68ebd3b5eb6da243c0e79b44332e824d4c0e90d88dc45af3', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:32', '2022-04-20 15:17:32', '2023-04-20 15:17:32'),
('3ddc311d5c19351937459d14bb9c7219fa2abde889c6addb54718256e0127b7ea80afa7fc2ac37ab', 2, 5, 'authToken', '[]', 0, '2022-04-27 17:11:24', '2022-04-27 17:11:24', '2023-04-27 17:11:24'),
('3f2f12efaae087333693d6f5a1506efaa04177f4697bc195691e368419fde791f41c188565722962', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:52', '2022-05-04 13:56:52', '2023-05-04 13:56:52'),
('3fd6a4e2f9c762b5a2ac1eaecbe42af361b002262cda427809b707012f7a58718c2c825fac2510e0', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:23:08', '2022-04-19 12:23:08', '2023-04-19 12:23:08'),
('4005fc81eef5b31d58a3686221e85ff3d2cfe88ac2c86d261e9e27fc98e4fdf66a8967db8407d3e0', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:13:32', '2022-05-03 19:13:32', '2023-05-03 19:13:32'),
('4041a2cce3f2ea7987aafec8a45b46ace47f6ddecab8af7645403d012e47c0e3c2ae1313a28f0845', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('4079916d10b8de04e924150f57b5d1edaf153860e51459141d34bd38e5fc1ace8832249df9e096e6', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:23', '2022-04-15 15:03:23', '2023-04-15 15:03:23'),
('40fa676c779bbdda5dc4815b65b88414ac3b33227162e846ac2957dceb165033a6cf2186ad73daff', 1, 5, 'authToken', '[]', 0, '2022-05-05 17:01:51', '2022-05-05 17:01:51', '2023-05-05 17:01:51'),
('411c4ae7d97e8389d8cee8bb4907754a371196d63fc2d59e5e32001ac79aa8d00b795e6ea6a4609d', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:02:08', '2022-04-19 12:02:08', '2023-04-19 12:02:08'),
('413cb80477ec919b4aab55e3147bf25c01ea07c1a527514cb07990ec9e4f4c2565414bc219f4ea18', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:54:41', '2022-04-20 09:54:41', '2023-04-20 09:54:41'),
('41eb402129cb31f781a32e0bbb3bb70d3ae896998d2f72ab35152ff22d774f4e7ec05196996e6761', 11, 5, 'authToken', '[]', 0, '2022-05-03 20:02:00', '2022-05-03 20:02:00', '2023-05-03 20:02:00'),
('41f8d067ab255ea895bdf7fdf076c03219fe9ff5660bd13f233e73765883bd8cfce2103d75c484f8', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:53:37', '2022-04-29 15:53:37', '2023-04-29 15:53:37'),
('421778d4ee8c7e45e66e39c463b8fc4497abe68fbaf41ffc9f18bf8fa5ba46ba40f690deb1e096a3', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:40:01', '2022-04-20 09:40:01', '2023-04-20 09:40:01'),
('42c6e317cdd7598b013c9001be406dab617af1adda1f6db0969bd749434376f4e35647decd4f48fb', 9, 5, 'authToken', '[]', 0, '2022-05-03 11:11:42', '2022-05-03 11:11:42', '2023-05-03 11:11:42'),
('446171d6d8994df1e1cc063e1ccce51bebd250fdd49ed409ecc47bb0ffdfe500645eb4201f4f48c2', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:14', '2022-05-04 13:26:14', '2023-05-04 13:26:14'),
('44715d914c643b5b494ad550a8e35b0f775cd4c9d8fdf94437653ea8b14dbc3c0840c6cec93f528a', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:50', '2022-05-03 19:09:50', '2023-05-03 19:09:50'),
('44c23a8aaae0b160971118275715f2e10a011ad7a07aaf46d9d470b7b7fafb1f38ec92fc3e5ceb1e', 7, 5, 'authToken', '[]', 0, '2022-05-05 16:33:33', '2022-05-05 16:33:33', '2023-05-05 16:33:33'),
('44c8a27523414fa3b87106f264c537b29665c73ef44f6c7ebddf750a41a42998a267f344f51c9679', 7, 5, 'authToken', '[]', 0, '2022-05-05 16:39:37', '2022-05-05 16:39:37', '2023-05-05 16:39:37'),
('44f21fa8c774178d3afb86a2085ef78c2fa8ce33b5d830bca9c19544822fbc0643056c34ac7c01e4', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:44', '2022-04-26 12:58:44', '2023-04-26 12:58:44'),
('456497bdd95b860573eb78a939bff2b35768947ad181b60be4d0841bbd99dd6a5f271ccd96c1db6c', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:34:56', '2022-04-19 10:34:56', '2023-04-19 10:34:56'),
('4625013c2e91faf5a371baa92e8e1db09682f0dd4d9cb30c9e2649ab193c7a07c57debe525e16289', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:56', '2022-05-04 13:56:56', '2023-05-04 13:56:56'),
('46b3da2b9a9e04333a4c2937db481360eaef4c1e22f8b00c95e687b7527489316eb830188b5c51e7', 5, 5, 'authToken', '[]', 0, '2022-04-15 12:23:41', '2022-04-15 12:23:41', '2023-04-15 12:23:41'),
('46c28723bea278128e84c6c93cc5d967d4694cda2e3ba43925a597796f2a707283b16e4cc0ddfcaa', 1, 5, 'authToken', '[]', 0, '2022-05-05 16:04:41', '2022-05-05 16:04:41', '2023-05-05 16:04:41'),
('470722ceae1c37a7d0c643a5ed6b8f0beb779e7e85b63593c506c0c5c2c5203fac7b5f139e8d4d4b', 2, 5, 'authToken', '[]', 0, '2022-04-27 14:35:36', '2022-04-27 14:35:36', '2023-04-27 14:35:36'),
('479a52fdd7f147f4c73f17dcbd423c261da68bb19877493e051ea55101eb155096507eeac2d8cb4f', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:57:20', '2022-05-04 13:57:20', '2023-05-04 13:57:20'),
('47d15131b431418675410e83156a510ec2dbda97131b18a1a3b1f41ae3176a1158b9f74141398383', 11, 5, 'authToken', '[]', 0, '2022-05-03 18:36:46', '2022-05-03 18:36:46', '2023-05-03 18:36:46'),
('480f57a2f9564314bb0ee1cea50e7ac47989e22b147a93f8460870c61428750a9e00b434791f9902', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:52', '2022-05-04 13:56:52', '2023-05-04 13:56:52'),
('489832ff509e2ea30656d41ce6aa069c4767976c2cbbca4712f752cc44f3571b471625da95ce94d3', 7, 5, 'authToken', '[]', 0, '2022-05-04 17:16:40', '2022-05-04 17:16:40', '2023-05-04 17:16:40'),
('4972b2503bb617ef7ffb4ec7f8f9feca716f43742b1b92570430731b1a402ec1a0ac6aefb65085a6', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:40:58', '2022-04-20 09:40:58', '2023-04-20 09:40:58'),
('4a7d8c4c8e5da0079d6647cf20cdd73711bd5d5bffd189a2b150d1870c758512ea6c1f12d59b014c', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:24:31', '2022-04-19 12:24:31', '2023-04-19 12:24:31'),
('4a8434f8d0deb36f4fe3a5a8b1b8d829106aafce1065cc88208ae892993d6ff4ad54c63c13f4bd11', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('4aa98ce9623706616256074b7a3cfbf315e53182d87471021b94cc9f3ea202dcafef3f69ffc03246', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:35', '2022-04-20 15:17:35', '2023-04-20 15:17:35'),
('4c53194f6b1db6a727371a450fa888322d3f7ad483c2e3a5d05fcd34cfcf1b0063d6d85374989df3', 11, 5, 'authToken', '[]', 0, '2022-05-04 14:34:26', '2022-05-04 14:34:26', '2023-05-04 14:34:26'),
('4cb8858ef240bdb465dfe7ecd99ac588f995011cedb3bfc95f28427b13000ed3af8b7acb19fffad0', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:56:57', '2022-04-20 09:56:57', '2023-04-20 09:56:57'),
('4cba850180fa20e5dca589627c0daf3e50e5dc17635b78cc76935659bf03d60dffa4af6828f37f29', 11, 5, 'authToken', '[]', 0, '2022-05-04 12:25:59', '2022-05-04 12:25:59', '2023-05-04 12:25:59'),
('4d6d662645afc809344f6b23a00a5d50f0f7890f901e9017b6d61ec4e9103fa1841e93d03a0f9305', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:01:25', '2022-05-03 19:01:25', '2023-05-03 19:01:25'),
('4d7b2afd200edfd9c425c68657e14faa5bf2fcfdbee68aa0610e3e6c9de32f2dc578c5e8cfeac380', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:57:20', '2022-05-04 13:57:20', '2023-05-04 13:57:20'),
('4e10d77e67c6352984d08d0f75bd2f90f02e3cf249522f4fcf4b23c01c15111ef1c3631845ebefa4', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:45:43', '2022-04-29 15:45:43', '2023-04-29 15:45:43'),
('4fa46d1af0cdf5c348c6cdc222b464d707e1d9281d8a96bc71164d12b850e728d2af2766f901c2d2', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:53', '2022-05-04 13:56:53', '2023-05-04 13:56:53'),
('4fa606c82a49b8839d0445b55bbd444f60b44c37bc57d1774ae166c3b0558156af453602f17b8667', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:19:48', '2022-04-29 10:19:48', '2023-04-29 10:19:48'),
('505396246ed82876b490638ed12d3899e951f19b595fd09fa25171d3d9639bf16fd8d764e726ecb2', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:05', '2022-05-03 19:11:05', '2023-05-03 19:11:05'),
('50a28933a726177db6aee24e4c77642240cfbf82d6ccdc347987efe3d7a66de826edb7e8ff9b9b7d', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:23', '2022-04-26 12:59:23', '2023-04-26 12:59:23'),
('510459c8ec0b0f80bcfac375e60e0058d4d71215b2be18dc0712121f0665d4c0ea81d3aff00d5686', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:56:52', '2022-04-26 12:56:52', '2023-04-26 12:56:52'),
('54fc3a2bb20394a0c61d9592bc4986a70a46e78d87d018e61fd303238181823eb2b4d6e4953f7489', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:37', '2022-04-26 15:54:37', '2023-04-26 15:54:37'),
('55807ffe67155a5f3a573d3f8fbd733ed78a7b60a3884ad8dcf5564b6d734f39836888c3f5fbf9e1', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:53:18', '2022-04-20 09:53:18', '2023-04-20 09:53:18'),
('55a8b316c84d80e346aa2a51c4ef0c0b24805466184939d5cb40bf769b647dfc690a54d7622e75ad', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:06:45', '2022-05-03 19:06:45', '2023-05-03 19:06:45'),
('570e6bcf7db8fd20ffae6dcbe888896e51c0f22ebd1ca51ecb8d2ab14962e9859639a12abb9b0870', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:17', '2022-04-26 15:54:17', '2023-04-26 15:54:17'),
('576effbcbe51f2956c3d39611cccd3696c3dddbd4238727389de688df7aa2f934b1ae86688314e97', 2, 5, 'authToken', '[]', 0, '2022-04-27 10:01:58', '2022-04-27 10:01:58', '2023-04-27 10:01:58'),
('57ab35b001af1eb0d614d4c203cf6d958fa4f93eb53339068ea0a7830330dace96c393f0c408adc6', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:56:52', '2022-04-26 12:56:52', '2023-04-26 12:56:52'),
('5801245d09225792964ca4010b86569d24cf56a24b73dc1df6d44c50f61ef5dabf88faa8c0a5aa35', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:29', '2022-04-26 15:54:29', '2023-04-26 15:54:29'),
('580687623819c0ce95fde44ada7befff77e682bbdb2b6dd38744f7928ad674d539378a0655c63622', 7, 5, 'authToken', '[]', 0, '2022-04-29 16:52:44', '2022-04-29 16:52:44', '2023-04-29 16:52:44'),
('582570d460395cdb428204e089a0e74a772b939136a097877ed00ed71900519efb8561782b5ab8b3', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:52', '2022-05-04 13:56:52', '2023-05-04 13:56:52'),
('5911273b42182c55bcdb17a44081c9decd2865fc283f4e59c33cd30fefef8c80abaee7d39d8056d1', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:53', '2022-05-04 13:56:53', '2023-05-04 13:56:53'),
('599ef12184f07b920869b29bbca511326a5f54e46d40752862f343b0385a0023512f0ba15f20b0bc', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:53:40', '2022-04-19 10:53:40', '2023-04-19 10:53:40'),
('5a2c6ecfb8606e52d798a0fc9bd69546304ae543edd984a24c1c8b968c4f6ca812e9fb84639bfeae', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:32:36', '2022-04-20 14:32:36', '2023-04-20 14:32:36'),
('5a367aaa5a802ea82c491e1073505e20b4203ed748043b07449adfdeb01e9cf17d8fd80abe2fd015', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:12:46', '2022-05-03 19:12:46', '2023-05-03 19:12:46'),
('5a3918398f64b9f2f119f2b6b0bf2dd11727f4aa3e63b8e892fe50a6b47270ecf3c1ef7c88b494bd', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:46', '2022-05-03 19:09:46', '2023-05-03 19:09:46'),
('5aa8c23c129882641db9c8d15bc62d2e6f3059f8d0c29616c29356142228421170814a348a0e2b88', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:42:07', '2022-04-20 09:42:07', '2023-04-20 09:42:07'),
('5ba94c18c2aa2fa995dd57cc01284fe01656cd63ecbcec1e38339cc8a7bbf5b9335aaae595b19b5d', 11, 5, 'authToken', '[]', 0, '2022-05-04 14:10:30', '2022-05-04 14:10:30', '2023-05-04 14:10:30'),
('5bae58e2ca31415a9972625a44d06f4006c5d108f2221f457eff90bd8f788090c29564fcf6b1f39f', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:53', '2022-05-04 13:56:53', '2023-05-04 13:56:53'),
('5bca462a926bf90b49d74dfe0d4752448d3431a017f56ee79c41684e8cc036c28eb483a6548ed7c6', 5, 5, 'authToken', '[]', 0, '2022-04-19 13:03:39', '2022-04-19 13:03:39', '2023-04-19 13:03:39'),
('5c3c71f08eab37041cf72b614f10ee544a8faf3f467a94013e8d2ed851d7c4e59ef1743181f03d63', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:52', '2022-05-04 13:56:52', '2023-05-04 13:56:52'),
('5c7a5201500a4242f2e59895824ecd717c1c67e341f19185427515d01a2095f1beb6970722ef63d0', 1, 5, 'authToken', '[]', 0, '2022-04-12 16:16:35', '2022-04-12 16:16:35', '2023-04-12 16:16:35'),
('5d33c9343b59187edbcebee49580e1913086ec0b879d6131bb43eebd53340aa35416c6b604f80d4d', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:55:43', '2022-04-26 12:55:43', '2023-04-26 12:55:43'),
('5da9afa04b58f001cd8bf897bf0c898f2f4318c134adaa4030ed8c2baf956f8c48cab36832cfa681', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:29', '2022-04-20 15:17:29', '2023-04-20 15:17:29'),
('5de682c01f88c1647eb355fccfea4c39a61e8c4c0e1155e45f67e84bd35353107e3788f958e0832e', 2, 5, 'authToken', '[]', 0, '2022-04-27 14:44:50', '2022-04-27 14:44:50', '2023-04-27 14:44:50'),
('5dfee9af671b25f95c600e0b932019b0ea91723ddc5077898b58cae41b0d240c64ca63d1cd2fb6c0', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:52', '2022-05-04 13:56:52', '2023-05-04 13:56:52'),
('5e8e27486455747bd754e1544b82ad9275818af89570738e4e8b74cf5cdac8be7da4e8956b58b633', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:06:44', '2022-05-03 19:06:44', '2023-05-03 19:06:44'),
('5ee7bbee13099b8e5b575031ac01f9b928865acea366a6ffce998d9227ef81a8eeb897b26af2d979', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:18:14', '2022-04-29 10:18:14', '2023-04-29 10:18:14'),
('5f608ab6789d4a84adebfbc86e88c5cd4a1d0e56d52e264db1cc1d7da5e2a0ec75b61fe7581d2a7d', 11, 5, 'authToken', '[]', 0, '2022-05-04 12:25:36', '2022-05-04 12:25:36', '2023-05-04 12:25:36'),
('6032e3affa888ed3452fe7ad8f5351e5954ebb268927e6cd236f63c5b9d9a7f5f4aee6b0b734a9a4', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:45:28', '2022-04-29 15:45:28', '2023-04-29 15:45:28'),
('60ab5d5da8260f80325937af531485a2069c00946b4cfcf106b2de8de955d040b90f168920883cff', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:58', '2022-04-15 15:04:58', '2023-04-15 15:04:58'),
('60bb8becba63f7d27cd19690d5d8ed9da962342d86d884aa0d4bd6ff3cdd83f1ebc3bf0bde164cab', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:55:52', '2022-04-26 12:55:52', '2023-04-26 12:55:52'),
('61fcb46761dfd9c7f9e56c339c543ec332e43d8f4c09c354c254e13195d3924f92f4c1c1ccd21cae', 7, 5, 'authToken', '[]', 0, '2022-05-05 16:05:47', '2022-05-05 16:05:47', '2023-05-05 16:05:47'),
('6234f055b81517cba0b48be37df9b15f049629d52b7a1b1019569eca56e2bc3adffad28748950544', 11, 5, 'authToken', '[]', 0, '2022-05-04 10:23:30', '2022-05-04 10:23:30', '2023-05-04 10:23:30'),
('629cefc6296908c1a9f6c541db954071e91ff6476aa445b570df4d6a227bd664b5c3f9fae5d41a8a', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:54', '2022-05-04 13:56:54', '2023-05-04 13:56:54'),
('62e4d01f0affc5a317204cfec72d1c25f9148cf8a41db533e3e5ead04d077dd921bdb35a13140ea5', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:55:26', '2022-04-26 15:55:26', '2023-04-26 15:55:26'),
('631aa5abf9ae3dc981a13ee76e98c374306421983c2b68ad691088352fea1357567b2e1d9e4ec73d', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:10:27', '2022-04-19 11:10:27', '2023-04-19 11:10:27'),
('6328d3ccac0056598a1616d05008cbdfa2c1b0d23c8a6b1a8757608704ed6383a7061a44434fd8ae', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:47:42', '2022-04-19 10:47:42', '2023-04-19 10:47:42'),
('63510933ee4663aaf6e6a99360146498685f525939123400a5307b5f4ab75ace70e31de0270db3b0', 7, 5, 'authToken', '[]', 0, '2022-05-04 16:30:20', '2022-05-04 16:30:20', '2023-05-04 16:30:20'),
('64139a21d175290949a400e2c6c698a8bc3f8923353a09ca8e8d57090f8234c45086a412fd5270f8', 11, 5, 'authToken', '[]', 0, '2022-05-03 20:00:42', '2022-05-03 20:00:42', '2023-05-03 20:00:42'),
('6493f7d0ae993ec71be6199223345b991d941deec50c093f9a373f0857482d37a7273f69b694b18e', 2, 5, 'authToken', '[]', 0, '2022-04-27 15:33:44', '2022-04-27 15:33:44', '2023-04-27 15:33:44'),
('658e3ed5288f087babb948f802151283bb9018ece5fa75169ed5d72fc1024dcaeb4ff6da0dbe5390', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:49:46', '2022-04-19 10:49:46', '2023-04-19 10:49:46'),
('659e3083a0471b6521a4246905fe5a59d70507cc0cdfbec2306f9076c26a52fec1bc8e2894f7e65b', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('65a0c3a82a3f6e921a05679a19d339af189595c717ed70917357074c7ee02e3f8bb7f40758ca506f', 11, 5, 'authToken', '[]', 0, '2022-05-04 12:25:00', '2022-05-04 12:25:00', '2023-05-04 12:25:00'),
('65d35913de906f0cc8f9c17d55a75ca119e3a9a9674a465522d8b399532a9a439cd883e0a71f0ece', 64, 5, 'authToken', '[]', 0, '2022-04-20 12:52:58', '2022-04-20 12:52:58', '2023-04-20 12:52:58'),
('65ff70ccf43338c124d6c1425153e172c2d7b01e9c4e0cd46d7de6e7fffa1c98ffb6b76cc2c63540', 11, 5, 'authToken', '[]', 0, '2022-05-04 17:24:33', '2022-05-04 17:24:33', '2023-05-04 17:24:33'),
('66244ab13d39ad00504b7ef911429e7775605da0b9f74f165109be066a816b6737509f11c3b7ca9b', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:50', '2022-05-04 13:56:50', '2023-05-04 13:56:50'),
('663f3faf5f2133ca5667e59032ba31f12a6f427fc213e439f0db1c2cb6a09ce9ee8d198c411be74e', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:52:46', '2022-04-29 15:52:46', '2023-04-29 15:52:46'),
('6646ee31b5c6f86badfdc728061cf1e71b7621b1672137f711ed0e653773dae212a644ceaf378ec4', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:41:44', '2022-04-20 09:41:44', '2023-04-20 09:41:44'),
('665845aef8010ee7a16dfec52ac8479aad4b78e59508cf4d7b408904a66ca06abe38a57ba717be3d', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:31:21', '2022-04-20 14:31:21', '2023-04-20 14:31:21'),
('66678d56ef6c5b819ce7acbaaf7a34bd06074c38c15487a2bf198c31850517cf35ea580561d4dff3', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('66b1ade5d3a320e9d37f0a1b68bb0729a550084565a2d657f2f44d8d905597c943ab98d6e571ee72', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:52:58', '2022-04-29 15:52:58', '2023-04-29 15:52:58'),
('672a86bf1266f22ebdc0f285db568e65f8f8165bafb83652b5652a88ff46ff86e360216141428967', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:19:04', '2022-04-29 10:19:04', '2023-04-29 10:19:04'),
('676e45e28e148c6606221ae2b0d9d6cdd64080b8c3cd4d6d7c8a0728205178c8b90cb28e75b01dbc', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:33:05', '2022-04-20 14:33:05', '2023-04-20 14:33:05'),
('67af7f966f6db7dcd6695480b476ab07ba6be53632f7fd5cedaebcc1203227bc3d3d6399598c4d11', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:56:35', '2022-04-20 09:56:35', '2023-04-20 09:56:35'),
('687fd8311515b9298555cba5d6b03ad3944700b05eb9e3d5bb8fd88198457e7dfa9900cc35c33b7e', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:18', '2022-04-26 15:54:18', '2023-04-26 15:54:18'),
('68d01e5dcaae3b32f0d05386385c08a299431bf60da958e48c07df444f5c2cc2b03bc5e9fc9c510c', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:20', '2022-04-15 15:04:20', '2023-04-15 15:04:20'),
('698966c87d710b6413b3890abd9903530bca54343afd2d4d0ec94977c08a990fd41ea06c09a21f73', 2, 5, 'authToken', '[]', 0, '2022-04-27 17:07:49', '2022-04-27 17:07:49', '2023-04-27 17:07:49'),
('6997096da31993a6eaa1e3242f62ccc96783d8cbac96fee0dc36cbb3da6429a1aefb211c2c711464', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:43', '2022-04-26 12:58:43', '2023-04-26 12:58:43'),
('69cd11887f1afb75bf17bc3c3a48fa7031a1e9aba4cfdd8ced7cf67120787f5a19a4ace6919300e4', 5, 5, 'authToken', '[]', 0, '2022-04-19 13:05:57', '2022-04-19 13:05:57', '2023-04-19 13:05:57'),
('6a56fceffbe8c6dbf287528a8bfb4222ae417acc8d1ba2b5e29f6f1792996a0240188c8996e0bb6e', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:00:18', '2022-04-19 11:00:18', '2023-04-19 11:00:18'),
('6aa1e7c2d5f176ade97dc2ec2a1945c223b1524526eaa1bb20d059894deeb614754bbdbbf6290315', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:17:26', '2022-05-03 19:17:26', '2023-05-03 19:17:26'),
('6b2ddb2b341a46f4b31439fa05acf651b5234887c891a7a0e44864ba2e5c20c25f17679770e2d8f1', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:17:26', '2022-05-03 19:17:26', '2023-05-03 19:17:26'),
('6c3998790700c84bb3ed929b929603e62ca6a372a9d64b28923bfa4a836dfbee67d3beebcd33b3b5', 11, 5, 'authToken', '[]', 0, '2022-05-06 16:29:14', '2022-05-06 16:29:14', '2023-05-06 16:29:14'),
('6ccb8b83ae66b733a114df13da0d3c572176704c60ba4b3014b72e9bc7e4d075142c9b92f9ed0665', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:42:06', '2022-04-20 09:42:06', '2023-04-20 09:42:06'),
('6d2da2e2ab29e69b12725935fc63b368216ec4625f94cc0c771df5389bd1ac2d6bc286bbf1194648', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:54', '2022-05-04 13:56:54', '2023-05-04 13:56:54'),
('6d6d0f6741cb5d8ca0aa3a29a8d0d75922932497aadbe06792e078f0f0120612088a58b79295a9f5', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:55:56', '2022-04-26 12:55:56', '2023-04-26 12:55:56'),
('6e0c1e669ddb51f35bf0329b4a6e267d5dd3e0954e5a1f4a8dd5c0adaf6b51caab8e7bf326529873', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:52', '2022-04-15 15:04:52', '2023-04-15 15:04:52'),
('6e10f91e5d55f707883eb16d0a113b8170596c02469b114c3ecc3c009648bd077d479bc6bf7039a5', 7, 5, 'authToken', '[]', 0, '2022-05-05 15:56:26', '2022-05-05 15:56:26', '2023-05-05 15:56:26'),
('6e212d94dc386a4a63f10d3cf172c2172c3e33244f508f6f9937ff50901360cc8b703f59c1cbc559', 8, 5, 'authToken', '[]', 0, '2022-05-03 11:05:41', '2022-05-03 11:05:41', '2023-05-03 11:05:41'),
('6e9c71d00296cbe17b3f33fd15db45406d1b57091202c0808a0419a4c5177b6a4a5db3a243aa76a9', 2, 5, 'authToken', '[]', 0, '2022-04-26 13:00:36', '2022-04-26 13:00:36', '2023-04-26 13:00:36'),
('6fbbea3586992b639e5d930e4d8e8740b1f0c8afcf10ba70f24b5b029ac93f426ab5fae326055c1b', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:35:25', '2022-05-03 19:35:25', '2023-05-03 19:35:25'),
('6fbff61b13c3611d7b2e05aa838619ea6df4014a0587d4b999cd2dff12cca0ea9fdc0a05ab8b9cf9', 1, 5, 'authToken', '[]', 0, '2022-04-13 17:40:58', '2022-04-13 17:40:58', '2023-04-13 17:40:58'),
('6ff719400bc49d6ff8447c9cac4d554b21bda56a93ee6e6e4d3223c0e8dc49301a698566c264c9d4', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:28', '2022-04-26 15:54:28', '2023-04-26 15:54:28'),
('70fe8d500353320eec21ca8fef643364af7dbd35ac255830d925adec715f29f57e6fbe2a4af56582', 11, 5, 'authToken', '[]', 0, '2022-05-04 10:43:21', '2022-05-04 10:43:21', '2023-05-04 10:43:21'),
('711766a267070999e82ca1aadbcea069b47da146e953ccf94f98351bfb5b74a97dd1c1ec771eca3b', 7, 5, 'authToken', '[]', 0, '2022-04-29 16:54:14', '2022-04-29 16:54:14', '2023-04-29 16:54:14'),
('71353ef1d89bd9dc2060e52e37a0c0c0d1084ff666297a41a506016db0ee864e7f8175ba5555f1fe', 7, 5, 'authToken', '[]', 0, '2022-05-05 15:04:03', '2022-05-05 15:04:03', '2023-05-05 15:04:03'),
('71d69f5f14fd0a4827c124cce370cb15dfe952b90e01c301273b7d937745d0b488d68aae9f8e9c26', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:28:38', '2022-04-20 14:28:38', '2023-04-20 14:28:38'),
('71e61f694ae1337fca9312c90f6bde9cb16387c34d303feac04b4bce3392535977c217481c3d19df', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:21:41', '2022-05-03 19:21:41', '2023-05-03 19:21:41'),
('72176f881d232747e4e297b6c45abd6dbf325b41fb1d8f2171cd26f74251b318a54b5b9ef372732f', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:21:29', '2022-05-03 19:21:29', '2023-05-03 19:21:29'),
('733d23413e5738551cc6c74a5ac89ba8556c7cd66058746c141c06a6808f3d2d7c52976eed44f5ea', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:23', '2022-04-20 15:17:23', '2023-04-20 15:17:23'),
('7383cc467ff3d5d2e48aac7e49f9421fdcdccdd8dc22fce01a8134a22c92b7c5223367ceca8dd4b3', 5, 5, 'authToken', '[]', 0, '2022-04-19 13:06:22', '2022-04-19 13:06:22', '2023-04-19 13:06:22'),
('741f228b0cec9b7551fb607ba843c49ee66ae285a6ea312b5e936de18a2d4a994bc39b8855f17518', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:31:43', '2022-04-20 14:31:43', '2023-04-20 14:31:43'),
('744704e537ec7050f0dbb74d2946da2d0b8ad6f93b1ac6e5dfb81b083537ff31f3b5461937e1ed33', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:54', '2022-05-04 13:56:54', '2023-05-04 13:56:54'),
('7544fc03129fea942875a9d0849250175e9a2a072344ef2fa8da6d5e264af8b628588b0f4941da2c', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:56', '2022-05-04 13:56:56', '2023-05-04 13:56:56'),
('75f0abdff7eee02c315d622dc136211e663cf47158288d09ee6a9e0fd629765c52e906d1ae5a0389', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('75fbcc40b9752e39262f3ded574762072ed66a03c17ca88c1cc447aec1df86d25ee3b97138ef5e70', 11, 5, 'authToken', '[]', 0, '2022-05-03 18:17:34', '2022-05-03 18:17:34', '2023-05-03 18:17:34'),
('762bd7c68c0585c5b5eb48a82549603a68e01ef5b5fe89e4573d5618f5612c363f5ef21fe4a98203', 11, 5, 'authToken', '[]', 0, '2022-05-04 14:32:00', '2022-05-04 14:32:00', '2023-05-04 14:32:00'),
('7663bb8fa55a9105a02a49d0231aebd01f0aebdf6aa4de3574bc6f2f60e1f8855e345b4cf1cdab4b', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:18:46', '2022-04-29 10:18:46', '2023-04-29 10:18:46'),
('76b4100c3a94de0bd0277ce00c1847441a99913f5a9cb3cbf8b1e176d6f4a4441e53648dbfd5e38d', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:19:30', '2022-05-03 19:19:30', '2023-05-03 19:19:30'),
('7741ed6eec7b76d3a349d9451d790369264f728e6e3704686f107977889b921dd152dccf003dbc92', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:55:13', '2022-04-26 15:55:13', '2023-04-26 15:55:13'),
('77a4c257def42113fb070acabb42aa6fccdf101f38de3b41a131a0ca4234c7b97ed27366731c3f9b', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:23', '2022-04-15 15:03:23', '2023-04-15 15:03:23'),
('78e7f33686998aa1245134a99ed3547a38f38a00f84087475c61b344b9c7efa6c35d75c2c6fd3534', 2, 5, 'authToken', '[]', 0, '2022-04-29 11:32:23', '2022-04-29 11:32:23', '2023-04-29 11:32:23'),
('79729dd9b7449f4bd9be657523c38860025113a4f0873c2447b362aec0f389a69187ffc308d4bcfd', 2, 5, 'authToken', '[]', 0, '2022-04-29 15:21:54', '2022-04-29 15:21:54', '2023-04-29 15:21:54'),
('79902b10344e2a37bddaf36e001383b3d633ba21cca3cb6e4faf545ae5a5ba1e3779e77aaefea030', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:10', '2022-04-26 12:59:10', '2023-04-26 12:59:10'),
('79bada74a22a84c5504d511c26c9b2847e11f8e14fbce3be1f0d43fe16483307f46831e9d1d46d45', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:14', '2022-05-04 13:26:14', '2023-05-04 13:26:14'),
('79de0e9e4eb4d95e2f46ac56381f580032e171df02062da7c98e1d95ab65efac9a29f9bdfa358ef3', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:07', '2022-04-15 15:03:07', '2023-04-15 15:03:07'),
('79e8c04c4ebf0d182bc08683fe6607744c03c464c4048db2dd3ef2b44d78f4286c7d4190e61c6b54', 2, 5, 'authToken', '[]', 0, '2022-04-29 13:46:45', '2022-04-29 13:46:45', '2023-04-29 13:46:45'),
('7a2489aac691648962ee15277ed33016cc223d270553f358e0bb5726a220fa86da6143558bf42fb3', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:05', '2022-05-03 19:11:05', '2023-05-03 19:11:05');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7ab14ab33f99439b89994884e6718a0a06ecd9573d84f2755f2cd2ba49f41a239a775656cec6f4cc', 7, 5, 'authToken', '[]', 0, '2022-05-05 16:33:13', '2022-05-05 16:33:13', '2023-05-05 16:33:13'),
('7aeebdab26a07d5970c4f081ac26691fa69debb3df1883490521f0fe801968e08e17e36f93861a29', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:43:22', '2022-04-29 15:43:22', '2023-04-29 15:43:22'),
('7b0143d42a3cd842f20753052a0f1fa60a8d18828a7198d46dcdf09718cdc20f82e0bc3ed41e4867', 7, 5, 'authToken', '[]', 0, '2022-04-29 17:58:28', '2022-04-29 17:58:28', '2023-04-29 17:58:28'),
('7b71d0be12308b4285140cd3e756fe0f0d2cae99daf7ccf78fb2d4787271172bcecfe77b064e18b3', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:13:08', '2022-05-03 19:13:08', '2023-05-03 19:13:08'),
('7c4207cd9cb2252655456aca731daf9a2fe26ab872671a897db375504b6490104e94943c961ba5bc', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:41', '2022-04-26 12:59:41', '2023-04-26 12:59:41'),
('7cc75b3e48db5b09289aaf3e2deb93a502f8f91aad2467f9f022dea18bdd1b373c9bc865f97d34db', 7, 5, 'authToken', '[]', 0, '2022-04-29 16:53:49', '2022-04-29 16:53:49', '2023-04-29 16:53:49'),
('7d4336cb90775f8ca5835b72e2952eb8cdf73ae2e64dfd819686914dd9cf8243681519316e27f7fb', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:42:06', '2022-04-20 09:42:06', '2023-04-20 09:42:06'),
('7d56192771c28abb866fd4682bc8f59abee7ef0dbc5f7ad296c676df94b943a7c3a57a58757a65c4', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:53', '2022-05-04 13:56:53', '2023-05-04 13:56:53'),
('7d724fa322306bbc5b7dedaf23c7e3233ebc9ba624ab10a0743b6db524c904c3421f7dd27b9b2053', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:52:57', '2022-04-26 15:52:57', '2023-04-26 15:52:57'),
('7d8509e6a0a60404df61708c37bb995f1370dcca9f5af2cdb134238951da8b68bb716c23d3c36a86', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:55:16', '2022-04-26 15:55:16', '2023-04-26 15:55:16'),
('7da36836a562f9759e32186b489b4ce2106a72ddc11352c99312e2a909dbdb0c500363fc4636472e', 11, 5, 'authToken', '[]', 0, '2022-05-04 12:25:36', '2022-05-04 12:25:36', '2023-05-04 12:25:36'),
('7ddf23ab204d03a1d79e3be1f7f5b85c017cc1709e84b6538212ffe459a93a38386af8cdd7c650b4', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:53', '2022-05-04 13:56:53', '2023-05-04 13:56:53'),
('7dea9310ff867e82f97c9551923d9f84aab4e3ba44512623fdf2db49576d489f3705099a80995b55', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:56:53', '2022-04-26 12:56:53', '2023-04-26 12:56:53'),
('7dedb6361ea22b98e9f0f5814397e2799c356c4d3f7b6f355032d47e66dda0fec457ba4af82f4f0a', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:42:04', '2022-04-20 09:42:04', '2023-04-20 09:42:04'),
('7e7db5e360fb77cf580010e21ac4991dc158d5bbb952add75fe4fc82dd73dfe6159a45d215de10be', 2, 5, 'authToken', '[]', 0, '2022-04-27 15:38:21', '2022-04-27 15:38:21', '2023-04-27 15:38:21'),
('7e859963fbd91ed338d4c8f5e543df2226f59ed7cc98d4e3c180f5c25db0eeff9f8694fafd59908c', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:44', '2022-04-26 12:58:44', '2023-04-26 12:58:44'),
('7ec560271c5bbefa01963e08e69164210822384bcfcb09c5170f51c65cea4332bbfead754f7b592a', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:33', '2022-04-20 15:17:33', '2023-04-20 15:17:33'),
('7ec8760d7c05c184552aa5bc09512890b642ead6f68909df9ae7853a239e641c09d0fdd427866fc7', 1, 5, 'authToken', '[]', 0, '2022-05-05 16:02:21', '2022-05-05 16:02:21', '2023-05-05 16:02:21'),
('7f1936538e5076c2c62a3ef8213fbab89e1922c6d6ef369ec7ab37c1d53fb43118558dd3442c20bf', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:55:51', '2022-04-26 12:55:51', '2023-04-26 12:55:51'),
('8169bed37fa4d00957fd58f09ed1863f9a6211535e08af4b1fcb68a95aee4c5fb2ce5a68039ca19c', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:12', '2022-05-04 13:26:12', '2023-05-04 13:26:12'),
('8175f83ff3184d83195d280a9333918e259a23655798625661b232409aecbbec956b3769ad39e6ca', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:57', '2022-05-03 19:11:57', '2023-05-03 19:11:57'),
('82907dece206bd72e2a23ab150e514f23751ca841372dfbb74c4a548cf715b684cc66c3dfadbf4f5', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:54:23', '2022-04-26 12:54:23', '2023-04-26 12:54:23'),
('829ca4b5b32e28196ac5ae5c4b69ae348444ed9f3d2fcbb552e729bf3517695235e548f4d0c62fff', 7, 5, 'authToken', '[]', 0, '2022-04-29 18:20:58', '2022-04-29 18:20:58', '2023-04-29 18:20:58'),
('838c99f9e4eee0dffb72b2b4ee4d86336473f7ed125397aedc5f7eaf946303d370a5018020fed417', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:20:19', '2022-04-20 15:20:19', '2023-04-20 15:20:19'),
('838d7fa06640f739eb6958ce08e65545b9b01db6a4ba5453e903fe6183b28e41dd373174b03a0a69', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:24:28', '2022-04-19 12:24:28', '2023-04-19 12:24:28'),
('83c2896aeb1f68cc1f889d34910a1a0e7bcedae2b4ba7082df8503c59f868b4fe2721c587fd42d1a', 2, 5, 'authToken', '[]', 0, '2022-04-27 12:33:02', '2022-04-27 12:33:02', '2023-04-27 12:33:02'),
('83f8bc84ddac56c3df5d36f710fa8d6c56cdc2474e2591cc6e2e1a00030edba707a239004e686699', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:20:21', '2022-05-03 19:20:21', '2023-05-03 19:20:21'),
('846cdff4fea26e37d51e7791bbb415d82b86668ed63d6ecf1257f37796776e9967b18dc7664cd31e', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:20:08', '2022-05-03 19:20:08', '2023-05-03 19:20:08'),
('8535ba08ec8ee3ffc62e507bfebaa966fe4f33d9de1511fee628661431bc35ee97cf3b09735d071f', 17, 5, 'authToken', '[]', 0, '2022-04-21 14:34:35', '2022-04-21 14:34:35', '2023-04-21 14:34:35'),
('859b0882a1cda411b2e38f8d468aa8486315904737e56efa4ec4d321c06512b91966df13b4b9c119', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:20:21', '2022-05-03 19:20:21', '2023-05-03 19:20:21'),
('85d0b6b68e5765a1bb377faf8c1671af1422d923bd67e139933cfe870c89dcc0a6c549d257e535a4', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('8639c1275bdbe81044ddf19d214f7cf3ae19899239a69904d826dfe56328034467b3a852af41c36e', 63, 5, 'authToken', '[]', 0, '2022-04-20 12:52:12', '2022-04-20 12:52:12', '2023-04-20 12:52:12'),
('86775b52333992976aa350b827a19eeab3b54cdd6525a5a76f6264cf9b1f7af3d0f7a0df45e157ef', 11, 5, 'authToken', '[]', 0, '2022-05-04 12:25:59', '2022-05-04 12:25:59', '2023-05-04 12:25:59'),
('86a6e1f43bc380e4bfa2cb20f6c71007eeebcb9b0f2272fa2659d470371cd2c75fa80114f7bf2e44', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:34:09', '2022-04-19 10:34:09', '2023-04-19 10:34:09'),
('8750541285ac3bf785a7ccba62cce7a9633a8980be42e734bb746c495f6c2b7702d3cba7de87ad00', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:45', '2022-04-26 12:58:45', '2023-04-26 12:58:45'),
('87737737559e73be8a88e46e53aa0a85e1458affe328283458699afbca0f704c5836230b6465369e', 11, 5, 'authToken', '[]', 0, '2022-05-04 14:10:30', '2022-05-04 14:10:30', '2023-05-04 14:10:30'),
('880b5d5fc86723f5bac17877ab86fcc870a402eab42a1e51bf213733cf6aefcf5169bc814ba8fba8', 2, 5, 'authToken', '[]', 0, '2022-04-29 15:16:20', '2022-04-29 15:16:20', '2023-04-29 15:16:20'),
('88b04f2a435ce2ce5c3e8a3c3aa18f39282bbb3d11dccb7b63f454974d72dd46ec96a4facadce0d0', 2, 5, 'authToken', '[]', 0, '2022-04-29 15:14:51', '2022-04-29 15:14:51', '2023-04-29 15:14:51'),
('895acd090abfd5852522b7ef8d00e9f3ff78808ecad92e5a46b4e749cb87f9c178e2b6f0b5ba6b50', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:34', '2022-04-20 15:17:34', '2023-04-20 15:17:34'),
('89fb056829aa69fc020552d5d9f04727927913f97a6ecf0d4e920183c505a96f20aaf4c0995a3f37', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:54', '2022-05-04 13:56:54', '2023-05-04 13:56:54'),
('8aecdb31a40e6014c51cce34f0b368c5ea9bf0abff8e653384a3d680816a54b23fb5b06285ca2cc7', 7, 5, 'authToken', '[]', 0, '2022-05-04 12:13:04', '2022-05-04 12:13:04', '2023-05-04 12:13:04'),
('8c0ff1459c3ad15adbad72d0d619a3814a656aadff39365664ef615293f22e11dd0191db29ce26d7', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:34', '2022-05-03 19:11:34', '2023-05-03 19:11:34'),
('8c83577b2fac9117d5b3bdda7f6da59a79f30d103bf5636c82b844d28e207a5b8b11170139e41d4e', 7, 5, 'authToken', '[]', 0, '2022-04-29 17:41:58', '2022-04-29 17:41:58', '2023-04-29 17:41:58'),
('8d0b92936e76bcf7c1b6583f413452c6752c51eeaa2107398c3c082557e69839c1ee570ea54222a4', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:53', '2022-05-04 13:56:53', '2023-05-04 13:56:53'),
('8db4e19ac99d1526d26c091efd2a573d4c0fa053a9e954c14bc0dd13fe1ac42f57d7c6a265a896ad', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:12', '2022-04-15 15:04:12', '2023-04-15 15:04:12'),
('8dd8096a910726e93f442ab3211abdadd6e306b79c14c3b5148766de232d856ac92f7330287c78a3', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:56:07', '2022-04-20 09:56:07', '2023-04-20 09:56:07'),
('90beac3df1b2796809563a8aee909574b293f1758c5a66e419dbd408c51c1eae7d05f5f0ee92e229', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:04:16', '2022-05-03 19:04:16', '2023-05-03 19:04:16'),
('915dca16d14369acc521fff992381b5fe6be0fe3f9253e6ee9f3198d5612e09bbbc1578fda32221e', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:57:21', '2022-05-04 13:57:21', '2023-05-04 13:57:21'),
('92588a7e37d39b75d8b869b98aac73f4b4e2e4eccd283a853b3634b5b538a41afb0f3ab3afa93c36', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:43', '2022-04-26 12:58:43', '2023-04-26 12:58:43'),
('92978ed74d63128a33ec296d6c6c16cf1ea33bbc92325fc258b8c46c83d598554a48c6739e434464', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:56', '2022-05-03 19:11:56', '2023-05-03 19:11:56'),
('931604c993b05c91829cfdd828a59ca1fc79837d0edf1e1b1c8e4d9d5f1169736ab0a82f44df3a2a', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:53', '2022-04-26 12:59:53', '2023-04-26 12:59:53'),
('9347af4972c31bddf70aee33c66615aafd581ac4148913897ff0b2669d4253ac916bc186b2dc431a', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:17', '2022-04-15 15:04:17', '2023-04-15 15:04:17'),
('953e1aa9966714e4336d3d065fca03e5dad6037313a557fce12383049bdd055f13ad1236a12ffae0', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:47', '2022-04-15 15:03:47', '2023-04-15 15:03:47'),
('95ebcf7e893c185b913d981b5375c116af232b1afd1c3647734aab8bf94eac4b794ee4643bc49b5c', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:34:06', '2022-04-19 10:34:06', '2023-04-19 10:34:06'),
('96216f499ca7133076ddccbf58b970621e1d80669bed1a0bbed3ba9000711510a3ef876c900a35c3', 7, 5, 'authToken', '[]', 0, '2022-05-04 09:32:27', '2022-05-04 09:32:27', '2023-05-04 09:32:27'),
('96a5e8fce8cc7d7f8299f9a93272d3c6f3f262d28a4ef2ebd8035b7d404036bd58ecc6c2815ca8ec', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:06', '2022-04-15 15:03:06', '2023-04-15 15:03:06'),
('972925c63a0e8a8dec93a825bb40610bc47545019e56da0eeb41bd5ae1fe74020ee826a14d8e77d5', 5, 5, 'authToken', '[]', 0, '2022-04-19 16:40:46', '2022-04-19 16:40:46', '2023-04-19 16:40:46'),
('9732bac86d072232eaa8543e743b05760283819cb39a00787da3eec420dc48ea72bad41c5b2a697b', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('977094990aec522b1a356ce4415521047da9d97d64b88876b1b530d50f2d0febbe9a0505e0d369d2', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:04:38', '2022-04-19 10:04:38', '2023-04-19 10:04:38'),
('97b7d8e99d8de8fc3c3c07c28b97b2d60fd77e941a6c72b3f222ed053400bc17b75af41c92dc732d', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:50:56', '2022-04-19 10:50:56', '2023-04-19 10:50:56'),
('97eece04d7d9777ae8c3d8d23ed4bd46c615dc339c21875658addbb732fda3004e4a5b51103c318d', 7, 5, 'authToken', '[]', 0, '2022-04-29 16:46:30', '2022-04-29 16:46:30', '2023-04-29 16:46:30'),
('9830e9636dcabd7f8ca657958e06ac85c59a8901252126f6f0beb2452207e4f3f9480bc86cc5ccfc', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:13:21', '2022-05-03 19:13:21', '2023-05-03 19:13:21'),
('984a4e89de81ce581b4c66ea9077d71f0ff2f695f57e70b8baf93d32c82e244ce0c2ecf8da5b30e9', 1, 5, 'authToken', '[]', 0, '2022-05-05 16:02:09', '2022-05-05 16:02:09', '2023-05-05 16:02:09'),
('992c4bcec3f602799cded4bc55459a9187c426f8b9ac9cce20d21965e6b8af7717383ccfc91ddfd5', 5, 5, 'authToken', '[]', 0, '2022-04-15 13:41:07', '2022-04-15 13:41:07', '2023-04-15 13:41:07'),
('9933671b5e0852317e7dee8434f50de3f159c76d0f12a003da67b92da638d774b8e23d8caffdf87c', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:29', '2022-04-20 15:17:29', '2023-04-20 15:17:29'),
('993f301a4b2b97b80d6b59cb87ef182b0f3b059104cc7e7592c91b4271698869e888301c0fc2db43', 5, 5, 'authToken', '[]', 0, '2022-04-15 12:19:35', '2022-04-15 12:19:35', '2023-04-15 12:19:35'),
('99780b072b0d6d30a1aa2ce2fcf1650e6489f12b14cae85691527fe6091a5a56503c7726a7e1d9b4', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:10:00', '2022-05-03 19:10:00', '2023-05-03 19:10:00'),
('99ed31eb8975ccf70c53a8266a2899bdc99d4de836a58bdbd371343f052ecc54b0c815aa86b6c003', 5, 5, 'authToken', '[]', 0, '2022-04-15 12:31:55', '2022-04-15 12:31:55', '2023-04-15 12:31:55'),
('9b92af43717582d42d9e789f958d1fb748863fdd24894659ec089cf348a07e1d3507ed4f834519cd', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:56:51', '2022-04-26 12:56:51', '2023-04-26 12:56:51'),
('9bf6fadbfa4b25003f6c66e9ede494557a8fb36f648b9ebecc80df0724eb356350f017578ba74ce6', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:10:43', '2022-05-03 19:10:43', '2023-05-03 19:10:43'),
('9c1f3eb2fcd38f8ff07770a907bed2b8cbbba5a5eb17986c917a5db75c4e1d43de5ac0c8f2b8469d', 1, 5, 'authToken', '[]', 0, '2022-05-05 16:04:51', '2022-05-05 16:04:51', '2023-05-05 16:04:51'),
('9c2faadc297c3ff789400b91166fc9dd8e952c9e1f4ff5c3a43d43ce669e4f13d36375d87d3c5288', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:57:03', '2022-04-26 12:57:03', '2023-04-26 12:57:03'),
('9cf8adc2458adcdea3254b96adc6787f73df64725c865e83f4edc884a851e20f3cbc2e8faa14061c', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:35:59', '2022-05-03 19:35:59', '2023-05-03 19:35:59'),
('9d022635b985b5db25b4313e07fb4152745b56c26fd48937859535f5e5def5e349ee37dd43a439c2', 1, 5, 'authToken', '[]', 0, '2022-05-05 16:02:11', '2022-05-05 16:02:11', '2023-05-05 16:02:11'),
('9d14d9f4322dd8856b3aaaf7cb98a549b69bccd46edb6ba72019bd7cc898dc1b3b6e5340de355843', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:42:05', '2022-04-20 09:42:05', '2023-04-20 09:42:05'),
('9e60a0eb80fdd8e91ab84025b4ef261ebd3b2259147572de109c8ac984c964cf230279e5b1926da5', 2, 5, 'authToken', '[]', 0, '2022-04-27 10:01:41', '2022-04-27 10:01:41', '2023-04-27 10:01:41'),
('9ec2ece09ee94e1db3c58e30e2fa61ea6a888e46d7a3fcb19da8559facd8c2dfcb171890f8d1be96', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:51', '2022-05-03 19:09:51', '2023-05-03 19:09:51'),
('9f51366c87843630864d4c87606a49aa3a0eb0522d72670bc76abeb7027db01fbdc5f7c1304bb4ad', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:50:46', '2022-04-19 10:50:46', '2023-04-19 10:50:46'),
('9f8cb1c7ede89cb8d7d6ae95f1763338bcba0e7f148f8529eb279f8a21e9673aaa38eefb253c704c', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:17:10', '2022-05-03 19:17:10', '2023-05-03 19:17:10'),
('9f9d623b95d6b7c4f96b331b7f66c11c969010e99d1efdee4efc7d899da13bbb2c943ea5b82fc722', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:05:29', '2022-04-19 11:05:29', '2023-04-19 11:05:29'),
('a001673ee91b8b12dd945e5c2fee8eb5ba14bc93b59681bb79cc5058f97bcaea4bd8e9c0b9c5ec17', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:53', '2022-05-04 13:56:53', '2023-05-04 13:56:53'),
('a12ce427fae449bcf5e7d5da31b3d0078c43107703535264bbaf3b8e3b5c4496b13103738921bcb7', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:24:37', '2022-04-29 10:24:37', '2023-04-29 10:24:37'),
('a144d756daedc17f84252724a98b7cda9998b841ede4041c6fcfdcac90c896b00e9e99ee41325922', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:56:20', '2022-04-26 15:56:20', '2023-04-26 15:56:20'),
('a14bcdd5252a9c8ec11ca735bb863c544262096291d3617fbfae30ec68cc205e4912c288d0dda873', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:33:57', '2022-04-19 10:33:57', '2023-04-19 10:33:57'),
('a174efe9a65a58ed666ae757a24bbfdf3d8a98640e3f9d8cef9716cba759407d2777a474b8af13e0', 2, 5, 'authToken', '[]', 0, '2022-04-27 14:27:37', '2022-04-27 14:27:37', '2023-04-27 14:27:37'),
('a1b69505f762e32433703b2bf4e5d7e4a8f0da38e6c4492c499775563ca0603be233a301d6482d82', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:32:34', '2022-05-03 19:32:34', '2023-05-03 19:32:34'),
('a22cf39e9b7518e6d6f3945f0c836e1ceb719bf49c598a1332e75013333503ee3a21493abeee67f4', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:55:52', '2022-04-26 12:55:52', '2023-04-26 12:55:52'),
('a3273793f9ce583348de916d2c2a206c77e2fb2fd8e3e7c312c3c2f5b4f413aadaa2a600f2a5ede9', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('a429ddd7a501f0a4d02a38e1da31c14195b5cfed33dd776cc61b2409c50ea9f643c7c0d005200ae6', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:12', '2022-05-04 13:26:12', '2023-05-04 13:26:12'),
('a448dfaeba4c0902c4337c453a097fdded1744972d475d1435034b19feb972b0319f9d5f67b924f6', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:35:25', '2022-05-03 19:35:25', '2023-05-03 19:35:25'),
('a45bebcdb5dc1294f6fd74988188906e200b75ca590c090be24ad31cc3f805841f0abc53011521b5', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:27:00', '2022-04-20 14:27:00', '2023-04-20 14:27:00'),
('a4977a4ecacb933c05ce207010da79cf0293ccc86b7aeba3389dc98b1bb0b8d2dbf776c79ef64f28', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:42:37', '2022-04-20 09:42:37', '2023-04-20 09:42:37'),
('a4be80aece600b701fc55c080b2e0df3828e658f6378730b9f8f932ac0deb925d62b0f02d32d876c', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:37', '2022-04-20 15:17:37', '2023-04-20 15:17:37'),
('a56f6b4e62a6d98bcf61f27d5ab2104d2b9bd74c5a520845becfdedb0b8e425653bc90ebea1ee4ea', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:26:11', '2022-04-19 12:26:11', '2023-04-19 12:26:11'),
('a5ca7223bb6a098e72e2b020a5e1eb3c4780b7a729ab1573933ffd4c8746e6209ee1cd51c8fa466c', 2, 5, 'authToken', '[]', 0, '2022-04-27 17:08:23', '2022-04-27 17:08:23', '2023-04-27 17:08:23'),
('a5dfea7b01d36e4fe84e58a44e366f7dfa8b5d29cbbc435fdecd5fd2d2d9e93a590aae5922018b48', 5, 5, 'authToken', '[]', 0, '2022-04-15 11:23:35', '2022-04-15 11:23:35', '2023-04-15 11:23:35'),
('a62523a4b3ce7fd6498b9fec7f061a5319ffe8b9c45722a35de65d328b988b64dffa0d69e9ad7328', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:53:37', '2022-04-26 15:53:37', '2023-04-26 15:53:37'),
('a675c4fac82268abcdd80c0e56ca900e84b53d48091ceb7b4f4e23919b3a5ad5311c4678795970dc', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:42:08', '2022-04-20 09:42:08', '2023-04-20 09:42:08'),
('a6b8e34b84a95b0223313ac5f5b6f4341ec1633895d1ba784b1dbd8b1523d9fa379e494f858ee61c', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:12:03', '2022-04-20 15:12:03', '2023-04-20 15:12:03'),
('a6e81402ab5f36b68ffbaab635cfb550ff5ec99e5e0227273d5b7c63774bdb937433326e7d4608ce', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:50', '2022-05-03 19:09:50', '2023-05-03 19:09:50'),
('a750c828938873058851c66a643d878a583ee91524160974224afe071d5bd0ec0c49b9789b9bbdd4', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:05:32', '2022-05-03 19:05:32', '2023-05-03 19:05:32'),
('a753439f7e42855720a6b3b1f424d5c7e948163afb1c319d7904f62d17898043f93f1e4eb60337e1', 2, 5, 'authToken', '[]', 0, '2022-04-29 15:33:09', '2022-04-29 15:33:09', '2023-04-29 15:33:09'),
('a9bb295d3e51faa0a5c5478138388dad31226f4b2c7b293a08dff49f28f71bede91d02c68d435eaf', 12, 5, 'authToken', '[]', 0, '2022-05-03 19:39:37', '2022-05-03 19:39:37', '2023-05-03 19:39:37'),
('aa6b88867ef4e66112051a4c9cdddb0d7f64bd5dffea682350d323cc13fd1e3ae2a09f95fcca4f6a', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:53:15', '2022-04-20 09:53:15', '2023-04-20 09:53:15'),
('aa97c5a3c6b02f0720f11e04b4dcb9b886844c97ccf28781041d6c57b295e17d461172f62a8a4398', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:56', '2022-05-04 13:56:56', '2023-05-04 13:56:56'),
('ab0a7058fbd98e399a1bc6df21cce37f94f74fc9a77d07f21d16159f649b0a7ca7556227bbde2f2a', 7, 5, 'authToken', '[]', 0, '2022-04-29 16:56:12', '2022-04-29 16:56:12', '2023-04-29 16:56:12'),
('ab620512f9ff189c8dfb8c652eefa9be0524262979d6b679bc78984de39d83ed4a820f1d0fbf6460', 2, 5, 'authToken', '[]', 0, '2022-04-27 10:01:44', '2022-04-27 10:01:44', '2023-04-27 10:01:44'),
('ab75c196c139a58f17e76daa0c16c6ca778a79b50add99242ce181d55872091cec932b8fee9fb205', 8, 5, 'authToken', '[]', 0, '2022-05-03 11:03:36', '2022-05-03 11:03:36', '2023-05-03 11:03:36'),
('aba26400d0ee7b37b79b8736b6f3dba9e6dcd836f1d7012805b629abde820f93c15d1eaf29e3c590', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:43:52', '2022-04-20 09:43:52', '2023-04-20 09:43:52'),
('ac983891a9a07809fb9c8c39265c7cc4ef91c0a1c02eabd2d026962915124875690c9f6e1dd4d09b', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:50:18', '2022-04-19 10:50:18', '2023-04-19 10:50:18'),
('ad6b83bebcf6bca36f55fd58cbb52cb234a4d047aca32ba57cf73178830feb9a232affe08f222ea9', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:36', '2022-04-20 15:17:36', '2023-04-20 15:17:36'),
('adda551122e6f02d40909aec920be8aabaac51b8ff535f03302ae385b90ef02feec91f3509b49a3b', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('ae113895f7667ff43e0bd724bb60fc9cd665f3e95cbed52cf3de491e8c63fbafdf6de64add9b44c9', 7, 5, 'authToken', '[]', 0, '2022-05-04 17:15:12', '2022-05-04 17:15:12', '2023-05-04 17:15:12'),
('ae877f3d86aca72f08082395160ee83cb448a25fea534598e75e9ec1f255a6230abc7eefa516e59b', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:52', '2022-05-03 19:09:52', '2023-05-03 19:09:52'),
('aef6621e1834271065912e925b4fa17f67f6539e345994815bbbb1d453f3019acaa552a768021b0b', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:55:52', '2022-04-26 12:55:52', '2023-04-26 12:55:52'),
('af3089d8f8f405e6e21cf73f58ae39b93e7e07a88fa3328d8b0f55da35a9b713d8312e1b1d0557a3', 11, 5, 'authToken', '[]', 0, '2022-05-04 14:32:01', '2022-05-04 14:32:01', '2023-05-04 14:32:01'),
('af492e39161649f5ee8588a1519fb52ac50eaa3c79bab4510180af210a0a7c62dca828875dc73ed0', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:16', '2022-04-26 15:54:16', '2023-04-26 15:54:16'),
('af5b620456877905f8e0f97a28e328870ca1b8771a19ddeea3d74b7878749db3795cb5cc161f6fc5', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:22:32', '2022-04-29 10:22:32', '2023-04-29 10:22:32'),
('af677647f4673426687648e729fb3ae3177cbf69feaab3627597d99feefeff3b16ab0c060d43b490', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:43', '2022-04-26 12:58:43', '2023-04-26 12:58:43'),
('b06b690959762de4be4c7d70ec6b5c96d5a5d678d8d9c9d106ca76534bad5a56057425f71a26aa1a', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:32', '2022-04-20 15:17:32', '2023-04-20 15:17:32'),
('b25aa09af94af0d74d62a51ca000e565f98be0d488afb3940bc8b822f4f150e2a11892717ae2d323', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:49', '2022-04-15 15:03:49', '2023-04-15 15:03:49'),
('b309ad64bd8414f7245e78e46afc51687ad6f14ad395ad1e6b1c40a370153402408cf8bd0c538293', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('b34999eefb04ecbca085e62a3b8d5bf34b6b2056cfb2390e03eae9aee6e0ba637b5028beecf0191b', 1, 5, 'authToken', '[]', 0, '2022-05-05 17:01:53', '2022-05-05 17:01:53', '2023-05-05 17:01:53'),
('b34f228ad16e138de712ff919e72248d9e150a8b486428f3fbe65744c8a457434a1bf70d332e96d6', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:52:58', '2022-04-29 15:52:58', '2023-04-29 15:52:58'),
('b381addc9f2f016ade8b68e4274396824807aa676de9b19ece76f199a8c3b6816b5686fa150ef15d', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:37', '2022-04-20 15:17:37', '2023-04-20 15:17:37'),
('b3cfebcb8633c9244c6ff3c32e26dbdba7ac811557be13b73eb223da99efadb1027a3044d7dcee90', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:55:51', '2022-04-26 12:55:51', '2023-04-26 12:55:51'),
('b3daf724c8fb3f83370e46e0a3d4a070432029e6b39821c32c9ba9cbe9f187748aedb89cf4b6548f', 11, 5, 'authToken', '[]', 0, '2022-05-03 15:06:50', '2022-05-03 15:06:50', '2023-05-03 15:06:50'),
('b5d30ce8d1f65ae5f41d64f0692bec7fcac67a7afaa2e98a90ab28b9d0dffd5c10f8117d38906401', 11, 5, 'authToken', '[]', 0, '2022-05-03 20:00:56', '2022-05-03 20:00:56', '2023-05-03 20:00:56'),
('b61321bf8b8829a49056a0d0f00b77940fc6d3f1bb2a9b2f4a64391454ae3f71446369c3b9519e47', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:28', '2022-04-20 15:17:28', '2023-04-20 15:17:28'),
('b6e6ff5ca5e5a289b5bf46774f12b5326e9480ccfb726393683eb1f1b40a1395548d163473bed71f', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:12', '2022-05-04 13:26:12', '2023-05-04 13:26:12'),
('b72dc01c809b612e079c7115d91873aab5763ec3c9217a80a047b46c123d556b11976acffe543812', 2, 5, 'authToken', '[]', 0, '2022-04-27 15:38:45', '2022-04-27 15:38:45', '2023-04-27 15:38:45'),
('b77d1b52ef96fafe4278ce96352c109962fabb414fbd8cad47add3f7128aacc5e5813caf87a9ff1b', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:53:16', '2022-04-20 09:53:16', '2023-04-20 09:53:16'),
('b7cd287a0cdc510a9219489442ff5f88691a9cd9ea8e08ed793780109bdf4784004a8f79cd05a823', 2, 5, 'authToken', '[]', 0, '2022-04-29 15:21:10', '2022-04-29 15:21:10', '2023-04-29 15:21:10'),
('b883aa2309d113651f37bdeea4a47e5fad3ee8211bf886c89282d63fa8551006e498a0961e633dee', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:05:44', '2022-04-19 11:05:44', '2023-04-19 11:05:44'),
('ba399987b355ea7313ab838060a1a60eca1f294878379312a453e8feb20d87e0486c40a99fd97499', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:36:33', '2022-05-03 19:36:33', '2023-05-03 19:36:33'),
('ba4068038c28d112d5b23f518a1daab8c4300dcce3d46db17d5136ac50318cedc78e6071b330e3dc', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:56:52', '2022-04-26 12:56:52', '2023-04-26 12:56:52'),
('ba97e39b45e473650d534a46998b97e5b623cd71f2cdaf98a06a96b11df6434410a025aecce2806b', 2, 5, 'authToken', '[]', 0, '2022-04-27 14:56:02', '2022-04-27 14:56:02', '2023-04-27 14:56:02'),
('bc27adf5fe15d2aa2b6e6de9d34d18e2247ad7a79ea1ce1e3df8e0389d106e745bbaf39c779a53c4', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:31:23', '2022-04-20 14:31:23', '2023-04-20 14:31:23'),
('bc2d699ae07f29f460f564750e9f891ca127d9dc1c691c4aa524b7c0c3aaaa4d85fc6dec7d6b0ac4', 2, 5, 'authToken', '[]', 0, '2022-04-27 10:01:56', '2022-04-27 10:01:56', '2023-04-27 10:01:56'),
('bc5ad4c985193d2eea01bdca6501c7ef5f3adce2c0436c6be3b65cf77bf13c6769ea475bc0348fe8', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:53', '2022-05-04 13:56:53', '2023-05-04 13:56:53'),
('bcb00e9733f9e68fb8d4e02c3cd124bd31a95970c49d74e6511b8663c7ecd535576751efd4599edf', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:44:03', '2022-04-20 09:44:03', '2023-04-20 09:44:03'),
('bd0cafbbadc8e3e1f553b7b4e890ffffa48a31600833813f153155611855ee0c73462ccfcb02f692', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:36:33', '2022-04-20 14:36:33', '2023-04-20 14:36:33'),
('bd96f6e952b7ee85b5bba19c1e257954c38dba84fbff5483b0ce8fffc109b4c6feac6ce44136c5c2', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:54:29', '2022-04-26 15:54:29', '2023-04-26 15:54:29'),
('beefa62afcd432d8feeca2b20d5a903bfc0527adfcfb4997284e65f53c9e062d1e9615df41489abf', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:57', '2022-05-04 13:26:57', '2023-05-04 13:26:57'),
('bf87f31fd256e13a1b536836025ecda5c9a118dc13fade8428d02247b1b2cd71451b228f3dce60b5', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:06:45', '2022-05-03 19:06:45', '2023-05-03 19:06:45'),
('c0f8263c97142d069ce741fc7ced4b7202f199f27a0890ac8fcbb10670a8a348c8539aca931b7a4b', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:54:15', '2022-04-26 12:54:15', '2023-04-26 12:54:15'),
('c16b63469055f10f8b45824fa78aa71035741d6cf79f3e540d52066fdacceb420f210876f780be4e', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:55:58', '2022-04-26 15:55:58', '2023-04-26 15:55:58'),
('c198817e64a5e920dff70190318e4740c0b958acae4e9840ae6d238185641cb9997e7b7466883089', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:58', '2022-04-15 15:04:58', '2023-04-15 15:04:58'),
('c1ee9a3dd2a0af642c3644960fe2e385635a86113d67b2c2062dc2fb76f480472ef6ec0469bc7303', 7, 5, 'authToken', '[]', 0, '2022-04-29 16:56:48', '2022-04-29 16:56:48', '2023-04-29 16:56:48'),
('c1f5cfc7bd8214809fdea29e9e375e1bec6fbe10de7f1c25ea271d9f4d029d0930705bcac5365915', 11, 5, 'authToken', '[]', 0, '2022-05-04 14:34:26', '2022-05-04 14:34:26', '2023-05-04 14:34:26'),
('c36a1ada7de4c525eff357b8c59c836c807556e8f27d1e1e2d55abebf25ba78c9b24c3e302cd5ce9', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:23', '2022-04-15 15:03:23', '2023-04-15 15:03:23'),
('c38fa6c4c6ca77c6162b494c180ccc2b5259ab4d99b3f2f339265121872edb692a7eb8d73e5c2df2', 11, 5, 'authToken', '[]', 0, '2022-05-03 20:00:42', '2022-05-03 20:00:42', '2023-05-03 20:00:42'),
('c3e4484116ff383e1e0cffa9380fa98817882f6523ec2f8bcae61fb47eb714ded623c5e66fdfedf0', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:28', '2022-05-04 13:26:28', '2023-05-04 13:26:28'),
('c4fa0a2e3cf36893d20b4e3734a8e18e5494827c485652a7511d6acaeef0f18e54a85b9558f706ae', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:56:53', '2022-04-26 12:56:53', '2023-04-26 12:56:53'),
('c54b21c49d1f1164b17071c8b7d51844908008744cadd6d61cc2e5e631fbac04b712c57b0d0a0400', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:55:42', '2022-04-29 15:55:42', '2023-04-29 15:55:42'),
('c585b605d2e20c3380d566e14704bca4d9cb0159f0e9ab1373c64ec4458f050db3f1ebc0e44e9041', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:34', '2022-05-03 19:11:34', '2023-05-03 19:11:34'),
('c5c6299e7ef695a0ef4ab124c2f55b7d047b58f651ad5ab25b9c783a09a614c52f81968d8dd10ac9', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:53:20', '2022-04-20 09:53:20', '2023-04-20 09:53:20'),
('c604568175969702615b4701746adff32f22a3a3495396141a40bfb0d885341de1a2547040cd733c', 11, 5, 'authToken', '[]', 0, '2022-05-03 18:17:52', '2022-05-03 18:17:52', '2023-05-03 18:17:52'),
('c61039e3833e455f87e3f79b5f4b1a5c8be9328fe24d3343e2f048ccd1fc86c8a33a460bcd04a163', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('c6db21b1be9cdc69ba71c9c94c4bcdb8fbe610e98aa534ba0149627d38d49fdd09e60c2393c6d078', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:25', '2022-05-04 13:26:25', '2023-05-04 13:26:25'),
('c6fd39cc48b0b52a151b81ef74f104c8ea4486242ed2f8ff5ca05f70596694647e8664c2d57b1870', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:14:05', '2022-04-20 15:14:05', '2023-04-20 15:14:05'),
('c8c3b2646038f3c56312126507d80ef3f13084eafde559310a6f0e62ba0e9608a287b12880f4825f', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:44', '2022-04-26 12:58:44', '2023-04-26 12:58:44'),
('c91258a91abdadc7be79097dac585c95d0c63e22336d09a469f9ec8f1078539897a4cfbdbea4f60c', 1, 5, 'authToken', '[]', 0, '2022-05-05 15:59:04', '2022-05-05 15:59:04', '2023-05-05 15:59:04'),
('c979a9eb72157b2ffc1ce707e538e58fb037c448ffda4c01cb88f8dd3ab60c6d48ec701798d8e99c', 1, 5, 'authToken', '[]', 0, '2022-05-05 15:56:20', '2022-05-05 15:56:20', '2023-05-05 15:56:20'),
('c9cd59e84d636b0f42dc1b738689b2cbff9bcd7c463516f6b8bf8bb2011b05c4c81cabb5a98028c4', 5, 5, 'authToken', '[]', 0, '2022-04-15 12:19:46', '2022-04-15 12:19:46', '2023-04-15 12:19:46'),
('c9fd79ab6166247f78f373408fdb155ee7b670cc4f639b9b1850333a2d06a9d63ff5c1f61fe5775c', 5, 5, 'authToken', '[]', 0, '2022-04-15 12:20:04', '2022-04-15 12:20:04', '2023-04-15 12:20:04'),
('ca115a86a49fc7970c0f95e41fcd75276187255ff99f11647694a5cbf6629069cfe3a0d94cb06f5a', 2, 5, 'authToken', '[]', 0, '2022-04-27 16:14:39', '2022-04-27 16:14:39', '2023-04-27 16:14:39'),
('cb507629857c416438ed6baa76ce8f4f7e636529852e574d8c7778e5cee923ae6367e8ca175e1cef', 2, 5, 'authToken', '[]', 0, '2022-04-27 17:10:40', '2022-04-27 17:10:40', '2023-04-27 17:10:40'),
('cb63f31ae15bad6ace351ffa4ee64d4349e64f3c12b615525aa986b6d51dac02170162eea0447910', 1, 5, 'authToken', '[]', 0, '2022-05-05 16:02:10', '2022-05-05 16:02:10', '2023-05-05 16:02:10'),
('cb71e3640e3697036e536000d327ef64ecda4d13adc1796a90fe54e73c931ce64bbaf9f43bb99d44', 2, 5, 'authToken', '[]', 0, '2022-04-29 13:49:18', '2022-04-29 13:49:18', '2023-04-29 13:49:18'),
('cb9c60f19436d37810359260fd903f4bbcd33aa0a7af6ba51772ee79476708bf796b0f805ef28eb2', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:59:13', '2022-04-19 11:59:13', '2023-04-19 11:59:13'),
('cbb2cc0a563205af2faafdc32491925646d46df447a0a65243e9e36e18ba807b90464e699fb018c9', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:56', '2022-05-04 13:56:56', '2023-05-04 13:56:56'),
('cbcf1f592caf2e1b6ac55624bdaa503ee9e8de8402f9b4e4987529eea3cd58095b9c0cf8ea8ffeed', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:34:29', '2022-04-19 10:34:29', '2023-04-19 10:34:29'),
('ccb16673f0311e99142cdcb0b474a2178087b315da8acd02b67516416066803fac7961e19ccf257f', 1, 5, 'authToken', '[]', 0, '2022-05-05 16:04:43', '2022-05-05 16:04:43', '2023-05-05 16:04:43'),
('ccecc822cc03b7509f7ad918562d3070c859985c71195d8f3526407ce6dd4f46d87521514a16e848', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:55:40', '2022-04-19 10:55:40', '2023-04-19 10:55:40'),
('cd01c4a2a925169cf36134b84b0cc5117cd0219a2b1d661d2c3fb0ef688ebbde3f4822f0f17afabe', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:05', '2022-05-03 19:11:05', '2023-05-03 19:11:05'),
('cd17485890699443d97f380b1ce6fb60c7201d6c0255bc746fa62d28b3a4af8d0ca941ed801193c6', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('cd7956d985dd4d43a123555a3061f8285dbf049095bba438509866075b6eafbdc4d1091008d1e7ce', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:46:38', '2022-04-19 10:46:38', '2023-04-19 10:46:38'),
('cd8f1bf1aaf6aaf4218644130bbc432acf0a2a569de974f5e7ee40024fccb0872a369d3d9f62faa1', 5, 5, 'authToken', '[]', 0, '2022-04-19 14:46:49', '2022-04-19 14:46:49', '2023-04-19 14:46:49'),
('cde796cf6b301a15cf796728e91e6c47ba7d1048745b2915c9727fa1c849f5768dbb4b038807b709', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:53:36', '2022-04-26 15:53:36', '2023-04-26 15:53:36'),
('cf1f52f6081a2d76163c7da3a46e2b11cf66be4bd94e26f4b0a81b00e7a474dd0cab43469fb5107c', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:28', '2022-04-20 15:17:28', '2023-04-20 15:17:28'),
('cf67477fe642419469ac196593517d7bcc202dac75424050becf3d57b2734b4ee257708f355338e3', 2, 5, 'authToken', '[]', 0, '2022-04-29 15:12:26', '2022-04-29 15:12:26', '2023-04-29 15:12:26'),
('cf787d18ac47e841943a4e4a074089a3f762bdb934f13524380afbf6ab946721cb30911d828d3579', 2, 5, 'authToken', '[]', 0, '2022-04-27 10:01:53', '2022-04-27 10:01:53', '2023-04-27 10:01:53'),
('cfc6a188e27c6e06b0fa39a6d9759d7a242e5116a4ef59f1032ec21ad07722b32eb1a11c241b45ee', 2, 5, 'authToken', '[]', 0, '2022-04-27 17:31:58', '2022-04-27 17:31:58', '2023-04-27 17:31:58'),
('cfca83fbbb93e9674ae82701471f577a548487b1ce1ccdd392047d8107b6a3c3234fa04dd4183005', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:45', '2022-04-26 12:58:45', '2023-04-26 12:58:45'),
('d0e39bcbfbf69b6b2371871ae741b642f4822e723e67183b402fffaabf14d806ce27d71ac31a582f', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:59:27', '2022-04-19 11:59:27', '2023-04-19 11:59:27'),
('d153c2e3235a4acebaf2ae65a83af2cdf17b1f164d6501f72a6789f4a41b7416da0e740aefff65c2', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:35:32', '2022-04-20 14:35:32', '2023-04-20 14:35:32'),
('d1892386fa6fa02a89adfef6bdc90ede26be12d539a61a55ee00d76c3791848e2bbb59671daa6bae', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:07', '2022-04-15 15:03:07', '2023-04-15 15:03:07'),
('d1eebd207ea55ee38495e8392d0ee67c461fc51d85de0724db377c0281dd3913d1ee9e2a9449de3f', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:50', '2022-05-03 19:09:50', '2023-05-03 19:09:50'),
('d25495ad63e41895eb430e806e8f6fd1a300d07c6db629692f5c0122f31c180613f0e19db0ba918c', 1, 5, 'authToken', '[]', 0, '2022-04-29 15:09:35', '2022-04-29 15:09:35', '2023-04-29 15:09:35'),
('d3a37181eb0ac68f304e450f49b723bd35c2254c655cc14d81cf4a3f3b7a81813a047d25b892ab1b', 2, 5, 'authToken', '[]', 0, '2022-04-27 10:02:11', '2022-04-27 10:02:11', '2023-04-27 10:02:11'),
('d44ccc882b448c2ce5dc9a4ddf5aa9aab667abbe119e9e13033c9452d163f048c372c439ca44f056', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:22:14', '2022-04-19 12:22:14', '2023-04-19 12:22:14'),
('d4b9bdc586fee2d765d17c27244756406914551ca3d84e00d56e1717713087b2b4c95d546e02e503', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:51', '2022-05-04 13:56:51', '2023-05-04 13:56:51'),
('d4d20fb59138dd21b087ebe92dc0d029677f77d098d7e621987735599d1d67543c6179f402ba0410', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:23:09', '2022-04-29 10:23:09', '2023-04-29 10:23:09'),
('d5881391535b9423ffe9023aa79949fb2a1391f00f83ab818a45468a8654df3b57ed899490db90a7', 8, 5, 'authToken', '[]', 0, '2022-05-03 11:01:05', '2022-05-03 11:01:05', '2023-05-03 11:01:05'),
('d5d2b7c30e2fe5686e0f7f4afc77aa1f25659196e86fa212af4c2c54d30b4971a8cfb274a780ba8f', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:55', '2022-04-15 15:04:55', '2023-04-15 15:04:55'),
('d5e0a39501137623bbfd9da98fd27997b9dc99d614229ff5f9ed877dddf5f746a70a4235ad4ff801', 2, 5, 'authToken', '[]', 0, '2022-04-26 15:53:38', '2022-04-26 15:53:38', '2023-04-26 15:53:38'),
('d5e128885196931f7aad8d72ce0bea0b1aeff22b8b05e19484800ec8162b3100554f85f5c44d95a3', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:25', '2022-05-04 13:26:25', '2023-05-04 13:26:25'),
('d6072f701be76acfef22457abd14d91d6bd7aa9d5050a25266788e0d75158ba088ed7e17f1007c66', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:34:10', '2022-04-19 10:34:10', '2023-04-19 10:34:10'),
('d669732b58f0b3e86332d6a53a1d96cdbb61897f9c15e683e88d9f469635b843d8d16b27bbb3cd50', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:01:55', '2022-04-19 12:01:55', '2023-04-19 12:01:55'),
('d74b8337b75f112a62083456009886b7faea3de2b16aeefe60b103e99a91df8ef557611500dafa56', 11, 5, 'authToken', '[]', 0, '2022-05-04 17:24:33', '2022-05-04 17:24:33', '2023-05-04 17:24:33'),
('d75eb9a73475ed0100a58b3649a780b5425743ac40c5874c0cbdf93b032e34c6f9732dfb0fc177c4', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:56:16', '2022-04-26 12:56:16', '2023-04-26 12:56:16'),
('d8ebc4455e2edd94f639700bd59f49941f524bf301404020490cb2964705ae2ca71c17febe3757c1', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:39:53', '2022-04-20 09:39:53', '2023-04-20 09:39:53'),
('d9716633ac6f75b7524830c2748702dfcc81a8ae86cc055fc22eaef3c96ebc953f06d15764a3417d', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:13:32', '2022-05-03 19:13:32', '2023-05-03 19:13:32'),
('d976e8beecd1e1529c92d17f30546e3515f08a1b0f575228dd5666ae5f0d3715b3d5111728792c8c', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:20:08', '2022-05-03 19:20:08', '2023-05-03 19:20:08'),
('d9ebfbc3ec8040ab523d518682de846c5196d73c7e127f1a0afd9100b746846323d0be8816426c1e', 2, 5, 'authToken', '[]', 0, '2022-04-27 10:01:47', '2022-04-27 10:01:47', '2023-04-27 10:01:47'),
('da647af2b899b95636dd9f0cf90ac663228fb4b99fc3ae152190dfad5d13530c3da6ff6cec552f2a', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:56:12', '2022-04-20 09:56:12', '2023-04-20 09:56:12'),
('da67e28c948bfb593c276559405943fdad646a46767526a398eb2be7c4f7448533ab2b05f213c0b0', 4, 5, 'authToken', '[]', 0, '2022-04-29 11:38:58', '2022-04-29 11:38:58', '2023-04-29 11:38:58'),
('db3d0ad1948f3bb831360212720c7602786c6040b4c8c2e3d005867aaa67327e499dbdca547c1ff0', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:52', '2022-05-04 13:56:52', '2023-05-04 13:56:52'),
('db8e5b064bb558af3bf3a1d86c751b9ab2cc6347bd5629267b90fe3e0855a9703d22a6b94392ecee', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:19:10', '2022-04-20 15:19:10', '2023-04-20 15:19:10'),
('dbaff9730ecda1637f8ff356fcd14b42775a82c3fa8367d92a087fb65b77bd3e03e316327de71f56', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:09:25', '2022-04-29 10:09:25', '2023-04-29 10:09:25'),
('dc13d960ad27c7ac0e0b994cab706d72a02647dd1b765156240b1a5a6b27f0e4d221d0d893151afd', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:36:50', '2022-05-03 19:36:50', '2023-05-03 19:36:50'),
('dcb43f4330fe3e2db8246359aa010e2a80f0bdb8379b7448781b1ea9add48e22dee4ca777bf1cea0', 5, 5, 'authToken', '[]', 0, '2022-04-19 12:27:00', '2022-04-19 12:27:00', '2023-04-19 12:27:00'),
('dcd1c3bb304fc34f91b49c657a5167441336a7a910239de49da0ee3314c8eb54d887ef293402a58b', 7, 5, 'authToken', '[]', 0, '2022-05-05 18:03:36', '2022-05-05 18:03:36', '2023-05-05 18:03:36'),
('dddac673bc66744861ff214cebd2f247160820b45c39704060a6298569ba802b15e2117074170627', 7, 5, 'authToken', '[]', 0, '2022-05-05 10:33:07', '2022-05-05 10:33:07', '2023-05-05 10:33:07'),
('de317a8d6ef1c002bba44abdcdb79682fe611405c3b00eee5e56390084cc1e64342e7890d72d6876', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:19:30', '2022-05-03 19:19:30', '2023-05-03 19:19:30'),
('de4bd834d090ccbd92074234b05905519a3ebb761d225348fbb54767c8d21611c5a49f44f870d78a', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:02:56', '2022-04-15 15:02:56', '2023-04-15 15:02:56'),
('de51bf01dc0853eb2c5cee63b34e80fce80ce7095701e8fe38bf69511e41503457992e1a99878c8f', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:44', '2022-04-26 12:58:44', '2023-04-26 12:58:44'),
('de750fb3eb13a782e37481b3c624b4a6e79501ea1e78c7ac47b7829cb4c3b2f1c9637066eba94ec9', 5, 5, 'authToken', '[]', 0, '2022-04-19 15:00:59', '2022-04-19 15:00:59', '2023-04-19 15:00:59'),
('dedca41ebe609fac64035946f1ccc12e1d6c0e62c82b0f098c8e159ccf49d63c4d40eaeb77b404d0', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:52:47', '2022-04-29 15:52:47', '2023-04-29 15:52:47'),
('e082efd71c3c146ae5fa531416504bb4ea91d712d5891e9d2801b599631f27fc55d225001d518629', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:32:36', '2022-04-20 14:32:36', '2023-04-20 14:32:36'),
('e0afe001e28f09ed2552ac54717f44c9b3aadaf566c78ba92cd7b49b21dbfe32984c09916f336609', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:50:22', '2022-04-19 10:50:22', '2023-04-19 10:50:22'),
('e19117d9ae0ba26d622a85c5dd0c31bee1dc7a83db1aa3bbeb0d38ff5dbbbc2fc4ef580c6f256991', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:35:59', '2022-05-03 19:35:59', '2023-05-03 19:35:59'),
('e1fde1e306526cf4f143a9fd91694da39922a1c84d006b1d692b657b4128419de82fe8380be2940e', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:34', '2022-04-20 15:17:34', '2023-04-20 15:17:34'),
('e26fe83c0317b612deb0b478a4602d461ea0bf4f4ff95c4adbd40bd7326d01bda776a6c4e28d6e0a', 2, 5, 'authToken', '[]', 0, '2022-04-29 11:33:00', '2022-04-29 11:33:00', '2023-04-29 11:33:00'),
('e277549ff35c3a53c304e003737f8f5fbb6d652ebfe41cb5e0f5ac2906f3485ae33a1ccd61c3476c', 11, 5, 'authToken', '[]', 0, '2022-05-04 10:43:21', '2022-05-04 10:43:21', '2023-05-04 10:43:21'),
('e322ec724a996f7949b0ec458f869f73456d37554b0cdc76b2c1765e3c1158b7315ca831c30e1078', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:06:36', '2022-05-03 19:06:36', '2023-05-03 19:06:36'),
('e3bb74a9d35c600046163769b75c1e0426b3d5b3c11478de877c1fefcc618a3c43e7226a8dfa513b', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:57:02', '2022-04-26 12:57:02', '2023-04-26 12:57:02'),
('e416b89e3e75f6dc035c33fe444ba3581288ea85afc3be31d006c9f7c0cf3ca380ba5f7fd1d05ac1', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:32:34', '2022-05-03 19:32:34', '2023-05-03 19:32:34'),
('e51c0ca2e5efabb295e8ba98a1664c82734393e4b01b69daf54ab4efaed5b34169629b94b08a816d', 5, 5, 'authToken', '[]', 0, '2022-04-19 10:35:38', '2022-04-19 10:35:38', '2023-04-19 10:35:38'),
('e58a2a6c068374a552687d10bb197c2a3b2eac6cc866a2514e00232812a3db8319aa72608dc8a43f', 2, 5, 'authToken', '[]', 0, '2022-04-27 16:23:35', '2022-04-27 16:23:35', '2023-04-27 16:23:35'),
('e5fb2f4426a081e83a3e74488e24d4e4b2e5e85e27c4b4bb539e19a228bf8aa39ca0717fc0a65dae', 2, 5, 'authToken', '[]', 0, '2022-04-29 14:30:52', '2022-04-29 14:30:52', '2023-04-29 14:30:52'),
('e6dc3429efeb8891f126e8d7d8dc762ca0dd5ad512926229c3225f11606ebfefd0852a4b60601419', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:02', '2022-05-03 19:11:02', '2023-05-03 19:11:02'),
('e7786251f2d0e5198eca08bab3959be5f64dd026647ba50ab8f75a5f63f42aa17884c8e02251b798', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:02:07', '2022-05-03 19:02:07', '2023-05-03 19:02:07'),
('e77b47b7f3fbc7907a324f20d011adace087eb45c08ea8e59536781e9a6524be5d6695d8f0f955fe', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:58:48', '2022-04-20 09:58:48', '2023-04-20 09:58:48'),
('e83796c66895912470cd3b5de649af140795714e901b757c4f88d2a1b564b1fff4d2ff9da7f71a21', 2, 5, 'authToken', '[]', 0, '2022-04-29 10:44:52', '2022-04-29 10:44:52', '2023-04-29 10:44:52'),
('e8c1c4b959351322b8eb892182bc2884e8daebf62c55dd8f1b1342294b7a44d85655dba809b5f19f', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:31', '2022-04-20 15:17:31', '2023-04-20 15:17:31'),
('e9648b6edaf43630d70a089cc04a73061c0b737c837d3da3bd5239aebf3b35810ad646c054b4b68c', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:20:57', '2022-05-03 19:20:57', '2023-05-03 19:20:57'),
('eaf3e81322117a18acefb508b9421cdd20915e5c7d9fb45523a0eaa003b22051bc1a4849dd9cac13', 1, 5, 'authToken', '[]', 0, '2022-04-12 16:18:45', '2022-04-12 16:18:45', '2023-04-12 16:18:45'),
('ebab96583a1d5d4b13c61344a615a9207e6f09dad90479456c52721a93d0d70e544c586f4606740b', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:03:23', '2022-04-15 15:03:23', '2023-04-15 15:03:23'),
('ebc4532c36793975a9a1aeb2cacc03a363ffd42fe774c81e1dbb23426ef682dfdf03dd55c971682f', 2, 5, 'authToken', '[]', 0, '2022-04-29 11:52:56', '2022-04-29 11:52:56', '2023-04-29 11:52:56'),
('ec24bb1560a5e03553e38090f7f3eccbed0e52f1589bf61fdf67f1e5411c712bc9233d3df7c87d41', 5, 5, 'authToken', '[]', 0, '2022-04-20 09:55:33', '2022-04-20 09:55:33', '2023-04-20 09:55:33'),
('ec31e71a68851082e4b18dfe6a23eae94fb6dfdf7657ba06ad9df2db9cc8b26735a4d52cf896907b', 11, 5, 'authToken', '[]', 0, '2022-05-04 14:32:15', '2022-05-04 14:32:15', '2023-05-04 14:32:15'),
('ec527244b02069f4e9d2abbf51e2d308b326a7a1802e2521179f7009889d8772de2c1a402660773b', 11, 5, 'authToken', '[]', 0, '2022-05-03 16:35:24', '2022-05-03 16:35:24', '2023-05-03 16:35:24'),
('ecedd568030961226f5da7b4ea3a699804710e3d47866f8605e0216fd70dd2599966e89852e8472f', 2, 5, 'authToken', '[]', 0, '2022-04-27 11:46:13', '2022-04-27 11:46:13', '2023-04-27 11:46:13'),
('ee554406a9e0fa7fc1c6347ed87f3f36a271ab01be8da92034a6124cc7d1ad61f2eb539cd5f0174c', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:56', '2022-05-04 13:56:56', '2023-05-04 13:56:56'),
('ef2441655f4ff0865eb2333a66e7b12bff042c53ce6658f1b71ff6892e318308f831b1b6c4a455f0', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:50', '2022-04-26 12:59:50', '2023-04-26 12:59:50'),
('ef90a30dd78257754e3455ba7412823ec99a962d3e5d89cf56318ea11f22a4c98130043f2064ea57', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:41', '2022-04-26 12:58:41', '2023-04-26 12:58:41'),
('efad31a455c0d9033259eadd05f262e2b68ba65fac96608ec0e5afe37c56d444e10ae312eb5b061e', 7, 5, 'authToken', '[]', 0, '2022-04-29 16:03:39', '2022-04-29 16:03:39', '2023-04-29 16:03:39'),
('f0246468d27c6ae7f7368080eeae309117231af9c533bebaa52f31c5533d26a485e2a152cb66b2f3', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:12', '2022-05-04 13:26:12', '2023-05-04 13:26:12'),
('f03a429298b82deb779acb45d9cb9d3de0506e681acc8e15cb956252dbce1f1755eab7bb8fdd82c4', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:49', '2022-05-03 19:09:49', '2023-05-03 19:09:49'),
('f0b3878e361962816937c89505bb9d3295a81e2e6b41eb7f6bb50c040c011a10193e69e05bc3b902', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:59:11', '2022-04-26 12:59:11', '2023-04-26 12:59:11'),
('f14f7de7ff6442729715711e4536fb1bc680cf8068b2e08520525f6eaa03af059a96ac6a931e074f', 7, 5, 'authToken', '[]', 0, '2022-04-29 17:05:51', '2022-04-29 17:05:51', '2023-04-29 17:05:51'),
('f1568490c639b2b74edb6f4eac0dd03daf272fbb1d6d286fe590b4d56c175c6307dbb0291271aac9', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:32', '2022-04-20 15:17:32', '2023-04-20 15:17:32'),
('f2346691d6535c71ce2b741f3f6310da155e70ba398b44130ab33d1f2462da5ab24085cc0e9948cd', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:55:23', '2022-04-29 15:55:23', '2023-04-29 15:55:23'),
('f2df17db2061833fcb0bcafbb3d4e7b10aa0bfcb6ffa1fe997c97e8b4e85e842728aabdf59257c00', 1, 5, 'authToken', '[]', 0, '2022-04-13 17:41:04', '2022-04-13 17:41:04', '2023-04-13 17:41:04'),
('f2e6d9fa03aa3cad7a70c4b772aa41a8cf397b7db4c12fcffbe7f30b09ee910c548e70b896929a34', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:27:09', '2022-04-20 14:27:09', '2023-04-20 14:27:09'),
('f316419cba9eb29f3ad40a5bd01cd8a3a22de0d96e315c7e0f0eb9950cf3ecb05b35b027bc8eb9f9', 2, 5, 'authToken', '[]', 0, '2022-04-27 14:34:54', '2022-04-27 14:34:54', '2023-04-27 14:34:54'),
('f3979ea8a350c900c51f7e5963a4b5e24fd9c9931f6e50a1709b76d54b0b2e50b0163f48e9d850cb', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:27:43', '2022-04-20 14:27:43', '2023-04-20 14:27:43'),
('f397d53c1537c09318e1b34b4fc511ee57cf8fdde4b17fc52c8f430c08da259af48ae63394b917eb', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:55:59', '2022-04-26 12:55:59', '2023-04-26 12:55:59'),
('f4d07e1f263fbbe04584ac03b3946beab1dc0cd8ccf339fedbd0d397b3b76b49c6af5b7e112298d6', 110, 5, 'authToken', '[]', 0, '2022-04-21 14:14:34', '2022-04-21 14:14:34', '2023-04-21 14:14:34'),
('f541d4835fdac1d2f68a770aef57f1af426cede160944892f9fe56cd3d8d6e50bd32d0d9c7372bdb', 63, 5, 'authToken', '[]', 0, '2022-04-20 14:32:56', '2022-04-20 14:32:56', '2023-04-20 14:32:56'),
('f62a9bd908c443e20fb1e54f072a7341e19be09964ed53f81d79bb8fd880c55c353e6486107f0734', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:52', '2022-05-04 13:56:52', '2023-05-04 13:56:52'),
('f6648d447aea3d6db95207785f4eee7e062c6d372922241d695e8a65f9af29471e903be57c36b513', 5, 5, 'authToken', '[]', 0, '2022-04-15 15:04:27', '2022-04-15 15:04:27', '2023-04-15 15:04:27'),
('f70a7196fed06ac26b478841cc9195432bd8b659bb3061c57b6d4b04273bd2f64edd37cb88cf42c2', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:21:41', '2022-05-03 19:21:41', '2023-05-03 19:21:41'),
('f74e498e44f43733e8dc2bbcb0bf8f80a085baa206f8bb28bc1946841afd4b85ab3e6fb0994fa5b6', 9, 5, 'authToken', '[]', 0, '2022-05-03 11:19:56', '2022-05-03 11:19:56', '2023-05-03 11:19:56'),
('f767d3863724f7edc10d4d2d4449305a0a3e69a540378b4edcb218a388c67f14b993f945ca606626', 1, 5, 'authToken', '[]', 0, '2022-04-12 16:18:35', '2022-04-12 16:18:35', '2023-04-12 16:18:35'),
('f7a63698a619c1e0c21a6a050e04965c0b19cd2b72c4aebe0e7280c79481f83f5f43fdcdca819475', 7, 5, 'authToken', '[]', 0, '2022-05-06 12:06:45', '2022-05-06 12:06:45', '2023-05-06 12:06:45'),
('f7f47da23a8048d0424e94a7f773edba4c707dfb367bdfe7b0876a3a99e84b6da5f8a2ff43c6e3b8', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('f81eed1ed5f7125d2d92e1efc40d30b5cc5d9b094360ad1e54c172031038e4fe6858dde62667d231', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:09:51', '2022-05-03 19:09:51', '2023-05-03 19:09:51'),
('f84f082d5c0a2f86cd4c43653026837ea3d2b60685abdbf2c17329094d04e5660e5a84d8b5c2dd0a', 7, 5, 'authToken', '[]', 0, '2022-05-05 16:35:01', '2022-05-05 16:35:01', '2023-05-05 16:35:01'),
('f862b7046bb32e64db7465b09dcff31da5b3f0715263252f1141561cd42773a23c8e3679d7cb1442', 113, 5, 'authToken', '[]', 0, '2022-04-21 14:17:22', '2022-04-21 14:17:22', '2023-04-21 14:17:22'),
('f88fba66d7861cfaeda520f3921918318c41973a5ef4ce2a60c84c79b710c2d43286e5f15d8bb54b', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('f8bd4b75a54784455a08c89ab93083cf048dd3547fd4cee88c74335e0e5507d6d1251208d362c183', 5, 5, 'authToken', '[]', 0, '2022-04-19 11:14:02', '2022-04-19 11:14:02', '2023-04-19 11:14:02');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f9b64011c7a6c0c3d810b16182324db7f0d9c59ab9f66235f30856e2d7aaaefb158cf9b34e3906c4', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:43', '2022-04-26 12:58:43', '2023-04-26 12:58:43'),
('f9f14443c0ee92843f702a2fbde30aa44e9eda63fe4aa0c6adcc8c873507ed134f16557998858a77', 7, 5, 'authToken', '[]', 0, '2022-05-05 15:57:46', '2022-05-05 15:57:46', '2023-05-05 15:57:46'),
('fa300e2b47202ccdd24b90335e1e774d51c9f6e5b8b84059c3cf95d15efb60ff644970ee71cd9cbf', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:56:55', '2022-05-04 13:56:55', '2023-05-04 13:56:55'),
('fa7e9db330ecb5f5a3491af638cb0f203464c7cd9bf9d8f15200acbb411633f1866d63dd384e9f1f', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:53:08', '2022-04-29 15:53:08', '2023-04-29 15:53:08'),
('fc280ab4bd2d8401e9f4d6a5d0781917ee4c196246320b12484e076678d46691e7b032644c83dc57', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:56:52', '2022-04-26 12:56:52', '2023-04-26 12:56:52'),
('fc5dee7e4a5ab111d933d913c24f7570cc6c625131e67c2b1ac1fc49218a51ac700f7686b1414b9f', 2, 5, 'authToken', '[]', 0, '2022-04-26 12:58:43', '2022-04-26 12:58:43', '2023-04-26 12:58:43'),
('fc60bdaa374083510bf558092d4efe2328cd01f353931d9b526275b368113db78e3c5bfdddb4b380', 110, 5, 'authToken', '[]', 0, '2022-04-20 15:17:37', '2022-04-20 15:17:37', '2023-04-20 15:17:37'),
('fc9e561fb51ee07692dd189fa2aa3779548658930f4974d60110c766880d01253d83bee20abf39cc', 11, 5, 'authToken', '[]', 0, '2022-05-04 13:26:28', '2022-05-04 13:26:28', '2023-05-04 13:26:28'),
('fc9f5094f59aa51d0476a25bd6c1120abb3d1cf6c207fbf6e700cb714072d9687e930f1000ff6d73', 7, 5, 'authToken', '[]', 0, '2022-05-04 10:45:05', '2022-05-04 10:45:05', '2023-05-04 10:45:05'),
('fce3d0fa4facf83fa71f06cb3fa896e60744ae4b64ce1c98ba7023df68d5a4b521791d4c17f1a4ee', 14, 5, 'authToken', '[]', 0, '2022-04-19 14:40:44', '2022-04-19 14:40:44', '2023-04-19 14:40:44'),
('fd2ef8a0d6ee7be7aa3cf1a2d6daa42de02d2d08da037215e9d63dd4f01cb49aba7024829c19d382', 15, 5, 'authToken', '[]', 0, '2022-04-20 09:39:45', '2022-04-20 09:39:45', '2023-04-20 09:39:45'),
('fd5a6f4d8d9d76aa7ed74405e11bcf38f74a0458e89271a8bc3e4d453f2ab0d96152c59f4ee6a115', 5, 5, 'authToken', '[]', 0, '2022-04-15 12:36:50', '2022-04-15 12:36:50', '2023-04-15 12:36:50'),
('fd9cf0b2e595c780ef65a3fb03efcafedd5b1b1af604873fe7ef481ed390abe3601b683c262ad885', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:13:21', '2022-05-03 19:13:21', '2023-05-03 19:13:21'),
('fddb6aefed13a8bb1ff81cbb5fddc367952051e9bd6ee082e030be8aa6f5ad273c3134521a03a262', 7, 5, 'authToken', '[]', 0, '2022-04-29 15:46:35', '2022-04-29 15:46:35', '2023-04-29 15:46:35'),
('febe7ee692b71afbe7cb7b89f02e65d00007364c6d3b03decc9367930396cc54bec097963a86093f', 9, 5, 'authToken', '[]', 0, '2022-05-03 16:52:00', '2022-05-03 16:52:00', '2023-05-03 16:52:00'),
('ff498dcdd6576a3b62d8fc1775cd69bb26a0934cf12e6ebd4fee16869339900d15d6b1f9bd816ce5', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:02', '2022-05-03 19:11:02', '2023-05-03 19:11:02'),
('ff6024dc54eac1bcafc03e10030477607a09eaef06efb5141bd7670bb77de5be7b69dd4307dedeef', 11, 5, 'authToken', '[]', 0, '2022-05-03 19:11:06', '2022-05-03 19:11:06', '2023-05-03 19:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'LaCommunale Personal Access Client', '1Fl7v7uDNOFKiKnvocCFeF9lENI6pZm7mcx2Huxm', NULL, 'http://localhost', 1, 0, 0, '2022-04-11 10:35:18', '2022-04-11 10:35:18'),
(2, NULL, 'LaCommunale Password Grant Client', 'nXYaqnLOSGANy0PvsQgNjc6OIoV74rqalwxIQEai', 'users', 'http://localhost', 0, 1, 0, '2022-04-11 10:35:18', '2022-04-11 10:35:18'),
(3, NULL, 'LaCommunale Personal Access Client', 'AIJZGccWUikUWUtNNt4F7v3FL2j16M7L3YHAlYba', NULL, 'http://localhost', 1, 0, 0, '2022-04-12 15:48:04', '2022-04-12 15:48:04'),
(4, NULL, 'LaCommunale Password Grant Client', 'gq7fwq2qPE66pN9enJ9CGhL7fRUQeww7lttBSttb', 'users', 'http://localhost', 0, 1, 0, '2022-04-12 15:48:04', '2022-04-12 15:48:04'),
(5, NULL, 'LaCommunale Personal Access Client', 'gwW8FgxgTeFuxcgShAcuQPmRsda9iFNMbskRwCTc', NULL, 'http://localhost', 1, 0, 0, '2022-04-12 16:14:06', '2022-04-12 16:14:06'),
(6, NULL, 'LaCommunale Password Grant Client', '1lXDD8BitLRy0beYyvz3gk1erXvGO96v0LTF9Zt7', 'users', 'http://localhost', 0, 1, 0, '2022-04-12 16:14:06', '2022-04-12 16:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-04-11 10:35:18', '2022-04-11 10:35:18'),
(2, 3, '2022-04-12 15:48:04', '2022-04-12 15:48:04'),
(3, 5, '2022-04-12 16:14:06', '2022-04-12 16:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `libelle` varchar(191) NOT NULL,
  `point` int(11) NOT NULL,
  `IdSondage` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `libelle`, `point`, `IdSondage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Test13', 13, 1, '2022-04-29 14:15:33', '2022-04-29 15:24:53', '2022-04-29 15:24:53'),
(2, 'Test2', 2, 1, '2022-04-29 14:15:33', '2022-04-29 15:26:20', NULL),
(3, 'Test2', 6, 1, '2022-04-29 14:44:30', '2022-04-29 15:26:39', NULL),
(4, 'Test3', 6, 1, '2022-04-29 14:46:24', '2022-04-29 14:46:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paiements`
--

CREATE TABLE `paiements` (
  `id` int(11) NOT NULL,
  `montant` int(50) NOT NULL,
  `reseau` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `id` int(11) NOT NULL,
  `nombre_place` int(11) NOT NULL,
  `nom_proprietaire` varchar(191) NOT NULL,
  `IdCommune` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `participer`
--

CREATE TABLE `participer` (
  `id` int(11) NOT NULL,
  `IdCollecte` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', '87fbb9637954a4cb31eba234d8d3a18bdf8995f0d9579fd7d7d37dcd05e371e4', '[\"*\"]', NULL, '2022-04-12 14:32:00', '2022-04-12 14:32:00'),
(2, 'App\\Models\\User', 1, 'authToken', 'e9211c51b78678bb0621ffdd3a87572eb613c8c35b060e238c7eadbac8d71f9e', '[\"*\"]', NULL, '2022-04-12 14:48:28', '2022-04-12 14:48:28'),
(3, 'App\\Models\\User', 1, 'authToken', '73bcd343990a2ac8f54681c04e55143a505605b34c28eed8b4455c28e281c5cc', '[\"*\"]', NULL, '2022-04-12 14:54:57', '2022-04-12 14:54:57'),
(4, 'App\\Models\\User', 1, 'authToken', '4f15ac183f930e19fc84919b0335197648362846a7384389e1c2631333130e6a', '[\"*\"]', NULL, '2022-04-12 14:58:23', '2022-04-12 14:58:23'),
(5, 'App\\Models\\User', 1, 'authToken', 'a39d8653122355529a2e28fb72d9dba934093924309a2d90116b15437296e340', '[\"*\"]', NULL, '2022-04-12 14:59:52', '2022-04-12 14:59:52'),
(6, 'App\\Models\\User', 1, 'authToken', 'a7d969c6c41133fff7863a39a0e33fd87ff3ea992c42438209418c59cf8b6bf2', '[\"*\"]', NULL, '2022-04-12 15:01:15', '2022-04-12 15:01:15'),
(7, 'App\\Models\\User', 1, 'authToken', 'f5e40ec199d6b2c00579541937cf4ea8b44db13b50569f3d5ffba26cf6b2cf77', '[\"*\"]', NULL, '2022-04-12 15:02:57', '2022-04-12 15:02:57'),
(8, 'App\\Models\\User', 1, 'authToken', '860f4c528de220b3162a079cf8ab67968b1406d6fd86d564ca26aa8d93f8e507', '[\"*\"]', NULL, '2022-04-12 15:07:36', '2022-04-12 15:07:36'),
(9, 'App\\Models\\User', 1, 'authToken', '08b95c1e54581e47d2770adba70508da8fe207ac230add5427d490275d5121fb', '[\"*\"]', NULL, '2022-04-12 15:16:53', '2022-04-12 15:16:53'),
(10, 'App\\Models\\User', 1, 'authToken', '85be85d748aa8aa036852fb08087e7ec5f5dab157d5a9e308e6128cd3382a120', '[\"*\"]', NULL, '2022-04-12 15:16:54', '2022-04-12 15:16:54'),
(11, 'App\\Models\\User', 1, 'authToken', '8a0855f06b882e75dab2b676d8cfc3cc1e9a3a862b2c00559160c145c315c06e', '[\"*\"]', NULL, '2022-04-12 15:16:55', '2022-04-12 15:16:55'),
(12, 'App\\Models\\User', 1, 'authToken', '29c0b6dd44653e9c1aa3e72b8b399aca5dba7d741ca954a492488c523380e4bf', '[\"*\"]', NULL, '2022-04-12 15:17:59', '2022-04-12 15:17:59'),
(13, 'App\\Models\\User', 1, 'authToken', 'bb0c9afdbc81b9073a28116472a4fabdb53312bce32d2a3f22874162f4895ecd', '[\"*\"]', NULL, '2022-04-12 15:18:01', '2022-04-12 15:18:01'),
(14, 'App\\Models\\User', 1, 'authToken', 'b218f6959dc648d152cdd8fc7d3da65bf666ea7cdb82bbbc7ea7e0c01a251905', '[\"*\"]', NULL, '2022-04-12 15:21:04', '2022-04-12 15:21:04'),
(15, 'App\\Models\\User', 1, 'authToken', '11bf9a7bc5139da56d71523ed335ebf8849a56e2995d724423d0ed24578a1753', '[\"*\"]', NULL, '2022-04-12 15:21:05', '2022-04-12 15:21:05'),
(16, 'App\\Models\\User', 1, 'authToken', 'c267f3979a7f0fba36a67eda252b9528833acf92bb18a045fbc5bb2d0c5067e9', '[\"*\"]', NULL, '2022-04-12 15:21:19', '2022-04-12 15:21:19'),
(17, 'App\\Models\\User', 1, 'authToken', '29a5708b96771524a992ab60f885c6e1a5836b4600a19c5582a103584a7a94d9', '[\"*\"]', NULL, '2022-04-12 15:27:55', '2022-04-12 15:27:55'),
(18, 'App\\Models\\User', 1, 'authToken', '6e611fed461f6c89fa47f7053dce2fbc48c93421872e13813df6de3c7e99dc1a', '[\"*\"]', NULL, '2022-04-12 15:27:56', '2022-04-12 15:27:56'),
(19, 'App\\Models\\User', 1, 'authToken', 'fbbd1301c14a8212ba58ff8e8bfbbd82bbfd7625eb4acccd295501a2e916928f', '[\"*\"]', NULL, '2022-04-12 15:27:57', '2022-04-12 15:27:57'),
(20, 'App\\Models\\User', 1, 'authToken', '977a286fb700069162f1bfe52b393aa3ee5b1ecea213321307b71139b79b04e8', '[\"*\"]', NULL, '2022-04-12 15:29:54', '2022-04-12 15:29:54'),
(21, 'App\\Models\\User', 1, 'authToken', 'fc2372bcaffb29ef46dd739d990836ac02dda985eb5e669e75019a8aa7629558', '[\"*\"]', NULL, '2022-04-12 15:30:16', '2022-04-12 15:30:16'),
(22, 'App\\Models\\User', 1, 'authToken', 'a03d14b9de556d8d5f160f2a679b48d31082e8ab0b7d29a745b3a02917c8cdf4', '[\"*\"]', NULL, '2022-04-12 15:45:15', '2022-04-12 15:45:15'),
(23, 'App\\Models\\User', 1, 'authToken', '71e5e095bbc463d507ccfe807dcfd055ce471dfdec29141e09e0e911c324c392', '[\"*\"]', NULL, '2022-04-12 15:46:34', '2022-04-12 15:46:34'),
(24, 'App\\Models\\User', 1, 'authToken', 'c23bfcb8955f74635bd84caf6adbed369d2d18d229f90100859e1cbab4a1cf3e', '[\"*\"]', NULL, '2022-04-12 15:46:47', '2022-04-12 15:46:47'),
(25, 'App\\Models\\User', 1, 'authToken', '250a5882432eb9648bcb964f5d79e378430e7cf6ae112eba7cf17a6298ceef37', '[\"*\"]', NULL, '2022-04-12 15:48:19', '2022-04-12 15:48:19'),
(26, 'App\\Models\\User', 1, 'authToken', '87e5cb9bddcc52dd8f68c6b0f5c98cc95b23a9658e625fc8ee6e03456dc5081d', '[\"*\"]', NULL, '2022-04-12 16:01:07', '2022-04-12 16:01:07'),
(27, 'App\\Models\\User', 1, 'authToken', '574e9d2932b29036211b30704d1f15c9d3e5de4340b2caf3211f0affc19605d4', '[\"*\"]', NULL, '2022-04-12 16:01:28', '2022-04-12 16:01:28'),
(28, 'App\\Models\\User', 1, 'authToken', 'a36c28c10eba8d4095a59b34ee50edcade4fc124e703fc3c217eb20e29eb762b', '[\"*\"]', NULL, '2022-04-12 16:05:25', '2022-04-12 16:05:25'),
(29, 'App\\Models\\User', 1, 'authToken', '743689cfbbc5c72db4c64ef5370e723f410c697b2b5efd1027e6c612e0a53d37', '[\"*\"]', NULL, '2022-04-12 16:05:27', '2022-04-12 16:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `place_disponibles`
--

CREATE TABLE `place_disponibles` (
  `id` int(11) NOT NULL,
  `NombrePlaceDisponible` int(11) NOT NULL,
  `IdParking` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(11) NOT NULL,
  `titre` varchar(191) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdTypeInformation` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `problemes`
--

CREATE TABLE `problemes` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `commentaire` varchar(155) NOT NULL,
  `localisation` varchar(255) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `problemes`
--

INSERT INTO `problemes` (`id`, `image`, `commentaire`, `localisation`, `IdUser`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'roland.jpg', 'Je suis fou', 'adjamé', 2, '2022-04-27 18:43:43', '2022-04-27 18:43:43', NULL),
(2, 'roland1.jpg', 'je suis folle', 'plateauCommune', 3, '2022-04-27 18:43:43', '2022-04-27 18:43:43', NULL),
(3, 'Roland09.jpg', 'Je t\'aime', 'Abobo', 1, '2022-04-27 19:11:16', '2022-04-27 19:11:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projets`
--

CREATE TABLE `projets` (
  `id` int(11) NOT NULL,
  `titre` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projets`
--

INSERT INTO `projets` (`id`, `titre`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Projet Smarty City 1', 'transport', '2022-04-26 18:10:52', '2022-04-26 18:55:14', '2022-04-26 18:55:14'),
(2, 'God Smarty City 2', 'Juste une descripion', '2022-04-26 18:10:52', '2022-04-26 18:53:19', NULL),
(3, 'SimAuto', 'Automobile', '2022-04-26 18:27:39', '2022-04-26 18:27:39', NULL),
(4, 'God Smarty City 2', 'Juste une descripion', '2022-04-26 18:47:32', '2022-04-26 18:47:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proposition_idees`
--

CREATE TABLE `proposition_idees` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdTheme` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proposition_idees`
--

INSERT INTO `proposition_idees` (`id`, `description`, `IdUser`, `IdTheme`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Modification  Proposition d\'idée', 1, 1, '2022-04-27 13:04:56', '2022-04-27 14:29:06', NULL),
(2, 'Proposition d\'idée', 1, 2, '2022-04-27 14:37:42', '2022-04-27 14:45:03', '2022-04-27 14:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `reagir`
--

CREATE TABLE `reagir` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdPropositionIdee` int(11) NOT NULL,
  `like` tinyint(1) NOT NULL DEFAULT '0',
  `dislike` tinyint(1) NOT NULL DEFAULT '0',
  `signaler` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdTypeUtilisateur` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `IdUser`, `IdTypeUtilisateur`, `created_at`, `updated_at`) VALUES
(1, 20, 2, '2022-05-06 19:45:23', '2022-05-06 19:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `service_adminis`
--

CREATE TABLE `service_adminis` (
  `id` int(11) NOT NULL,
  `status` text NOT NULL,
  `jsonDonnee` json NOT NULL,
  `IdTypeService` int(11) NOT NULL,
  `IdPaiement` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sondages`
--

CREATE TABLE `sondages` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sondages`
--

INSERT INTO `sondages` (`id`, `description`, `IdUser`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ok sondage1', 3, '2022-04-29 10:23:31', '2022-04-29 10:59:31', '2022-04-29 10:59:31'),
(2, 'mangez vous du Riz?', 3, '2022-04-29 10:23:31', '2022-04-29 10:23:31', NULL),
(3, 'Ok sondage2', 3, '2022-04-29 10:37:05', '2022-04-29 10:37:05', NULL),
(4, 'Ok sondage3', 3, '2022-04-29 11:22:35', '2022-04-29 11:22:35', NULL),
(5, 'Ok sondage4', 3, '2022-04-29 11:22:36', '2022-04-29 11:22:36', NULL),
(6, 'Ta Gueule', 7, '2022-05-05 14:43:02', '2022-05-05 14:43:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `titre` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `titre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Urbanisation', '2022-04-27 11:02:30', '2022-04-27 11:02:30', NULL),
(2, 'Industrialisation', '2022-04-27 11:02:30', '2022-04-27 11:02:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_informations`
--

CREATE TABLE `type_informations` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_informations`
--

INSERT INTO `type_informations` (`id`, `titre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Religion', '2022-04-13 17:20:06', '2022-04-13 17:20:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_services`
--

CREATE TABLE `type_services` (
  `id` int(11) NOT NULL,
  `typeService` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type_utilisateurs`
--

CREATE TABLE `type_utilisateurs` (
  `id` int(11) NOT NULL,
  `profil` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_utilisateurs`
--

INSERT INTO `type_utilisateurs` (`id`, `profil`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', '2022-04-12 11:53:52', '2022-04-12 11:53:52', NULL),
(2, 'membre', '2022-04-12 11:53:52', '2022-04-12 11:53:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` text CHARACTER SET utf8mb4,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `lieu_naissance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IdCommune` int(11) NOT NULL,
  `IdTypeUtilisateur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `prenom`, `phone`, `sexe`, `date_naissance`, `lieu_naissance`, `IdCommune`, `IdTypeUtilisateur`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kouamé4', 'roland04@gmail.com', '2022-05-06 10:58:11', '$2y$10$1SfQe74li3j7RpBM2IH0ter67cH7v97AIpTU7WttI4yVOtHvTZ9Uy', NULL, 'Kouamé Gboko', '0767544122', 'M', '2022-05-12', 'Bondougou', 1, 1, '2022-05-05 18:54:37', '2022-05-06 10:58:11', NULL),
(2, 'tesef', 'test@gmail.com', '2022-04-29 15:40:54', '$2y$10$jSz8mR3uiPdQQavmJnmYI.iucxUSF6zgOosNrl1LgZrv0VeDBVq3y', NULL, 'ladj', '0566305531', 'M', '2000-02-11', 'Bondoukou', 1, 1, '2022-04-29 15:40:54', '2022-04-29 15:40:54', NULL),
(3, 'kamara', 'test2@gmail.com', '2022-04-27 11:53:59', '$2y$10$6N/suXBbLYeEXBvMFWjPFe0/vOZxcO0loKFIJw1.aaDKw7whH1P3K', NULL, 'aristide', '0202020202', 'M', '2000-09-11', 'Bouna', 1, 1, '2022-04-27 11:53:59', '2022-04-29 10:55:31', NULL),
(4, 'kamara', 'test3@gmail.com', '2022-04-29 11:38:32', '$2y$10$5T/E0.1AALVyd.sOA6TzX.wFGu3qRKJH83aUnYUd2sgYQ9Iq8xeMy', NULL, 'el mr', '0566305532', 'M', '2018-06-22', 'Bondoukou', 1, 1, '2022-04-29 11:38:32', '2022-04-29 11:38:32', NULL),
(5, 'kamara', 'test4@gmail.com', '2022-04-29 11:40:21', '$2y$10$Y1Q0gMU6Ism7/.d3J31u6O3W9T.KNWuK/GEGobdAH4EBD9W0TKEGO', NULL, 'test4', '0566305533', 'M', '2018-12-27', 'Gagnoa', 1, 1, '2022-04-29 11:40:21', '2022-04-29 11:40:21', NULL),
(6, 'kamara', 'test5@gmail.com', '2022-04-29 11:47:06', '$2y$10$KlFMyY/vfh2ovocF7YDRgOYaMlzf91yO7DGCMD29wAjbNQvF455Eu', NULL, 'test4', '0566305536', 'M', '1996-10-07', 'Bouna', 1, 1, '2022-04-29 11:47:06', '2022-04-29 11:47:06', NULL),
(7, 'kamara', 'outis1@gmail.com', '2022-05-05 16:56:17', '$2y$10$1SfQe74li3j7RpBM2IH0ter67cH7v97AIpTU7WttI4yVOtHvTZ9Uy', NULL, 'el adj', '0566305535', 'M', NULL, 'Bouna', 1, 1, '2022-05-05 16:56:17', '2022-05-05 16:56:17', NULL),
(8, 'kamara', 'silue1@gmail.com', '2022-05-03 10:59:33', '$2y$10$ur1rYidmV0323Kse/aF8/.Yx.j0X/RX9gaCNtdHAqlKgXdD/gu6WO', NULL, 'aristide', '0707070707', 'F', '2000-09-11', 'Bouna', 1, 1, '2022-05-03 10:59:33', '2022-05-03 10:59:33', NULL),
(9, 'Kekrend', 'tes33@gmail.com', '2022-05-04 16:06:10', '$2y$10$wKlo1zMW.3821PQgg64TdOWvWxUQ8LGOKbKYqoHTlDYVeVS4KKrf2', NULL, 'ladj', '0566235530', 'M', '2000-06-11', 'Bondoukou', 1, 1, '2022-05-04 16:06:10', '2022-05-04 16:06:10', NULL),
(11, 'KOuassi', 'jean@gmail.com', '2022-05-03 13:05:43', '$2y$10$omlrcaPdZZdcrEVXmd3n3u/7RF.R2HaW4EZGU7yfCInzEh6CRrmcW', NULL, 'Yves', '098765490', 'M', '2013-04-17', 'Daloa', 1, 1, '2022-05-03 13:05:43', '2022-05-03 13:05:43', NULL),
(12, 'ruthy', 'sukl@gmail.com', '2022-05-03 19:39:26', '$2y$10$JP1fqe4IDe9oIZowC9cHzOoSnPLOi/PdLEvSOOcsG7ROTH9YuRMM6', NULL, 'ruthy', '0123456789', 'M', '2020-05-03', 'yakro', 1, 1, '2022-05-03 19:39:26', '2022-05-03 19:39:26', NULL),
(13, 'leMiel', 'leMiel@gmail.com', '2022-05-06 11:32:08', '$2y$10$5NKzX7V7b9kFWJ5.E1lMAu9j6WJmU7I7WP896rMdhzdYwt9F87Q6O', NULL, 'roge', '0908070605', 'M', '1979-12-28', 'Bondiali', 1, 1, '2022-05-06 11:32:08', '2022-05-06 11:32:08', NULL),
(14, 'leMiel', 'leM@gmail.com', '2022-05-06 11:33:08', '$2y$10$uuB7x/Mz9TQ2EYSh/x6u5.J81ub97SE3.nUfDpVKAJxjjmZC0Azse', NULL, 'roge', '0000000000', 'M', '1975-01-28', 'Bondiali', 1, 1, '2022-05-06 11:33:08', '2022-05-06 11:33:08', NULL),
(15, 'le chef', 'kamaraet@gmail.com', '2022-05-06 17:04:55', '$2y$10$8RgTeZ6DwJEQZmV.xLFFJOKm4tFdRwXAZ0WWlG.C2B6mpYWVXs07a', NULL, 'le best', '1234567891', 'H', '1992-07-06', 'Bouna', 1, 1, '2022-05-06 17:04:55', '2022-05-06 17:04:55', NULL),
(16, 'el', 'silu1@gmail.com', '2022-05-06 17:05:27', '$2y$10$wyVDhBJ7bCditHiJw5vnAex02d1w9.zLMj5eAIdvT/6DsuVKZNQyG', NULL, 'aristide', '07070707076', 'F', '2000-09-11', 'Bouna', 1, 1, '2022-05-06 17:05:27', '2022-05-06 17:05:27', NULL),
(17, 'el', 'sil1@gmail.com', '2022-05-06 19:30:58', '$2y$10$yp/rIaS.VRA7pW9EReLo9uvB2XVANJLmIlreddKBbIxCNc8SIoRle', NULL, 'aristide', '070707070763', 'F', '2000-09-11', 'Bouna', 1, 1, '2022-05-06 19:30:58', '2022-05-06 19:30:58', NULL),
(18, 'el', 'siz1@gmail.com', '2022-05-06 19:42:24', '$2y$10$CyLoBFpp6kIJJjbRndZ3Y.xT7Rwy8LWAvENMK.xAn5aLP2bf5Y9Tu', NULL, 'aristide', '0707070707632', 'F', '2000-09-11', 'Bouna', 1, 1, '2022-05-06 19:42:24', '2022-05-06 19:42:24', NULL),
(19, 'el', 'sizz1@gmail.com', '2022-05-06 19:44:06', '$2y$10$95XN3.AsqXq4b90N8UIUOOqOV/qABZqxM4Oogz7sE/9U5p.gWtZEW', NULL, 'aristide', '0707', 'F', '2000-09-11', 'Bouna', 1, 1, '2022-05-06 19:44:06', '2022-05-06 19:44:06', NULL),
(20, 'el', 'z@gmail.com', '2022-05-06 19:45:23', '$2y$10$rJZuo0AhRpcJU.8tAh5O4OvxcmLznl1z/t85W7iBJVYdvk2u5tiEC', NULL, 'aristide', '07077', 'F', '2000-09-11', 'Bouna', 1, 1, '2022-05-06 19:45:23', '2022-05-06 19:45:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `IdUser` int(11) NOT NULL,
  `IdOption` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartes`
--
ALTER TABLE `cartes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collectes`
--
ALTER TABLE `collectes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdProjet` (`IdProjet`);

--
-- Indexes for table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demandeExtraits`
--
ALTER TABLE `demandeExtraits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`) USING BTREE,
  ADD KEY `IdTypeInformations` (`IdTypeInformation`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdSondage` (`IdSondage`) USING BTREE;

--
-- Indexes for table `paiements`
--
ALTER TABLE `paiements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdCommune` (`IdCommune`) USING BTREE;

--
-- Indexes for table `participer`
--
ALTER TABLE `participer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`) USING BTREE,
  ADD KEY `IdCollecte` (`IdCollecte`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `place_disponibles`
--
ALTER TABLE `place_disponibles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdParking` (`IdParking`) USING BTREE;

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`) USING BTREE,
  ADD KEY `IdTypeInformation` (`IdTypeInformation`) USING BTREE;

--
-- Indexes for table `problemes`
--
ALTER TABLE `problemes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `IdUser` (`IdUser`) USING BTREE;

--
-- Indexes for table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposition_idees`
--
ALTER TABLE `proposition_idees`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `IdUser` (`IdUser`) USING BTREE,
  ADD KEY `IdTheme` (`IdTheme`);

--
-- Indexes for table `reagir`
--
ALTER TABLE `reagir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`) USING BTREE,
  ADD KEY `IdPropositionIdee` (`IdPropositionIdee`) USING BTREE;

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`) USING BTREE,
  ADD KEY `IdTypeUtilisateur` (`IdTypeUtilisateur`) USING BTREE;

--
-- Indexes for table `service_adminis`
--
ALTER TABLE `service_adminis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`),
  ADD KEY `IdPaiement` (`IdPaiement`),
  ADD KEY `IdTypeService` (`IdTypeService`);

--
-- Indexes for table `sondages`
--
ALTER TABLE `sondages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`) USING BTREE;

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_informations`
--
ALTER TABLE `type_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_services`
--
ALTER TABLE `type_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_utilisateurs`
--
ALTER TABLE `type_utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdTypeUtilisateur` (`IdTypeUtilisateur`) USING BTREE,
  ADD KEY `IdCommune` (`IdCommune`) USING BTREE;

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`) USING BTREE,
  ADD KEY `IdOption` (`IdOption`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartes`
--
ALTER TABLE `cartes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collectes`
--
ALTER TABLE `collectes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `communes`
--
ALTER TABLE `communes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `demandeExtraits`
--
ALTER TABLE `demandeExtraits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participer`
--
ALTER TABLE `participer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `place_disponibles`
--
ALTER TABLE `place_disponibles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `problemes`
--
ALTER TABLE `problemes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `proposition_idees`
--
ALTER TABLE `proposition_idees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reagir`
--
ALTER TABLE `reagir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sondages`
--
ALTER TABLE `sondages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type_informations`
--
ALTER TABLE `type_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type_services`
--
ALTER TABLE `type_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type_utilisateurs`
--
ALTER TABLE `type_utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collectes`
--
ALTER TABLE `collectes`
  ADD CONSTRAINT `collectes_ibfk_1` FOREIGN KEY (`IdProjet`) REFERENCES `projets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `demandeExtraits`
--
ALTER TABLE `demandeExtraits`
  ADD CONSTRAINT `demandeextraits_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `informations`
--
ALTER TABLE `informations`
  ADD CONSTRAINT `informations_ibfk_1` FOREIGN KEY (`IdTypeInformation`) REFERENCES `type_informations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `informations_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`IdSondage`) REFERENCES `sondages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parkings`
--
ALTER TABLE `parkings`
  ADD CONSTRAINT `parkings_ibfk_1` FOREIGN KEY (`IdCommune`) REFERENCES `communes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `participer_ibfk_1` FOREIGN KEY (`IdCollecte`) REFERENCES `collectes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participer_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `place_disponibles`
--
ALTER TABLE `place_disponibles`
  ADD CONSTRAINT `place_disponibles_ibfk_1` FOREIGN KEY (`IdParking`) REFERENCES `parkings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `preferences`
--
ALTER TABLE `preferences`
  ADD CONSTRAINT `preferences_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `preferences_ibfk_2` FOREIGN KEY (`IdTypeInformation`) REFERENCES `type_informations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `problemes`
--
ALTER TABLE `problemes`
  ADD CONSTRAINT `problemes_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `proposition_idees`
--
ALTER TABLE `proposition_idees`
  ADD CONSTRAINT `proposition_idees_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `proposition_idees_ibfk_3` FOREIGN KEY (`IdTheme`) REFERENCES `theme` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reagir`
--
ALTER TABLE `reagir`
  ADD CONSTRAINT `reagir_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reagir_ibfk_2` FOREIGN KEY (`IdPropositionIdee`) REFERENCES `proposition_idees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_permissions_ibfk_2` FOREIGN KEY (`IdTypeUtilisateur`) REFERENCES `type_utilisateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sondages`
--
ALTER TABLE `sondages`
  ADD CONSTRAINT `sondages_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`IdTypeUtilisateur`) REFERENCES `type_utilisateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`IdCommune`) REFERENCES `communes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_ibfk_1` FOREIGN KEY (`IdOption`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_ibfk_2` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
