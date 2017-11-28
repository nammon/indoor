/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.21 : Database - ibeacon_room
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ibeacon_room` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ibeacon_room`;

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` int(5) NOT NULL,
  `room_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `room` */

/*Table structure for table `room_status` */

DROP TABLE IF EXISTS `room_status`;

CREATE TABLE `room_status` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(10) DEFAULT NULL,
  `room_class` varchar(10) DEFAULT NULL,
  `room_day` varchar(10) DEFAULT NULL,
  `room_begin_time` time DEFAULT NULL,
  `room_end_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `room_status` */

insert  into `room_status`(`id`,`room_name`,`room_class`,`room_day`,`room_begin_time`,`room_end_time`) values (1,'4A05','RE','Mon','10:00:00','12:00:00'),(2,'4A05','ENGLISH','Tue','13:00:00','15:00:00'),(3,'4A06','PROJECT','Mon','10:00:00','11:00:00'),(4,'4A06','QA','Mon','15:00:00','19:00:00'),(5,'4A07','TEST','Tue','08:00:00','12:00:00'),(6,'4A05','MATH','Tue','18:00:00','20:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
