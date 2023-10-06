-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Okt 2023 pada 21.11
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_book`
--

CREATE TABLE `tbl_book` (
  `tbl_book_id` int(11) NOT NULL,
  `book_image` text NOT NULL,
  `book_title` text NOT NULL,
  `book_category` text NOT NULL,
  `book_author` text NOT NULL,
  `book_abstract` longtext NOT NULL,
  `time_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_book`
--

INSERT INTO `tbl_book` (`tbl_book_id`, `book_image`, `book_title`, `book_category`, `book_author`, `book_abstract`, `time_added`) VALUES
(16, 'How to Talk So Kids Will Listen and Listen So Kids Will Talk.jpg', 'How to Talk So Kids Will Listen and Listen So Kids Will Talk', 'Educational', 'Adele Faber and Elaine Mazlish', 'This book, like many books about education and teaching, focuses on helping adults learn how to interact positively with children. Readers will learn new ideas on a number of important subjects, including how to end conflicts peacefully and how to express emotions without causing duress to the child.', '2023-10-03 08:01:37'),
(17, 'dumbing.jpg', 'Dumbing Us Down', 'Educational', 'John Taylor Gatto', 'As with other books about education and teaching, Dumbing Us Down offers a viewpoint from an experienced teacher. After teaching in New York City’s public school system for over 30 years, John Taylor Gatto published his radical opinion on the country’s compulsory education system. In his opinion, the current system does little to actually educate students and instead teaches them how to simply obey authority without critical thought.', '2023-10-03 08:06:50'),
(18, 'Teach Like Your Hair’s on Fire.jpg', 'Teach Like Your Hair’s on Fire', 'Educational', 'Rafe Esquith', 'After spending years teaching in a California school surrounded by violence and gangs, Rafe Esquith has learned how to help students excel despite their challenges. In this book, Esquith shares some of the methods that have helped him teach algebra and Shakespeare to fifth-graders. While reading this and other biographical books about education and teaching, teachers can find useful teaching techniques from the author’s personal experiences.', '2023-10-03 08:07:31'),
(19, 'In Defense of a Liberal Education.jpg', 'In Defense of a Liberal Education', 'Educational', 'Fareed Zakaria', 'According to the author of this book, liberal arts degrees, such as art history, are declining in popularity. Fareed Zakaria argues that the value of these degrees is being overlooked in today’s job market. Liberal arts degrees can help people learn how to engage in discourse, write effectively and think independently.', '2023-10-03 08:08:10'),
(20, 'Fullmetal Alchemist Brotherhood.jpg', 'Fullmetal Alchemist: Brotherhood', 'Fantasy', 'Bones', 'After a horrific alchemy experiment goes wrong in the Elric household, brothers Edward and Alphonse are left in a catastrophic new reality. Ignoring the alchemical principle banning human transmutation, the boys attempted to bring their recently deceased mother back to life. Instead, they suffered brutal personal loss: Alphonse\'s body disintegrated while Edward lost a leg and then sacrificed an arm to keep Alphonse\'s soul in the physical realm by binding it to a hulking suit of armor.The brothers are rescued by their neighbor Pinako Rockbell and her granddaughter Winry. Known as a bio-mechanical engineering prodigy, Winry creates prosthetic limbs for Edward by utilizing \"automail,\" a tough, versatile metal used in robots and combat armor. After years of training, the Elric brothers set off on a quest to restore their bodies by locating the Philosopher\'s Stone—a powerful gem that allows an alchemist to defy the traditional laws of Equivalent Exchange.\r\n\r\nAs Edward becomes an infamous alchemist and gains the nickname \"Fullmetal,\" the boys\' journey embroils them in a growing conspiracy that threatens the fate of the world.\r\n\r\n[Written by MAL Rewrite]', '2023-10-03 08:14:53'),
(21, 'Sword art online.jpg', 'Sword Art Online', 'Fantasy', 'A-1 Pictures', 'Ever since the release of the innovative NerveGear, gamers from all around the globe have been given the opportunity to experience a completely immersive virtual reality. Sword Art Online (SAO), one of the most recent games on the console, offers a gateway into the wondrous world of Aincrad, a vivid, medieval landscape where users can do anything within the limits of imagination. With the release of this worldwide sensation, gaming has never felt more lifelike.\r\n\r\nHowever, the idyllic fantasy rapidly becomes a brutal nightmare when SAO\'s creator traps thousands of players inside the game. The \"log-out\" function has been removed, with the only method of escape involving beating all of Aincrad\'s one hundred increasingly difficult levels. Adding to the struggle, any in-game death becomes permanent, ending the player\'s life in the real world.\r\n\r\nWhile Kazuto \"Kirito\" Kirigaya was fortunate enough to be a beta-tester for the game, he quickly finds that despite his advantages, he cannot overcome SAO\'s challenges alone. Teaming up with Asuna Yuuki and other talented players, Kirito makes an effort to face the seemingly insurmountable trials head-on. But with difficult bosses and threatening dark cults impeding his progress, Kirito finds that such tasks are much easier said than done.\r\n\r\n[Written by MAL Rewrite]', '2023-10-03 08:15:49'),
(22, 'Kimetsu no Yaiba.jpg', 'Kimetsu no Yaiba', 'Fantasy', 'ufotable', 'Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado\'s shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in the woods at night.\r\n\r\nWhen he finally arrives back home the next day, he is met with a horrifying sight—his whole family has been slaughtered. Worse still, the sole survivor is his sister Nezuko, who has been turned into a bloodthirsty demon. Consumed by rage and hatred, Tanjirou swears to avenge his family and stay by his only remaining sibling. Alongside the mysterious group calling themselves the Demon Slayer Corps, Tanjirou will do whatever it takes to slay the demons and protect the remnants of his beloved sister\'s humanity.\r\n\r\n[Written by MAL Rewrite]', '2023-10-03 08:17:10'),
(23, 'Hunter x Hunter (2011).jpg', 'Hunter x Hunter (2011)', 'Fantasy', 'Madhouse', 'Hunters devote themselves to accomplishing hazardous tasks, all from traversing the world\'s uncharted territories to locating rare items and monsters. Before becoming a Hunter, one must pass the Hunter Examination—a high-risk selection process in which most applicants end up handicapped or worse, deceased.\r\n\r\nAmbitious participants who challenge the notorious exam carry their own reason. What drives 12-year-old Gon Freecss is finding Ging, his father and a Hunter himself. Believing that he will meet his father by becoming a Hunter, Gon takes the first step to walk the same path.\r\n\r\nDuring the Hunter Examination, Gon befriends the medical student Leorio Paladiknight, the vindictive Kurapika, and ex-assassin Killua Zoldyck. While their motives vastly differ from each other, they band together for a common goal and begin to venture into a perilous world.\r\n\r\n[Written by MAL Rewrite]\r\n\r\n', '2023-10-03 08:18:13'),
(24, 'Tokyo Ghoul.jpg', 'Tokyo Ghoul', 'Horror', 'Pierrot', 'A sinister threat is invading Tokyo: flesh-eating \"ghouls\" who appear identical to humans and blend into their population. Reserved college student Ken Kaneki buries his nose in books and avoids the news of the growing crisis. However, the appearance of an attractive woman named Rize Kamishiro shatters his solitude when she forwardly asks him on a date.\r\n\r\nWhile walking Rize home, Kaneki discovers she isn\'t as kind as she first appeared, and she has led him on with sinister intent. After a tragic struggle, he later awakens in a hospital to learn his life was saved by transplanting the now deceased Rize\'s organs into his own body.\r\n\r\nKaneki\'s body begins to change in horrifying ways, and he transforms into a human-ghoul hybrid. As he embarks on his new dreadful journey, Kaneki clings to his humanity in the evolving bloody conflict between society\'s new monsters and the government agents who hunt them.\r\n\r\n[Written by MAL Rewrite]', '2023-10-03 08:19:38'),
(25, 'Kiseijuu Sei no Kakuritsu.jpg', 'Kiseijuu: Sei no Kakuritsu', 'Horror', 'Madhouse', 'All of a sudden, they arrived: parasitic aliens that descended upon Earth and quickly infiltrated humanity by burrowing into the brains of vulnerable targets. These insatiable beings acquire full control of their host and are able to morph into a variety of forms in order to feed on unsuspecting prey.\r\n\r\nSixteen-year-old high school student Shinichi Izumi falls victim to one of these parasites, but it fails to take over his brain, ending up in his right hand instead. Unable to relocate, the parasite, now named Migi, has no choice but to rely on Shinichi in order to stay alive. Thus, the pair is forced into an uneasy coexistence and must defend themselves from hostile parasites that hope to eradicate this new threat to their species.\r\n\r\n[Written by MAL Rewrite]', '2023-10-03 08:20:45'),
(26, 'Highschool of the Dead.jpg', 'Highschool of the Dead', 'Horror', 'Madhouse', ' Highschool of the Dead\r\nIt happened suddenly: The dead began to rise and Japan was thrown into total chaos. As these monsters begin terrorizing a high school, Takashi Kimuro is forced to kill his best friend when he gets bitten and joins the ranks of the walking dead. Vowing to protect Rei Miyamoto, the girlfriend of the man he just executed, they narrowly escape their death trap of a school, only to be greeted with a society that has already fallen.\r\n\r\nSoon, Takashi and Rei band together with other students on a journey to find their family members and uncover what caused this overwhelming pandemic. Joining them is Saeko Busujima, the beautiful president of the Kendo Club; Kouta Hirano, an otaku with a fetish for firearms; Saya Takagi, the daughter of an influential politician; and Shizuka Marikawa, their hot school nurse. But will the combined strength of these individuals be enough to conquer this undead apocalypse?\r\n\r\n[Written by MAL Rewrite]', '2023-10-03 08:21:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`tbl_book_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `tbl_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
