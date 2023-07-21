-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 23-07-21 07:07
-- 서버 버전: 8.0.23
-- PHP 버전: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `userinfo`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `idx` int NOT NULL,
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET euckr COLLATE euckr_korean_ci,
  `content` text CHARACTER SET euckr COLLATE euckr_korean_ci,
  `hit` int DEFAULT '0',
  `best` int DEFAULT '0',
  `reg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `user_name`, `title`, `content`, `hit`, `best`, `reg_date`) VALUES
(4, 'root', '123', '123', 12, 3, '2023-07-18 00:00:00'),
(5, 'root', '55', '55', 1, 0, '2023-07-18 00:00:00'),
(6, 'root', '55', '55', 2, 0, '2023-07-18 00:00:00'),
(8, 'root', '123', '21312', 1, 0, '2023-07-18 11:23:52'),
(9, 'root', '999', '9999', 26, 1, '2023-07-18 20:27:33'),
(10, 'root', '10101010110', '1010101\r\n11', 17, 1, '2023-07-19 11:33:07'),
(11, 'root', '123', '123', 7, 0, '2023-07-20 02:56:27'),
(12, 'root', '123', '123', 6, 0, '2023-07-20 01:14:56'),
(13, 'root', '123', '123', 3, 0, '2023-07-20 01:20:13'),
(14, 'user', '유저가 쓴 글입니다', '유저', 13, 2, '2023-07-20 15:29:07'),
(15, 'root', '123', '123', 0, 0, '2023-07-21 03:10:57'),
(16, 'root', '123222', '3212', 0, 0, '2023-07-21 03:11:56'),
(17, '히히히', '안뇽', '우왕!', 2, 0, '2023-07-21 04:01:45'),
(18, 'user', '프로젝트 너무해ㅠㅠㅠ\r\n', '나는 말하는 감자도 아니고, 감자도 아니고, 곰팡이인데....', 30, 0, '2023-07-21 04:02:26');

-- --------------------------------------------------------

--
-- 테이블 구조 `notice`
--

CREATE TABLE `notice` (
  `idx` int NOT NULL,
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hit` int DEFAULT '0',
  `best` int DEFAULT '0',
  `reg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `notice`
--

INSERT INTO `notice` (`idx`, `user_name`, `title`, `content`, `hit`, `best`, `reg_date`) VALUES
(3, 'user', '123', '123', 6, 0, '2023-07-20 16:01:24'),
(4, 'root', 'ㅅㅅㅅ', 'ㅁㅁㅁ', 2, 0, '2023-07-21 00:36:06'),
(5, 'root', '112233', '124ㄴㅇ', 3, 0, '2023-07-21 00:36:22'),
(6, 'root', '23232', '23232', 1, 0, '2023-07-21 02:47:30');

-- --------------------------------------------------------

--
-- 테이블 구조 `qa`
--

CREATE TABLE `qa` (
  `idx` int NOT NULL,
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `hit` int DEFAULT '0',
  `best` int DEFAULT '0',
  `reg_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `recommendations`
--

CREATE TABLE `recommendations` (
  `no` int NOT NULL,
  `idx` int NOT NULL,
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `recommendations`
--

INSERT INTO `recommendations` (`no`, `idx`, `id`) VALUES
(3, 4, 'root'),
(5, 9, '히히히'),
(1, 10, 'user'),
(4, 14, 'admin'),
(2, 14, 'user');

-- --------------------------------------------------------

--
-- 테이블 구조 `replay`
--

CREATE TABLE `replay` (
  `idx` int NOT NULL,
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `replay`
--

INSERT INTO `replay` (`idx`, `user_name`, `content`, `date`) VALUES
(1, '', '감자', '2023-07-21'),
(2, '', '감자\r\n', '2023-07-21'),
(18, 'root', '감자', NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `ui`
--

CREATE TABLE `ui` (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_check` int NOT NULL DEFAULT '0',
  `authority` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 테이블의 덤프 데이터 `ui`
--

INSERT INTO `ui` (`id`, `pw`, `name`, `email`, `email_check`, `authority`) VALUES
('root', '$2y$10$INQS9oyJqCp6FP1SyadNWeamzgS5SyByGev94O.O27YObx2Yw4Bli', 'roots', 'root', 0, 'admin'),
('admin', '$2y$10$QcN2wtSE/2B1Xwf02x2Qw.mk4w07nd7jK7rhDyffWWihPCBG6UeVC', 'admin', 'admin@gmail.com', 0, 'user'),
('admin', '$2y$10$OiQRQr2G1frD9CmvupWzoei8OOTwJFNObhenrZ3Bmsya2Bj8g.Yoa', 'admin', 'admin@gmail.com', 0, 'user'),
('user', '$2y$10$1510itazZPJXIgatjWUvfuu5cLOkiPOGHCwLSSQ8t7uqWf2CEexVK', 'user', 'user', 0, 'user'),
('gh', '$2y$10$eWs6EZmrh0MIfI29hfzGIeznp.Z9gcqMz0GenosXehWTerdk56WG2', '뽀짝이', 'ㅏㅏㅏㅏㅏㅏㅏㅏㅏ', 0, 'user'),
('히히히', '$2y$10$O5EsSuwz21KBLqcneJc4u.YiJed6I6Xh.vNsdFEWzfI6rnjuzNfoK', '히히히', '히히히', 0, 'user'),
('guest', '$2y$10$WMDGsw.oVexo1rpnQWZbn.OWkjmEkrnRwd0/Idz9KWbNrDR1.EIHu', 'hihi', 'aa@a', 0, 'user'),
('test', '$2y$10$5Bf0Y9GfJIV77P0Xfq12ruvl9kKw97m9g1xi6xawANvkPBDhfH6CC', 'test', 'test', 0, 'user');

-- --------------------------------------------------------

--
-- 테이블 구조 `upload_file`
--

CREATE TABLE `upload_file` (
  `file_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `qa`
--
ALTER TABLE `qa`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `unique_recommendation` (`idx`,`id`);

--
-- 테이블의 인덱스 `replay`
--
ALTER TABLE `replay`
  ADD PRIMARY KEY (`idx`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `idx` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 테이블의 AUTO_INCREMENT `notice`
--
ALTER TABLE `notice`
  MODIFY `idx` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 테이블의 AUTO_INCREMENT `qa`
--
ALTER TABLE `qa`
  MODIFY `idx` int NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `replay`
--
ALTER TABLE `replay`
  MODIFY `idx` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
