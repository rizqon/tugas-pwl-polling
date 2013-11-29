/*
SQLyog Enterprise - MySQL GUI v7.15 
MySQL - 5.5.16-log : Database - website_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `trx_pool_ans` */

DROP TABLE IF EXISTS `trx_pool_ans`;

CREATE TABLE `trx_pool_ans` (
  `seq_no` int(11) NOT NULL AUTO_INCREMENT,
  `pool_no` int(11) NOT NULL,
  `pool_answer` varchar(100) NOT NULL,
  `pool_result` int(11) DEFAULT NULL,
  PRIMARY KEY (`seq_no`),
  KEY `fk_trx_pool_ans_trx_pooling1` (`pool_no`),
  CONSTRAINT `fk_trx_pool_ans_trx_pooling1` FOREIGN KEY (`pool_no`) REFERENCES `trx_pooling` (`pool_seq_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `trx_pool_ans` */

LOCK TABLES `trx_pool_ans` WRITE;

insert  into `trx_pool_ans`(`seq_no`,`pool_no`,`pool_answer`,`pool_result`) values (39,11,'Harus',0),(40,11,'Tidak Perlu',1),(41,11,'Ragu - ragu',1),(42,11,'Tidak Tahu',1);

UNLOCK TABLES;

/*Table structure for table `trx_pooling` */

DROP TABLE IF EXISTS `trx_pooling`;

CREATE TABLE `trx_pooling` (
  `pool_seq_no` int(11) NOT NULL AUTO_INCREMENT,
  `pool_quest` varchar(255) NOT NULL,
  `active_st` enum('1','0') NOT NULL,
  `modi_id` varchar(45) NOT NULL,
  `modi_datetime` datetime NOT NULL,
  PRIMARY KEY (`pool_seq_no`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `trx_pooling` */

LOCK TABLES `trx_pooling` WRITE;

insert  into `trx_pooling`(`pool_seq_no`,`pool_quest`,`active_st`,`modi_id`,`modi_datetime`) values (11,'Apakah perlu PM Tony Abbot meminta maaf kepada Indonesia?','1','1','2013-11-22 22:18:52');

UNLOCK TABLES;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

LOCK TABLES `users` WRITE;

insert  into `users`(`user_id`,`full_name`,`user_email`,`user_name`,`user_password`) values (1,'Welly Widodo Sindu Putra','wellynojutsu@gmail.com','admin','admin'),(2,'Lorem Ipsum','lorem.ipsum@gmail.com','lorem','ipsum');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
