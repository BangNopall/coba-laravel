-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 06:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noxval_blog`
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
(1, 'Web Programing', 'web-programing', '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(2, 'Web Design', 'web-design', '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(3, 'Personal', 'personal', '2022-08-19 21:18:00', '2022-08-19 21:18:00');

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
(5, '2022_07_12_142340_create_posts_table', 1),
(6, '2022_07_13_014003_create_categories_table', 1),
(7, '2022_08_29_120113_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `excerpt`, `body`, `slug`, `image`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Quibusdam sit at occaecati qui magnam quia.', 'Veritatis molestiae sunt quibusdam nemo maiores. Natus eos et perspiciatis. Voluptates ut nihil dolores quisquam voluptatum atque voluptatem. Et voluptatem sapiente maiores eum amet quidem et ut.', '<p>Neque quibusdam aliquam atque rerum unde. Consequatur voluptas praesentium aliquid ad et corporis. Recusandae et tempore eaque vel dolorem quibusdam.</p><p>Adipisci et et quia voluptatem non non. Ut necessitatibus a sunt voluptas. Omnis eligendi eos commodi voluptatem similique eligendi deserunt numquam. Qui temporibus veritatis non quia illum.</p><p>Quo eum aperiam optio incidunt ipsa autem. Dolores quaerat ipsam autem eum dolores consequatur odio. Suscipit sunt non quod tenetur voluptatem. Aut ut ex eum ducimus voluptatum quis.</p><p>Ut voluptatem non numquam quod dolorem. Iusto consequatur sint reiciendis autem qui. Laboriosam magnam molestiae totam labore. Nulla ut molestiae modi ratione.</p><p>In cum iure accusamus consequatur dolor qui debitis fugit. Ut quis quo est dolorem dolores nobis non. Rerum consequatur quod aut itaque quia deleniti sequi inventore. Pariatur voluptates enim possimus ipsa incidunt voluptas aut ea.</p><p>Ab quaerat aut officiis inventore distinctio earum. Nobis quis sint qui et at qui. Voluptatibus aspernatur debitis soluta numquam non temporibus.</p>', 'fuga-et-in-sunt-consequatur-temporibus-quia', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(3, 2, 3, 'Aliquid tenetur molestiae voluptatibus saepe voluptate.', 'Quia quia tempora eaque id consequatur accusantium. Quo sequi quam voluptas atque ratione animi nisi quo. Odit dicta eligendi eligendi excepturi et voluptatem ipsum.', '<p>Qui commodi vel aliquid inventore. Quis ex itaque voluptate dicta ut. Saepe nihil dolor ut aut consectetur accusamus ullam.</p><p>Perspiciatis dolor et et eum dolores nemo facere. Excepturi quia sapiente dolorem libero provident ut natus.</p><p>Animi veniam ratione inventore sint rerum nihil. Sunt sed reprehenderit qui fugit magnam deserunt. Vero cumque quasi delectus dolorem tempora fuga molestiae.</p><p>Quo et quisquam fugiat quibusdam fugiat voluptatum veritatis eum. Nobis et qui voluptatem consequatur odit. Consectetur laboriosam assumenda quis maxime vero ut qui.</p><p>Et dolor molestiae quia sunt. Voluptatem aut non repellendus nesciunt.</p><p>Omnis maxime vel expedita. Velit maiores voluptatem non necessitatibus assumenda. Cumque repellendus ducimus culpa quam aut voluptas.</p><p>Eos aperiam id iure consequatur. Et provident culpa molestiae aut unde ut. Eum aut voluptatem quidem esse voluptate tenetur recusandae.</p>', 'eum-quibusdam-qui-fugit', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(4, 2, 3, 'Qui non totam.', 'Expedita mollitia eligendi soluta et amet illum autem nemo. Quia qui vero consequuntur iusto magnam pariatur iure consequatur. Sed sed repudiandae voluptate qui vel aspernatur ipsum rerum. Fuga possimus sed repellat sunt.', '<p>Omnis provident doloremque dolorum. Rerum dolorem nobis neque unde. Praesentium veritatis eveniet accusantium nesciunt quia expedita voluptate quos.</p><p>Eius quis rerum velit corporis. Consequatur rerum et in voluptates. Rerum saepe pariatur laborum et excepturi autem. Ex omnis totam quia doloribus earum praesentium id.</p><p>Quos nisi iste ea adipisci molestias consequuntur a. Reiciendis consequatur aut fugiat provident quo optio et quasi. Ad consectetur fuga sequi accusamus qui nisi aspernatur.</p><p>Architecto cupiditate error officia occaecati quo officia sunt. Animi culpa consectetur delectus accusantium. Nihil beatae quasi totam sit repellendus tempora culpa.</p><p>Voluptate sit porro optio nulla maxime aliquid. Voluptas assumenda illo fugiat consequuntur. Non praesentium harum ut iste ea. Nemo est veritatis officia a optio.</p><p>Veniam officia doloremque ab mollitia ut commodi consectetur. Magnam eos sunt non ipsum. Veritatis deleniti quibusdam consectetur sed.</p><p>Maiores unde possimus voluptatem ex dolorem quia. Voluptas eligendi dignissimos non et velit maxime. Deleniti et ut aliquam aspernatur praesentium numquam cupiditate.</p><p>Voluptatum enim omnis odio. Et voluptatem non veniam quis praesentium provident. Et enim praesentium fugiat id natus officiis vel.</p><p>Est ea quas pariatur eos voluptatem. Rerum aut voluptates sit et. Id temporibus distinctio dolores facilis excepturi aut. A tempora non et non aliquid optio.</p>', 'eos-sunt-tempora-veniam-nesciunt-autem-doloremque-pariatur', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(5, 2, 1, 'Amet repudiandae omnis id.', 'Neque unde quia nostrum error hic est. Modi harum laborum reiciendis eum. Nemo autem inventore quo autem qui dicta beatae. Repellendus doloribus repudiandae nesciunt distinctio asperiores assumenda non.', '<p>Quia dolores perferendis magni esse quo repellat nihil. Eos autem iste et ad suscipit dolor. Ea rem dolores corporis perferendis perferendis. Esse sint vero accusantium ut. Consectetur eum eveniet necessitatibus.</p><p>Maxime quam fugit quod odio dolor atque. Laboriosam quia soluta officiis ut qui sit accusantium. Sunt deserunt ut voluptates ut.</p><p>Harum quos enim iure voluptate ipsam. Architecto aut veniam consequatur eligendi. Ratione a et ex consectetur laudantium tempore.</p><p>Ea eos dolores sit. Iste explicabo eos vel accusamus. Et quia nulla omnis officiis fugiat. Eum velit et voluptatum facilis laboriosam.</p><p>Laborum minus laborum porro ducimus iusto. Consequuntur asperiores placeat minima cupiditate sed. Et vel facilis quasi.</p><p>Qui facere et modi tenetur magni. Rem a dolore qui quibusdam vitae voluptatem voluptatibus. In qui qui earum consequatur assumenda aut adipisci.</p><p>Ipsum at dolorem voluptas excepturi cupiditate corrupti nam. Vero iste assumenda numquam ipsum tempore. Quidem sed modi nulla et officiis quasi eos.</p><p>Voluptatem cumque voluptas reiciendis eaque sed. Hic eos consequuntur laudantium molestias libero. Ut dolorem non qui quidem sunt ut. Odit tempore iure soluta omnis necessitatibus earum.</p>', 'quis-sunt-accusamus-odit-sapiente-dicta', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(6, 2, 3, 'Doloremque tempore aut quas.', 'Provident consequatur quis est sapiente. Quo saepe nihil deserunt explicabo repellendus illum nemo dolor. Sequi dolorem dolor est nam. Facilis natus sed minus ipsum accusantium perspiciatis distinctio laborum. Consequuntur deserunt repudiandae non non odit.', '<p>Aut voluptatum ut sint non est voluptatem itaque et. Voluptas et eaque aliquid ut quas. Consequatur rerum esse quis corrupti voluptatem. Modi autem officiis eaque ipsam nostrum atque eum.</p><p>Est incidunt numquam ut repellendus laborum fuga. Voluptate ad sunt autem ad. Quibusdam repudiandae veniam fuga deleniti. Consequuntur autem reprehenderit fugit provident culpa ipsam magni.</p><p>Sunt officia temporibus possimus occaecati fugit voluptatem. Non nesciunt quia distinctio illo. Fuga qui doloremque aut omnis asperiores molestias rerum. Ex cupiditate explicabo illum qui veniam hic exercitationem. Eos qui non dolorem fugiat autem.</p><p>Non culpa sit placeat maxime minima porro maxime. Aut et vitae expedita nisi quia. Consequatur exercitationem aliquam doloremque enim quia voluptas eveniet temporibus.</p><p>Excepturi eum in quasi illo. Sint et at eos enim commodi et enim. Cumque a tenetur consectetur.</p><p>Sit quae autem quae quibusdam magnam quisquam quo ratione. Ad rerum debitis facere repellat in dolor aliquid. Alias ea quisquam voluptas et. Rerum et nulla et vel sed ut necessitatibus.</p><p>Repellendus rem repudiandae sit corporis quasi rem. Minus omnis rerum aperiam ullam sed qui officiis. Fuga architecto rerum veniam aliquam optio est est libero. Eveniet vero voluptas quos est in illo.</p><p>Sit sint eum nihil blanditiis aliquam assumenda. Cupiditate repellat consequatur ratione earum a est. Voluptatem eos quis cum vitae in. Quisquam id repellendus porro. Et voluptate veniam dolorem aut voluptas.</p><p>Non quis quia reprehenderit laudantium veritatis. Dolores quis aliquam eum libero quo blanditiis. Neque asperiores nam consequatur aut. Quisquam voluptatem illo velit qui nulla quam expedita.</p>', 'voluptatem-reprehenderit-blanditiis-quod-et-magni', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(7, 1, 2, 'Quisquam optio porro amet rem a.', 'In rerum facere explicabo fugiat voluptatem voluptas vitae. Beatae suscipit molestiae sed qui eum amet qui. Vel nisi doloribus corrupti sint delectus in. Est fuga dicta aut qui voluptatem dignissimos et.', '<p>Nulla maiores consequatur minus corporis voluptas et accusamus. Quia laborum amet debitis autem facilis. Labore nihil cum voluptatem. Ut reprehenderit quas quia omnis ipsum quia.</p><p>Ut et laborum tempore excepturi deserunt rerum. Saepe vel occaecati voluptates qui doloribus vel. Rerum aut saepe veniam facere. Rerum modi dolore eos voluptas expedita.</p><p>Distinctio ut aut cum dolores nam. Doloribus vel quia vel delectus molestias temporibus exercitationem. Delectus dolores dolore consequatur eaque molestiae animi molestiae.</p><p>Qui impedit suscipit voluptas. Ut excepturi voluptate natus voluptates repellendus officia. Necessitatibus libero modi dolorem voluptatem. Et reprehenderit quia consectetur. Cum consequatur et quis ullam.</p><p>Explicabo minus eos praesentium odio. Iusto voluptatem aut delectus est facilis. Autem illo debitis nisi.</p><p>Praesentium laboriosam fuga sit earum beatae. Dolorum dicta incidunt quisquam ipsa enim dolorem officia. Quo culpa maiores et porro ut.</p><p>Voluptatibus est quisquam minima voluptates odio nisi. Labore nam aperiam ut qui exercitationem consequuntur. Et dolorem optio dolorem aspernatur distinctio velit praesentium. Ducimus corrupti explicabo aspernatur cupiditate.</p><p>Sit quod illo nemo at atque libero. Et sed voluptate culpa ut eos. Earum ea provident deserunt quo temporibus doloremque.</p>', 'quia-laborum-voluptates-et-laudantium-at', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(8, 2, 1, 'Non eligendi id molestiae et animi maiores.', 'Quis ipsam quas ipsum quis qui. Itaque expedita eos quidem eum. Et iste eveniet ut ea. Praesentium vel ipsa rem.', '<p>Minima doloremque laudantium est sit et. Praesentium ex non autem nihil sed reiciendis. Nulla dolor nihil odit molestiae qui. Illo dolor autem libero suscipit.</p><p>Voluptatem provident minima necessitatibus quo. Itaque sed totam possimus ducimus voluptas fuga aut. Suscipit odit aut voluptatum recusandae enim dolorem. Ad sequi ut dolorem in vel.</p><p>Pariatur qui autem veritatis et facere. Dolore possimus quia nihil atque reprehenderit. Maxime quia quis enim qui dolorem minus nam. Illo et omnis eligendi.</p><p>Voluptas quos et ipsa non nihil nam sint. Natus repellat blanditiis temporibus velit. Debitis ipsa sequi voluptatem quibusdam. Alias dolor recusandae hic error illum.</p><p>Sequi non libero et quis sed rerum error voluptatibus. Aut ab quo maxime dignissimos magnam earum sint. Harum qui et in et ut voluptate minus. Soluta nihil ut itaque consequatur.</p><p>Aut veritatis voluptate eos doloribus nesciunt quis. Vero autem excepturi deserunt magni. Unde debitis aliquid inventore vel et maiores. Qui et id est ducimus velit voluptatem minima. Sequi voluptatem minus asperiores aut ea aut eum illo.</p><p>Ea quis aperiam magnam nihil placeat. Soluta quia id iusto reprehenderit nihil ut sit. Occaecati vero omnis quas dolor dolor tempore optio.</p><p>Vero enim officia adipisci soluta error quo et. Libero quis ut nemo omnis sunt consectetur. Sunt sed consequatur blanditiis. Nobis tenetur laudantium amet sint temporibus.</p>', 'ut-sed-rem-deserunt', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(9, 1, 3, 'Eligendi deserunt temporibus dolor.', 'Id incidunt rerum quis totam adipisci. Labore deleniti quisquam est eos odit necessitatibus. Consequatur velit illo possimus molestiae natus non totam. Distinctio voluptatem quas magnam velit ab sit.', '<p>In laboriosam aut autem necessitatibus rerum. Eos sapiente accusamus optio vitae sunt ut quibusdam. Ex quia tenetur iusto aut in. In consequatur temporibus eos quia ut tempora qui.</p><p>Sed facere voluptatem tempore eaque impedit ea. Esse est sapiente maxime fuga. Libero est aut nulla et tempora. Sit eligendi quasi assumenda dicta est enim quia. Sit laborum aliquam adipisci reiciendis adipisci et eos.</p><p>Similique voluptates eligendi velit. Aliquam doloribus enim voluptate amet dolores. Et ab vitae quis hic expedita repudiandae.</p><p>Provident aspernatur neque saepe laborum tempore id quia. Quis aliquam adipisci nisi tempora. Et occaecati nemo excepturi officia itaque sint.</p><p>Soluta laborum enim consequatur dolorum doloribus alias. Dignissimos hic ut error qui illum. Libero sit provident inventore assumenda consectetur omnis. Rerum aut ipsa fugiat vero sapiente quas.</p><p>Eius odit animi eum occaecati est veniam. Eaque veritatis labore similique quis. Nobis nesciunt a architecto ipsam eos voluptas.</p><p>Doloribus iste velit et quis beatae quo et cum. Soluta et at et omnis magni placeat quia mollitia. Neque aliquam doloribus non consequatur voluptatum. Quia est delectus quas sint voluptatum.</p><p>Delectus corporis voluptatibus a repellat nulla. Fuga necessitatibus id repellendus sed ut. Laudantium velit perferendis accusamus inventore repudiandae non. Molestiae tempore possimus optio est. Dicta corrupti autem architecto ullam qui.</p><p>Delectus quam quas delectus dolorum impedit rerum qui. Enim et reiciendis beatae ipsum. Dolorum consectetur aut aut vero porro. Et aspernatur dolor saepe eum itaque eum blanditiis.</p><p>Et et delectus sed voluptate. Nemo corporis ut qui vitae qui blanditiis. Minima asperiores accusantium aut.</p>', 'velit-possimus-reprehenderit-blanditiis-molestiae', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(10, 2, 2, 'Omnis earum nesciunt.', 'Odit cumque rerum velit quia. Omnis vel vel similique doloremque. Consequatur asperiores rerum voluptates quaerat deserunt.', '<p>Vel a quia ratione est alias. Recusandae minima vel aspernatur accusamus nulla perferendis similique. Vel ut qui nesciunt saepe quam sed. Et aut molestiae quia quibusdam expedita explicabo.</p><p>Incidunt dolore animi nemo quaerat quibusdam. Deserunt culpa voluptatem dolor enim enim facilis. Veritatis soluta excepturi cumque nam. Repellat doloribus dolores reiciendis totam a amet.</p><p>Quia perferendis repudiandae qui occaecati facere voluptatem voluptatem et. A aliquam accusantium ea dolore vel iusto. Repudiandae aliquam quidem reprehenderit aut suscipit repudiandae.</p><p>Qui libero dolorem asperiores iure repellendus vero aperiam. Ut consequatur a sed provident id est. In est voluptates quis soluta recusandae sit.</p><p>Aut quo quo architecto qui distinctio natus. Minus officia facere est omnis voluptas.</p><p>Tempora eaque est perferendis sed laborum accusantium possimus animi. Vel reiciendis in hic architecto quia quod nobis. Nobis sint repudiandae et quia eveniet ratione amet.</p><p>Ut est nisi officiis et. Sed in molestias minus perspiciatis rerum voluptatem eum. Ipsam veniam eum eveniet dolorum.</p><p>Recusandae sit illum sapiente cumque voluptatem voluptatibus. Earum nam eveniet iste repellat. Cumque nisi dolor consequatur pariatur magnam.</p><p>Natus facere repudiandae animi sed voluptas accusantium consequatur molestias. Impedit illum magni nisi consequatur temporibus iure illo.</p><p>Quo molestias modi vitae est. At suscipit dolor ducimus. Et quia dignissimos quos consequatur quos consectetur delectus.</p>', 'et-accusantium-aut-dignissimos-eos-incidunt', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(11, 2, 3, 'Suscipit reprehenderit consectetur harum illum nostrum aspernatur.', 'Saepe saepe qui est facere porro quis reiciendis. Nostrum consequatur at et. Et quas dolorum earum quia ut tenetur.', '<p>Sed nesciunt quidem eum eaque debitis aspernatur omnis. Tenetur natus nostrum neque quis autem et. Aliquid ipsam sunt nesciunt recusandae.</p><p>Aut ad voluptate sit at rerum. Dolorum aut ad sunt quae. Aliquam nihil impedit sed possimus repellendus soluta in.</p><p>Inventore nam commodi vero reprehenderit ex harum. Id vel et repellat quidem culpa. Eum qui qui consectetur eius qui.</p><p>Aut ratione nihil ad fugiat id veniam ratione. Ut aut consequatur amet saepe et possimus dicta nemo. Iure nulla suscipit molestiae asperiores voluptatem reiciendis natus sit.</p><p>Voluptatem accusantium eum dicta et mollitia illo debitis illum. Inventore porro nihil distinctio iste eaque id sed.</p><p>Eos fugiat ut ipsam possimus labore dolor. Error non qui vero omnis architecto incidunt quisquam vel. Labore repudiandae odit corrupti ut eaque quia fugiat. Qui soluta consequatur molestiae consectetur modi voluptas.</p><p>Voluptate mollitia iure nesciunt totam. Earum rem commodi cumque libero voluptas. Quia dolores vero dolores aspernatur quos magnam rerum. Adipisci iste consequatur et pariatur vel assumenda repellat.</p>', 'consequuntur-eaque-at-autem-dolores-provident', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(12, 2, 3, 'A voluptas accusantium voluptatum.', 'Veritatis ut id doloribus magnam eum. Tempore rerum voluptatibus qui distinctio. Tempore minus sunt ad perferendis est sed repellat.', '<p>Deserunt quia ipsa nesciunt. Praesentium a tenetur qui facere. Non consequatur nulla et in culpa debitis corporis. Odit corrupti illum numquam accusantium in.</p><p>Ratione provident ad ex sed qui soluta. Provident et vero dolor. Sint ut culpa officiis fugit.</p><p>Voluptas quis voluptate labore alias quos. Quia sit et minima quam eaque et fugiat.</p><p>Sunt soluta occaecati quo nihil. Voluptatibus eligendi eos quam. Enim rerum maxime ipsa hic.</p><p>Magnam aliquam laborum corrupti quas sint. Libero non aut blanditiis inventore expedita cum. Modi et blanditiis ipsam. Non corporis itaque aut et necessitatibus temporibus voluptas.</p><p>Quae voluptas inventore architecto atque. Ea fugit blanditiis dolores est culpa enim omnis quidem. Magni molestias consectetur ex et.</p><p>Ut aspernatur tempore aut occaecati quaerat. Voluptates suscipit nobis dolorum veritatis repellat ut. Sit corrupti inventore pariatur odio sed. Est ad inventore rerum velit ut aut nihil ipsam.</p><p>Cum aliquid est tempora nisi non nisi. Sequi quia debitis voluptas similique et repellendus. Officiis ut reprehenderit voluptatem pariatur. Nihil nemo maiores eligendi saepe ut.</p><p>Ullam temporibus sit est accusantium ut. Tenetur veritatis adipisci praesentium beatae. Ut aperiam omnis eveniet excepturi impedit odio placeat modi. Veniam quo sit occaecati optio laborum omnis.</p>', 'optio-est-quia-dolorem-nam-ipsam-praesentium', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(13, 1, 2, 'Quis placeat explicabo rem.', 'Esse voluptatum enim incidunt esse sunt modi. Placeat totam et laudantium repellat. Non alias nihil molestiae pariatur repudiandae expedita cum.', '<p>Sit voluptatem animi culpa quam ea placeat. Asperiores voluptatem autem repellendus adipisci dolore. Quia mollitia cumque quo dolorem consequatur. Explicabo ipsam autem ipsam amet incidunt sunt.</p><p>Explicabo debitis architecto illo voluptas vitae est quibusdam. A deleniti est et voluptatem ut. Architecto consequatur qui et sint.</p><p>Velit impedit fuga dolore harum. Vitae doloremque dolor provident id at a. Tempora porro voluptas placeat fugit ad necessitatibus suscipit. Unde autem voluptas ut enim. Ea aut harum officiis est.</p><p>Cupiditate quaerat odit expedita nihil dolores tenetur quia. Suscipit quia voluptatum maiores possimus quia deleniti in. Hic necessitatibus consequatur doloremque. Alias quia reiciendis ut velit aliquam. Officiis neque velit velit cupiditate id animi.</p><p>Dolores temporibus est dolorem non quae natus non ipsa. Provident sint omnis quas fugit sint debitis ea. Omnis quia et minima nihil cumque eos et. Ipsum vero consequatur eum laudantium.</p><p>Dolorem deserunt quasi iste ipsam. Eaque enim nulla sint aut optio voluptates. Error corrupti temporibus accusantium et ut amet minima. Sit aut ex minima id veniam.</p><p>Quae maiores vitae aut eaque. Velit minima accusantium sunt sit ipsa. Rerum ex odio ipsam omnis. Quis dolor incidunt possimus.</p>', 'quam-vero-cumque-culpa-quia', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(14, 2, 2, 'Vero consequatur eum numquam et nobis voluptatem nisi.', 'Eum magni porro ullam amet est eos aut. Eos est fugit occaecati voluptates velit et. Aut sed maxime sunt voluptatem rerum rem fugiat. Voluptas quod perspiciatis maxime voluptas.', '<p>Accusamus placeat commodi asperiores voluptas occaecati non. Nulla reprehenderit ut molestias atque nemo magnam voluptatem. Cupiditate velit dolore sint asperiores quia. Et et qui possimus qui vel voluptates quia. Quis exercitationem aliquam iusto eius.</p><p>Eum dignissimos placeat temporibus ullam et laudantium. Nisi eveniet aut alias tenetur molestiae consectetur aliquam. Qui necessitatibus recusandae voluptas illum praesentium consequuntur. Nobis voluptatem laborum provident et repudiandae officiis omnis.</p><p>Iusto quas explicabo eaque unde in temporibus autem. Odio est fugiat consectetur repudiandae velit tenetur cumque non. Vel necessitatibus et maiores sed voluptates saepe.</p><p>Veniam cumque facilis fugit itaque quod. Asperiores et odio qui unde ut eligendi. Nemo iure nostrum iusto ut ut quisquam. Nihil sed quas vero provident accusantium ullam velit dolorum. Est quo velit autem velit expedita.</p><p>Rem vitae consequatur doloribus aperiam. Optio perferendis qui hic. Optio enim iusto aut ipsa. Itaque omnis eveniet non libero fugit id est.</p><p>Qui nihil ex alias ea odio sed. Aut et molestias velit qui. Sit qui molestiae consequuntur. Et optio iure incidunt laudantium qui.</p><p>Aut sit maxime porro pariatur. Provident quia voluptate eaque quia animi. Saepe voluptatibus sunt illo. Quas voluptates ut tempora aspernatur molestias.</p><p>Iure occaecati laboriosam ut est non. Corporis consectetur dignissimos ex blanditiis eum libero sit eos. Qui voluptatem amet rerum est itaque. Voluptatem omnis nulla cupiditate neque.</p><p>Non similique aliquid nemo ipsa iusto. Est doloremque aut et et repudiandae quo praesentium. Non sit rerum et numquam at. Eum incidunt culpa maiores officia quia voluptatem.</p>', 'facere-dignissimos-quas-dolorum-quo-perspiciatis', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(15, 1, 2, 'Quia qui at.', 'Voluptatibus voluptas aut necessitatibus eaque. Eos id molestias delectus est facilis voluptas esse. Debitis rerum itaque sunt quam minus commodi. Inventore non omnis placeat tempora.', '<p>Reprehenderit quisquam sint temporibus aut. Corrupti quo odit perspiciatis sed est qui. Eos quo quibusdam a enim doloribus eum optio. Enim velit tenetur veritatis illum reprehenderit.</p><p>Blanditiis aut et nostrum itaque qui ex. Architecto ab ut sequi eos. Qui nostrum quis animi voluptatem et optio aut. Aliquam est inventore voluptas nemo maiores.</p><p>Quo assumenda eius magnam ut non sed. Asperiores aut a amet nam est. Aut aperiam sapiente voluptatibus ducimus. Est sequi ipsum nihil harum expedita.</p><p>Assumenda quidem optio molestias sint non non natus itaque. Deleniti consequatur at ut architecto aut et id. Ducimus laboriosam ea eaque aut ea amet fugiat. Dolores ut laborum molestiae labore ex adipisci.</p><p>Voluptatem ut temporibus accusantium deleniti quia quis quis. At voluptatem pariatur excepturi id. Odit expedita veritatis et et eum ducimus. Omnis qui nulla cupiditate consequatur id.</p>', 'sapiente-facilis-animi-sequi-vel-in', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(16, 2, 1, 'Corrupti mollitia sequi quo et enim quae.', 'Quia eius iusto minima quam molestiae. Enim excepturi suscipit libero reprehenderit odio. Similique neque molestias tempore libero. Consequatur iste aperiam molestiae reprehenderit aut vel libero.', '<p>Facilis aliquam explicabo perspiciatis nihil similique soluta. Odit quia qui adipisci. Voluptates sint quis iure est sit et. Eos dolore fugit est esse quae non quidem quo.</p><p>Sint eos ea eius facere officia id non amet. Sit voluptatem officia fugiat quis rerum corrupti autem. Nemo esse culpa quia officia qui eum et.</p><p>Enim qui temporibus et alias sit repellendus nam. Et distinctio quos aliquam itaque. Provident quo autem ut quibusdam ut. Quos sint earum recusandae nesciunt doloribus quo. Omnis ab sit quod.</p><p>Non nesciunt in quia nemo tempora vitae veritatis. Sed autem ea qui aperiam natus assumenda. Numquam voluptatem consectetur sunt. Id animi quis iste itaque. Autem et quia deserunt sed accusantium.</p><p>Deleniti quia dolores rerum. Quod omnis blanditiis id non est ut. Ea praesentium libero eligendi repellat fugit alias.</p><p>Quo ex inventore non. Non earum neque et doloremque ducimus perferendis doloribus porro. Aut harum excepturi quis nulla magni placeat.</p><p>Inventore optio qui et dolore rem vel quasi quas. Corporis quos accusantium facilis quos aliquid est nihil. Tempora officia commodi ipsum qui voluptas atque. At possimus nesciunt molestias molestiae.</p><p>Tempora et ducimus facilis et impedit ut. Quia minus occaecati ut molestias vitae qui officia. In animi excepturi commodi quis. Nulla cumque nobis aspernatur ut reiciendis et.</p><p>Rerum error at ipsam quas exercitationem voluptate rerum. Impedit voluptas animi officia non sint. Sit eveniet sint est soluta ea. Beatae dolor id possimus nostrum non.</p>', 'quia-blanditiis-vitae-dolor-totam-deleniti', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(17, 1, 2, 'Accusamus est blanditiis.', 'Distinctio sed delectus id perspiciatis. Ipsam asperiores magnam et optio minima. Quia modi aspernatur facere voluptas. Quod sit laudantium perferendis accusamus eos reprehenderit.', '<p>Unde necessitatibus et nisi impedit doloremque rerum. Dolor numquam odio non commodi inventore natus voluptas. Et est sit labore quia quis. Placeat aut ab est aut tenetur consequatur esse.</p><p>Voluptas quia sunt facere odit. Accusamus deleniti soluta ipsam expedita facere. Modi veniam nesciunt hic cumque deserunt.</p><p>Nemo omnis quasi debitis occaecati alias. Asperiores iure consectetur sit quo placeat praesentium. Pariatur totam qui corrupti ducimus consequatur quo nobis. Quia fuga id qui voluptates sed.</p><p>Impedit est repellendus ratione qui voluptas esse quibusdam. Ducimus sed necessitatibus nostrum iure unde. Quisquam autem explicabo id ut velit qui.</p><p>Repellat repudiandae rem mollitia. Accusamus minima ducimus voluptatem quis. Qui facilis minus unde laboriosam.</p><p>Unde consequatur placeat consequuntur sed vero aut et. Debitis at eos sit vel consequatur magni et ullam. Commodi cupiditate voluptate quam facere.</p><p>Doloribus qui aliquid vel velit qui non. Error quos iste sunt. Repudiandae a ipsam vel pariatur.</p>', 'quia-ipsa-autem-odit-eveniet', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(18, 1, 3, 'Et aliquid illum.', 'Beatae non dolor quidem quia. Et aut quibusdam veritatis.', '<p>Placeat tenetur voluptate est voluptatem et est expedita delectus. Neque dolores illo error aut et voluptas quos. Aspernatur rem est eum placeat voluptatum quidem odio totam. Tempora non dolore voluptatem libero.</p><p>Optio facere suscipit rerum sapiente quo. Et nulla occaecati qui et. Quae veritatis ullam amet facilis dolor autem in laboriosam.</p><p>Minus qui a ab deserunt. Facilis iure voluptas sit. Nulla sunt hic qui laboriosam.</p><p>Dolor eum sit et error deleniti eos. Dolorem laudantium voluptas nemo odio quae.</p><p>Necessitatibus quia sint consequatur repellendus quibusdam dolor. Ea rerum necessitatibus debitis et et. Dolorum est corporis atque reprehenderit qui. Qui veritatis enim sit tenetur perferendis.</p><p>Dolorum ut sed inventore expedita. Modi incidunt rerum doloremque repudiandae. Delectus dicta sapiente sint sed sint nihil.</p>', 'adipisci-explicabo-culpa-pariatur-est-ut', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(20, 2, 3, 'Sequi sed.', 'Consequuntur quis exercitationem nostrum magnam libero architecto ullam. Mollitia enim quia ut. Reiciendis consequuntur tempora sunt autem. Cupiditate dolorem quae dolorem perspiciatis maxime officiis accusamus.', '<p>Id sapiente ad quibusdam tenetur voluptas. Quam omnis voluptates ipsum non aut assumenda mollitia. Aut voluptatem quos et mollitia.</p><p>Voluptas esse sed iure voluptatum vitae nostrum earum. At a corporis dignissimos iure. Repellendus expedita maxime ut nisi sit id.</p><p>Accusamus ut quidem animi libero ad consequatur dolorem quia. Corrupti corporis repellendus consequuntur consequatur dolorem. Qui accusamus ut enim. Ut iure magni non ut quo est.</p><p>Qui sint magni iusto minima. Repellat nemo tempore repellendus esse. Nemo aut in iusto expedita nesciunt eveniet quisquam accusantium.</p><p>Non quibusdam a natus assumenda repudiandae accusantium. Repellendus molestias veniam rem et sequi et. Provident delectus amet odio tempore esse temporibus natus.</p><p>Aut est quam quisquam voluptatibus ratione odit recusandae. Quos optio voluptatum saepe odit et perspiciatis quia. Quam tenetur repellat consequatur voluptatem. Porro recusandae molestiae quae illo non neque est.</p><p>Itaque molestias voluptates ut omnis dignissimos nesciunt. Natus eligendi nulla aperiam est inventore. Ad reiciendis quod rerum.</p>', 'dicta-aut-sunt-suscipit', NULL, NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00'),
(25, 1, 5, 'nopal nopal', 'pal nopal', '<div>pal nopal</div>', 'nopal-nopal', NULL, NULL, '2022-09-08 01:52:27', '2022-09-08 01:52:27'),
(26, 3, 5, 'posts', 'postsss', '<div>postsss</div>', 'posts', NULL, NULL, '2022-09-08 02:04:36', '2022-09-08 02:04:36'),
(27, 2, 5, 'post3', 'as', '<div>as</div>', 'post3', NULL, NULL, '2022-09-08 02:15:11', '2022-09-08 02:15:11'),
(28, 3, 1, 'dwadawdasdwa', 'ini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test...', '<div>ini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test ajaini test aja</div>', 'dwadawdasdwa', 'post-images/0WkPu8N0UldkEhHzG6fwD0aCIG8Owz4rWNIaSMx7.jpg', NULL, '2022-09-13 20:16:47', '2022-09-13 20:16:47'),
(29, 2, 14, 'haloooo', 'lorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem im...', '<div>lorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsumlorem impsum</div>', 'haloooo', 'post-images/nxVuPC07j1QnUk5W8vObdn6juzGAVWccAbq8siY4.jpg', NULL, '2023-01-27 18:41:01', '2023-01-27 19:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Athar Naufal', 'nopal', 'athar@gmail.com', NULL, '$2y$10$394S18p5gOhKUQRglyDLReqvaOosHUkOweC7V2mbbwx1wGvX/r44C', NULL, '2022-08-19 21:18:00', '2022-08-19 21:18:00', 1),
(2, 'Umar Sihombing', 'heru.mansur', 'melani.edi@gmail.com', '2022-08-19 21:18:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FJY2VEmdEzVIQqLpphe8E1YVboowV4BIHWekn1Sz04oK5kqKLdRvvLjB4eMQ', '2022-08-19 21:18:00', '2022-08-19 21:18:00', 0),
(3, 'Kamila Pratiwi', 'hidayanto.candrakanta', 'kiandra.widodo@gmail.org', '2022-08-19 21:18:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CvlsTszPrN', '2022-08-19 21:18:00', '2022-08-19 21:18:00', 0),
(4, 'Tiara Icha Aryani S.E.I', 'mutia87', 'laswi35@gmail.com', '2022-08-19 21:18:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7185bdeAa3', '2022-08-19 21:18:00', '2022-08-19 21:18:00', 1),
(5, 'asyam', 'asyam', 'arif.asyam.a@gmail.com', NULL, '$2y$10$YcMpel6uhWQzOeoaOit03O/z/rVZ/eYmOTsUpZ0BD2RFWq95oej6y', NULL, '2022-09-08 01:49:19', '2022-09-08 01:49:19', 0),
(6, 'fauzan', 'fauzan', 'fauzandzakir@gmail.com', NULL, '$2y$10$cbWLXCmP1meyTmRaCNoqruRsyYcTc0aP39risaaklbGGnjuY4fasO', NULL, '2022-09-08 01:57:00', '2022-09-08 01:57:00', 0),
(7, 'bulan mungkin', 'bulan mungkin', 'rembulanayu75@gmail.com', NULL, '$2y$10$PRdpyFdHX3vm3ndNl4.mh.UC4uMWEWF9bwOkT6/9eDixnAhuQrAcq', NULL, '2022-09-08 01:57:19', '2022-09-08 01:57:19', 0),
(8, 'candra', 'candra', 'adrielcamahes@gmail.com', NULL, '$2y$10$tJSs07Zky27sBBhSswzojedEynt8GNwoOmGrKPYcYw9z1e2yT3SFO', NULL, '2022-09-08 01:58:53', '2022-09-08 01:58:53', 0),
(9, 'Rafif Nabiha', 'Kempip', 'rafif_nabiha_30tkj@student.smktelkom-mlg.sch.id', NULL, '$2y$10$XEepjOgg2X438lrBbXOJLOyJMd9/nc6cIlm36b.YFwWjHMlmVAZP.', NULL, '2022-09-08 02:13:14', '2022-09-08 02:13:14', 0),
(10, 'Zee', 'zee', 'zee@gmail.com', NULL, '$2y$10$/KO9FsbIWpfFe.cCQEor8eA3sDssJubik77Gn.3pTi2OB.kR1mdRu', NULL, '2022-09-15 02:59:00', '2022-09-15 02:59:00', 0),
(11, 'Zee', 'aryo', 'zee123@gmail.com', NULL, '$2y$10$bxVgyYgfSoX2b1CJlHRB6uJnGQVJC3xmhDnneNPxgWmYhsOnCBuHO', NULL, '2022-10-10 07:14:06', '2022-10-10 07:14:06', 0),
(12, 'ayonima acumalaka', 'heheheeee', 'nopal@gmail.com', NULL, '$2y$10$8hYpsorYPj7sIjciZgE9Me1KHvKhAgSaGSUHnQn43.HxsgNX2Fhue', NULL, '2023-01-17 16:32:16', '2023-01-17 16:32:16', 0),
(13, 'nopal', 'nopaluser', 'noxvalpaok@gmail.com', NULL, '$2y$10$uqcHaSHmV66z/fu3U0Hg2ONesMJyw5zj/Ogbe3Eu2U/T7d1iwSp/a', NULL, '2023-01-25 20:05:45', '2023-01-25 20:05:45', 0),
(14, 'noxvaldev', 'noxvaldev', 'noxval@gmail.com', NULL, '$2y$10$oyuNnYJ8eXnkawEJR8JgleOaOnzxFNzhVdzHw4nB.kH3ogt3K7ENS', NULL, '2023-01-27 18:40:27', '2023-01-27 18:40:27', 0);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
