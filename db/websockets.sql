-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2023 at 08:20 AM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `echo_websockets`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'new comment', 10, 1, '2022-12-20 07:17:04', '2022-12-20 07:17:04'),
(2, 'jkghkjgh', 10, 1, '2022-12-20 08:54:29', '2022-12-20 08:54:29'),
(3, 'new comment again', 10, 1, '2022-12-20 08:54:45', '2022-12-20 08:54:45'),
(4, 'fourth comment', 10, 1, '2022-12-20 08:58:42', '2022-12-20 08:58:42'),
(5, 'new  comment today', 3, 1, '2022-12-30 05:26:28', '2022-12-30 05:26:28'),
(6, 'new comment queued', 3, 1, '2022-12-30 07:42:34', '2022-12-30 07:42:34'),
(7, 'new comment queued again', 3, 1, '2022-12-30 07:42:50', '2022-12-30 07:42:50'),
(8, 'plz not me', 3, 1, '2022-12-30 07:48:46', '2022-12-30 07:48:46'),
(9, 'only me plz again', 3, 1, '2022-12-30 07:49:24', '2022-12-30 07:49:24'),
(10, 'new again', 3, 1, '2022-12-30 07:50:12', '2022-12-30 07:50:12'),
(11, 'hey man', 3, 1, '2022-12-30 07:51:30', '2022-12-30 07:51:30'),
(12, 'hey', 3, 1, '2022-12-30 07:52:50', '2022-12-30 07:52:50'),
(13, 'hey', 3, 1, '2022-12-30 07:53:29', '2022-12-30 07:53:29'),
(14, 'hey', 3, 1, '2022-12-30 07:53:50', '2022-12-30 07:53:50'),
(15, 'dsf', 3, 1, '2022-12-30 07:54:08', '2022-12-30 07:54:08'),
(16, 'test', 3, 1, '2022-12-30 07:59:04', '2022-12-30 07:59:04'),
(17, 'tst', 3, 1, '2022-12-30 07:59:15', '2022-12-30 07:59:15'),
(18, 'new comment ...', 3, 1, '2022-12-30 08:58:59', '2022-12-30 08:58:59'),
(19, 'new comment ...', 3, 1, '2022-12-30 08:59:31', '2022-12-30 08:59:31'),
(20, 'new comment ...', 3, 1, '2022-12-30 09:00:35', '2022-12-30 09:00:35'),
(21, 'new comment ...', 3, 1, '2022-12-30 09:01:51', '2022-12-30 09:01:51'),
(22, 'new comment ...', 3, 1, '2022-12-30 09:02:02', '2022-12-30 09:02:02'),
(23, 'new comment ...', 3, 1, '2022-12-30 09:02:45', '2022-12-30 09:02:45'),
(24, 'newwwwwwww', 3, 1, '2022-12-30 09:10:17', '2022-12-30 09:10:17'),
(25, 'commmmmm', 3, 1, '2022-12-30 09:12:30', '2022-12-30 09:12:30'),
(26, 'newsse', 3, 1, '2022-12-30 09:17:20', '2022-12-30 09:17:20'),
(27, 'dfhdfh', 3, 1, '2022-12-30 09:28:21', '2022-12-30 09:28:21'),
(28, 'sdgsdg', 3, 1, '2022-12-30 09:30:07', '2022-12-30 09:30:07'),
(29, 'sdfhgdfh', 3, 1, '2022-12-30 09:33:01', '2022-12-30 09:33:01'),
(30, 'fgdfh', 3, 1, '2022-12-30 09:34:15', '2022-12-30 09:34:15'),
(31, 'new comment ...', 3, 1, '2022-12-30 09:37:13', '2022-12-30 09:37:13'),
(32, 'new comment ...', 3, 1, '2022-12-30 09:37:17', '2022-12-30 09:37:17'),
(33, 'new comment ...', 3, 1, '2022-12-30 09:38:20', '2022-12-30 09:38:20'),
(34, 'fgdfh', 3, 1, '2022-12-30 09:40:30', '2022-12-30 09:40:30'),
(35, 'sgsdfg', 3, 1, '2022-12-30 09:41:38', '2022-12-30 09:41:38'),
(36, 'dfh', 3, 1, '2022-12-30 09:42:14', '2022-12-30 09:42:14'),
(37, 'dfhdhf', 3, 1, '2022-12-30 09:42:32', '2022-12-30 09:42:32'),
(38, 'dfhdfh', 3, 1, '2022-12-30 09:43:14', '2022-12-30 09:43:14'),
(39, 'new comment ...', 3, 1, '2022-12-30 09:44:13', '2022-12-30 09:44:13'),
(40, 'new comment ...', 3, 1, '2022-12-30 09:45:29', '2022-12-30 09:45:29'),
(41, 'new comment ...', 3, 1, '2022-12-30 09:45:38', '2022-12-30 09:45:38'),
(42, 'new comment ...', 3, 1, '2022-12-30 09:45:42', '2022-12-30 09:45:42'),
(43, 'new ...', 3, 1, '2022-12-30 09:45:57', '2022-12-30 09:45:57'),
(44, 'asdg', 3, 1, '2022-12-30 09:55:23', '2022-12-30 09:55:23'),
(45, 'dfh', 3, 1, '2022-12-30 09:59:12', '2022-12-30 09:59:12'),
(46, 'fgj', 3, 1, '2022-12-30 10:02:31', '2022-12-30 10:02:31'),
(47, 'nmbmb', 3, 1, '2022-12-30 10:07:04', '2022-12-30 10:07:04'),
(48, 'gdfhg', 3, 1, '2022-12-30 10:08:15', '2022-12-30 10:08:15'),
(49, 'sgd', 3, 1, '2022-12-30 10:08:36', '2022-12-30 10:08:36'),
(50, 'sdg', 3, 1, '2022-12-30 10:09:18', '2022-12-30 10:09:18'),
(51, 'xcbxcnb', 3, 1, '2022-12-30 10:09:28', '2022-12-30 10:09:28'),
(52, 'tgjhkgjk', 3, 1, '2022-12-30 10:10:25', '2022-12-30 10:10:25'),
(53, 'fdhfgjh', 3, 1, '2022-12-30 10:10:34', '2022-12-30 10:10:34'),
(54, 'asdgasdgdasfhdfh', 3, 1, '2022-12-30 10:27:02', '2022-12-30 10:27:02'),
(55, 'dfhdfhfghfgdjdfghj', 3, 1, '2022-12-30 10:28:20', '2022-12-30 10:28:20'),
(56, 'iklhjl', 3, 1, '2022-12-30 10:28:58', '2022-12-30 10:28:58'),
(57, 'dfhfgj', 3, 1, '2022-12-30 10:30:45', '2022-12-30 10:30:45'),
(58, 'jkhgkjgh', 3, 1, '2022-12-30 10:31:24', '2022-12-30 10:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(2, '7fcdfe99-6f3a-4e58-9508-6ea34622da9d', 'database', 'default', '{\"uuid\":\"7fcdfe99-6f3a-4e58-9508-6ea34622da9d\",\"displayName\":\"App\\\\Events\\\\NewMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":12:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\NewMessage\\\":3:{s:7:\\\"message\\\";s:4:\\\"asdg\\\";s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 35: error:0A000126:SSL routines::unexpected eof while reading (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for https://127.0.0.1:6001/apps/123456789/events?auth_key=ABCDEFG&auth_timestamp=1672598054&auth_version=1.0&body_md5=570891ea5cc3b88358079742044c6754&auth_signature=9bb81eab6532ae3b87db045d95f44a618fc6c27077424476f760d7a2887aae44. in /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Broadcasting/Broadcasters/PusherBroadcaster.php:128\nStack trace:\n#0 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Broadcasting/BroadcastEvent.php(77): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast()\n#1 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle()\n#2 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#4 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#5 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#6 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#7 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#8 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#9 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#10 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#11 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#12 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#13 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#14 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#15 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#16 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#18 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#19 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#20 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#21 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#24 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#25 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#26 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#27 /var/www/html/webmarker_websockets/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#28 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#29 /var/www/html/webmarker_websockets/vendor/symfony/console/Application.php(1040): Illuminate\\Console\\Command->run()\n#30 /var/www/html/webmarker_websockets/vendor/symfony/console/Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand()\n#31 /var/www/html/webmarker_websockets/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#32 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#33 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#34 /var/www/html/webmarker_websockets/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#35 {main}', '2023-01-01 16:34:14'),
(3, '90e5ea0d-f4b2-4203-85a9-870a85c90c6b', 'database', 'default', '{\"uuid\":\"90e5ea0d-f4b2-4203-85a9-870a85c90c6b\",\"displayName\":\"App\\\\Events\\\\NewMessage\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":12:{s:5:\\\"event\\\";O:21:\\\"App\\\\Events\\\\NewMessage\\\":3:{s:7:\\\"message\\\";s:9:\\\"klsjglsjg\\\";s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:6:\\\"socket\\\";N;}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Broadcasting\\BroadcastException: Pusher error: cURL error 52: Empty reply from server (see https://curl.haxx.se/libcurl/c/libcurl-errors.html) for http://localhost:6001/apps/123456789/events?auth_key=ABCDEFG&auth_timestamp=1672598653&auth_version=1.0&body_md5=4f4361f42596c3e714df9bed977c4644&auth_signature=9c58986f6a3204621f7e45809fd7243f3c908f970cc6da7e4c5eeb47c2882466. in /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Broadcasting/Broadcasters/PusherBroadcaster.php:128\nStack trace:\n#0 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Broadcasting/BroadcastEvent.php(77): Illuminate\\Broadcasting\\Broadcasters\\PusherBroadcaster->broadcast()\n#1 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle()\n#2 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#4 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#5 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#6 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#7 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#8 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#9 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#10 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#11 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#12 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#13 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#14 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#15 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#16 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#18 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#19 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon()\n#20 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#21 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#24 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#25 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#26 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Console/Command.php(136): Illuminate\\Container\\Container->call()\n#27 /var/www/html/webmarker_websockets/vendor/symfony/console/Command/Command.php(298): Illuminate\\Console\\Command->execute()\n#28 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Console/Command.php(121): Symfony\\Component\\Console\\Command\\Command->run()\n#29 /var/www/html/webmarker_websockets/vendor/symfony/console/Application.php(1040): Illuminate\\Console\\Command->run()\n#30 /var/www/html/webmarker_websockets/vendor/symfony/console/Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand()\n#31 /var/www/html/webmarker_websockets/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#32 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Console/Application.php(94): Symfony\\Component\\Console\\Application->run()\n#33 /var/www/html/webmarker_websockets/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#34 /var/www/html/webmarker_websockets/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#35 {main}', '2023-01-01 16:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_07_213528_create_posts_table', 1),
(6, '2022_12_19_083400_create_comments_table', 1),
(7, '2022_12_30_090626_create_jobs_table', 2),
(8, '0000_00_00_000000_create_websockets_statistics_entries_table', 3);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
(7, 'App\\Models\\User', 10, '10', '3107b4b4d7671bbff927aa08edfae4fddda311969c6cc1f625d37c4760c94501', '[\"*\"]', NULL, '2022-12-20 08:50:14', '2022-12-20 08:50:14'),
(8, 'App\\Models\\User', 10, '10', '02c1d495ab4607a2cc6282eb427f18b8512132ef5b5ef8db9803e85e4da74122', '[\"*\"]', '2022-12-20 08:58:42', '2022-12-20 08:51:30', '2022-12-20 08:58:42'),
(17, 'App\\Models\\User', 1, '1', 'fd62976fd5bbb68e4080b25efac74d7cf078dd90263326e9004757d68ba6d9f2', '[\"*\"]', NULL, '2022-12-31 17:50:10', '2022-12-31 17:50:10'),
(19, 'App\\Models\\User', 3, '3', 'e5c97c1e2dfca4695ceb55cbde22d784b8f08b0fb82f4400e4f7f4a823be85f8', '[\"*\"]', NULL, '2022-12-31 20:09:57', '2022-12-31 20:09:57'),
(20, 'App\\Models\\User', 3, '3', '6ec7cfbf47b1c2c03e64b2e452d6e27455ac0033671c96122190bcf7222d5d7c', '[\"*\"]', NULL, '2023-01-01 11:51:44', '2023-01-01 11:51:44'),
(21, 'App\\Models\\User', 2, '2', '885b9a726bfc990bec57bbfa48fee8e226dfd0276306ab7f97caa4631deec97e', '[\"*\"]', NULL, '2023-01-01 11:53:20', '2023-01-01 11:53:20'),
(22, 'App\\Models\\User', 3, '3', '3ce54d413cca5bccf58e7d6ecd24c06b4c48dd751e1fb92d49b7425e1a9e943f', '[\"*\"]', NULL, '2023-01-01 13:15:26', '2023-01-01 13:15:26'),
(23, 'App\\Models\\User', 3, '3', 'eeeb3d430e9ce2e35789acd6c315aec02244f96944008f5a917d2adbf7d95f07', '[\"*\"]', NULL, '2023-01-01 16:29:28', '2023-01-01 16:29:28'),
(24, 'App\\Models\\User', 3, '3', 'f384d3af860469d9f0d7adb0685afe80185f16e472e6004c2f1305a8bea74ea9', '[\"*\"]', NULL, '2023-01-02 03:21:49', '2023-01-02 03:21:49'),
(25, 'App\\Models\\User', 2, '2', '59bc2a3ca6c410e9f9a04e7a695bbdc6d8a06e05075841de2f8c5326e0e7a7a7', '[\"*\"]', NULL, '2023-01-02 03:24:10', '2023-01-02 03:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, 'New Title', 'Et odit incidunt distinctio aut quae qui velit. Sit magni officiis dolor sed quae. Deserunt eligendi rem placeat aspernatur magni quidem.\n\nNecessitatibus dolores eum consequatur qui omnis. Possimus ut repellat doloremque non sed velit. Praesentium aliquid qui cupiditate fuga dolor consequatur.\n\nRerum qui exercitationem laudantium architecto. Consequatur repellendus vel delectus eum. Aliquid quia consequatur sed. Et aliquam dolorum veritatis dolores.\n\nAb qui qui perspiciatis doloremque. Alias rem inventore consectetur cum. Veniam voluptas est et illum. Culpa et dolor enim repudiandae enim.\n\nQui asperiores praesentium dolorem aliquid nulla. Ad quo harum voluptatem. Ut vitae quasi debitis in blanditiis occaecati.\n\nInventore mollitia fuga voluptatibus inventore. Sed voluptatem ipsa magnam est rerum ut. Est in maxime dolor enim asperiores dolor.\n\nQuae at eaque placeat alias nihil commodi et minima. Sit rerum facilis reprehenderit aut. Quidem quaerat quasi earum tenetur eveniet quia eum.\n\nMagnam voluptas cumque qui molestiae voluptatem. Vel aut id in molestiae. Et quisquam qui exercitationem et occaecati. Est omnis provident aliquam labore et corporis nam.\n\nNon totam qui dolorem. Expedita eaque quia accusantium fugit corporis quod harum. Tempore velit id eligendi.\n\nNon est quia quis molestiae non corporis libero officiis. Sapiente quo velit aut eum illum totam qui provident. Consequatur dolor aperiam cupiditate velit inventore.', 1, '2022-12-19 07:14:55', '2022-12-31 21:16:13'),
(2, 2, 'Ipsam et quae est non sunt itaque.', 'Ad id fugiat commodi numquam quis. Reiciendis laudantium asperiores maiores quia. Nulla id quia et in est quas voluptatem tempore.\n\nEum sit quasi voluptate aspernatur neque odit. Id voluptatibus minus dolorum ut est repellat tempore in. Dolorum dolorem quo impedit vel. Rerum qui voluptatem ut quia accusamus magni.\n\nNulla id ipsam rerum vel commodi corrupti. Nulla occaecati expedita voluptatem ut qui voluptas omnis voluptatem. Commodi quia quia consequatur iusto voluptatem ipsum.\n\nEt et reprehenderit nulla quo. Nihil eligendi rerum officiis doloremque earum. Fugit molestiae enim sed odit. Cum magni rerum animi ratione et hic amet ut.\n\nQuas iusto quae facere saepe ad quia. Pariatur non est dolores laboriosam nemo. In non temporibus perspiciatis autem error nobis ea.', 0, '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(3, 3, 'Quia eum veritatis porro tempore tempore vero.', 'Quisquam quos voluptatem itaque ipsam dicta alias rerum vitae. Autem odio natus et. Quia maxime numquam sapiente enim sed possimus dolore. Voluptate quia fugit dolorum iure.\n\nEsse ex delectus iste. Molestias esse qui cum quae. Inventore soluta voluptas et. Amet qui consequatur omnis ut libero iure.\n\nEt adipisci eum numquam sapiente sit repudiandae voluptates. Quo molestias laborum consequatur in saepe laboriosam.', 1, '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(4, 4, 'Assumenda qui explicabo explicabo impedit dolorem facere culpa.', 'Dolorem veritatis optio aliquam harum aut enim quasi. Suscipit exercitationem minus quidem placeat accusantium nemo sed. Voluptas est quo minus voluptatum repellendus soluta. Iure non adipisci cupiditate.\n\nQuis dolorem occaecati iusto quo voluptatem nihil at maxime. Labore et commodi ut iusto occaecati praesentium dolores maxime. Deserunt omnis maiores modi et et ut harum.\n\nFugiat consectetur rerum totam voluptate itaque commodi aut. Alias aut amet quis pariatur consequatur consequuntur consequatur. Neque iusto est omnis voluptas dignissimos. Et eligendi et eius ea a aspernatur.\n\nNumquam eos quasi ex et. Totam ducimus atque dolores voluptatibus dignissimos. Placeat aut vitae in ipsum alias. Est nam eum culpa vel sit.\n\nDolorem vitae porro corporis voluptate fuga. Impedit voluptas veritatis ex omnis distinctio quia. Tempora ducimus velit consequatur ullam facilis vel omnis. Omnis vel est incidunt sapiente doloribus similique.\n\nPorro ipsum voluptatem harum culpa non. Possimus tempora voluptas aliquam id sit. Odio qui optio autem ad rem. Nemo fugiat illum nisi magnam suscipit minus nobis quibusdam. Perspiciatis hic molestiae voluptate.\n\nSed magnam id voluptate nihil. Culpa fugit a dolores omnis et vel. Et eligendi illo ipsum ipsam voluptatum et dolorum. Labore saepe amet adipisci at.\n\nFugiat sint incidunt aut minus. Sint incidunt voluptatem dolor sit dignissimos. Suscipit quia reiciendis soluta similique ipsa. Quam sit repudiandae eveniet nam facilis.\n\nVelit non quia sint et fugit minus nemo. Reprehenderit ducimus ut quos id voluptatum ipsam aut. Ducimus rem aut ut ipsa eveniet quos sequi culpa. Vero est aut cupiditate consequatur nam sunt vero.\n\nFugiat laborum unde sint labore impedit itaque. Nulla porro sint et corrupti reiciendis. Et sed ut maxime et. Temporibus debitis et modi officiis mollitia ipsam aut.', 0, '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(5, 5, 'Est voluptate voluptas et hic expedita eius assumenda.', 'Impedit quas maxime blanditiis a. Nisi est consequatur fugiat laborum enim explicabo. Quo possimus eos aut veritatis aliquam libero aut.\n\nProvident sed est omnis laudantium itaque ipsum aspernatur. Nemo rerum impedit eius iure omnis perferendis at architecto. Est totam quisquam debitis. Aut et aperiam fuga. Consequatur dolorem odio aut cum.\n\nQuia qui excepturi totam repellendus corporis. Quis alias optio ipsa laudantium ea quisquam et. Voluptas nemo voluptatem ex voluptatem velit. Maiores sit officia optio sed id quo.\n\nVoluptatem exercitationem in nostrum corporis placeat consectetur. Voluptatem earum eum reprehenderit beatae. Reprehenderit amet fugiat et quas praesentium sed non.', 0, '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(6, 6, 'Reprehenderit et dolores quasi temporibus.', 'Excepturi eum sapiente vero voluptas repudiandae sint suscipit. Rerum saepe eos ab eum eum ratione. Explicabo inventore maiores laudantium numquam praesentium voluptates. Voluptates id delectus quos.\n\nTempora pariatur ut asperiores. Libero ea ea ea. Qui quo pariatur nam. Quia dolores qui ut quo quia molestiae. Sequi aut sint et incidunt id quaerat.\n\nIure officia ut quod vero. Ex ea porro velit asperiores maiores quaerat. Non non ea incidunt dolorem qui rerum. Architecto hic enim ea dolorum ut blanditiis nisi.\n\nVoluptate accusantium eos quia aperiam. Eaque deleniti deleniti dolor consequatur.\n\nVoluptatem totam omnis officiis voluptatem. Accusantium rerum enim repellat impedit omnis voluptas asperiores omnis.\n\nNesciunt distinctio et assumenda atque cumque nihil eius nulla. Similique voluptatem est voluptas modi. Vitae accusantium distinctio quod quis beatae saepe. Aut eum omnis et quia laudantium qui aliquid.\n\nQuasi qui optio aut ad. Earum dolorem esse aperiam voluptatum similique et.', 0, '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(7, 7, 'Est consequatur laboriosam non rerum modi corporis tenetur.', 'Consequatur consequuntur asperiores veniam sequi consequuntur fuga. Unde necessitatibus aut ut sunt fuga aut ab. Qui ducimus laboriosam praesentium suscipit tempora. Dolor a fugiat vero sed.\n\nReiciendis eaque vel dolorum. Ut est repellat enim natus velit. Quaerat nesciunt minima laboriosam sed excepturi qui eum.\n\nArchitecto quia assumenda et debitis neque dolorem. Laborum tempore autem rem saepe perferendis provident error. Sed in accusantium error quasi perspiciatis.\n\nVoluptatum facere non ut quos ipsam perspiciatis incidunt. Qui eligendi blanditiis quo omnis mollitia voluptatem.\n\nPerspiciatis accusamus officia atque quis sunt. Repellendus consequatur reprehenderit soluta minus cum error. Porro quos consequatur asperiores voluptatum et quae.\n\nMagni porro ut qui hic nobis in. Voluptatem recusandae aliquam nesciunt quibusdam aliquam. Beatae dolorem facilis eveniet fuga debitis numquam.\n\nLabore maxime fugiat autem occaecati voluptatem laborum. Asperiores similique similique aut cumque omnis sit. Blanditiis explicabo molestias adipisci. Explicabo omnis quaerat sed et sint facilis.', 0, '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(8, 8, 'Quia dolorem ad voluptas dolorum.', 'Sint distinctio fugit labore saepe omnis. Possimus et magni aut ea officia. Nulla velit fuga et aliquam et. Eum porro minima et nulla modi eum porro.\n\nVel molestiae eius quia cumque quo aut labore. Voluptas dolore iure perspiciatis nisi vel debitis rerum consequuntur. Animi placeat tenetur iure sunt cumque tempore reprehenderit totam. Corporis omnis optio iusto occaecati necessitatibus nulla.\n\nUt tempora commodi voluptatem qui. Totam necessitatibus officia rem quia rem quis iure. Ipsam est hic ut vitae doloremque ut harum qui. Similique id autem nisi nam quisquam.\n\nPerferendis amet illum odio ut voluptates officiis quasi. Repellat hic accusamus labore sequi ullam dolores.\n\nRem qui ea quia accusamus. Quam cupiditate facere est. Ducimus reiciendis itaque distinctio fugiat sunt culpa. Fuga et perspiciatis dolorum laudantium id ipsam.\n\nOfficiis enim quisquam iure fugiat velit aut. Iusto sunt blanditiis et aut magni porro quia. Sed totam atque blanditiis totam.\n\nUllam accusamus maiores vel. Dignissimos autem est soluta quas voluptatibus et vero. Provident dolores dolore enim optio. Non ut qui suscipit voluptatem consequatur numquam.\n\nEnim voluptas beatae et quas ut minus cumque pariatur. Error ipsum labore provident vero velit quidem perspiciatis omnis. Atque repellendus dolor ut non. Alias ut autem nisi voluptas praesentium. Officia explicabo architecto doloremque dolores necessitatibus rerum tempora dolor.\n\nVel eos vel voluptatem impedit ut dolorum. Occaecati similique autem sint aut qui. Accusantium tempore suscipit veritatis quo et. Eveniet occaecati autem necessitatibus voluptatem eius amet ad repellendus.', 1, '2022-12-19 07:14:56', '2022-12-19 07:14:56'),
(9, 9, 'Ut rerum rerum molestiae et rerum qui aspernatur.', 'Cum quia sequi in possimus unde officia. Nihil sed fugiat ducimus blanditiis provident ipsum. Nihil fuga quasi est. Eveniet sunt maxime tenetur accusamus at. Cupiditate deserunt accusamus aut libero ipsam.\n\nEst sunt fugit occaecati et sit hic officiis omnis. Rerum quo suscipit nemo eos sed optio. Necessitatibus maxime est odio magni non rerum ut. Ad veritatis quia nobis deleniti incidunt sunt. Velit iure ducimus in ipsam aperiam.\n\nQui in quia eveniet ipsa. Itaque id architecto beatae dolorem quo nisi. Dolores dolor fugiat ab iusto.\n\nNon quisquam quae nostrum doloribus minus expedita sunt. Aspernatur sint autem et nisi et. Architecto pariatur facere eligendi necessitatibus voluptas nulla quidem. Nobis eveniet exercitationem ut ut assumenda nesciunt.\n\nRepudiandae quo quo nesciunt aut quaerat. Facere eum et omnis.\n\nAliquam sunt deserunt dolorem quia quaerat laboriosam totam. Magni eligendi minus porro alias sunt cumque numquam quia. Sit aut voluptatem unde deserunt soluta commodi. Recusandae officia sit in nisi consequatur error illum.\n\nEos ducimus et velit provident voluptate eum cupiditate. Et quidem necessitatibus odit assumenda earum non dignissimos. Molestias ratione autem rerum incidunt rerum corporis.', 1, '2022-12-19 07:14:56', '2022-12-19 07:14:56'),
(10, 10, 'Est veritatis autem quidem vitae velit aut.', 'In tenetur expedita omnis fuga et. Quasi est possimus excepturi dolorem necessitatibus nihil facere vel. Esse sit culpa qui.\n\nCorrupti rerum rerum enim et aut culpa. Non deleniti commodi asperiores quisquam minus. Doloribus esse labore repellat rerum.\n\nNisi amet non error ea. Dignissimos possimus ea officia sunt modi similique repellendus. Et et debitis id amet. Quibusdam consectetur sed delectus atque nisi animi.\n\nSapiente ut mollitia optio vel delectus. Rerum error alias et quia nostrum nulla ut. Soluta autem in et molestias suscipit.\n\nMollitia libero ut laborum ut ipsa. Quo esse odit molestiae odit. Dolor tempore vitae et ut nesciunt esse. Non placeat recusandae vel et.\n\nLaudantium aliquam doloribus corporis ipsum blanditiis rerum voluptatibus. Esse dolorem suscipit eveniet vero labore. Harum sit harum quae. Ut qui quis eum rerum.\n\nQuam et quos et inventore. Quo iure molestiae et ipsam cumque eaque. Sit praesentium voluptas officiis velit incidunt quibusdam expedita. Tempora et quo ratione natus rerum velit et. Sed molestiae sed alias earum accusantium iste dolore.', 0, '2022-12-19 07:14:56', '2022-12-19 07:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Lenore Douglas', 'maudie.lebsack@example.com', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '17|1bXcqwl1wKaRnmCzgYwPYjlAT37bCb6EyVrfMjmr', 'S9XXx7vtF2', '2022-12-19 07:14:55', '2022-12-31 17:50:10'),
(2, 'Larry Grimes', 'two@email.com', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '25|CgLI35nBgilS9OHzRzwaCep0pLSusBLQF4iTs4J1', 'hfJWow6QpP', '2022-12-19 07:14:55', '2023-01-02 03:24:10'),
(3, 'Mr. Oral Vandervort', 'one@email.com', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '24|t5efzULZ11G8Dg2T4tEBvz9236wfXY7pp3JObBQv', 'DKDbBILPIJW6pfgn9PSRiHfrXHcysFuQt81v62xkh7n0pb7nsyrG3AEQu4K6', '2022-12-19 07:14:55', '2023-01-02 03:21:49'),
(4, 'Ms. Litzy Johnson IV', 'hodkiewicz.rebecca@example.com', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W9zHEZ5VWo5ZmnibwmI1ciOcWz9qOk0LSkLMK8vgWL7ctF6MoEStdT0Wqt2g', 'VH4MiY0A48', '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(5, 'Stephany Cassin', 'maryjane56@example.net', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '13|XJNWwvxaEP9tKy5odhh0uXXsYojSWYQp9EaGMTLV', 'jSXf56vk6o68pxaFOmyUIFi1LAwhVq0AYEazx3uLkjITHLAGeVCzXB5ucwUF', '2022-12-19 07:14:55', '2022-12-30 10:26:29'),
(6, 'Adam Jacobson', 'thurman85@example.com', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LjOIhtfXSUTgbFctcIdJ45YEsNrFpTfBR5srf5ncXaQ3t4TKtuM8snWoYxXU', 'Ar1MYbroZU', '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(7, 'Kylie Kuphal V', 'vbashirian@example.com', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZFCjnnt6wHvsgGqgxWkoMuUd4mxjyqOuxsc6LWTfPUpjPSDt1EyCnmC3QDIU', '0S6PF3c0rC', '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(8, 'Noble Marvin', 'heller.cassandre@example.net', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hiQpGxeG5zhSAgVVl7coTIqbkk9cESbyv8Y26MCKv8UXtRWusMiwilWBTjuD', 'McBbTtO2dh', '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(9, 'Calista Schuster DDS', 'haylie.lynch@example.net', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AxWD1WXntIy1Ivfmj8RpclnYZmOqlcu4OsuO0g0Y6xZI4Cy7dS73flKFaUcV', 'wU4ACTBqqN', '2022-12-19 07:14:55', '2022-12-19 07:14:55'),
(10, 'Keyshawn Schoen', 'melody55@example.com', NULL, '2022-12-19 07:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8|FGteUzv9Wl6l3AkzuEbxE0qWH194qHLLvsdi0LfQ', 'ZJRVyTghoTuIdouB1tkXclbw6kWKIazRdIfbs2sqMw1Txe21ETLXOcPTCU0h', '2022-12-19 07:14:55', '2022-12-20 08:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
