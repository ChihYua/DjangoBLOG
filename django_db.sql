-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-08-08 05:35:52
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE USER 'django_db'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('ENo33.Auq9IB87.K');
GRANT USAGE ON *.* TO 'django_db'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
CREATE DATABASE IF NOT EXISTS `django_db`;
GRANT ALL PRIVILEGES ON `django\_db`.* TO 'django_db'@'localhost';
GRANT ALL PRIVILEGES ON `django\_db\_%`.* TO 'django_db'@'localhost';

CREATE USER 'django_db'@'127.0.0.1' IDENTIFIED VIA mysql_native_password USING PASSWORD('ENo33.Auq9IB87.K');
GRANT USAGE ON *.* TO 'django_db'@'127.0.0.1' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
GRANT ALL PRIVILEGES ON `django\_db\_%`.* TO 'django_db'@'127.0.0.1';

use `django_db`;

--
-- 資料庫： `django_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add post', 7, 'add_post'),
(26, 'Can change post', 7, 'change_post'),
(27, 'Can delete post', 7, 'delete_post'),
(28, 'Can view post', 7, 'view_post');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$dCmNWpvhja0DwuWk2v9QQd$miRDSn7dCff/R1jot7PigFdWR1CUv4Eg2GJhJpR7JMs=', '2024-08-08 03:22:51.108008', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-07-12 07:02:56.698000'),
(2, 'pbkdf2_sha256$720000$ZWCHWvAOzCsXjJVjTLal5D$ZRw6B8tF1U9r6AKj2waX29N8wKWuaw/DYKqgwEkEZMY=', '2024-07-19 03:25:29.950000', 1, 'CY', '', '', 'friendly1774@gmail.com', 1, 1, '2024-07-19 03:25:09.156000');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `blog_post_post`
--

CREATE TABLE `blog_post_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `pub_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `blog_post_post`
--

INSERT INTO `blog_post_post` (`id`, `title`, `slug`, `content`, `pub_date`) VALUES
(1, '第一篇PTT', 'Aa0001', '最近中國翡翠崩盤\r\n中國人都跑到臉書開直播賣貨\r\n看了幾間真的去緬甸買賣貨的\r\n今天全部停播\r\n\r\n看了一個蘇姐的\r\n說緬甸市場搞了一個霸王條款\r\n要直播賣貨要付押金\r\n還要負直播費、直播翻譯費(開直播的要花錢請翻譯???)\r\n還規定在市場才能撥、回飯店不准撥\r\n然後各種有的沒的費用\r\n停播再復播要再罰款\r\n\r\n現在所有緬甸翡翠作直播的中國人\r\n全部不開播不收貨\r\n大家要聯合起來抵制市場方\r\n說要做無聲的抵制\r\n\r\n揚言看那些馬仔的翡翠不賣中國人\r\n要賣給鬼\r\n\r\n所以最近買翡翠如果說自己在緬甸但還繼續播的\r\n多半是賣假貨的假飛人', '2024-07-12 07:21:08.126000'),
(2, '程式碼一', 'Bb0001', '---\r\n__Advertisement :)__\r\n\r\n- __[pica](https://nodeca.github.io/pica/demo/)__ - high quality and fast image\r\n  resize in browser.\r\n- __[babelfish](https://github.com/nodeca/babelfish/)__ - developer friendly\r\n  i18n with plurals support and easy syntax.\r\n\r\nYou will like those projects!\r\n\r\n---\r\n\r\n# h1 Heading 8-)\r\n## h2 Heading\r\n### h3 Heading\r\n#### h4 Heading\r\n##### h5 Heading\r\n###### h6 Heading\r\n\r\n\r\n## Horizontal Rules\r\n\r\n___\r\n\r\n---\r\n\r\n***\r\n\r\n\r\n## Typographic replacements\r\n\r\nEnable typographer option to see result.\r\n\r\n(c) (C) (r) (R) (tm) (TM) (p) (P) +-\r\n\r\ntest.. test... test..... test?..... test!....\r\n\r\n!!!!!! ???? ,,  -- ---\r\n\r\n\"Smartypants, double quotes\" and \'single quotes\'\r\n\r\n\r\n## Emphasis\r\n\r\n**This is bold text**\r\n\r\n__This is bold text__\r\n\r\n*This is italic text*\r\n\r\n_This is italic text_\r\n\r\n~~Strikethrough~~\r\n\r\n\r\n## Blockquotes\r\n\r\n\r\n> Blockquotes can also be nested...\r\n>> ...by using additional greater-than signs right next to each other...\r\n> > > ...or with spaces between arrows.\r\n\r\n\r\n## Lists\r\n\r\nUnordered\r\n\r\n+ Create a list by starting a line with `+`, `-`, or `*`\r\n+ Sub-lists are made by indenting 2 spaces:\r\n  - Marker character change forces new list start:\r\n    * Ac tristique libero volutpat at\r\n    + Facilisis in pretium nisl aliquet\r\n    - Nulla volutpat aliquam velit\r\n+ Very easy!\r\n\r\nOrdered\r\n\r\n1. Lorem ipsum dolor sit amet\r\n2. Consectetur adipiscing elit\r\n3. Integer molestie lorem at massa\r\n\r\n\r\n1. You can use sequential numbers...\r\n1. ...or keep all the numbers as `1.`\r\n\r\nStart numbering with offset:\r\n\r\n57. foo\r\n1. bar\r\n\r\n\r\n## Code\r\n\r\nInline `code`\r\n\r\nIndented code\r\n\r\n    // Some comments\r\n    line 1 of code\r\n    line 2 of code\r\n    line 3 of code\r\n\r\n\r\nBlock code \"fences\"\r\n\r\n```\r\nSample text here...\r\n```\r\n\r\nSyntax highlighting\r\n\r\n``` js\r\nvar foo = function (bar) {\r\n  return bar++;\r\n};\r\n\r\nconsole.log(foo(5));\r\n```\r\n\r\n## Tables\r\n\r\n| Option | Description |\r\n| ------ | ----------- |\r\n| data   | path to data files to supply the data that will be passed into templates. |\r\n| engine | engine to be used for processing templates. Handlebars is the default. |\r\n| ext    | extension to be used for dest files. |\r\n\r\nRight aligned columns\r\n\r\n| Option | Description |\r\n| ------:| -----------:|\r\n| data   | path to data files to supply the data that will be passed into templates. |\r\n| engine | engine to be used for processing templates. Handlebars is the default. |\r\n| ext    | extension to be used for dest files. |\r\n\r\n\r\n## Links\r\n\r\n[link text](http://dev.nodeca.com)\r\n\r\n[link with title](http://nodeca.github.io/pica/demo/ \"title text!\")\r\n\r\nAutoconverted link https://github.com/nodeca/pica (enable linkify to see)\r\n\r\n\r\n## Images\r\n\r\n![Minion](https://octodex.github.com/images/minion.png)\r\n![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg \"The Stormtroopocat\")\r\n\r\nLike links, Images also have a footnote style syntax\r\n\r\n![Alt text][id]\r\n\r\nWith a reference later in the document defining the URL location:\r\n\r\n[id]: https://octodex.github.com/images/dojocat.jpg  \"The Dojocat\"\r\n\r\n\r\n## Plugins\r\n\r\nThe killer feature of `markdown-it` is very effective support of\r\n[syntax plugins](https://www.npmjs.org/browse/keyword/markdown-it-plugin).\r\n\r\n\r\n### [Emojies](https://github.com/markdown-it/markdown-it-emoji)\r\n\r\n> Classic markup: :wink: :cry: :laughing: :yum:\r\n>\r\n> Shortcuts (emoticons): :-) :-( 8-) ;)\r\n\r\nsee [how to change output](https://github.com/markdown-it/markdown-it-emoji#change-output) with twemoji.\r\n\r\n\r\n### [Subscript](https://github.com/markdown-it/markdown-it-sub) / [Superscript](https://github.com/markdown-it/markdown-it-sup)\r\n\r\n- 19^th^\r\n- H~2~O\r\n\r\n\r\n### [\\<ins>](https://github.com/markdown-it/markdown-it-ins)\r\n\r\n++Inserted text++\r\n\r\n\r\n### [\\<mark>](https://github.com/markdown-it/markdown-it-mark)\r\n\r\n==Marked text==\r\n\r\n\r\n### [Footnotes](https://github.com/markdown-it/markdown-it-footnote)\r\n\r\nFootnote 1 link[^first].\r\n\r\nFootnote 2 link[^second].\r\n\r\nInline footnote^[Text of inline footnote] definition.\r\n\r\nDuplicated footnote reference[^second].\r\n\r\n[^first]: Footnote **can have markup**\r\n\r\n    and multiple paragraphs.\r\n\r\n[^second]: Footnote text.\r\n\r\n\r\n### [Definition lists](https://github.com/markdown-it/markdown-it-deflist)\r\n\r\nTerm 1\r\n\r\n:   Definition 1\r\nwith lazy continuation.\r\n\r\nTerm 2 with *inline markup*\r\n\r\n:   Definition 2\r\n\r\n        { some code, part of Definition 2 }\r\n\r\n    Third paragraph of definition 2.\r\n\r\n_Compact style:_\r\n\r\nTerm 1\r\n  ~ Definition 1\r\n\r\nTerm 2\r\n  ~ Definition 2a\r\n  ~ Definition 2b\r\n\r\n\r\n### [Abbreviations](https://github.com/markdown-it/markdown-it-abbr)\r\n\r\nThis is HTML abbreviation example.\r\n\r\nIt converts \"HTML\", but keep intact partial entries like \"xxxHTMLyyy\" and so on.\r\n\r\n*[HTML]: Hyper Text Markup Language\r\n\r\n### [Custom containers](https://github.com/markdown-it/markdown-it-container)\r\n\r\n::: warning\r\n*here be dragons*\r\n:::', '2024-07-12 07:23:53.187000'),
(3, '第一章圖片', 'Cc0001', '<blockquote class=\"imgur-embed-pub\" lang=\"en\" data-id=\"a/93I9jFW\"  ><a href=\"//imgur.com/a/93I9jFW\">Unmute.</a></blockquote><script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"></script>', '2024-07-12 07:25:16.615000'),
(4, '第二章圖片', 'Dd0001', '<blockquote class=\"imgur-embed-pub\" lang=\"en\" data-id=\"a/Neh0Y7f\"  ><a href=\"//imgur.com/a/Neh0Y7f\">Mans best friend</a></blockquote><script async src=\"//s.imgur.com/min/embed.js\" charset=\"utf-8\"></script>', '2024-07-12 07:27:10.467000'),
(5, '第二篇PTT', 'Ee0001', '作者yokann ( )\r\n看板WomenTalk\r\n標題Re: [閒聊] 講話刻薄的人\r\n時間Fri Jul 12 10:48:10 2024\r\n\r\n越長大就會發現\r\n\r\n真的要離這種負面能量滿點的人遠一點\r\n\r\n負能量滿點的人常常會說\r\n\r\n他們是比較悲觀 考慮的比較周詳\r\n\r\n但那也就算了\r\n\r\n其實大部分的 就是眼紅 嫉妒 見不得別人好\r\n\r\n開口閉口就酸言酸語 也沒什麼建設性的意見\r\n\r\n就真的只是單純刻薄\r\n\r\n在網路上也就算了 畢竟樂子人很多\r\n\r\n但是在現實生活中 這種人真的要遠離一點\r\n\r\n多相處沒好處 還會讓人心情不好', '2024-07-12 07:28:25.314000'),
(6, '程式碼二', 'Ff0001', '__Advertisement :)__\r\n\r\n- __[pica](https://nodeca.github.io/pica/demo/)__ - high quality and fast image\r\n  resize in browser.\r\n- __[babelfish](https://github.com/nodeca/babelfish/)__ - developer friendly\r\n  i18n with plurals support and easy syntax.\r\n\r\nYou will like those projects!', '2024-07-12 07:33:10.771000');

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-07-12 07:21:08.128000', '1', '第一筆', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-07-12 07:23:53.188000', '2', '第二筆', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-07-12 07:25:16.617000', '3', '第一章圖片', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-07-12 07:25:47.572000', '1', '第一筆PTT', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(5, '2024-07-12 07:27:10.468000', '4', '第二章圖片', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-07-12 07:28:25.315000', '5', '第二篇PTT', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-07-12 07:33:10.772000', '6', '程式碼二', 1, '[{\"added\": {}}]', 7, 1),
(8, '2024-07-12 07:33:42.781000', '2', '程式碼一', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(9, '2024-07-12 07:33:56.114000', '1', '第一篇PTT', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(10, '2024-07-19 05:20:57.814000', '6', '程式碼二', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(11, '2024-07-19 05:57:52.329000', '6', '程式碼二', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(12, '2024-07-19 05:58:05.695000', '5', '第二篇PTT', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(13, '2024-07-19 05:58:44.719000', '4', '第二章圖片', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(14, '2024-07-19 05:58:52.039000', '3', '第一章圖片', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(15, '2024-07-19 05:59:00.695000', '2', '程式碼一', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(16, '2024-07-19 05:59:05.311000', '1', '第一篇PTT', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(17, '2024-07-19 06:41:00.865000', '6', '程式碼二', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(18, '2024-07-19 06:46:06.681000', '6', '程式碼二', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(19, '2024-07-19 06:46:20.003000', '6', '程式碼二', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(20, '2024-07-19 06:46:36.016000', '6', '程式碼二', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(21, '2024-07-19 06:49:21.072000', '6', '程式碼二', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(22, '2024-07-19 06:53:23.994000', '6', '程式碼二', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2),
(23, '2024-07-19 06:54:09.994000', '6', '程式碼二', 2, '[{\"changed\": {\"fields\": [\"Slug\"]}}]', 7, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'blog_post', 'post'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-08-08 02:46:43.332446'),
(2, 'auth', '0001_initial', '2024-08-08 02:46:43.531310'),
(3, 'admin', '0001_initial', '2024-08-08 02:46:43.572201'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-08-08 02:46:43.591177'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-08 02:46:43.596137'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-08-08 02:46:43.632744'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-08-08 02:46:43.653280'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-08-08 02:46:43.660261'),
(9, 'auth', '0004_alter_user_username_opts', '2024-08-08 02:46:44.676743'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-08-08 02:46:44.710651'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-08-08 02:46:44.711648'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-08-08 02:46:44.718628'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-08-08 02:46:44.725610'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-08-08 02:46:44.733589'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-08-08 02:46:44.741567'),
(16, 'auth', '0011_update_proxy_permissions', '2024-08-08 02:46:44.746555'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-08-08 02:46:44.754533'),
(18, 'blog_post', '0001_initial', '2024-08-08 02:46:44.759520'),
(19, 'sessions', '0001_initial', '2024-08-08 02:46:44.775477');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0h4xdjd850nj59fb6jws7atzz0mk8m09', '.eJxVjDsOwyAQBe9CHSHAwELK9D4D2uUTnERYMnYV5e4RkoukfTPz3izgsddw9LyFJbErk-zyuxHGZ24DpAe2-8rj2vZtIT4UftLO5zXl1-10_w4q9jpqrU22MpWJnIcIoDQq6yAVzIJAFGWERnAyaasma5wnsGgdeUERpWKfL9RXN0w:1sbtjn:Jm7WZXv5LybYZxxgjGobkLaZ2Mi5D9G26c6RD1ULIFQ', '2024-08-22 03:22:51.109816'),
('746svw8ywrcfgqhi5if5u8gsqsujj05k', '.eJxVjMsOwiAURP-FtSG8roBL934DuXBBqgaS0q6M_26bdKGZ3Zwz82YB16WGdeQ5TMQuTLHTbxcxPXPbAT2w3TtPvS3zFPmu8IMOfuuUX9fD_TuoOOq2dnD2gMbSFoEiFXSUbE5SGEMAlhRilLH4CMp4V8ALktp7ozXaLJF9vuggN9k:1sUeFN:LdgNuqmIPS_sTxtVk9i1ZWp_YegK0XJWQbrIQppKrIg', '2024-08-02 03:25:29.953000'),
('8e3kxuu3szdovcfgf3gkexl8k10psgfd', '.eJxVjDsOwyAQBe9CHSHAwELK9D4D2uUTnERYMnYV5e4RkoukfTPz3izgsddw9LyFJbErk-zyuxHGZ24DpAe2-8rj2vZtIT4UftLO5zXl1-10_w4q9jpqrU22MpWJnIcIoDQq6yAVzIJAFGWERnAyaasma5wnsGgdeUERpWKfL9RXN0w:1sZ0LS:67VEl0lxM9QIbPBHDR325qhg32cFj7w45qgDW3kbY7s', '2024-08-14 03:49:46.961000'),
('xpturnpbz9lvqurihtvcubypsa3idpeo', '.eJxVjDsOwyAQBe9CHSHAwELK9D4D2uUTnERYMnYV5e4RkoukfTPz3izgsddw9LyFJbErk-zyuxHGZ24DpAe2-8rj2vZtIT4UftLO5zXl1-10_w4q9jpqrU22MpWJnIcIoDQq6yAVzIJAFGWERnAyaasma5wnsGgdeUERpWKfL9RXN0w:1sSANV:nTUSBWFO_b0SDRHN_ul4VbVB6jZ57mjUqNaeR6v3Wnk', '2024-07-26 07:07:37.464000');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `blog_post_post`
--
ALTER TABLE `blog_post_post`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog_post_post`
--
ALTER TABLE `blog_post_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
