/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.1-m2-community : Database - onlineexam
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlineexam` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlineexam`;

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `items` */

insert  into `items`(`id`,`version`) values (1,1),(3,150),(4,160);

/*Table structure for table `lovekesh` */

DROP TABLE IF EXISTS `lovekesh`;

CREATE TABLE `lovekesh` (
  `id` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`,`version`),
  UNIQUE KEY `id_2` (`id`,`version`),
  UNIQUE KEY `id_3` (`id`,`version`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

/*Data for the table `lovekesh` */

/*Table structure for table `mail` */

DROP TABLE IF EXISTS `mail`;

CREATE TABLE `mail` (
  `email` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mail` */

insert  into `mail`(`email`,`password`) values ('','');

/*Table structure for table `one` */

DROP TABLE IF EXISTS `one`;

CREATE TABLE `one` (
  `uid` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `one` */

/*Table structure for table `ques1` */

DROP TABLE IF EXISTS `ques1`;

CREATE TABLE `ques1` (
  `que` varchar(500) DEFAULT NULL,
  `01` varchar(100) DEFAULT NULL,
  `02` varchar(100) DEFAULT NULL,
  `03` varchar(100) DEFAULT NULL,
  `04` varchar(100) DEFAULT NULL,
  `cor_ans` int(11) DEFAULT NULL,
  `quesno` int(11) NOT NULL,
  PRIMARY KEY (`quesno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ques1` */

insert  into `ques1`(`que`,`01`,`02`,`03`,`04`,`cor_ans`,`quesno`) values ('Which one of the following options is the closest in meaning to the word give below?          NADIR','Highest','Lowest','Medium','Integration',2,1),('Which one of the following is the tightest upper bound that represents the time complexity of inserting an object into a binary search tree of nodes?','o(1)','O(log n)','O(n)','O(n log n)',3,2),('Which one of the following is the tightest upper bound that represents the number of swaps required to sort n number of swaps  required to sort n numbers using selection sort?','O(log n)','O(n)','O(n log n)','O(n^2)',2,3),('Which of the following statement is/are TRUE for undirected graphs?                                              P:Number of odd degree vertices is even.       Q: Sum of degrees of all vertices is even','P only','Q  only','Both Pand Q','Neiter P and Q',3,4),('What will be the maximum sum of 44,42,40....../','502','504','506','500',3,5),('The smallest integer that can be  represented by an 8-bit number in 2\'s complement from is','-256','-128','-127','0',2,6),('Suppose p is the number of cars per minute passing through a certain road between 5M and 6PM,and p has a poisson distribution with mean 3.what is the probability of observing fewer then 3 cars during any minute in this interval?','8/(2e^3)','9/(2e^3)','17/(2e^3)','26/(2e^3)',3,7),('Consider the following languages                L1= {0^p 1^q 0^r}|p,q,r>=0      L2={0^p 1^q 0^r |p,q,r>+0,p!=r }      Which one of the following statements is FALSE?','L2 is context-free','L1 intersecation L2 is context free','Complement of L2 is recursive','Complement of L1 is context free but nou regular',4,8),('ChOOse the gramitically INCORECT  Sentence','He is of Asian org','They belonged to Africa','She is an European','They migrated from India to Australia',3,9),('A RAM chip has a capacity of 1024 words of 8 bits each (1K*8).The number of 284 decoders with enable line needed to construct a 16K * 16RAM from 1K * 8RAM is','4','5','6','7',1,10),('fdsafsf','sfg','765','17/(2e^3)','26/(2e^3)',1,11),('asdasdasfdsf','sfg','asd','asd','asd',1,12),('xcazcxzxc','zxczx','xzc','xcx','xcxc',2,13);

/*Table structure for table `time` */

DROP TABLE IF EXISTS `time`;

CREATE TABLE `time` (
  `min` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `time` */

insert  into `time`(`min`) values (100);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `unm` varchar(25) NOT NULL,
  `upass` varchar(25) NOT NULL,
  `post` varchar(45) NOT NULL,
  `adrs` varchar(45) DEFAULT NULL,
  `sex` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `mark` int(10) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`uid`,`unm`,`upass`,`post`,`adrs`,`sex`,`email`,`contact`,`mark`) values (1,'cdr','123','student',NULL,'','','',NULL),(2,'lovekesh','asdf@','student','harda','MALE','lkhore@gmail.com','7777777777',8),(3,'rama ch','axe@','admin','dgvbmk','MALE','ashweqfjn@gmail.com','6544554',NULL),(5,'lkhore','asdf@','student','indore','MALE','lkhore123@gmail.com','8888888888',NULL),(7,'chetan','asdf@','faculty','adaff','MALE','choudharyc29@gmail.com','9617200127',2),(8,'asdasd','aaaa@','student','asrtfa','MALE','xfgdszfg@stfdsg.com','5646566464',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
