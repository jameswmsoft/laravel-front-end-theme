/*
SQLyog Professional v12.09 (64 bit)
MySQL - 10.1.32-MariaDB : Database - dana
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dana` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dana`;

/*Table structure for table `activations` */

DROP TABLE IF EXISTS `activations`;

CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `activations` */

insert  into `activations`(`id`,`user_id`,`code`,`completed`,`completed_at`,`created_at`,`updated_at`) values (1,1,'BxyrBoOlwWfndGm1IS8QOi4wczUXiQEs',1,'2018-11-07 11:41:02','2018-11-07 11:41:02','2018-11-07 11:41:02'),(2,2,'UoSc6EIKvqQdWDkSOOeKhWIAxwTDtfm7',1,'2018-11-07 11:45:04','2018-11-07 11:45:04','2018-11-07 11:45:04');

/*Table structure for table `activity_log` */

DROP TABLE IF EXISTS `activity_log`;

CREATE TABLE `activity_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `activity_log` */

insert  into `activity_log`(`id`,`log_name`,`description`,`subject_id`,`subject_type`,`causer_id`,`causer_type`,`properties`,`created_at`,`updated_at`) values (1,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-07 11:42:49','2018-11-07 11:42:49'),(2,'abc aadss','New User Created by John Doe',2,'App\\User',2,'App\\User','[]','2018-11-07 11:45:04','2018-11-07 11:45:04'),(3,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-07 13:22:56','2018-11-07 13:22:56'),(4,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-07 16:13:28','2018-11-07 16:13:28'),(5,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-07 16:51:13','2018-11-07 16:51:13'),(6,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-07 16:52:27','2018-11-07 16:52:27'),(7,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-08 13:08:33','2018-11-08 13:08:33'),(8,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-08 21:42:18','2018-11-08 21:42:18'),(9,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-08 21:53:08','2018-11-08 21:53:08'),(10,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-14 05:44:39','2018-11-14 05:44:39'),(11,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-14 15:04:27','2018-11-14 15:04:27'),(12,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-14 15:57:12','2018-11-14 15:57:12'),(13,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-15 00:54:17','2018-11-15 00:54:17'),(14,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-15 09:18:17','2018-11-15 09:18:17'),(15,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-15 18:48:05','2018-11-15 18:48:05'),(16,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-15 23:16:23','2018-11-15 23:16:23'),(17,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-16 10:13:51','2018-11-16 10:13:51'),(18,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-16 14:29:38','2018-11-16 14:29:38'),(19,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-18 10:40:44','2018-11-18 10:40:44'),(20,'John Doe','LoggedOut',1,'App\\User',1,'App\\User','[]','2018-11-18 10:50:53','2018-11-18 10:50:53'),(21,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-18 11:02:39','2018-11-18 11:02:39'),(22,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-18 16:06:40','2018-11-18 16:06:40'),(23,'John Doe','LoggedOut',1,'App\\User',1,'App\\User','[]','2018-11-18 16:08:54','2018-11-18 16:08:54'),(24,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-18 16:08:59','2018-11-18 16:08:59'),(25,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-18 16:09:20','2018-11-18 16:09:20'),(26,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-18 17:52:48','2018-11-18 17:52:48'),(27,'John Doe','LoggedOut',1,'App\\User',1,'App\\User','[]','2018-11-18 18:11:31','2018-11-18 18:11:31'),(28,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-18 18:11:41','2018-11-18 18:11:41'),(29,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-18 18:26:36','2018-11-18 18:26:36'),(30,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-19 02:30:51','2018-11-19 02:30:51'),(31,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-19 06:58:14','2018-11-19 06:58:14'),(32,'John Doe','LoggedOut',1,'App\\User',1,'App\\User','[]','2018-11-19 07:01:53','2018-11-19 07:01:53'),(33,'John Doe','LoggedIn',1,'App\\User',1,'App\\User','[]','2018-11-19 07:02:58','2018-11-19 07:02:58');

/*Table structure for table `app_users` */

DROP TABLE IF EXISTS `app_users`;

CREATE TABLE `app_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `affiliate_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_2` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vip` tinyint(1) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT NULL,
  `registration_complete` tinyint(1) DEFAULT NULL,
  `terms_of_service_accepted` tinyint(1) DEFAULT NULL,
  `is_blocked` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_users_email_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `app_users` */

insert  into `app_users`(`id`,`username`,`password`,`email`,`affiliate_code`,`custom`,`phone_1`,`phone_2`,`referral_code`,`is_vip`,`is_approved`,`registration_complete`,`terms_of_service_accepted`,`is_blocked`,`created_at`,`updated_at`,`deleted_at`) values (1,'aaa','123','aa.df@a.c','123456','a','1112235',NULL,'a1111',1,1,1,1,NULL,'2018-11-08 00:17:05','2018-11-14 09:26:16','0000-00-00 00:00:00'),(2,'bbb','234','aa@a.com','456789','b','7778956',NULL,'b22222',1,1,1,1,NULL,'2018-11-08 00:17:05','2018-11-02 00:17:15',NULL),(3,'ccc','456','cc@c.com','789123','c','6554646',NULL,'c3333',1,1,1,1,1,'2018-11-14 00:17:05',NULL,NULL);

/*Table structure for table `blog_categories` */

DROP TABLE IF EXISTS `blog_categories`;

CREATE TABLE `blog_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_categories` */

insert  into `blog_categories`(`id`,`title`,`created_at`,`updated_at`,`deleted_at`) values (1,'11221qq','2018-11-08 22:20:25','2018-11-18 16:57:26',NULL);

/*Table structure for table `blog_comments` */

DROP TABLE IF EXISTS `blog_comments`;

CREATE TABLE `blog_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_comments` */

/*Table structure for table `blogs` */

DROP TABLE IF EXISTS `blogs`;

CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blogs` */

insert  into `blogs`(`id`,`blog_category_id`,`user_id`,`title`,`slug`,`content`,`image`,`views`,`created_at`,`updated_at`,`deleted_at`) values (1,1,1,'heroclip','heroclip','<p>12123123123121212112121</p>\n',NULL,0,'2018-11-08 22:21:07','2018-11-14 08:58:02','2018-11-14 08:58:02'),(2,1,1,'heroclip','heroclip','<p>dsfdsfsdfsdfsdfds</p>\n',NULL,0,'2018-11-15 09:19:34','2018-11-15 09:19:34',NULL);

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sortname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `countries` */

insert  into `countries`(`id`,`sortname`,`name`,`created_at`,`updated_at`) values (1,'AF','Afghanistan',NULL,NULL),(2,'AL','Albania',NULL,NULL),(3,'DZ','Algeria',NULL,NULL),(4,'AS','American Samoa',NULL,NULL),(5,'AD','Andorra',NULL,NULL),(6,'AO','Angola',NULL,NULL),(7,'AI','Anguilla',NULL,NULL),(8,'AQ','Antarctica',NULL,NULL),(9,'AG','Antigua And Barbuda',NULL,NULL),(10,'AR','Argentina',NULL,NULL),(11,'AM','Armenia',NULL,NULL),(12,'AW','Aruba',NULL,NULL),(13,'AU','Australia',NULL,NULL),(14,'AT','Austria',NULL,NULL),(15,'AZ','Azerbaijan',NULL,NULL),(16,'BS','Bahamas The',NULL,NULL),(17,'BH','Bahrain',NULL,NULL),(18,'BD','Bangladesh',NULL,NULL),(19,'BB','Barbados',NULL,NULL),(20,'BY','Belarus',NULL,NULL),(21,'BE','Belgium',NULL,NULL),(22,'BZ','Belize',NULL,NULL),(23,'BJ','Benin',NULL,NULL),(24,'BM','Bermuda',NULL,NULL),(25,'BT','Bhutan',NULL,NULL),(26,'BO','Bolivia',NULL,NULL),(27,'BA','Bosnia and Herzegovina',NULL,NULL),(28,'BW','Botswana',NULL,NULL),(29,'BV','Bouvet Island',NULL,NULL),(30,'BR','Brazil',NULL,NULL),(31,'IO','British Indian Ocean Territory',NULL,NULL),(32,'BN','Brunei',NULL,NULL),(33,'BG','Bulgaria',NULL,NULL),(34,'BF','Burkina Faso',NULL,NULL),(35,'BI','Burundi',NULL,NULL),(36,'KH','Cambodia',NULL,NULL),(37,'CM','Cameroon',NULL,NULL),(38,'CA','Canada',NULL,NULL),(39,'CV','Cape Verde',NULL,NULL),(40,'KY','Cayman Islands',NULL,NULL),(41,'CF','Central African Republic',NULL,NULL),(42,'TD','Chad',NULL,NULL),(43,'CL','Chile',NULL,NULL),(44,'CN','China',NULL,NULL),(45,'CX','Christmas Island',NULL,NULL),(46,'CC','Cocos (Keeling) Islands',NULL,NULL),(47,'CO','Colombia',NULL,NULL),(48,'KM','Comoros',NULL,NULL),(49,'CG','Congo',NULL,NULL),(50,'CD','Congo The Democratic Republic Of The',NULL,NULL),(51,'CK','Cook Islands',NULL,NULL),(52,'CR','Costa Rica',NULL,NULL),(53,'CI','Cote D\'Ivoire (Ivory Coast)',NULL,NULL),(54,'HR','Croatia (Hrvatska)',NULL,NULL),(55,'CU','Cuba',NULL,NULL),(56,'CY','Cyprus',NULL,NULL),(57,'CZ','Czech Republic',NULL,NULL),(58,'DK','Denmark',NULL,NULL),(59,'DJ','Djibouti',NULL,NULL),(60,'DM','Dominica',NULL,NULL),(61,'DO','Dominican Republic',NULL,NULL),(62,'TP','East Timor',NULL,NULL),(63,'EC','Ecuador',NULL,NULL),(64,'EG','Egypt',NULL,NULL),(65,'SV','El Salvador',NULL,NULL),(66,'GQ','Equatorial Guinea',NULL,NULL),(67,'ER','Eritrea',NULL,NULL),(68,'EE','Estonia',NULL,NULL),(69,'ET','Ethiopia',NULL,NULL),(70,'XA','External Territories of Australia',NULL,NULL),(71,'FK','Falkland Islands',NULL,NULL),(72,'FO','Faroe Islands',NULL,NULL),(73,'FJ','Fiji Islands',NULL,NULL),(74,'FI','Finland',NULL,NULL),(75,'FR','France',NULL,NULL),(76,'GF','French Guiana',NULL,NULL),(77,'PF','French Polynesia',NULL,NULL),(78,'TF','French Southern Territories',NULL,NULL),(79,'GA','Gabon',NULL,NULL),(80,'GM','Gambia The',NULL,NULL),(81,'GE','Georgia',NULL,NULL),(82,'DE','Germany',NULL,NULL),(83,'GH','Ghana',NULL,NULL),(84,'GI','Gibraltar',NULL,NULL),(85,'GR','Greece',NULL,NULL),(86,'GL','Greenland',NULL,NULL),(87,'GD','Grenada',NULL,NULL),(88,'GP','Guadeloupe',NULL,NULL),(89,'GU','Guam',NULL,NULL),(90,'GT','Guatemala',NULL,NULL),(91,'XU','Guernsey and Alderney',NULL,NULL),(92,'GN','Guinea',NULL,NULL),(93,'GW','Guinea-Bissau',NULL,NULL),(94,'GY','Guyana',NULL,NULL),(95,'HT','Haiti',NULL,NULL),(96,'HM','Heard and McDonald Islands',NULL,NULL),(97,'HN','Honduras',NULL,NULL),(98,'HK','Hong Kong S.A.R.',NULL,NULL),(99,'HU','Hungary',NULL,NULL),(100,'IS','Iceland',NULL,NULL),(101,'IN','India',NULL,NULL),(102,'ID','Indonesia',NULL,NULL),(103,'IR','Iran',NULL,NULL),(104,'IQ','Iraq',NULL,NULL),(105,'IE','Ireland',NULL,NULL),(106,'IL','Israel',NULL,NULL),(107,'IT','Italy',NULL,NULL),(108,'JM','Jamaica',NULL,NULL),(109,'JP','Japan',NULL,NULL),(110,'XJ','Jersey',NULL,NULL),(111,'JO','Jordan',NULL,NULL),(112,'KZ','Kazakhstan',NULL,NULL),(113,'KE','Kenya',NULL,NULL),(114,'KI','Kiribati',NULL,NULL),(115,'KP','Korea North',NULL,NULL),(116,'KR','Korea South',NULL,NULL),(117,'KW','Kuwait',NULL,NULL),(118,'KG','Kyrgyzstan',NULL,NULL),(119,'LA','Laos',NULL,NULL),(120,'LV','Latvia',NULL,NULL),(121,'LB','Lebanon',NULL,NULL),(122,'LS','Lesotho',NULL,NULL),(123,'LR','Liberia',NULL,NULL),(124,'LY','Libya',NULL,NULL),(125,'LI','Liechtenstein',NULL,NULL),(126,'LT','Lithuania',NULL,NULL),(127,'LU','Luxembourg',NULL,NULL),(128,'MO','Macau S.A.R.',NULL,NULL),(129,'MK','Macedonia',NULL,NULL),(130,'MG','Madagascar',NULL,NULL),(131,'MW','Malawi',NULL,NULL),(132,'MY','Malaysia',NULL,NULL),(133,'MV','Maldives',NULL,NULL),(134,'ML','Mali',NULL,NULL),(135,'MT','Malta',NULL,NULL),(136,'XM','Man (Isle of)',NULL,NULL),(137,'MH','Marshall Islands',NULL,NULL),(138,'MQ','Martinique',NULL,NULL),(139,'MR','Mauritania',NULL,NULL),(140,'MU','Mauritius',NULL,NULL),(141,'YT','Mayotte',NULL,NULL),(142,'MX','Mexico',NULL,NULL),(143,'FM','Micronesia',NULL,NULL),(144,'MD','Moldova',NULL,NULL),(145,'MC','Monaco',NULL,NULL),(146,'MN','Mongolia',NULL,NULL),(147,'MS','Montserrat',NULL,NULL),(148,'MA','Morocco',NULL,NULL),(149,'MZ','Mozambique',NULL,NULL),(150,'MM','Myanmar',NULL,NULL),(151,'NA','Namibia',NULL,NULL),(152,'NR','Nauru',NULL,NULL),(153,'NP','Nepal',NULL,NULL),(154,'AN','Netherlands Antilles',NULL,NULL),(155,'NL','Netherlands The',NULL,NULL),(156,'NC','New Caledonia',NULL,NULL),(157,'NZ','New Zealand',NULL,NULL),(158,'NI','Nicaragua',NULL,NULL),(159,'NE','Niger',NULL,NULL),(160,'NG','Nigeria',NULL,NULL),(161,'NU','Niue',NULL,NULL),(162,'NF','Norfolk Island',NULL,NULL),(163,'MP','Northern Mariana Islands',NULL,NULL),(164,'NO','Norway',NULL,NULL),(165,'OM','Oman',NULL,NULL),(166,'PK','Pakistan',NULL,NULL),(167,'PW','Palau',NULL,NULL),(168,'PS','Palestinian Territory Occupied',NULL,NULL),(169,'PA','Panama',NULL,NULL),(170,'PG','Papua new Guinea',NULL,NULL),(171,'PY','Paraguay',NULL,NULL),(172,'PE','Peru',NULL,NULL),(173,'PH','Philippines',NULL,NULL),(174,'PN','Pitcairn Island',NULL,NULL),(175,'PL','Poland',NULL,NULL),(176,'PT','Portugal',NULL,NULL),(177,'PR','Puerto Rico',NULL,NULL),(178,'QA','Qatar',NULL,NULL),(179,'RE','Reunion',NULL,NULL),(180,'RO','Romania',NULL,NULL),(181,'RU','Russia',NULL,NULL),(182,'RW','Rwanda',NULL,NULL),(183,'SH','Saint Helena',NULL,NULL),(184,'KN','Saint Kitts And Nevis',NULL,NULL),(185,'LC','Saint Lucia',NULL,NULL),(186,'PM','Saint Pierre and Miquelon',NULL,NULL),(187,'VC','Saint Vincent And The Grenadines',NULL,NULL),(188,'WS','Samoa',NULL,NULL),(189,'SM','San Marino',NULL,NULL),(190,'ST','Sao Tome and Principe',NULL,NULL),(191,'SA','Saudi Arabia',NULL,NULL),(192,'SN','Senegal',NULL,NULL),(193,'RS','Serbia',NULL,NULL),(194,'SC','Seychelles',NULL,NULL),(195,'SL','Sierra Leone',NULL,NULL),(196,'SG','Singapore',NULL,NULL),(197,'SK','Slovakia',NULL,NULL),(198,'SI','Slovenia',NULL,NULL),(199,'XG','Smaller Territories of the UK',NULL,NULL),(200,'SB','Solomon Islands',NULL,NULL),(201,'SO','Somalia',NULL,NULL),(202,'ZA','South Africa',NULL,NULL),(203,'GS','South Georgia',NULL,NULL),(204,'SS','South Sudan',NULL,NULL),(205,'ES','Spain',NULL,NULL),(206,'LK','Sri Lanka',NULL,NULL),(207,'SD','Sudan',NULL,NULL),(208,'SR','Suriname',NULL,NULL),(209,'SJ','Svalbard And Jan Mayen Islands',NULL,NULL),(210,'SZ','Swaziland',NULL,NULL),(211,'SE','Sweden',NULL,NULL),(212,'CH','Switzerland',NULL,NULL),(213,'SY','Syria',NULL,NULL),(214,'TW','Taiwan',NULL,NULL),(215,'TJ','Tajikistan',NULL,NULL),(216,'TZ','Tanzania',NULL,NULL),(217,'TH','Thailand',NULL,NULL),(218,'TG','Togo',NULL,NULL),(219,'TK','Tokelau',NULL,NULL),(220,'TO','Tonga',NULL,NULL),(221,'TT','Trinidad And Tobago',NULL,NULL),(222,'TN','Tunisia',NULL,NULL),(223,'TR','Turkey',NULL,NULL),(224,'TM','Turkmenistan',NULL,NULL),(225,'TC','Turks And Caicos Islands',NULL,NULL),(226,'TV','Tuvalu',NULL,NULL),(227,'UG','Uganda',NULL,NULL),(228,'UA','Ukraine',NULL,NULL),(229,'AE','United Arab Emirates',NULL,NULL),(230,'GB','United Kingdom',NULL,NULL),(231,'US','United States',NULL,NULL),(232,'UM','United States Minor Outlying Islands',NULL,NULL),(233,'UY','Uruguay',NULL,NULL),(234,'UZ','Uzbekistan',NULL,NULL),(235,'VU','Vanuatu',NULL,NULL),(236,'VA','Vatican City State (Holy See)',NULL,NULL),(237,'VE','Venezuela',NULL,NULL),(238,'VN','Vietnam',NULL,NULL),(239,'VG','Virgin Islands (British)',NULL,NULL),(240,'VI','Virgin Islands (US)',NULL,NULL),(241,'WF','Wallis And Futuna Islands',NULL,NULL),(242,'EH','Western Sahara',NULL,NULL),(243,'YE','Yemen',NULL,NULL),(244,'YU','Yugoslavia',NULL,NULL),(245,'ZM','Zambia',NULL,NULL),(246,'ZW','Zimbabwe',NULL,NULL);

/*Table structure for table `datatables` */

DROP TABLE IF EXISTS `datatables`;

CREATE TABLE `datatables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `datatables` */

insert  into `datatables`(`id`,`firstname`,`lastname`,`email`,`points`,`notes`,`created_at`,`updated_at`,`age`,`job`,`gender`,`country`,`sale_date`) values (1,'Vita','Krajcik','pblick@wyman.com','749','Aut consequatur laudantium deserunt quas. Alias quia id sed. Autem ea ipsa dolorem facere.','2018-11-07 11:41:03','2018-11-07 11:41:03',62,'Personal Home Care Aide','Male','India','2017-10-03 16:11:11'),(2,'Kaylie','Quitzon','keeling.abagail@yahoo.com','425','Voluptate sit quo recusandae culpa alias. Aut aut incidunt non rem veritatis sed facere.','2018-11-07 11:41:03','2018-11-07 11:41:03',27,'Merchandise Displayer OR Window Trimmer','Male','America','2017-10-10 22:03:58'),(3,'Ally','Leannon','darryl.emmerich@steuber.com','483','Soluta ullam dolorem aliquid neque. Et hic modi ut quis. Cum rerum iste optio fugiat id sint et.','2018-11-07 11:41:03','2018-11-07 11:41:03',26,'Hunter and Trapper','Male','Canada','2017-10-11 03:17:47'),(4,'Bernita','Schultz','heaven16@terry.info','964','Laborum aperiam velit commodi officiis. Voluptatem optio dolorem ad eligendi architecto.','2018-11-07 11:41:03','2018-11-07 11:41:03',29,'Network Admin OR Computer Systems Administrator','Female','India','2017-09-17 13:27:59'),(5,'Ora','Bayer','hhamill@carter.biz','139','Culpa dolor quo quo ab. Id vero laudantium eligendi rerum modi et. Eos possimus sed quia.','2018-11-07 11:41:03','2018-11-07 11:41:03',27,'Pump Operators','Male','America','2017-09-16 04:00:40'),(6,'Sienna','Christiansen','humberto39@hotmail.com','50','Non similique quam voluptate itaque quae. Eum sit similique suscipit molestias quis.','2018-11-07 11:41:03','2018-11-07 11:41:03',67,'Gluing Machine Operator','Female','Australia','2017-09-16 07:55:06'),(7,'Bulah','Kerluke','krajcik.yessenia@gmail.com','682','Esse tempore omnis natus enim id. Et fugit corporis sit dolorem et nostrum.','2018-11-07 11:41:03','2018-11-07 11:41:03',40,'Electrical Parts Reconditioner','Female','Australia','2017-09-15 12:53:35'),(8,'Jerrold','Hahn','noemie.bergnaum@grady.info','596','Dignissimos repudiandae et voluptas temporibus. Magni eos eos repellat id ut culpa laborum.','2018-11-07 11:41:03','2018-11-07 11:41:03',80,'Audio-Visual Collections Specialist','Female','bangladesh','2017-10-05 02:12:13'),(9,'Esta','Kuvalis','kirlin.eden@hotmail.com','944','Non harum perferendis illum. Tempora est nobis soluta rem. Et ea placeat molestias est.','2018-11-07 11:41:03','2018-11-07 11:41:03',64,'Aircraft Launch Specialist','Male','Canada','2017-09-15 23:46:39'),(10,'Lisette','Roob','abigail89@yahoo.com','849','Autem commodi officia omnis dolorem enim et. Sed et nemo delectus hic pariatur accusantium.','2018-11-07 11:41:03','2018-11-07 11:41:03',24,'CSI','Male','bangladesh','2017-09-29 08:04:13'),(11,'Trisha','Casper','boyer.hans@gmail.com','461','Esse beatae magnam sit excepturi eligendi eius. Iusto voluptates sit sunt dolor itaque.','2018-11-07 11:41:03','2018-11-07 11:41:03',43,'Bulldozer Operator','Female','India','2017-09-22 02:48:21'),(12,'Blaze','Mraz','deja45@rice.info','52','Nisi ut ut consequuntur temporibus ad qui. Fuga est ut dolorum aspernatur.','2018-11-07 11:41:03','2018-11-07 11:41:03',53,'Motorboat Operator','Female','Newzealand','2017-09-15 04:45:47'),(13,'Aubrey','Brakus','steuber.maggie@gerlach.com','916','Dolor perspiciatis assumenda eaque temporibus et. Sit vel ullam error vero.','2018-11-07 11:41:03','2018-11-07 11:41:03',55,'Geoscientists','Female','America','2017-09-27 14:28:23'),(14,'Kenneth','Larson','weldon01@beer.com','808','Minima cupiditate facilis cupiditate ut est. Eligendi facilis quia consequatur dolorem iure est.','2018-11-07 11:41:03','2018-11-07 11:41:03',70,'Precision Lens Grinders and Polisher','Female','Canada','2017-10-17 08:52:18'),(15,'Cortney','Lockman','dallin62@schmidt.com','906','Dolore ut voluptatem rerum ea. Repudiandae nemo et dolore laboriosam.','2018-11-07 11:41:03','2018-11-07 11:41:03',56,'Interaction Designer','Female','Canada','2017-09-21 10:19:50'),(16,'June','Heathcote','kiarra10@yahoo.com','933','Enim eveniet ducimus necessitatibus et. Natus ut quos maxime dolorum fugit facilis ducimus.','2018-11-07 11:41:03','2018-11-07 11:41:03',62,'Maintenance Equipment Operator','Female','Canada','2017-10-08 02:43:02'),(17,'Heidi','Mills','tristin03@yahoo.com','273','Deserunt quam et totam voluptatem inventore vel delectus. Voluptatum dignissimos ea explicabo.','2018-11-07 11:41:03','2018-11-07 11:41:03',29,'Park Naturalist','Male','bangladesh','2017-10-01 14:00:20'),(18,'Autumn','Nolan','alek.wuckert@yahoo.com','170','Nihil quia eum quasi vitae nisi. Dolor iste expedita labore molestiae dolorem sed qui.','2018-11-07 11:41:03','2018-11-07 11:41:03',64,'Anthropology Teacher','Female','India','2017-10-03 02:51:53'),(19,'Gay','Murazik','bashirian.myra@gmail.com','816','Natus incidunt aut ipsa vel inventore. Sint et impedit itaque tempora sunt occaecati illo.','2018-11-07 11:41:04','2018-11-07 11:41:04',41,'Sales and Related Workers','Female','Australia','2017-09-25 22:54:27'),(20,'Ricardo','Lindgren','cruickshank.guadalupe@hotmail.com','215','Ut non necessitatibus eum. Vel ut est aut. Sed ut dolor itaque.','2018-11-07 11:41:04','2018-11-07 11:41:04',43,'Air Crew Officer','Male','Canada','2017-10-11 04:31:39'),(21,'Beryl','Keebler','garret.mante@kub.org','354','Et assumenda ut impedit nam commodi. Perferendis dolore sunt reprehenderit iure dolores.','2018-11-07 11:41:04','2018-11-07 11:41:04',33,'Security Systems Installer OR Fire Alarm Systems Installer','Male','Newzealand','2017-10-13 22:19:01'),(22,'Karson','Batz','skylar.hackett@leffler.com','217','Eum qui dolor eos. Laudantium et inventore ad quo magnam.','2018-11-07 11:41:04','2018-11-07 11:41:04',35,'Public Relations Specialist','Female','Newzealand','2017-10-19 17:56:30'),(23,'Reed','Mosciski','ayden79@yahoo.com','612','Occaecati ea et sit blanditiis optio. Possimus sunt fugit repellat.','2018-11-07 11:41:04','2018-11-07 11:41:04',37,'Landscaper','Female','bangladesh','2017-10-13 15:35:24'),(24,'Laurel','Daugherty','zkutch@heidenreich.com','766','Animi at error in est voluptas voluptas. Facere earum ratione aliquid.','2018-11-07 11:41:04','2018-11-07 11:41:04',31,'Hand Trimmer','Male','Canada','2017-10-13 05:26:47'),(25,'Elias','Macejkovic','abatz@greenholt.com','136','Quasi pariatur velit rem autem sunt. Atque et dolorem nemo velit ut. Quis modi vel est.','2018-11-07 11:41:04','2018-11-07 11:41:04',55,'Marine Oiler','Male','Canada','2017-09-17 16:30:42'),(26,'Mellie','Gerhold','naomi54@gibson.com','458','Quia voluptatem ut in dignissimos beatae facere. Quia est dicta minus.','2018-11-07 11:41:04','2018-11-07 11:41:04',49,'Landscaping','Female','bangladesh','2017-09-27 12:11:51'),(27,'Ignacio','Block','adele.schuppe@baumbach.org','394','Illum fuga nam quia saepe. Eaque et voluptas dolores architecto. Ipsa ut neque dicta doloremque.','2018-11-07 11:41:04','2018-11-07 11:41:04',73,'Cartographer','Male','Canada','2017-09-25 03:06:54'),(28,'Theodora','Bailey','crooks.cristal@marquardt.com','806','Occaecati odit nulla est inventore modi odio architecto ad. In fuga et ut.','2018-11-07 11:41:04','2018-11-07 11:41:04',40,'Mail Machine Operator','Male','India','2017-10-09 18:50:43'),(29,'Scarlett','McClure','jcummings@yahoo.com','42','Et in nisi magni sunt enim accusantium. Laudantium quis velit qui ipsam.','2018-11-07 11:41:04','2018-11-07 11:41:04',69,'Vice President Of Human Resources','Male','America','2017-09-26 12:12:24'),(30,'Yvonne','Jacobi','kwelch@lueilwitz.org','428','Accusamus cum nihil at voluptatem cumque consequatur. Aut inventore doloribus totam.','2018-11-07 11:41:04','2018-11-07 11:41:04',42,'Geological Sample Test Technician','Female','bangladesh','2017-10-16 19:03:47'),(31,'Harley','Blick','gia05@berge.com','79','Est consequatur inventore non dolorem. Eos culpa nihil quia doloremque ex.','2018-11-07 11:41:04','2018-11-07 11:41:04',42,'Costume Attendant','Male','America','2017-09-20 00:35:55'),(32,'Dolly','Dickens','jevon.thiel@yahoo.com','384','Earum qui quo dolore nulla. Debitis expedita voluptatem ut molestiae in. Velit ad magnam et est.','2018-11-07 11:41:04','2018-11-07 11:41:04',38,'Farm Labor Contractor','Female','India','2017-10-04 15:21:41'),(33,'Paolo','Cartwright','mae.marvin@wiza.info','545','Expedita voluptatibus eum soluta alias qui voluptas ipsa. Rerum quis dolorem et officia velit id.','2018-11-07 11:41:04','2018-11-07 11:41:04',29,'Anthropologist OR Archeologist','Female','Australia','2017-09-30 01:30:24'),(34,'Nelson','Rutherford','twila80@gmail.com','583','Et quibusdam mollitia qui. Corporis dolore quia quia aut eaque aliquam. Et qui dolorem fugiat.','2018-11-07 11:41:04','2018-11-07 11:41:04',72,'Hunter and Trapper','Female','India','2017-09-23 05:32:59'),(35,'Larissa','Waters','alejandra.bartoletti@gmail.com','691','Qui autem veniam harum perferendis praesentium quisquam. Id doloremque nobis deleniti ducimus.','2018-11-07 11:41:04','2018-11-07 11:41:04',47,'Tool and Die Maker','Female','India','2017-09-21 12:40:18'),(36,'Wilson','Beier','grant.maxie@yahoo.com','755','Similique quo vel aut atque sint. Eum repellat aut eius ipsum voluptas iure.','2018-11-07 11:41:04','2018-11-07 11:41:04',32,'Environmental Scientist','Female','Australia','2017-10-09 14:22:10'),(37,'Alysha','Brown','wdaniel@gmail.com','233','Illum tempora modi et est illum. Voluptate animi non tenetur qui.','2018-11-07 11:41:04','2018-11-07 11:41:04',39,'Nursing Instructor','Male','India','2017-10-04 10:39:46'),(38,'Frederic','Heidenreich','mossie.mitchell@hotmail.com','227','Perspiciatis inventore quod ea aut. Totam aut voluptate quaerat velit.','2018-11-07 11:41:04','2018-11-07 11:41:04',58,'Central Office Operator','Female','bangladesh','2017-10-03 05:20:36'),(39,'Candice','Boyer','janet.schowalter@gmail.com','960','Hic est aliquam laborum accusamus. Et quia et aperiam minus. Aut dolorem non qui quisquam quia.','2018-11-07 11:41:04','2018-11-07 11:41:04',21,'Vocational Education Teacher','Male','Australia','2017-09-21 07:31:09'),(40,'Daniella','Morar','fay.jessyca@mertz.net','737','Soluta ut ut atque voluptas labore. Quis et enim consequatur culpa.','2018-11-07 11:41:04','2018-11-07 11:41:04',24,'Singer','Male','Canada','2017-09-25 19:04:24'),(41,'Dexter','Sporer','jayne.parker@gmail.com','39','Rerum optio quo consequatur distinctio amet labore consequuntur. Est magnam quo ipsa.','2018-11-07 11:41:04','2018-11-07 11:41:04',29,'Office Machine and Cash Register Servicer','Female','Australia','2017-09-30 20:23:13'),(42,'Carley','Hyatt','major06@kub.com','241','Voluptatem ex qui totam et dolores esse. Ut sint nihil quia.','2018-11-07 11:41:04','2018-11-07 11:41:04',43,'Segmental Paver','Male','Australia','2017-10-01 14:01:26'),(43,'Buster','Satterfield','chester.mccullough@yahoo.com','983','Sapiente illo et vitae et deserunt. Iusto perferendis mollitia ut dolorum.','2018-11-07 11:41:04','2018-11-07 11:41:04',36,'Casting Machine Operator','Female','Canada','2017-09-21 22:30:28'),(44,'Leola','Schulist','hwolf@roberts.com','264','Eum alias a voluptatem tenetur ut. Suscipit reiciendis rem blanditiis.','2018-11-07 11:41:04','2018-11-07 11:41:04',50,'Physician Assistant','Male','Australia','2017-09-26 05:41:30'),(45,'Robyn','Berge','lucy.sauer@gmail.com','375','Fugit sint culpa maxime. Provident vitae omnis soluta consectetur officia excepturi corporis.','2018-11-07 11:41:04','2018-11-07 11:41:04',60,'Heaters','Male','bangladesh','2017-10-02 04:43:23'),(46,'Arianna','Kreiger','gladys52@hotmail.com','645','Tempore facilis libero sint similique eaque. Et molestias dolorem qui quam natus excepturi rem.','2018-11-07 11:41:04','2018-11-07 11:41:04',71,'Pipelaying Fitter','Male','India','2017-10-11 05:52:24'),(47,'Eladio','McGlynn','bwatsica@yahoo.com','627','Aut ea qui ea. Dolorem voluptas corporis nobis.','2018-11-07 11:41:05','2018-11-07 11:41:05',55,'Metal Fabricator','Female','Australia','2017-09-22 03:57:44'),(48,'Velda','Thiel','olockman@thiel.com','400','Ullam repellendus voluptates quia et voluptatum. Sint accusantium minima saepe libero.','2018-11-07 11:41:05','2018-11-07 11:41:05',46,'TSA','Male','India','2017-10-02 15:37:56'),(49,'Marina','Bode','bmante@gmail.com','426','Excepturi quos consequatur ullam voluptatibus et amet aut. Rerum est quasi qui enim.','2018-11-07 11:41:05','2018-11-07 11:41:05',74,'Space Sciences Teacher','Female','America','2017-10-11 18:22:09'),(50,'Skye','Wisozk','watsica.rosa@hotmail.com','598','Cupiditate iusto numquam officia vero ex nulla animi. Quis ut sed ipsa at est.','2018-11-07 11:41:05','2018-11-07 11:41:05',54,'Infantry','Female','bangladesh','2017-09-20 01:42:55');

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `files` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'0000_00_00_000000_create_taggable_table',1),(2,'2014_07_02_230147_migration_cartalyst_sentinel',1),(3,'2014_10_04_174350_soft_delete_users',1),(4,'2014_12_10_011106_add_fields_to_user_table',1),(5,'2015_08_09_200015_create_blog_module_table',1),(6,'2015_08_11_064636_add_slug_to_blogs_table',1),(7,'2015_11_10_140011_create_files_table',1),(8,'2016_01_02_062647_create_tasks_table',1),(9,'2016_04_26_054601_create_datatables_table',1),(10,'2016_10_04_103149_add_fields_datatables_table',1),(11,'2017_09_29_113930_create_activity_log_table',1),(12,'2017_10_07_070138_create_countries_table',1),(13,'2017_10_24_130059_add_country_field',1);

/*Table structure for table `persistences` */

DROP TABLE IF EXISTS `persistences`;

CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `persistences` */

insert  into `persistences`(`id`,`user_id`,`code`,`created_at`,`updated_at`) values (1,1,'fge20ERhleFgIGI74u7g9mUU5yyNcHTU','2018-11-07 11:42:48','2018-11-07 11:42:48'),(2,1,'TBdu5k63ipZJDkFpwhmwwRO4q43dChLV','2018-11-07 13:22:55','2018-11-07 13:22:55'),(3,1,'Gt4XBrvy1W4NBRg0JORNBGmA3vTIkuTy','2018-11-07 16:13:28','2018-11-07 16:13:28'),(4,1,'8SsYmKO5oHa4ymiVjdmQfqDJq9QF3Mtv','2018-11-07 16:51:13','2018-11-07 16:51:13'),(5,1,'NVc4IXH0juVQtygyt2fdNcyLTEB5LuOL','2018-11-07 16:52:27','2018-11-07 16:52:27'),(6,1,'a8DLYMQnHSXWhq4lXuVDbbfrs8ozmo4K','2018-11-08 13:08:33','2018-11-08 13:08:33'),(7,1,'xzQ4odhseJEbHc95ZpPzwbaRmyyPOD9X','2018-11-08 21:42:17','2018-11-08 21:42:17'),(8,1,'w24DNzWCDcItAjCEJXJD9tyeyzYQJIrF','2018-11-08 21:53:08','2018-11-08 21:53:08'),(9,1,'aYwRWhrOCmSatfPlSx8QC9VZAhAEgWZg','2018-11-14 05:44:39','2018-11-14 05:44:39'),(10,1,'AyYMT7ODYSYnXCeArb01JFVNxCFd42kp','2018-11-14 15:04:27','2018-11-14 15:04:27'),(11,1,'OB3Q5rOnFjbeNgjZR0TwTnvEFbDhtzsa','2018-11-14 15:57:12','2018-11-14 15:57:12'),(12,1,'JyGkeS7UGpvX8VsqXeOOz7g62kNzOOTo','2018-11-15 00:54:16','2018-11-15 00:54:16'),(13,1,'8FARnwJvZojHKFvZJwqn24Cijwlfc9Ld','2018-11-15 09:18:16','2018-11-15 09:18:16'),(14,1,'4QpdIh6u7jGfcNPdfjaOPWgprpHokPgc','2018-11-15 18:48:05','2018-11-15 18:48:05'),(15,1,'lV01xbgf6Fglighj6OWgu0VtmrETqAjA','2018-11-15 23:16:23','2018-11-15 23:16:23'),(16,1,'mIWsgzHJzfbcby98bXmgANCS3YWYW76S','2018-11-16 10:13:51','2018-11-16 10:13:51'),(17,1,'glzqs2H4CX01Em8IUrmgcJngxxrEXFIG','2018-11-16 14:29:38','2018-11-16 14:29:38'),(19,1,'tPXjgIssPpGqsvkIcdiW433onHGomGif','2018-11-18 11:02:39','2018-11-18 11:02:39'),(21,1,'sruqnGjE47sBFhCI6ot7MQZzkohFlHjW','2018-11-18 16:08:59','2018-11-18 16:08:59'),(22,1,'IMS8qcpYSbhbtR0YhuQIW7iHiaQMCQww','2018-11-18 16:09:20','2018-11-18 16:09:20'),(24,1,'AqsBNIiRhPjEvxNfUNVRoGLnrmwfq0JE','2018-11-18 18:11:41','2018-11-18 18:11:41'),(25,1,'IT6ERg7cQBYZCAILqaQtCVsbg6dxgqJN','2018-11-18 18:26:36','2018-11-18 18:26:36'),(26,1,'vzbMeq6oAJxmgkeSL902Tqw1eOJMZZCe','2018-11-19 02:30:51','2018-11-19 02:30:51'),(28,1,'Tt5JkuniXhg7JZmzJ3CfSqEHsm8tQ2gs','2018-11-19 07:02:57','2018-11-19 07:02:57');

/*Table structure for table `reminders` */

DROP TABLE IF EXISTS `reminders`;

CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `reminders` */

/*Table structure for table `role_users` */

DROP TABLE IF EXISTS `role_users`;

CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_users` */

insert  into `role_users`(`user_id`,`role_id`,`created_at`,`updated_at`) values (1,1,'2018-11-07 11:41:02','2018-11-07 11:41:02'),(2,2,'2018-11-07 11:45:04','2018-11-07 11:45:04');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`slug`,`name`,`permissions`,`created_at`,`updated_at`) values (1,'admin','Admin','{\"admin\":1}','2018-11-07 11:41:02','2018-11-07 11:41:02'),(2,'user','User',NULL,'2018-11-07 11:41:02','2018-11-07 11:41:02');

/*Table structure for table `taggable_taggables` */

DROP TABLE IF EXISTS `taggable_taggables`;

CREATE TABLE `taggable_taggables` (
  `tag_id` int(10) unsigned NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `i_taggable_fwd` (`tag_id`,`taggable_id`),
  KEY `i_taggable_rev` (`taggable_id`,`tag_id`),
  KEY `i_taggable_type` (`taggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `taggable_taggables` */

insert  into `taggable_taggables`(`tag_id`,`taggable_id`,`taggable_type`,`created_at`,`updated_at`) values (1,1,'App\\Blog','2018-11-08 22:21:07','2018-11-08 22:21:07'),(2,1,'App\\Blog','2018-11-08 22:21:07','2018-11-08 22:21:07'),(3,2,'App\\Blog','2018-11-15 09:19:34','2018-11-15 09:19:34');

/*Table structure for table `taggable_tags` */

DROP TABLE IF EXISTS `taggable_tags`;

CREATE TABLE `taggable_tags` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `normalized` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `taggable_tags_normalized_index` (`normalized`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `taggable_tags` */

insert  into `taggable_tags`(`tag_id`,`name`,`normalized`,`created_at`,`updated_at`) values (1,'11','11','2018-11-08 22:21:07','2018-11-08 22:21:07'),(2,'121','121','2018-11-08 22:21:07','2018-11-08 22:21:07'),(3,'eer','eer','2018-11-15 09:19:34','2018-11-15 09:19:34');

/*Table structure for table `tasks` */

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `finished` tinyint(4) NOT NULL DEFAULT '0',
  `task_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_deadline` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tasks` */

/*Table structure for table `throttle` */

DROP TABLE IF EXISTS `throttle`;

CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `throttle` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`email`,`password`,`permissions`,`last_login`,`first_name`,`last_name`,`created_at`,`updated_at`,`deleted_at`,`bio`,`gender`,`dob`,`pic`,`country`,`state`,`city`,`address`,`postal`) values (1,'admin@admin.com','$2y$10$b6NevuUKT5bdMR8QepC56u08E2HXf5uG4Z3izYrcK9Du2auZeu4Au',NULL,'2018-11-19 07:02:57','John','Doe','2018-11-07 11:41:02','2018-11-19 07:02:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'admin123@admin.com','$2y$10$dc3lJ/fHBHiO6RgeoN6f/ej8FIX6PZeP.YH9TcNbZGaxsYaV4wMFG',NULL,NULL,'abc','aadss','2018-11-07 11:45:04','2018-11-07 11:45:04',NULL,'fdsf','female','2018-11-07','xtMrUzR5Zm.png','BN','laoning','dandong','dfdf','118000');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
