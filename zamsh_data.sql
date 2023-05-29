-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2023 at 03:16 PM
-- Server version: 10.3.38-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zamsh_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) DEFAULT NULL,
  `nickname` varchar(191) DEFAULT NULL,
  `designation` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `degree` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `freelance` varchar(191) DEFAULT NULL,
  `website_link` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT '0',
  `cv_file` varchar(191) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `full_name`, `nickname`, `designation`, `image`, `short_description`, `birthday`, `age`, `gender`, `email`, `phone`, `degree`, `city`, `freelance`, `website_link`, `favicon`, `cv_file`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Zaman Javed', 'ZamSh', 'Web Developer', '1681404749.png', 'I\'m a web Developer with extensive experience of over 5 years. My expertise is to create and Developer websites, graphic design, and many more...', '1999-11-05', 23, 'Male', 'zaman@zamsh.org', '3065252024', 'BScS', 'Lahore, Pakistan', 'Available', 'www.zamsh.org', '21681031287.png', NULL, 2, '2023-04-09 03:13:59', '2023-04-13 11:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_name` varchar(191) NOT NULL,
  `name_slug` varchar(191) NOT NULL,
  `blog_image` varchar(191) NOT NULL,
  `blog_body` mediumtext NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_name`, `name_slug`, `blog_image`, `blog_body`, `sort`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(12, 'web development blog i', 'web-development-blog-i', '21681707041.jpg', '<p><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space: pre-wrap;\">A web development blog is an online platform that provides information, tips, and insights related to various aspects of web development, including coding, design, and user experience. It aims to educate, inspire, and connect web developers and enthusiasts of all levels</span></font><br></p>', 81, 'Active', 2, '2023-04-16 23:50:41', '2023-04-16 23:54:02'),
(13, 'web development blog', 'web-development-blog', '21681707507.webp', '<p><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"white-space: pre-wrap;\">A web development blog is an online platform that provides information, tips, and insights related to various aspects of web development, including coding, design, and user experience. It aims to educate, inspire, and connect web developers and enthusiasts of all levels</span></font><br></p>', 22, 'Active', 2, '2023-04-16 23:58:28', '2023-04-16 23:58:28'),
(14, 'A web development blog', 'a-web-development-blog', '21681707650.png', '<p>A web development blog is an online platform that provides information, tips, and insights related to various aspects of web development, including coding, design, and user experience. It aims to educate, inspire, and connect web developers and enthusiasts of all levels<br></p>', 33, 'Active', 2, '2023-04-17 00:00:50', '2023-04-17 00:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` mediumtext NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Raymondker', 'no.reply.HansLaurent@gmail.com', 'A breakthrough new tactic for advertising.', 'Howdy! zamsh.org \r\n \r\nDid you know that it is possible to send an appeal legally and without breaking any laws? We offer a legitimate method of sending appeals via feedback forms. You can locate these feedback forms on a variety of websites. \r\nWhen such messages are sent, no personal data is used, and messages are sent to forms specifically designed to receive, process, and respond to messages and appeals. Because Communication Forms are seen as important, any messages sent through them are less likely to be categorised as spam. \r\nYou can now take advantage of our service free of charge. \r\nWe are able to provide up to 50,000 messages for you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis offer is automatically generated. \r\nPlease use the contact details below to get in touch with us. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:feedbackform2019 \r\nWhatsApp  +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\n \r\nWe only use chat for communication.', 'Pending', '2023-04-27 21:36:27', '2023-04-27 21:36:27'),
(5, 'Mike Oldman', 'no-replyPn@gmail.com', 'NEW: Semrush Backlinks', 'Good Day \r\n \r\nThis is Mike Oldman\r\n \r\nLet me introduce to you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your zamsh.org SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Oldman\r\n \r\nmike@strictlydigital.net', 'Pending', '2023-05-04 11:41:28', '2023-05-04 11:41:28'),
(6, '344', 'zamanjaved527@gmail.com', 'Ggggyy', 'Gyy', 'Pending', '2023-05-07 09:38:22', '2023-05-07 09:38:22'),
(7, 'Mike Quincy', 'no-replyPn@gmail.com', 'Domain Authority of your zamsh.org', 'Hi there \r\n \r\nJust checked your zamsh.org in MOZ and saw that you could use an authority boost. \r\n \r\nWith our service you will get a guaranteed Domain Authority score within just 3 months time. This will increase the organic visibility and strengthen your website authority, thus getting it stronger against G updates as well. \r\n \r\nFor more information, please check our offers \r\nhttps://www.monkeydigital.co/domain-authority-plan/ \r\n \r\nNEW: Semrush DA is now possible \r\nhttps://www.monkeydigital.co/semrush-da/ \r\n \r\nThanks and regards \r\nMike Quincy', 'Pending', '2023-05-09 11:47:56', '2023-05-09 11:47:56'),
(8, 'Mike Lamberts', 'no-replyPn@gmail.com', 'Improve local visibility for zamsh.org', 'If you have a local business and want to rank it on google maps in a specific area then this service is for you. \r\n \r\nGoogle Map Stacking is one of the best ways to rank your GMB in a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\nThanks and Regards \r\nMike Lamberts\r\n \r\n \r\nPS: Want an all in one Local Plan that includes everything? \r\nhttps://www.speed-seo.net/product/local-seo-package/', 'Pending', '2023-05-12 17:58:18', '2023-05-12 17:58:18'),
(9, 'Mike Wesley', 'no-replyPn@gmail.com', 'AI Monthly SEO plans', 'Greetings \r\n \r\nI have just took a look on your SEO for  zamsh.org for  the current search visibility and saw that your website could use an upgrade. \r\n \r\nWe will improve your ranks organically and safely, using state of the art AI and whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nMore info: \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nRegards \r\nMike Wesley', 'Pending', '2023-05-17 11:12:47', '2023-05-17 11:12:47'),
(10, 'Tigran Ayrapetyan', 'ujn2esbgakah@opayq.com', 'Capital Business Funding', 'Hello, \r\n \r\nWe provide funding through our venture capital company to both start-up and existing companies either looking for funding for expansion or to accelerate growth in their company. \r\nWe have a structured joint venture investment plan in which we are interested in an annual return on investment not more than 10% ROI. We are also currently structuring a convertible debt and loan financing of 3% interest repayable annually with no early repayment penalties. \r\n \r\nWe would like to review your business plan or executive summary to understand a much better idea of your business and what you are looking to do, this will assist in determining the best possible investment structure we can pursue and discuss more extensively. \r\n \r\n \r\nI hope to hear back from you soon. \r\n \r\nSincerely, \r\n \r\nTigran Ayrapetyan \r\nInvestment Director \r\nDevcorp International E.C. \r\nP.O Box 10236 Shop No. 305 \r\nFlr 3 Manama Centre, Bahrain \r\nEmail: tigran.a@devcorpinternationalec.com', 'Pending', '2023-05-22 05:31:46', '2023-05-22 05:31:46'),
(11, 'Mike Martin', 'no-replyPn@gmail.com', 'Semrush Audit and fixes for zamsh.org', 'Hi there \r\n \r\nI have just analyzed  zamsh.org for onsite errors and saw that your website has a handful of issues which should be addressed. \r\n \r\nNo matter what you are offering or selling, having a poor optimized site, full of bugs and errors, will never help your ranks. \r\n \r\nLet us fix your wordpress site errors today and get your ranks reach their full potential \r\n \r\nMore info: \r\nhttps://www.digital-x-press.com/product/wordpress-seo-audit-and-fix-service/ \r\n \r\n \r\nRegards \r\nMike Martin', 'Pending', '2023-05-25 09:59:25', '2023-05-25 09:59:25'),
(12, 'Denise Norton', 'qocuqyrimo@mailinator.com', 'At enim atque adipis', 'Occaecat porro quis', 'Pending', '2023-05-29 04:52:29', '2023-05-29 04:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `educations`
--

CREATE TABLE `educations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_name` varchar(191) DEFAULT NULL,
  `start_date` varchar(191) NOT NULL,
  `end_date` varchar(191) NOT NULL,
  `short_desc` varchar(191) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educations`
--

INSERT INTO `educations` (`id`, `exam_name`, `start_date`, `end_date`, `short_desc`, `sort`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'BScS', '2019-03', '2023-03', 'Bachelor of Computer Science', 1, 'Active', 2, '2023-04-13 12:06:31', '2023-04-16 05:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `experience_name` varchar(191) DEFAULT NULL,
  `start_date` varchar(191) NOT NULL,
  `end_date` varchar(191) NOT NULL,
  `short_desc` varchar(300) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `experience_name`, `start_date`, `end_date`, `short_desc`, `sort`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Full Stack Development', '2019-11', 'Present', 'With experience in Full Stack Development, I offer end-to-end web development services, including front-end and back-end development, to create a complete solution that meets your business needs and enhances your online presence.', 1, 'Active', 2, '2023-04-15 12:02:08', '2023-04-16 05:15:05'),
(2, 'WordPress Development', '2018-04', 'Present', 'With experience in WordPress Development, I offer a range of services, including theme customization, plugin development, and website maintenance. With expertise in WordPress, I create a professional and user-friendly website that enhances your online presence and meets your business needs.', 2, 'Active', 2, '2023-04-15 12:03:47', '2023-04-16 05:15:14'),
(3, 'Frontent Development', '2017-04', 'Present', 'With experience in Frontend Development, I specialize in creating visually appealing and user-friendly websites using HTML, CSS, and JavaScript. With attention to detail and a focus on user experience, I create websites that enhance your online presence and meet your business needs.', 3, 'Active', 2, '2023-04-15 12:06:38', '2023-04-16 05:15:22'),
(4, 'Logo Design', '2020-11', 'Present', 'With experience in logo design, I offer custom logo design services to create a unique and recognizable brand identity for your business. With  focus on creativity and attention to detail, I ensure that your logo accurately reflects your brand and leaves a lasting impression on your target audience.', 4, 'Active', 2, '2023-04-16 05:12:40', '2023-04-16 05:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
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
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_25_172401_create_abouts_table', 1),
(7, '2023_02_28_160334_create_skills_table', 1),
(8, '2023_03_01_150712_create_educations_table', 1),
(9, '2023_03_04_142647_create_experiences_table', 1),
(10, '2023_03_05_141914_create_services_table', 1),
(11, '2023_03_05_153549_create_portfolios_table', 1),
(12, '2023_03_07_150621_create_blogs_table', 1),
(13, '2023_03_07_163621_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('zamanjaved527@gmail.com', '$2y$10$BR9OiaHOddT1CIlMto8sZeUwdS5uwODOrJtRedCAlfAASOCuFcKYy', '2023-04-09 03:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_name` varchar(191) NOT NULL,
  `portfolio_image` varchar(191) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_name`, `portfolio_image`, `sort`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(8, 'Schoenspecialist', '21685348530.png', 1, 'Active', 2, '2023-04-13 13:19:22', '2023-05-29 03:22:10'),
(15, 'Organifer', '21685353620.png', 2, 'Active', 2, '2023-05-29 03:23:28', '2023-05-29 04:47:55'),
(16, 'Organifer', '21685353200.png', 2, 'Active', 2, '2023-05-29 04:40:00', '2023-05-29 04:47:50'),
(17, 'Totaloutdoor', '21685353271.png', 3, 'Active', 2, '2023-05-29 04:41:11', '2023-05-29 04:48:02'),
(18, 'Totaloutdoor', '21685353285.png', 3, 'Active', 2, '2023-05-29 04:41:25', '2023-05-29 04:48:12'),
(19, 'Kymcoenjoy.', '21685353337.png', 1, 'Active', 2, '2023-05-29 04:42:17', '2023-05-29 04:47:28'),
(20, 'Kymcoenjoy', '21685353355.png', 1, 'Active', 2, '2023-05-29 04:42:35', '2023-05-29 04:47:42'),
(21, 'Porterandyork', '21685353377.png', 4, 'Active', 2, '2023-05-29 04:42:57', '2023-05-29 04:48:17'),
(22, 'Porterandyork', '21685353386.png', 4, 'Active', 2, '2023-05-29 04:43:06', '2023-05-29 04:48:23'),
(23, 'Minsaqwriters', '21685353421.png', 5, 'Active', 2, '2023-05-29 04:43:41', '2023-05-29 04:48:30'),
(24, 'Minsaqwriters', '21685353434.png', 5, 'Active', 2, '2023-05-29 04:43:54', '2023-05-29 04:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(191) NOT NULL,
  `icon_class` varchar(191) NOT NULL,
  `short_desc` varchar(300) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `icon_class`, `short_desc`, `sort`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'fa-solid fa-user', 'As a web developer, I offer custom web development services using HTML, CSS, Bootstrap, Tailwind, and JavaScript. With expertise in these essential technologies, I create functional and visually appealing websites that meet your specific business needs and enhance your online presence.', 1, 'Active', 2, '2023-04-13 12:12:47', '2023-04-16 04:52:00'),
(2, 'WordPress Development', 'fa-solid fa-user', 'As a WordPress developer, I offer custom WordPress development services to create responsive and user-friendly websites. From theme customization to plugin development, I provide a complete solution to meet your business needs and enhance your online presence.', 2, 'Active', 2, '2023-04-13 12:13:52', '2023-04-16 04:45:35'),
(3, 'Full Stack Development', 'fa-solid fa-user', 'As a Full Stack PHP Developer, I offer end-to-end web development services, including front-end and back-end development using PHP. With expertise in PHP and various other web technologies, I create a complete solution that meets your business needs and enhances your online presence.', 3, 'Active', 2, '2023-04-13 12:18:38', '2023-04-16 04:53:16'),
(4, 'Logo Design', 'fa-solid fa-user', 'As a logo designer, I offer custom logo design services to create a unique and recognizable brand identity for your business. With a focus on creativity and attention to detail, I ensure that your logo accurately reflects your brand and leaves a lasting impression on your target audience.', 4, 'Active', 2, '2023-04-13 12:20:40', '2023-04-16 04:46:49'),
(5, 'PSD to HTML', 'fa-solid fa-user', 'As a web developer, I offer PSD to HTML conversion services to transform your designs into fully functional web pages. With attention to detail and expertise in HTML and CSS, I ensure that your website is responsive, user-friendly, and visually appealing.', 5, 'Active', 2, '2023-04-15 12:11:00', '2023-04-16 04:44:48'),
(6, 'HTML CSS', 'fa-solid fa-user', 'With my expertise in HTML and CSS, I offer web development services to create visually attractive and functional websites for businesses and individuals. From creating the structure and content to styling and layout, I provide a complete solution for a professional web presence.', 1, 'Active', 2, '2023-04-16 04:41:06', '2023-04-16 04:41:06'),
(7, 'Custom Make Website', 'fa-solid fa-user', 'As a custom website developer, I offer tailored web development services to create a unique and professional online presence for your business. With attention to detail and expertise in various web technologies, I ensure that your website meets your specific needs and exceeds your expectations', 3, 'Active', 2, '2023-04-16 04:49:52', '2023-04-16 04:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_name` varchar(191) DEFAULT NULL,
  `progress` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `progress`, `sort`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'HTML, CSS BOOSTRAP, AND TAILWIND CSS', 80, 1, 'Active', 2, '2023-04-09 05:54:01', '2023-04-15 11:52:58'),
(3, 'JavaScript', 80, 2, 'Active', 2, '2023-04-09 05:54:40', '2023-04-15 11:53:24'),
(5, 'PHP', 80, 4, 'Active', 2, '2023-04-09 05:55:59', '2023-04-09 05:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$i2jyvmRVGdrhaYJSTFixD.VJml54Qvcmzhbk7NiWrIZj8Za0yUlEa', NULL, '2023-04-09 03:08:50', '2023-04-09 03:08:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educations`
--
ALTER TABLE `educations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `educations`
--
ALTER TABLE `educations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
