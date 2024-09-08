-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 01:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'quae itaque', 'quae-itaque', '2023-06-17 21:13:11', '2023-06-17 21:13:11'),
(2, 'itaque ducimus', 'itaque-ducimus', '2023-06-17 21:13:11', '2023-06-17 21:13:11'),
(3, 'esse laborum', 'esse-laborum', '2023-06-17 21:13:11', '2023-06-17 21:13:11'),
(4, 'praesentium qui', 'praesentium-qui', '2023-06-17 21:13:11', '2023-06-17 21:13:11'),
(5, 'nihil placeat', 'nihil-placeat', '2023-06-17 21:13:11', '2023-06-17 21:13:11'),
(6, 'magni libero', 'magni-libero', '2023-06-17 21:13:11', '2023-06-17 21:13:11'),
(8, 'test category', 'test-category', '2023-07-26 04:15:17', '2023-07-26 04:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comments` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comments`, `rating`, `status`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Very good product', 4, 0, 1, 1, NULL, NULL),
(2, 'Testing only', 3, 0, 2, 5, '2023-10-06 05:06:37', '2023-10-06 05:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `offer` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2023_06_18_034122_create_categories_table', 2),
(6, '2023_06_18_034146_create_products_table', 2),
(7, '2023_08_21_001639_create_product_images_table', 3),
(9, '2023_09_08_092423_create_home_sliders_table', 4),
(10, '2023_09_28_071007_create_comments_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test@gmail.com', '$2y$10$FHwjzLN4ifbz73n0UN6ly.GE1AAAiyjnBnMBCNJeX5EbBeanQOvYm', '2023-09-23 02:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `regular_price` decimal(9,2) NOT NULL,
  `sale_price` decimal(9,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Mushroom', 'corrupti-eaque-quia-laborum-minima-doloribus', 'Sed qui sit in. Deserunt eos quos eum cum ab quae rerum. Architecto enim perferendis in quod adipisci laboriosam tenetur.', 'Explicabo qui dolor quia. Sit iste veniam esse cupiditate. Maiores rerum animi sequi eveniet. Voluptas qui magnam ex totam architecto quasi dicta. Voluptas quia placeat modi provident. Perferendis nihil ratione amet asperiores quas delectus consectetur doloribus. Aut mollitia veniam natus quo consequuntur quasi nihil. Ex quod quia ut et et fugiat qui. Eum odio est aut perferendis fuga magni.', 158110.00, 100000.00, 'PRD287', 'instock', 0, 28, 5, '2023-06-17 21:14:31', '2023-08-30 20:24:24'),
(2, 'Calming Blue', 'consequatur-blanditiis-occaecati-ut-dignissimos-omnis', 'Quia quia blanditiis rerum et modi dicta debitis aut. Praesentium quam nobis dicta facere accusamus laborum. Doloribus reprehenderit qui dignissimos et.', 'Perferendis eaque cum iusto reiciendis cum. Ullam aliquam perferendis cupiditate reiciendis. Eveniet corporis facilis voluptatem odio omnis et. Beatae velit molestiae in. Qui quo amet similique saepe. Eius blanditiis maiores laudantium dicta. Quas sed dolor qui molestiae minus. Tempore et fuga ullam quas assumenda reprehenderit sit. Ipsam est voluptatem animi facere. Quam earum quas eum quia cum quaerat. Et repellendus rerum commodi autem.', 266714.00, 200000.00, 'PRD431', 'instock', 0, 27, 5, '2023-06-17 21:14:31', '2023-09-06 21:14:45'),
(3, 'White Flower', 'ut-itaque-sint-in-qui-ipsum', 'Eum quaerat non labore totam. Et et suscipit dolorum at adipisci explicabo. Cum quod sapiente praesentium ab occaecati et. Provident maiores odit culpa.', 'Aspernatur aut dolorum qui laudantium voluptatum ipsam. Asperiores quaerat possimus expedita a sit ipsa fuga. Odit ex reiciendis dolores ratione sed minus. Quia provident consequatur numquam porro id. Inventore incidunt ad tenetur occaecati quam et quasi. Inventore tenetur accusamus error tempore quas sint. Nobis qui saepe adipisci. Ut cupiditate quos vitae aut. Eos ducimus assumenda alias et.', 333651.00, 310000.00, 'PRD203', 'instock', 0, 17, 2, '2023-06-17 21:14:31', '2023-09-06 21:15:34'),
(4, 'Red Flower', 'et-quia-est-nostrum-error-eius', 'Error dolores esse ut ut. Fugit corporis suscipit deserunt aut. Aut ducimus ut sed non doloremque. Nihil quibusdam inventore magni eum.', 'A ut illum voluptatem provident vero incidunt. Sed quod modi beatae sint. Quibusdam sint voluptates possimus et. Accusamus molestias impedit eos optio. Vitae officia cum optio. Doloribus officia corporis et nesciunt minus quia omnis consequatur. Quae ut corrupti quasi adipisci illum vitae ab culpa. Eos eum quam sed minima. Quo et recusandae necessitatibus delectus sunt ea consectetur.', 209142.00, 150000.00, 'PRD165', 'instock', 0, 43, 1, '2023-06-17 21:14:31', '2023-09-06 21:16:48'),
(5, 'White Sakura ', 'iure-sed-est-doloremque-esse-architecto', 'Autem quae ratione ipsa aperiam beatae quae. Iusto quia in quod officia est nostrum natus. Cupiditate optio asperiores maiores.', 'Esse molestiae molestiae porro aut quidem ipsum. Dolorum quis alias similique blanditiis odit. Asperiores laborum commodi sed ipsam voluptas omnis. Et placeat numquam quisquam temporibus. Quasi voluptas est sed sint aliquid. Temporibus ex id consequuntur et. Quia consequatur eos beatae. In debitis velit similique. Quis molestiae molestias et incidunt natus vitae nihil.', 181933.00, 120000.00, 'PRD327', 'instock', 0, 31, 1, '2023-06-17 21:14:31', '2023-09-06 21:17:40'),
(6, 'Midnight Blossom', 'ut-hic-facere-autem-perferendis-est', 'Amet laboriosam ad quia ipsum. Magni occaecati qui architecto amet et. Tenetur natus voluptatem est et eligendi.', 'Molestias eligendi quidem non voluptas quidem. Magni omnis harum deserunt sint a perferendis necessitatibus earum. Et nesciunt enim facere velit quas beatae. Blanditiis qui mollitia in eius. Ab quos ipsum ad quisquam natus. Dolor id ut dolor dicta. Et vel nam dolores aut et. Molestiae quos error eum consequatur doloribus ab minus. Autem sed reprehenderit dignissimos molestiae. In molestias ipsam harum magnam expedita.', 318670.00, 270000.00, 'PRD304', 'instock', 0, 39, 4, '2023-06-17 21:14:31', '2023-09-06 21:18:38'),
(7, 'Amber Blossoms Sandals', 'repellendus-vitae-vitae-dolorum-voluptatem-illum', 'Ipsa deserunt ut et beatae aspernatur architecto dicta. Repellat eaque dicta odio quia consequatur sint id.', 'Officia veniam et voluptatum non quas. Aut quasi nobis tempore recusandae natus dolorem maxime. Et aliquam debitis quas ex repellendus. Aut perspiciatis ullam et fugit adipisci. Quis voluptas similique quae rerum eos excepturi dignissimos. Quas numquam possimus harum in nulla aspernatur. Architecto nemo et rerum ut voluptate non. Recusandae veritatis ut repellendus amet aut.', 129946.00, 100000.00, 'PRD205', 'instock', 0, 28, 3, '2023-06-17 21:14:31', '2023-09-06 21:19:28'),
(8, 'Twilight Horizon Jacket', 'autem-ullam-rerum-quia-aut-voluptatum', 'Qui fugiat at est quo et perferendis rerum ratione. Impedit assumenda aut consectetur sapiente corrupti est. Sed ea eos est totam quasi aut sit.', 'Voluptatem ullam dolor officia dolorum adipisci asperiores. Mollitia eveniet sint neque et quia iure quo. Rem quasi ipsum error similique tempora dolores. Eum recusandae fugit excepturi sint aut veniam labore. Quo non molestiae assumenda itaque. Qui quae aut officiis cupiditate ut accusamus. Dolor exercitationem nesciunt rem ea quae. Est quia et commodi beatae. Voluptas delectus facilis temporibus. Maxime aliquam magnam veniam dolor. Reiciendis sed blanditiis nihil autem rerum libero ut.', 223513.00, 190000.00, 'PRD380', 'instock', 0, 22, 4, '2023-06-17 21:14:31', '2023-09-06 21:25:49'),
(9, 'Steel Snickers', 'pariatur-nesciunt-earum-eos-consequuntur-est', 'Et quibusdam eligendi aut modi omnis. Nesciunt nemo in quis assumenda. Et id quia illo ipsum tempora sed. Eum numquam mollitia sit perferendis vero.', 'Beatae mollitia et amet ut quae accusamus. Ut veniam amet corporis. Aut et suscipit explicabo optio quibusdam. Reprehenderit earum sint dolor at aut. A qui aut minus facere quibusdam doloremque earum. Dolorem est vel nihil possimus et. Enim velit quas et quia voluptates voluptas. Soluta vel molestias facere quaerat.', 218629.00, 200000.00, 'PRD435', 'instock', 0, 12, 1, '2023-06-17 21:14:31', '2023-09-06 21:27:07'),
(10, 'Soft Bloom Trousers', 'nostrum-error-voluptas-ratione-sit-consequatur', 'Consectetur expedita aut ea qui aut labore totam ipsam. Eos sint saepe culpa quasi tempore. Deserunt omnis nemo qui tempore. Quos non nesciunt veritatis consequatur voluptas.', 'Aliquam omnis blanditiis praesentium labore non similique. Ullam ipsa nisi placeat eum. Sint rem facere velit et labore. Debitis similique corporis aut et temporibus. Animi laborum aut facilis eaque exercitationem. Aut velit excepturi sed molestiae vero qui nobis pariatur. Debitis a sunt ex quia id possimus. Consequatur commodi aliquam ab porro aut ducimus enim.', 345340.00, 250000.00, 'PRD482', 'instock', 0, 19, 4, '2023-06-17 21:14:31', '2023-09-06 21:28:08'),
(11, 'Darker Grey', 'ea-et-et-aut-iste-occaecati', 'Ex autem quod aut dolore neque. Quia et odio numquam quas ea id ratione. Atque suscipit voluptates inventore consequatur debitis nihil.', 'Enim mollitia adipisci vel omnis. Itaque doloremque non voluptatum. Dolorem dolores dolores magnam necessitatibus tempora aliquid. Quod impedit porro reiciendis quibusdam quia nihil. Quo esse nobis quia. A maiores totam ut sed ad quo. Sint iure ex ipsum accusantium laudantium harum. Porro maiores veniam ad voluptatem. Ea sit ea amet. Voluptas qui provident asperiores. Dolorem possimus vel voluptates commodi minima. Et optio sunt autem quis.', 378312.00, 320000.00, 'PRD394', 'instock', 0, 26, 3, '2023-06-17 21:14:31', '2023-09-06 21:41:45'),
(12, 'Meadow Breeze', 'et-pariatur-est-tempore-facere-fuga', 'Reprehenderit rerum est distinctio amet minus vitae sapiente. Impedit sit doloremque et est aspernatur impedit. Vitae reprehenderit dolores ab harum autem id iste.', 'Sint nihil fuga optio. Repudiandae accusantium sequi ut magnam maxime voluptas autem. Et beatae consequatur voluptatem facere similique inventore laboriosam debitis. Ad natus natus ut consequatur incidunt non fugiat. Sequi ut molestiae est odio. Nostrum delectus hic accusamus dolores vel. Error rem quod sapiente id dolor. Est delectus sit in aliquid ducimus debitis est. Fugit laudantium provident possimus quam omnis sint minima.', 339961.00, 299999.00, 'PRD381', 'instock', 0, 34, 1, '2023-06-17 21:14:31', '2023-09-06 21:43:02'),
(13, 'Butterfly Dress', 'voluptatem-perspiciatis-qui-iusto-nobis-commodi', 'Dolores exercitationem qui et quis repellendus. Laborum distinctio nisi libero. Et sequi aperiam dolorem magni adipisci et dolor. Voluptate exercitationem aut deserunt nostrum inventore.', 'Sunt voluptates perspiciatis ullam ipsa ut veniam. Rem consequuntur provident dolor maxime sit nihil pariatur. Nostrum exercitationem numquam et reiciendis. Quam ut ipsam velit. Corporis quis laborum minus repellendus sequi impedit corrupti. Adipisci vel quis ut iusto assumenda eius est. Deleniti itaque iusto nemo et rerum cupiditate. Perspiciatis et quia quae autem quia laborum eum praesentium.', 184143.00, 150000.00, 'PRD242', 'instock', 0, 43, 4, '2023-06-17 21:14:31', '2023-09-08 02:01:11'),
(14, 'Soft Green Bag', 'enim-ex-deleniti-nemo-omnis-quia', 'Sint exercitationem ipsa sit praesentium. Excepturi magnam voluptatem beatae. Atque tempora aliquam voluptates ut. Sunt et atque unde et sunt occaecati ut.', 'Id eos aut est sit quos repudiandae. Optio quia quibusdam impedit repellat. Laborum dolorem optio iusto eum doloremque omnis. Nihil rem et rem perspiciatis. Explicabo eos nisi voluptates autem dolor asperiores. Ex natus et consectetur. Fugiat quis distinctio maxime modi id in ratione. Et architecto nobis ea quos temporibus eligendi. Cum expedita quia ad dicta. Et dolorum adipisci qui dicta beatae rem. Rem corporis architecto qui porro temporibus enim beatae.', 382619.00, 300000.00, 'PRD145', 'instock', 0, 12, 4, '2023-06-17 21:14:31', '2023-09-08 02:01:51'),
(15, 'Flower Bennie', 'ipsum-est-voluptatibus-sunt-nulla-ut', 'Iste asperiores saepe ex autem maiores eum provident. Vero labore sit voluptas quidem itaque impedit. Omnis architecto alias sed adipisci.', 'Quidem est consequatur est adipisci. Rerum porro quia beatae quis error quos. Quia sunt autem non necessitatibus sit hic nostrum esse. Accusamus et et omnis et minus ea. Sunt quisquam aut accusantium at ipsum in hic qui. Harum in et aperiam ut dolor omnis. Nam quam tempora voluptatibus mollitia et et eligendi. Et totam maiores consequatur unde ut. Cupiditate ex nisi molestiae cum. At laboriosam recusandae quasi ut consequuntur.', 353093.00, 320000.00, 'PRD115', 'instock', 0, 11, 2, '2023-06-17 21:14:31', '2023-09-08 02:02:22'),
(16, 'Minimalist Flower', 'temporibus-consequatur-odit-qui-distinctio-saepe', 'Voluptate vel debitis nemo. Fugit perferendis nihil qui porro. Ducimus ipsa reprehenderit voluptas veritatis ut necessitatibus velit earum.', 'Et iusto enim eos aliquam placeat eos ut. Aliquam voluptas dignissimos et aut qui. Consequatur dolorem veniam et consequatur commodi. Qui minus sunt molestiae corporis dolor. Nam in voluptate vero corporis illo dicta quos est. Earum error nesciunt deleniti voluptatem. Error sed quos iste atque. Cum enim aut culpa enim. Occaecati praesentium vel voluptates. Itaque recusandae cupiditate sit. Molestiae asperiores officiis dolores asperiores possimus aut consequatur sint.', 215274.00, 200000.00, 'PRD323', 'instock', 0, 36, 3, '2023-06-17 21:14:31', '2023-09-08 02:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(12, 'corrupti-eaque-quia-laborum-minima-doloribus', '16934522640.jpg', '1', '2023-08-30 20:24:24', '2023-08-30 20:24:24'),
(13, 'corrupti-eaque-quia-laborum-minima-doloribus', '16934522641.jpg', '1', '2023-08-30 20:24:24', '2023-08-30 20:24:24'),
(14, 'consequatur-blanditiis-occaecati-ut-dignissimos-omnis', '16940600840.jpg', '1', '2023-09-06 21:14:45', '2023-09-06 21:14:45'),
(15, 'consequatur-blanditiis-occaecati-ut-dignissimos-omnis', '16940600851.jpg', '1', '2023-09-06 21:14:45', '2023-09-06 21:14:45'),
(16, 'ut-itaque-sint-in-qui-ipsum', '16940601340.jpg', '1', '2023-09-06 21:15:34', '2023-09-06 21:15:34'),
(17, 'ut-itaque-sint-in-qui-ipsum', '16940601341.jpg', '1', '2023-09-06 21:15:34', '2023-09-06 21:15:34'),
(18, 'et-quia-est-nostrum-error-eius', '16940602080.jpg', '1', '2023-09-06 21:16:48', '2023-09-06 21:16:48'),
(19, 'et-quia-est-nostrum-error-eius', '16940602081.jpg', '1', '2023-09-06 21:16:48', '2023-09-06 21:16:48'),
(20, 'iure-sed-est-doloremque-esse-architecto', '16940602600.jpg', '1', '2023-09-06 21:17:40', '2023-09-06 21:17:40'),
(21, 'iure-sed-est-doloremque-esse-architecto', '16940602601.jpg', '1', '2023-09-06 21:17:40', '2023-09-06 21:17:40'),
(22, 'ut-hic-facere-autem-perferendis-est', '16940603180.jpg', '1', '2023-09-06 21:18:38', '2023-09-06 21:18:38'),
(23, 'ut-hic-facere-autem-perferendis-est', '16940603181.jpg', '1', '2023-09-06 21:18:38', '2023-09-06 21:18:38'),
(24, 'repellendus-vitae-vitae-dolorum-voluptatem-illum', '16940603680.jpg', '1', '2023-09-06 21:19:28', '2023-09-06 21:19:28'),
(25, 'repellendus-vitae-vitae-dolorum-voluptatem-illum', '16940603681.jpg', '1', '2023-09-06 21:19:28', '2023-09-06 21:19:28'),
(26, 'autem-ullam-rerum-quia-aut-voluptatum', '16940607490.jpg', '1', '2023-09-06 21:25:49', '2023-09-06 21:25:49'),
(27, 'autem-ullam-rerum-quia-aut-voluptatum', '16940607491.jpg', '1', '2023-09-06 21:25:49', '2023-09-06 21:25:49'),
(28, 'pariatur-nesciunt-earum-eos-consequuntur-est', '16940608270.jpg', '1', '2023-09-06 21:27:07', '2023-09-06 21:27:07'),
(29, 'pariatur-nesciunt-earum-eos-consequuntur-est', '16940608271.jpg', '1', '2023-09-06 21:27:07', '2023-09-06 21:27:07'),
(30, 'nostrum-error-voluptas-ratione-sit-consequatur', '16940608880.jpg', '1', '2023-09-06 21:28:08', '2023-09-06 21:28:08'),
(31, 'nostrum-error-voluptas-ratione-sit-consequatur', '16940608881.jpg', '1', '2023-09-06 21:28:08', '2023-09-06 21:28:08'),
(32, 'ea-et-et-aut-iste-occaecati', '16940617050.jpg', '1', '2023-09-06 21:41:45', '2023-09-06 21:41:45'),
(33, 'ea-et-et-aut-iste-occaecati', '16940617051.jpg', '1', '2023-09-06 21:41:45', '2023-09-06 21:41:45'),
(34, 'et-pariatur-est-tempore-facere-fuga', '16940617820.jpg', '1', '2023-09-06 21:43:02', '2023-09-06 21:43:02'),
(35, 'et-pariatur-est-tempore-facere-fuga', '16940617821.jpg', '1', '2023-09-06 21:43:02', '2023-09-06 21:43:02'),
(36, 'voluptatem-perspiciatis-qui-iusto-nobis-commodi', '16941636710.jpg', '1', '2023-09-08 02:01:11', '2023-09-08 02:01:11'),
(37, 'voluptatem-perspiciatis-qui-iusto-nobis-commodi', '16941636711.jpg', '1', '2023-09-08 02:01:11', '2023-09-08 02:01:11'),
(38, 'enim-ex-deleniti-nemo-omnis-quia', '16941637110.jpg', '1', '2023-09-08 02:01:51', '2023-09-08 02:01:51'),
(39, 'enim-ex-deleniti-nemo-omnis-quia', '16941637111.jpg', '1', '2023-09-08 02:01:51', '2023-09-08 02:01:51'),
(40, 'ipsum-est-voluptatibus-sunt-nulla-ut', '16941637420.jpg', '1', '2023-09-08 02:02:22', '2023-09-08 02:02:22'),
(41, 'ipsum-est-voluptatibus-sunt-nulla-ut', '16941637421.jpg', '1', '2023-09-08 02:02:22', '2023-09-08 02:02:22'),
(42, 'temporibus-consequatur-odit-qui-distinctio-saepe', '16941637890.jpg', '1', '2023-09-08 02:03:09', '2023-09-08 02:03:09'),
(43, 'temporibus-consequatur-odit-qui-distinctio-saepe', '16941637891.jpg', '1', '2023-09-08 02:03:09', '2023-09-08 02:03:09'),
(44, 'temporibus-consequatur-odit-qui-distinctio-saepe', '16941637892.jpg', '1', '2023-09-08 02:03:09', '2023-09-08 02:03:09'),
(45, 'temporibus-consequatur-odit-qui-distinctio-saepe', '16941637893.jpg', '1', '2023-09-08 02:03:09', '2023-09-08 02:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for normal User',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `address`, `email`, `email_verified_at`, `password`, `image`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aiu Purnama', '(610) 909-5971', NULL, 'admin@gmail.com', NULL, '$2y$10$kG30vOrF4GIoC5uV5G3/eeZ5icXPhFmo28XL5/rzWSu5Y4esGsZc.', NULL, 'ADM', NULL, '2023-06-15 23:59:30', '2023-06-15 23:59:30'),
(2, 'James Bond', '(336) 814-1150', NULL, 'user@gmail.com', NULL, '$2y$10$3DKaMkb1rLGTI.O.D3cpo.vcwP2UP3O4lOq4j0GZRr3gLU1sN94Ze', NULL, 'USR', NULL, '2023-06-16 00:01:03', '2023-06-16 00:01:03'),
(3, 'Deddy Purnomo', '(929) 531-2818', NULL, 'deddy@gmail.com', NULL, '$2y$10$.Sl6g7yz9Q98QZMR2O39TO4d8ymZmtfJhhqZVgszZVGNFSq1dL/ny', NULL, 'USR', NULL, '2023-06-17 02:00:34', '2023-06-17 02:00:34'),
(4, 'James Bond', '(216) 983-3581', NULL, 'james@gmail.com', NULL, '$2y$10$XgByEwX21oFCRPwLvXfdxeKCJz.//uo8vqv85Z2.BkuL5e3c3jcM2', NULL, 'USR', NULL, '2023-09-11 19:28:35', '2023-09-11 19:28:35'),
(5, 'Budi Santoso', '(762) 484-6515', 'Semarang', 'budi@gmail.com', '2023-09-11 19:33:29', '$2y$10$OOHKmZ7fXgsAIgGphgqxLeDJXUxODYFFR0OVv0ggjVtl4pE.jYSXK', '1694765917.png', 'USR', NULL, '2023-09-11 19:32:51', '2023-09-15 01:18:37'),
(6, 'testing', '(504) 122-9395', NULL, 'test@gmail.com', '2023-09-14 04:44:22', '$2y$10$k2z5HNohmRyputQX8YDDNuwyNfeggmR4/9xNok.wo6DcZTIYIw11.', NULL, 'USR', 'T4P5kb7OY2WKF5HKgJ2KIpwl5SN9pT3UsWq23mllMnkN4YGIxCJTDIttlA0u', '2023-09-14 04:43:28', '2023-09-23 02:24:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
