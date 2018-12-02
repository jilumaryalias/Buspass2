/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.34-MariaDB : Database - bus_pass2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bus_pass2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bus_pass2`;

/*Table structure for table `bus` */

DROP TABLE IF EXISTS `bus`;

CREATE TABLE `bus` (
  `bus_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(200) NOT NULL,
  `driver` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `manufacturer_year` varchar(200) NOT NULL,
  `model` varchar(200) NOT NULL,
  `no_of_seats` varchar(200) NOT NULL,
  `route_id` int(11) NOT NULL,
  PRIMARY KEY (`bus_id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `route_id` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bus` */

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`login_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

/*Table structure for table `new_passenger_request` */

DROP TABLE IF EXISTS `new_passenger_request`;

CREATE TABLE `new_passenger_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`request_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `new_passenger_request_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `new_passenger_request` */

/*Table structure for table `pass` */

DROP TABLE IF EXISTS `pass`;

CREATE TABLE `pass` (
  `pass_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `issue_adte` varchar(200) DEFAULT NULL,
  `valid_till` varchar(200) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pass_id`),
  KEY `user_id` (`user_id`,`route_id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `pass_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `pass_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pass` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `pass_id` int(11) DEFAULT NULL,
  `amount` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `user_id` (`user_id`,`pass_id`),
  KEY `pass_id` (`pass_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`pass_id`) REFERENCES `pass` (`pass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

/*Table structure for table `renewal_request` */

DROP TABLE IF EXISTS `renewal_request`;

CREATE TABLE `renewal_request` (
  `renewal_request` int(11) NOT NULL AUTO_INCREMENT,
  `pass_id` int(11) DEFAULT NULL,
  `expiry_on` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`renewal_request`),
  KEY `pass_id` (`pass_id`),
  CONSTRAINT `pass_id` FOREIGN KEY (`pass_id`) REFERENCES `pass` (`pass_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `renewal_request` */

/*Table structure for table `route` */

DROP TABLE IF EXISTS `route`;

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` varchar(200) NOT NULL,
  `start_place` varchar(200) NOT NULL,
  `ending_place` varchar(200) NOT NULL,
  `other_details` varchar(200) NOT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `route` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `batch` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `house_name` varchar(200) NOT NULL,
  `place` varchar(200) NOT NULL,
  `pincode` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `parent_name` varchar(200) NOT NULL,
  `parent_phone` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
