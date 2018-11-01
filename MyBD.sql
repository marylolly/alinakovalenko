-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.20 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных MyBD
CREATE DATABASE IF NOT EXISTS `MyBD` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `MyBD`;

-- Дамп структуры для таблица MyBD.catalogs
CREATE TABLE IF NOT EXISTS `catalogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.catalogs: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` (`id`, `name`, `body`, `picture`, `parent_id`, `vip`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'Товары для дома', '****', '1.jpg', 0, 0, 0, NULL, NULL),
	(2, 'Бытовая техника', '****', '2.jpg', 0, 0, 0, NULL, NULL),
	(3, 'Бытовая химия', '****', '3.jpg', 0, 0, 0, NULL, NULL),
	(4, 'Постельное белье', '****', '4.jpg', 0, 0, 0, NULL, NULL);
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.category: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Товары для дома', '<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '2018-10-27 09:03:38', '2018-10-27 09:03:38', NULL),
	(2, 'Бытовая техника', '<p>Quisque leo purus, ornare at ullamcorper sed, iaculis eu est. Nulla vehicula quis ligula eu bibendum. Quisque ac hendrerit metus. Curabitur tincidunt mi ut placerat vehicula. Sed non ipsum lobortis, dictum felis tincidunt, ultricies sapien. Quisque tortor orci, fringilla fermentum lectus id, tincidunt laoreet lectus. Sed placerat tincidunt lobortis. In feugiat ipsum molestie turpis sagittis maximus. Aliquam urna tellus, condimentum ut pharetra quis, venenatis ut quam. Suspendisse convallis ante odio, molestie sollicitudin purus feugiat eget. Vestibulum porttitor nisi eget nisl congue finibus. Praesent consectetur nec nunc sit amet interdum.</p>', '2018-10-27 09:04:57', '2018-10-27 09:04:57', NULL),
	(3, 'Постельное белье', '<p>Praesent at massa magna. Aenean nec dignissim orci. Nulla nibh sapien, pretium at blandit sollicitudin, dictum sed lorem. Cras vitae varius augue, in semper ligula. Morbi vel turpis scelerisque, accumsan libero sit amet, pellentesque odio. Donec ac dui sit amet nisi pulvinar posuere at et ligula. Nam metus nibh, mollis eu diam id, vestibulum consequat urna. Vivamus blandit sagittis sem.</p>', '2018-10-27 09:05:19', '2018-10-27 09:05:19', NULL),
	(4, 'Бытовая химия', '<p>Quisque luctus ex ut felis lobortis, eu commodo libero auctor. Sed scelerisque mauris sit amet libero volutpat pulvinar. Donec consequat malesuada sem, non gravida nulla scelerisque at. Nam sapien nulla, condimentum id lacinia a, aliquam eget nulla. Phasellus eu fringilla orci, non molestie metus. Vestibulum ornare ornare rutrum. Duis auctor convallis nibh viverra vestibulum. Fusce quis vestibulum enim.</p>', '2018-10-27 09:05:57', '2018-10-27 09:05:57', NULL),
	(5, 'Default category', 'HTML text', '2018-10-27 12:35:56', '2018-10-27 12:35:56', NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.feedback: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`id`, `user_id`, `body`, `showhide`, `url`, `created_at`, `updated_at`) VALUES
	(1, 1, '', 'show', NULL, '2018-10-25 15:25:04', '2018-10-25 15:25:04'),
	(2, 1, '<p>asdasd</p>', 'show', NULL, '2018-10-25 15:26:16', '2018-10-25 15:26:16'),
	(3, 1, '<p>dfsdfsd</p>', 'show', NULL, '2018-10-25 16:25:48', '2018-10-25 16:25:48'),
	(4, 1, '<p>vdvdzvz</p>', 'show', NULL, '2018-10-25 16:26:05', '2018-10-25 16:26:05');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.maintexts
CREATE TABLE IF NOT EXISTS `maintexts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` enum('ru','en') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ru',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.maintexts: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `maintexts` DISABLE KEYS */;
INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `type`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'Добро пожаловать', '<a class="anchorjs-link " href="#community" aria-label="Anchor link for: community" data-anchorjs-icon="" style="font-family: anchorjs-icons; font-style: normal; font-variant: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>Community <p class="lead">Stay up to date on the development of Bootstrap and reach out to the community with these helpful resources.</p> <ul> <li>Read and subscribe to <a href="http://blog.getbootstrap.com/">The Official Bootstrap Blog</a>.</li> <li>Chat with fellow Bootstrappers using IRC in the <code>irc.freenode.net</code> server, in the <a href="irc://irc.freenode.net/%23bootstrap">##bootstrap channel</a>.</li> <li>For help using Bootstrap, ask on <a href="https://stackoverflow.com/questions/tagged/twitter-bootstrap-3">StackOverflow using the tag <code>twitter-bootstrap-3</code></a>.</li> <li>Developers should use the keyword <code>bootstrap</code> on packages which modify or add to the functionality of Bootstrap when distributing through <a href="https://www.npmjs.com/browse/keyword/bootstrap">npm</a> or similar delivery mechanisms for maximum discoverability.</li> <li>Find inspiring examples of people building with Bootstrap at the <a href="http://expo.getbootstrap.com">Bootstrap Expo</a>.</li> </ul> <p>You can also follow <a href="https://twitter.com/getbootstrap">@getbootstrap on Twitter</a> for the latest gossip and awesome music videos.</p>', 'index', NULL, 'en', NULL, NULL),
	(2, 'О компании', '<b>ООО «ЭЛЕКТРОСЕРВИС и Ко» работает на белорусском рынке с 1993 года.</b><br><br>Основная сфера деятельности - оптовая и розничная торговля бытовой техникой и электроникой.<br><br>Главной и отличительной чертой работы компании является самый широкий ассортимент товаров и высокий уровень обслуживания клиентов. <br><br>Компания имеет свою торговую сеть под торговой маркой «ЭЛЕКТРОСИЛА», с магазинами как в Минске, так и в регионах.<br><br>Нашими клиентами являются не только жители города Минска, но и регионов республики. Клиентов привлекает огромный ассортимент предлагаемых товаров, приемлемые цены, постоянно проводимые рекламные мероприятия. Торговые точки открыты для всех покупателей, разработан максимально удобный график работы. <br><br>Наша компания является официальным (а по ряду брэндов и эксклюзивным) дилером ведущих мировых производителей бытовой и аудио-, видеотехники на территории Республики Беларусь.<br><br>В планы развития компании входит расширение торговой сети с открытием новых магазинов большого формата (от 1000 кв.м.) как в Минске, так и в регионах.<br><br>Компания ежегодно наращивает портфель брэндов, представленных в ассортименте розничной торговой сети, и проводит целый ряд мероприятий по совершенствованию кадровой политики торгового персонала (участие в ежегодных тренингах, направленных на совершенствование методов розничной торговли и уровня обслуживания клиентов).<br><br>Брэнды представленные в наших магазинах:<br><br>- Бытовая техника и электроника: BRAUN, PHILIPS, UFESA, BOSCH, SIEMENS, THOMAS, SONY, PANASONIC, SAMSUNG, DAEWOO, INDESIT, ROWENTA, KRUPS, FAGOR, ELECTROLUX, TEFAL, MOULINEX, KENWOOD, ZANUSSI, LG, HOTPOINT-ARISTON, GEFEST, HORIZONT.<br><br>- Компьютеры и ноутбуки: SAMSUNG, HP, ASUS, LENOVO, COMPAQ.<br><br><br><b>Этапы развития и становления компании «ЭЛЕКТРОСЕРВИС и Ко»:</b><br><br>1993 год – точка отсчета в истории компании. В ноябре этого года заключен <b>первый договор</b>. Подписан он был с немецким брендом <b>BRAUN</b>, плодотворное сотрудничество с которым продолжается до сих пор.<br><br>1994 год – компания стартует в сфере розничных продаж и открывает свой <b>первый магазин</b> бытовой техники и электроники.<br><br>2002 год – несколько лет успешного становления и формирования приводят <b>к открытию уникального салона-магазина «НА РОСТАНЯХ»</b> по адресу Минск, ул. Красная, 22.<br><br>2005 год - ООО «ЭЛЕКТРОСЕРВИС и Ко» побеждает в международном фестивале-конкурсе «Выбор года в Беларуси 2005» в номинации <b>«Сеть магазинов электробытовой техники №1 в Беларуси»</b>.<br><br>2006 год – победа в международном фестивале-конкурсе «Выбор года в Беларуси 2006» в номинации <b>«Поставщик электробытовой техники №1 в Беларуси»</b>.<br><br>2007-2008 годы – ребрендинг торговой сети. Образ компании предстает в том виде, который сейчас стал уже привычным покупательскому глазу. По исследованиям компании МАСМИ, <b>узнаваемость бренда «ЭЛЕКТРОСИЛА» составляет 91%</b>. Открытие супермаркета «ЭЛЕКТРОСИЛА» в ТРЦ «ЭКСПОБЕЛ».<br><br>2008-2011 годы – компания продолжает наращивать торговые площади и открывает за этот период около десятка новых магазинов «ЭЛЕКТРОСИЛА» в Минске, Могилеве, Гомеле, Мозыре и Витебске. <br><br>2011 год - торговая сеть «ЭЛЕКТРОСИЛА» - признана первой и единственной сетью бытовой техники и электроники в Беларуси, которая сертифицирована согласно требованиям <b>международного стандарта СТБ ISO 9001:2009</b>.<br><br>2011-2012 годы – в 2011 г. компанией была продана <b>100-тысячная стиральная машина</b>, а к октябрю 2012 г. нашел своего покупателя <b>100-тысячный холодильник</b>.<br><br>2012-2013 годы – компания открывает магазины «ЭЛЕКТРОСИЛА» в Барановичах, Бресте, Могилеве, Полоцке, Молодечно, Пинске и Минске. За это она неоднократно награждается, как <b>«Лучший предприниматель года»</b> в номинации «Организатор новых рабочих мест». <br><br>2014 год – компания «ЭЛЕКТРОСЕРВИС и Ко» получила <b>Премию HR-бренд 2014</b> в номинации «Регион». Это направление в подготовке высококвалифицированных кадров является приоритетным, поскольку магазины «ЭЛЕКТРОСИЛА» открываются практически во всех городах РБ с населением более <b>80.000 человек</b>.<br><br>2015 год – введены <b>услуги по настройке IT-техники</b> в магазинах «ЭЛЕКТРОСИЛА». К июню этого же года торговая сеть «ЭЛЕКТРОСИЛА» предложила своим покупателям эксклюзивную услугу – <b>выездной IT-сервис</b>. Налажено сотрудничество торговой сети «ЭЛЕКТРОСИЛА» и крупнейшей страховой компании Республики Беларусь <b>«БЕЛГОССТРАХ»</b>, с которой разработан специальный страховой продукт «ВСЕ ВКЛЮЧЕНО». Также введены дополнительные сервисы и услуги: <b>установка аудио, видео, бытовой техники и ГарантСервис</b> для бытовой техники и электроники. Открытие магазинов «ЭЛЕКТРОСИЛА» в Бобруйске, Гродно и Минске.<br><br>2015 год – разработан и внедрен новый проект - <b>интернет-магазин «ЭЛЕКТРОСИЛА» sila.by</b>. В сети запущены мультиканальные продажи, позволяющие приобретать товары не только в розничных магазинах, но и в интернет-магазине sila.by (или <b>электросила.бел</b> в кириллической доменной зоне).<br><br>2015 год – меняющиеся реалии в торговле приводят к запуску нового формата продаж «ЭЛЕКТРОСИЛА», совмещающего магазин с небольшой торговой площадью и <b>пункт онлайн-продаж sila.by</b>.<br><br>2015 год – штат компании составляет более <b>800 человек</b>, общее количество торговых площадей более <b>20.000 м²</b>, держателями накопительных дисконтных карт торговой сети «ЭЛЕКТРОСИЛА» являются более <b>250.000 человек</b>.<br><br>2015 год – на сегодняшний день компания «ЭЛЕКТРОСЕРВИС и Ко» является эксклюзивным поставщиком таких ведущих мировых брендов, как <b>THOMAS</b>, <b>DYSON</b>, <b>BRAUN</b>, <b>SIMFER</b>, <b>DAEWOO</b> и <b>BABYLISS</b>.<br><br>2015 год - <b>«ЭЛЕКТРОСИЛА»</b> появилась в социальных сетях <a href="https://vk.com/elektrosila_by">ВКонтакте</a>, <a href="https://www.facebook.com/pg/elektrosila.by">Facebook</a> и <a href="https://ok.ru/elektrosila.by">Одноклассники</a>. Теперь обо всех наших новостях, акциях и специальных предложениях можно узнавать в пабликах компании.<br><br>2016 год – расширение кредитных сервисов для наших покупателей – теперь помимо обычных кредитов и рассрочек, оформляемых непосредственно в магазинах, приобрести товар на <b>супервыгодных условиях</b> по картам рассрочки – <b>«Черепаха»</b> от ВТБ Банка и <b>«Карта покупок»</b> от Белгазпромбанка. <br><br>2016 год – появление новых дополнительных услуг и сервисов (<b>ByCard</b>, <b>Megogo</b>, <b>страхование жилья</b>).<br><br>2016 год – существенное расширение ассортимента <b>интернет-магазина sila.by</b>: новые бренды в наличии и под заказ. <br><br>2016 год – открытие нового магазина <b>«ЭЛЕКТРОСИЛА» в г. Калинковичи</b>.<br><br>2016 год – <b>«ЭЛЕКТРОСИЛА»</b> стала серебряным призером премии <b>«Бренд года»</b> в номинации <b>«Торговые сети бытовой техники»</b>.<br><br>2016 год – большой благотворительный проект <b>«Соберем мечту вместе»</b>, прошедший в торговой сети <b>«ЭЛЕКТРОСИЛА»</b> и магазинах <b>«Буслик»</b> при поддержке фонда <b>Unihelp</b> –вместе с нашими покупателями мы помогли в преддверии рождественских праздников осуществить мечты детей.<br><br>2017 год - открыто 4 новых магазина: город Лида, город Слуцк, ТЦ «Скала» и ТЦ «Спектр» в Минске.<br><br>2018 год - <b>«ЭЛЕКТРОСИЛА»</b> открывает новые каналы в <a href="https://twitter.com/elektrosila_by">Twitter</a>, <a href="https://t.me/elektrosila_by">Telegram</a> и аккаунт в <a href="https://www.instagram.com/elektrosila.by/">Instagram</a><br><br><img src="https://sila.by/img/iso.gif"><br><br><br><br><br><br><br><br><br><span class="quote"><i>• Вся информация, размещенная на веб-сайте sila.by, включая статьи, тексты, фото, изображения, иллюстрации, дизайн сайта, а также подбор и расположение материалов является объектом авторских прав и охраняется в соответствии с законодательством Республики Беларусь.<br><br>• ООО "ЭЛЕКТРОСЕРВИС и Ко" является обладателем исключительных авторских имущественных прав на указанную информацию.<br><br>• Копирование (в том числе запись на носители информации), воспроизведение (включая воспроизведение на сайтах сети интернет для любых целей, включая обзоры), переработка, распространение, передача в эфир, сообщение по кабелю для всеобщего сведения, доведение до всеобщего сведения через сеть интернет, иное использование указанной информации и других материалов веб-сайта sila.by любым способом без письменного разрешения ООО "ЭЛЕКТРОСЕРВИС и Ко" запрещено и влечет ответственность, предусмотренную законодательством Республики Беларусь о защите авторских прав.<br><br>• Товарные знаки (знаки обслуживания) «ЭЛЕКТРОСИЛА» и "ЭЛЕКТРОСЕРВИС и Ко" являются зарегистрированными товарными знаками (знаками обслуживания) ООО "ЭЛЕКТРОСЕРВИС и Ко" и охраняются в соответствии с законодательством Республики Беларусь.</i></span><br><br><!--<a href="https://www.sila.by/files/Pamjatka_trebovania_Internet_magazin.doc" target="_blank">Памятка о работе Интернет магазина</a>-->', 'about', NULL, 'ru', NULL, NULL),
	(3, 'Услуги', 'Услуга1, услуга 2, услуга3', 'services', NULL, 'ru', NULL, NULL),
	(4, 'Контакты', 'Адрес, телефон, эл. почта', 'contakts', NULL, 'ru', NULL, NULL);
/*!40000 ALTER TABLE `maintexts` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.menus: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
	(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
	(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
	(3, 0, 1, 'fa-database', 'Category', 'Categories', NULL, '2018-10-27 09:02:26', '2018-10-27 09:02:26'),
	(9, 0, 1, 'fa-database', 'Test3', 'Test3', NULL, '2018-10-27 09:50:19', '2018-10-27 09:50:19'),
	(10, 0, 1, 'fa-database', 'Product', 'Products', NULL, '2018-10-27 09:58:02', '2018-10-27 09:58:02'),
	(11, 0, 3, 'fa-database', 'Order', 'Orders', NULL, '2018-11-01 11:54:44', '2018-11-01 11:54:44');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.menu_role
CREATE TABLE IF NOT EXISTS `menu_role` (
  `menu_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  KEY `menu_role_menu_id_index` (`menu_id`),
  KEY `menu_role_role_id_index` (`role_id`),
  CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.menu_role: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `menu_role` DISABLE KEYS */;
INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
	(3, 1),
	(9, 1),
	(10, 1),
	(11, 1);
/*!40000 ALTER TABLE `menu_role` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.migrations: ~13 rows (приблизительно)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_10_25_121723_create_maintexts_table', 2),
	(4, '2018_10_25_145138_create_feedback_table', 3),
	(5, '2018_10_26_154403_create_catalogs_table', 4),
	(6, '2015_10_10_000000_create_menus_table', 5),
	(7, '2015_10_10_000000_create_roles_table', 5),
	(8, '2015_10_10_000000_update_users_table', 5),
	(9, '2015_12_11_000000_create_users_logs_table', 5),
	(10, '2016_03_14_000000_update_menus_table', 5),
	(11, '2018_10_27_090226_create_category_table', 6),
	(12, '2018_10_27_095019_create_test3_table', 7),
	(13, '2018_10_27_095803_create_product_table', 8),
	(14, '2018_10_31_155736_create_orders_table', 9);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.orders: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `body`, `email`, `phone`, `address`, `city`, `index`, `type`, `region`, `fio`, `comment`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'a:1:{i:1;s:1:"1";}', 'maryen@mail.ru', 'fgd', 'gfd', 'fgd', 'dfgdg', '1', NULL, 'fds', '<p>fdgfd</p>', 0, 'new', '2018-11-01 10:23:23', '2018-11-01 10:23:23'),
	(2, 'a:1:{i:1;s:1:"1";}', 'maryen@mail.ru', 'rtyrt', 'rtyrt', 'trytr', 'tryr', '2', 'Минская', 'tyr', '<p>yrtyrt</p>', 0, 'new', '2018-11-01 10:26:41', '2018-11-01 10:26:41'),
	(3, 'a:2:{i:5;s:1:"1";i:4;s:1:"1";}', 'maryen@mail.ru', '5434', 'вапавп', 'авп', 'павпва', 'Курьер', 'Гомельская', 'fds', '<p>вап</p>', 0, 'new', '2018-11-01 10:55:13', '2018-11-01 10:55:13'),
	(4, 'a:2:{i:3;s:1:"2";i:6;s:1:"1";}', 'maryen@mail.ru', 'sdf', 'rtyrt', 'sass', 'tryr', 'Почта', 'Витебская', 'fds', NULL, 0, 'new', '2018-11-01 11:00:25', '2018-11-01 11:00:25'),
	(5, 'a:2:{i:3;s:1:"2";i:6;s:1:"1";}', 'maryen@mail.ru', 'sdf', 'rtyrt', 'sass', 'tryr', 'Почта', 'Витебская', 'fds', '<p>p[</p>', 0, 'new', '2018-11-01 11:19:37', '2018-11-01 11:19:37'),
	(6, 'a:2:{i:4;s:1:"1";i:1;s:1:"1";}', 'maryen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 0, 'new', '2018-11-01 11:22:19', '2018-11-01 11:22:19'),
	(7, 'a:2:{i:1;s:1:"1";i:2;s:1:"1";}', 'maryasdfasdfen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 0, 'new', '2018-11-01 11:23:54', '2018-11-01 11:23:54'),
	(8, 'a:2:{i:1;s:1:"1";i:2;s:1:"1";}', 'maryasdfasdfen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 0, 'new', '2018-11-01 11:24:04', '2018-11-01 11:24:04'),
	(9, 'a:0:{}', 'maryen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 0, 'new', '2018-11-01 11:24:56', '2018-11-01 11:24:56'),
	(10, 'a:1:{i:3;s:1:"1";}', 'maryasdfasdfen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'fds', NULL, 0, 'new', '2018-11-01 11:34:53', '2018-11-01 11:34:53'),
	(11, 'a:1:{i:3;s:1:"1";}', 'maryasdfasdfen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 0, 'new', '2018-11-01 11:37:36', '2018-11-01 11:37:36'),
	(12, 'a:0:{}', 'maryasdfasdfen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 0, 'new', '2018-11-01 11:50:40', '2018-11-01 11:50:40'),
	(13, 'a:0:{}', 'maryasdfasdfen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 0, 'new', '2018-11-01 11:52:37', '2018-11-01 11:52:37'),
	(14, 'a:1:{i:1;s:1:"1";}', 'maryasdfasdfen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 3, 'new', '2018-11-01 14:00:27', '2018-11-01 14:00:27'),
	(15, 'a:1:{i:1;s:1:"1";}', 'maryen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 3, 'new', '2018-11-01 14:05:53', '2018-11-01 14:05:53'),
	(16, 'a:1:{i:4;s:1:"1";}', 'maryen@mail.ru', NULL, NULL, NULL, NULL, 'Курьер', 'Минская', 'Иванова', NULL, 3, 'new', '2018-11-01 14:07:01', '2018-11-01 14:07:01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.password_resets: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.product: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `name`, `body`, `price`, `picture`, `category_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Скатерть кухонная арт. СY2600610, 150х220 см в ассортименте', '<p>Скатерть СY2600610 изготовлена из поливинила. Применяется для декора кухонной мебели, защиты стола для рисования, в качестве покрытия под еду на пикнике. Отличается стойкостью к щелочам и растворителям, высокой плотностью, устойчивостью к перегибам, легкостью мытья. Размер &mdash; 150х220 мм. Изделие представлено в цветовом ассортименте.</p>', '5.23', '1540624655-1.251019-medium.jpg', 1, 1, '2018-10-27 10:17:35', '2018-10-27 10:17:35', NULL),
	(2, 'Полотенце махровое арт. СВ.И.9-100х180', '<p>Полотенце махровое арт. СВ.И.9-100х180 применяется для личной гигиены и декора ванной комнаты. Изготовлено из 100% хлопка. Хорошо впитывает влагу и быстро сохнет, подходит для посещения бассейна, сауны, бани. Полотенце отличается своей мягкостью и нежностью, не вызывает раздражение. Выдерживает многочисленные стирки и при этом не теряет яркость цвета. Размер &mdash; 100х180 см.</p>', '56.2', '1540624743-1.254709-medium.jpg', 1, 1, '2018-10-27 10:19:03', '2018-10-27 10:19:03', NULL),
	(3, 'Рукавица текстильная 10001027LAV, код 391419, 17х27 см', '<p>Рукавица текстильная 10001027LAV, код 391419 используется на кухне для хозяйственных нужд. Верхний материал и наполнитель выполнены из 100 % хлопка, декоративная часть &mdash; полиэстера. Предохраняет от ожогов при соприкосновения с горячими предметами. Размер &mdash; 17х27 см.</p>', '5.36', '1540625014-1.250480-medium.jpg', 1, 1, '2018-10-27 10:23:34', '2018-10-27 10:23:34', NULL),
	(4, 'Пылесос Hyundai H-VCB02, Минск', '<p>Пылесос Hyundai H-VCB02 мощностью 1800 Вт предназначен для бытовой сухой уборки в квартире, доме, офисных помещениях. Наличие регулятора на корпусе позволяет увеличить или уменьшить мощность всасывания до 350 Вт. В данной модели пылесборник представляет собой мешок объемом 2 литра. Благодаря большим колесам удобен в перемещении. Телескопическая труба всасывания выдвигается и фиксируется в удобном положении. Система тонкой очистки с НЕРА-фильтром улавливает мелкие частицы пыли и аллергенов. Длина сетевого шнура составляет 5 м.</p>', '589.4', '1540625306-2.253491-medium.jpg', 2, 1, '2018-10-27 10:28:26', '2018-10-27 10:28:26', NULL),
	(5, 'Вытяжка AKPO LIGHT WK-7, 60 см нержавеющая сталь', '<p>Встраиваемая телескопическая вытяжка AKPO LIGHT WK-7 цвета нержавеющая сталь работает в режимах отвод (воздух выводится за пределы помещения через воздуховод) и циркуляция, при котором воздух очищается в жировом/угольном фильтре и подается обратно в комнату. С мощностью двигателя 100 Вт развивает производительность до 400 м3 в час. Управление производится механически через кнопки на лицевой панели. Для освещения рабочей поверхности плиты вытяжка оборудована одной лампой накаливания мощностью 25 Вт. Ширина встраивания&mdash; 60 см.</p>', '168.1', '1540625353-2.151274-medium.jpg', 2, 1, '2018-10-27 10:29:13', '2018-10-27 10:29:13', NULL),
	(6, 'Комплект постельного белья евро НЕЖНОСТЬ Бязь (пододеяльник 200х220, простынь 220х240', '<p>Комплект постельного белья Евро НЕЖНОСТЬ состоит из одного пододеяльника размером 200х220 см, простыни размером 220х240 см и двух наволочек 70х70 см. Выполнен из бязи (100% хлопок с технологией смягчения ткани), отличается натуральностью и высокой износостойкостью. Белье подлежит многократным стиркам (при температуре не более 30 градусов, 600 оборотов), не садится и не растягивается. Комплект дополнит интерьер своим красочным рисунком оливкового цвета.</p>', '5.23', NULL, 3, 1, '2018-10-27 11:18:29', '2018-10-27 11:18:29', NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.roles: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', '2018-10-27 08:44:18', '2018-10-27 08:44:18'),
	(2, 'User', '2018-10-27 08:44:18', '2018-10-27 08:44:18'),
	(3, 'Administrator', '2018-10-27 08:46:36', '2018-10-27 08:46:36'),
	(4, 'User', '2018-10-27 08:46:36', '2018-10-27 08:46:36');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.test3
CREATE TABLE IF NOT EXISTS `test3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.test3: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `test3` DISABLE KEYS */;
/*!40000 ALTER TABLE `test3` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Mary', 'maryen@mail.ru', NULL, '$2y$10$Z7ABjra77vQMP7rHPLENJ.qbx4iFyczdzGXCI9fu26ylhcPXXAiQq', '2YPsnFGu0hVFs5UJwcAwKaLzVZohKu9MZfEDz8UeLs3hhMVj9xV0XZ6bMNbk', '2018-10-25 10:43:08', '2018-10-25 10:43:08'),
	(3, 1, 'marylolly', 'mariashandora@gmail.com', NULL, '$2y$10$HQYlxHB18Y7UzQt84AS6KO5hdEeLVzwkC8KUI31723ZPP/HRHwGTC', 'UsP441W6sFKNMH26J3XdgIKRFM3jFkslezOzOqRw7O032PJhyI2XXtSMPC41', '2018-10-27 08:47:00', '2018-10-27 08:47:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Дамп структуры для таблица MyBD.users_logs
CREATE TABLE IF NOT EXISTS `users_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы MyBD.users_logs: ~21 rows (приблизительно)
/*!40000 ALTER TABLE `users_logs` DISABLE KEYS */;
INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
	(1, 3, 'created', 'category', 1, '2018-10-27 09:03:38', '2018-10-27 09:03:38'),
	(2, 3, 'created', 'category', 2, '2018-10-27 09:04:57', '2018-10-27 09:04:57'),
	(3, 3, 'created', 'category', 3, '2018-10-27 09:05:19', '2018-10-27 09:05:19'),
	(4, 3, 'created', 'category', 4, '2018-10-27 09:05:57', '2018-10-27 09:05:57'),
	(5, 3, 'created', 'product', 1, '2018-10-27 10:17:35', '2018-10-27 10:17:35'),
	(6, 3, 'created', 'product', 2, '2018-10-27 10:19:03', '2018-10-27 10:19:03'),
	(7, 3, 'created', 'product', 3, '2018-10-27 10:23:34', '2018-10-27 10:23:34'),
	(8, 3, 'created', 'product', 4, '2018-10-27 10:28:26', '2018-10-27 10:28:26'),
	(9, 3, 'created', 'product', 5, '2018-10-27 10:29:13', '2018-10-27 10:29:13'),
	(10, 3, 'created', 'product', 6, '2018-10-27 11:18:29', '2018-10-27 11:18:29'),
	(11, 3, 'updated', 'users', 3, '2018-10-27 11:27:08', '2018-10-27 11:27:08'),
	(12, 1, 'updated', 'users', 1, '2018-10-27 13:28:45', '2018-10-27 13:28:45'),
	(13, 3, 'updated', 'users', 3, '2018-10-27 13:29:47', '2018-10-27 13:29:47'),
	(14, 3, 'updated', 'users', 3, '2018-10-27 13:30:06', '2018-10-27 13:30:06'),
	(15, 3, 'updated', 'users', 3, '2018-10-27 13:30:22', '2018-10-27 13:30:22'),
	(16, 3, 'updated', 'users', 3, '2018-10-27 13:31:08', '2018-10-27 13:31:08'),
	(17, 1, 'updated', 'users', 1, '2018-10-27 13:33:15', '2018-10-27 13:33:15'),
	(18, 1, 'updated', 'users', 1, '2018-10-27 13:34:03', '2018-10-27 13:34:03'),
	(19, 1, 'updated', 'users', 1, '2018-10-27 13:34:17', '2018-10-27 13:34:17'),
	(20, 3, 'updated', 'users', 3, '2018-10-27 13:46:16', '2018-10-27 13:46:16'),
	(21, 1, 'updated', 'users', 1, '2018-10-27 14:00:22', '2018-10-27 14:00:22');
/*!40000 ALTER TABLE `users_logs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
