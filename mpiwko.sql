-- phpMyAdmin SQL Dump
-- version 5.0.4deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 20 Cze 2022, 18:10
-- Wersja serwera: 10.5.15-MariaDB-0+deb11u1
-- Wersja PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mpiwko`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admini`
--

CREATE TABLE `admini` (
  `imienazwisko` varchar(100) DEFAULT NULL,
  `login` varchar(100) NOT NULL,
  `haslo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `admini`
--

INSERT INTO `admini` (`imienazwisko`, `login`, `haslo`) VALUES
('Aneta Bruzda', 'anetabruzda', '94c689032276427a67d93c65fa2ab01f2fd313a297929acbfc3a2fd5cf4828408fe4827c11920ebb58db6201270de3a8d51b78fb6c12d35c1bba1fbbbd0d9873'),
('Julia Wójtowicz', 'juliawojtowicz', '051ee18f7bc9b97d10f23ebd78ee2f395c4a289afa49d800176bae234c4d0e855be038f936cdf3b7734af7e62e2d097b0209add2933276c8c967edc4935e48e4'),
('Magdalena Piwko', 'magdapiwko', '96f99141e37fef2941fa99a72e0720dcdb9dac38af5b9e3368891869a4dd912394fd17496e78f9e886aa8fea353e29f583b2127e23bbb5681e356acc4158201a'),
('Patrycja Misterka', 'patrycjamisterka', '05caa82b9f80a8495679ef7e76ea1204f6282a128cd33e84a8589479c0bb9c2ac4c06666beda29e43e3debbb5cbfadbe879be2e1b06ca11ab9d3328e9b3963c7');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `imie` varchar(100) DEFAULT NULL,
  `nazwisko` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `numer` varchar(100) DEFAULT NULL,
  `ulica` varchar(100) DEFAULT NULL,
  `numerdomu` varchar(100) DEFAULT NULL,
  `kod` varchar(100) DEFAULT NULL,
  `wojewodztwo` varchar(100) DEFAULT NULL,
  `miasto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`imie`, `nazwisko`, `email`, `numer`, `ulica`, `numerdomu`, `kod`, `wojewodztwo`, `miasto`) VALUES
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Aneta', 'Bruzda', 'aneta.bruzda2@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.b12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('aneta', 'dddd', 'aanetka@interia.pl', '333', 'dddd', '2', '3333', 'dddccccc', 'dfcdcd'),
('patrycja', 'm', 'patrycja@wp.pl', '123654789', 'qwert', '12/3', '12-345', 'uiop', 'asdff'),
('patrycja', 'M', 'MIS@ABC.COM', '25741963', 'jeden', '1', '12-121', 'QWERT', 'mnbvc'),
('m', 'E', 'qa@op.pl', '888888888', 'p', '1', '12-345', 'kk', 'tr'),
('a', 'b', 'as@op.pl', '22222222', 'c', 'd', '12-345', 'j', 'o'),
('a', 'b', 'as@op.pl', '22222222', 'c', 'd', '12-345', 'j', 'o'),
('yt', 'hyttr', 'yt@hf.pk', '66666666', 'gd', '5', '45-675', 'hfbf', 'hfg'),
('yt', 'hyttr', 'yt@hf.pk', '66666666', 'gd', '5', '45-675', 'hfbf', 'hfg'),
('yt', 'hyttr', 'yt@hf.pk', '66666666', 'gd', '5', '45-675', 'hfbf', 'hfg'),
('yt', 'hyttr', 'yt@hf.pk', '66666666', 'gd', '5', '45-675', 'hfbf', 'hfg'),
('yt', 'hyttr', 'yt@hf.pk', '66666666', 'gd', '5', '45-675', 'hfbf', 'hfg'),
('patrycja', 'm', 'kl@f.f', '465', 'HKBJ', '2', '55-555', 'gub', 'jknkj'),
('patrycja', 'm', 'kl@f.f', '465', 'HKBJ', '2', '55-555', 'gub', 'jknkj'),
('patrycja', 'm', 'kl@f.f', '465', 'HKBJ', '2', '55-555', 'gub', 'jknkj'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('patrycja', 'm', 'kl@f.f', '465', 'HKBJ', '2', '55-555', 'gub', 'jknkj'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', 'qaewf', 'asedfg', 'sdfg'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', 'qaewf', 'asedfg', 'sdfg'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'cccc', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'cccc', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'cccc', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'cccc', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'cccc', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'cccc', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'cccc', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('dddd', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', 'qaewf', 'asedfg', 'sdfg'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', 'qaewf', 'asedfg', 'sdfg'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', 'qaewf', 'asedfg', 'sdfg'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', 'qaewf', 'asedfg', 'sdfg'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'nn', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'nn', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('j', 's', 'ww@op.pl', '22222222', 'j', 'k', '12-345', 'gfh', 'bb'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', 'dddd', 'eeeee'),
('ds', 'fdds', 'ooo@op.pl', '111111111', 'fsdf', '22', '12-345', 'vfdvgfds', 'gfdg'),
('m', 'm', 'fds@o.p', '22222222', 'c', '2', '12-345', 'ewd', 'bb'),
('m', 'm', 'fds@o.p', '22222222', 'c', '2', '12-345', 'ewd', 'bb'),
('m', 'm', 'fds@o.p', '22222222', 'c', '2', '12-345', 'ewd', 'bb'),
('m', 'm', 'fds@o.p', '22222222', 'c', '2', '12-345', 'ewd', 'bb'),
('Anna', 'Nowak', 'an@n.w', '22222222', 'ulica', '2', '12-345', 'Małopolska', 'Kraków'),
('Anna', 'Nowak', 'an@n.w', '22222222', 'ulica', '2', '12-345', 'Małopolska', 'Kraków'),
('Anna', 'Nowak', 'an@n.w', '22222222', 'ulica', '2', '12-345', 'Małopolska', 'Kraków'),
('Anna', 'Nowak', 'an@n.w', '22222222', 'ulica', '2', '12-345', 'Małopolska', 'Kraków'),
('Anna', 'Nowak', 'an@n.w', '22222222', 'ulica', '2', '12-345', 'Małopolska', 'Kraków'),
('aneta', 'ostrowski', 'aanetka@interia.pl', '444', 'eeee', '333', '3333', NULL, 'ddd'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', '23455', NULL, 'sdfg'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', '23455', NULL, 'sdfg'),
('patrycja', 'maa', 'm@m.pl', '465123', 'qqq', '11', '11-111', NULL, 'aaaaaaaaaaa'),
('m', 'm', 'fds@o.p', '22222222', 'c', '22', '12-345', NULL, 'bb'),
('m', 'm', 'fds@o.p', '22222222', 'c', '2', '12-345', NULL, 'bb'),
('Aneta', 'Bruzda', 'aanetka@interia.pl', '3333', 'dddd', '2', '333', NULL, 'eeeee'),
('aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'fff', '3', '222', NULL, 'eeeee'),
('aneta', 'ostrowski', 'aneta.bruzda12@interia.pl', '3333', 'fff', '3', '333', NULL, 'eeeee'),
('aneta', 'ostrowski', 'aneta.bruzda12@interia.pl', '3333', 'fff', '2', '333', NULL, 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', NULL, 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', NULL, 'eeeee'),
('aneta', 'ostrowski', 'aneta.bruzda12@interia.pl', '3333', 'fff', '2', '333', NULL, 'eeeee'),
('patrycja', 'maa', 'm@m.pl', '465123', 'qqq', '11', '11-111', NULL, 'aaaaaaaaaaa'),
('m', 'm', 'fds@o.p', '22222222', 'c', '2', '12-345', NULL, 'bb'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', 'qaewf', NULL, 'sdfg'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', '23455', NULL, 'sdfg'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', NULL, 'eeeee'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'dddd', '2', '333', NULL, 'eeeee'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', '5675', NULL, 'sdfg'),
('Magdalena', 'Piwko', 'mpiwko7@gmail.com', '1234567', 'zsxdfgh', '2', '5675', NULL, 'sdfg'),
('patrycja', 'aaa', 'a@a.a', '52852963', 'jakas', '123', '22-333', NULL, 'aadddsadsa'),
('patrycja', 'aaa', 'a@a.a', '52852963', 'jakas', '123', '22-333', NULL, 'aadddsadsa'),
('a', 's', 'd@m.d', '1', 'hh', '6', '6', NULL, 'gh'),
('a', 's', 'd@m.d', '1', 'hh', '6', '6', NULL, 'gh'),
('aa', 'f', 'f@f.k', '334567876543456', 'ghvgh', '456', '65', NULL, 'dffdfdf'),
('m', 'm', 'fds@o.p', '22222222', 'c', '2', '12-345', NULL, 'bb'),
('patrycja', 'm', 'P@M.M', '12345678', 'SADSA', '22', '22-222', NULL, 'ASDF'),
('patrycja', 'm', 'P@M.M', '12345678', 'SADSA', '22', '22-222', NULL, 'ASDF'),
('aa', 's', 'd@m.m', '123', 'sd', '12', '34', NULL, 'ds'),
('aa', 's', 'd@m.m', '123', 'sd', '12', '34', NULL, 'ds'),
('patrycja', 'd', 'w@w.b', '123', 'asf', '123', '34', NULL, 'asd'),
('Aneta', 'Bruzda', 'aneta.bruzda12@interia.pl', '3333', 'rrr', '3', 'dddd', NULL, 'dddd'),
('Aneta', 'Bruzda', 'aneta.bruzda1@interia.pl', '3333', 'dddd', '2', '333', NULL, 'eeeee'),
('Maria', 'Bruzda', 'mn@b.a', '456456', 'qwert', '1', '22', NULL, 'qwe');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `nazwa` varchar(100) DEFAULT NULL,
  `id` varchar(100) NOT NULL,
  `counts` varchar(100) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `basePrice` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `imienazwisko` varchar(100) DEFAULT NULL,
  `login` varchar(100) NOT NULL,
  `haslo` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`imienazwisko`, `login`, `haslo`) VALUES
('Anna Nowak', 'annanowak', 'be6c97cfe9495134ea75536bde451e7a5cb803f03d608b0d1924c7ca3909827df78146d26f4508f399876728694133f6ebf8ea5494bf56e7bfbb63e4f683abaa'),
('ffffff', 'halo', 'db99ab56079ed27092e1a8b1b24f9aa369177fb642bdd22a8f1ac2837a7a150d9774921d309e85d1c573d462fcd5c8f9aa1b02d384b74c0f743eae1b9c17b3ff'),
('j j', 'julia', '381409d33646afb3538628a5a30e3b76cbfae397cafa68f580abf1928a1118f80f1d3a2507c0c61a9ff19e706757b91e97719d08eb2eea984abd704caa44046c'),
('Julia W', 'juliaw', '7c5926120ea685453d7a1adc2f9e458b8cb9e5ff57643c6c0c93d1cd11901a3b31826a49e758954a708c3659064df979064b0603f9f10a2c672bada6908013cc'),
('Jan Kowalski', 'kowal', 'b0f83924df8a19c1e5a267061de5845dd5b8ee6104d1912488137eda353d7403939068a0fd5bff77ee29ba38f27cc89512ca264124eb12fbb84929b66611ab3a'),
('maria nowak', 'maryskaelo', 'b9fc99246ed481e79ce11c4b32c89dd531f894fc5b134f4966705192a570ebc2eabb75b4d0884984168d8e2b10968b7bbce08afb8e53609035dedcc8f4249b5e'),
('patrycja aaa', 'paaa', 'b5f154bb64b5a405e355945bb6ea0505da0e971565aa4b12206f44c4b988c6767a9db04d928d530383b850d2afa481a95bebe7935fe23bdbc63115d62e25dcc8'),
('Patrycja M', 'patrycjam', '76b1d317c3cc2556862bf6d362eb5576f78e77b813470905c1e51a4f47609cb4fb9ba91ce52911dce18e976edcfb3db58a8353e70a6957c2f0bcf54ff0c38b13');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admini`
--
ALTER TABLE `admini`
  ADD PRIMARY KEY (`login`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
