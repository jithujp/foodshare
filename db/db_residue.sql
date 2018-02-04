# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         localhost
# Database:                     db_residue
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2018-02-02 15:26:05
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_residue'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_residue" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_residue";


#
# Table structure for table 'tbl_charitabletrust'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_charitabletrust" (
  "chari_id" int(10) unsigned NOT NULL auto_increment,
  "chari_regno" varchar(30) default NULL,
  "chari_name" varchar(40) default NULL,
  "chari_address" varchar(100) default NULL,
  "chari_contact1" varchar(15) default NULL,
  "chari_contact2" varchar(15) default NULL,
  "chari_email" varchar(30) default NULL,
  "chari_website" varchar(40) default NULL,
  "chari_authorityname" varchar(40) default NULL,
  "chari_authorityaddress" varchar(100) default NULL,
  "chari_authoritycontact" varchar(15) default NULL,
  "chari_username" varchar(30) default NULL,
  "chari_password" varchar(30) default NULL,
  "chari_status" varchar(1) default NULL,
  "mun_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("chari_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_charitabletrust'
#

LOCK TABLES "tbl_charitabletrust" WRITE;
/*!40000 ALTER TABLE "tbl_charitabletrust" DISABLE KEYS;*/
REPLACE INTO "tbl_charitabletrust" ("chari_id", "chari_regno", "chari_name", "chari_address", "chari_contact1", "chari_contact2", "chari_email", "chari_website", "chari_authorityname", "chari_authorityaddress", "chari_authoritycontact", "chari_username", "chari_password", "chari_status", "mun_id") VALUES
	('4','123','fh','       fghfg                     ','4534','4353','ghf','h','hf','          fghf                  ','34534','ffff','ffff','P','1');
REPLACE INTO "tbl_charitabletrust" ("chari_id", "chari_regno", "chari_name", "chari_address", "chari_contact1", "chari_contact2", "chari_email", "chari_website", "chari_authorityname", "chari_authorityaddress", "chari_authoritycontact", "chari_username", "chari_password", "chari_status", "mun_id") VALUES
	('5','12333','sree','        453                    ','4543','34534','hfg','fdfg','fgd','       fgfdgf                     ','fdg','sree','sree','P','2');
REPLACE INTO "tbl_charitabletrust" ("chari_id", "chari_regno", "chari_name", "chari_address", "chari_contact1", "chari_contact2", "chari_email", "chari_website", "chari_authorityname", "chari_authorityaddress", "chari_authoritycontact", "chari_username", "chari_password", "chari_status", "mun_id") VALUES
	('6','345','hello','         dgd                   ','34324','3242','fgfd','fgfg','fgdf',' gdgd                           ','4342','hello','hello','P','1');
REPLACE INTO "tbl_charitabletrust" ("chari_id", "chari_regno", "chari_name", "chari_address", "chari_contact1", "chari_contact2", "chari_email", "chari_website", "chari_authorityname", "chari_authorityaddress", "chari_authoritycontact", "chari_username", "chari_password", "chari_status", "mun_id") VALUES
	('7','21312','hi','dfsdf                       ','34234','34324','fgfgd','gdfgd','fgfg','fgfd                        ','23424','hi','hi','P','1');
/*!40000 ALTER TABLE "tbl_charitabletrust" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complsugg'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complsugg" (
  "complsugg_id" int(10) unsigned NOT NULL auto_increment,
  "complsugg_date" date default NULL,
  "complsugg_time" varchar(10) default NULL,
  "complsugg_text" varchar(300) default NULL,
  "chari_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("complsugg_id")
);



#
# Dumping data for table 'tbl_complsugg'
#

# No data found.



#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "dist_id" int(10) unsigned NOT NULL auto_increment,
  "dist_name" varchar(40) default NULL,
  "state_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("dist_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("dist_id", "dist_name", "state_id") VALUES
	('1','Coimbator','7');
REPLACE INTO "tbl_district" ("dist_id", "dist_name", "state_id") VALUES
	('2','Ernakulam','9');
REPLACE INTO "tbl_district" ("dist_id", "dist_name", "state_id") VALUES
	('3','Idukki','9');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_donation'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_donation" (
  "don_id" tinyint(3) unsigned NOT NULL auto_increment,
  "guest_id" int(10) unsigned default NULL,
  "reguser_id" tinyint(3) unsigned default NULL,
  "chari_id" tinyint(3) unsigned default NULL,
  "don_date" date default NULL,
  "don_time" varchar(10) default NULL,
  "don_type" varchar(1) default NULL,
  "don_worthamt" int(10) unsigned default NULL,
  PRIMARY KEY  ("don_id")
);



#
# Dumping data for table 'tbl_donation'
#

# No data found.



#
# Table structure for table 'tbl_foodcollection'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_foodcollection" (
  "foodcoll_id" int(10) unsigned NOT NULL auto_increment,
  "fooddet_id" int(10) unsigned default NULL,
  "reguser_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("foodcoll_id")
);



#
# Dumping data for table 'tbl_foodcollection'
#

# No data found.



#
# Table structure for table 'tbl_fooddetails'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_fooddetails" (
  "fooddet_id" int(10) unsigned NOT NULL auto_increment,
  "fooddet_date" date default NULL,
  "fooddet_time" varchar(10) default NULL,
  "fooddet_details" varchar(200) default NULL,
  "guest_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("fooddet_id")
);



#
# Dumping data for table 'tbl_fooddetails'
#

# No data found.



#
# Table structure for table 'tbl_foodsupplydet'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_foodsupplydet" (
  "foodsupplydet_id" int(10) unsigned NOT NULL auto_increment,
  "foodsuppreq_id" int(10) unsigned default NULL,
  "foodsupplydet_date" date default NULL,
  "foodsupplydet_time" varchar(10) default NULL,
  "foodsupplydet_feedback" varchar(200) default NULL,
  PRIMARY KEY  ("foodsupplydet_id")
);



#
# Dumping data for table 'tbl_foodsupplydet'
#

# No data found.



#
# Table structure for table 'tbl_foodsupplyreq'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_foodsupplyreq" (
  "foodsuppreq_id" int(10) unsigned NOT NULL auto_increment,
  "foodcoll_id" int(10) unsigned default NULL,
  "chari_id" int(10) unsigned default NULL,
  "foodsuppreq_status" varchar(1) default NULL,
  PRIMARY KEY  ("foodsuppreq_id")
);



#
# Dumping data for table 'tbl_foodsupplyreq'
#

# No data found.



#
# Table structure for table 'tbl_guestuser'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_guestuser" (
  "guest_id" int(10) unsigned NOT NULL auto_increment,
  "guest_name" varchar(40) default NULL,
  "guest_address" varchar(100) default NULL,
  "guest_contact" varchar(15) default NULL,
  "guest_email" varchar(30) default NULL,
  "guest_username" varchar(30) default NULL,
  "guest_password" varchar(30) default NULL,
  PRIMARY KEY  ("guest_id")
);



#
# Dumping data for table 'tbl_guestuser'
#

# No data found.



#
# Table structure for table 'tbl_login'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_login" (
  "login_id" int(10) unsigned NOT NULL auto_increment,
  "login_name" varchar(50) default NULL,
  "login_password" varchar(50) default NULL,
  PRIMARY KEY  ("login_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_login'
#

LOCK TABLES "tbl_login" WRITE;
/*!40000 ALTER TABLE "tbl_login" DISABLE KEYS;*/
REPLACE INTO "tbl_login" ("login_id", "login_name", "login_password") VALUES
	('1','admin','admin');
/*!40000 ALTER TABLE "tbl_login" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_muncipality'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_muncipality" (
  "mun_id" int(11) NOT NULL auto_increment,
  "mun_name" varchar(40) default NULL,
  "dist_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("mun_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_muncipality'
#

LOCK TABLES "tbl_muncipality" WRITE;
/*!40000 ALTER TABLE "tbl_muncipality" DISABLE KEYS;*/
REPLACE INTO "tbl_muncipality" ("mun_id", "mun_name", "dist_id") VALUES
	(1,'mvpa','2');
REPLACE INTO "tbl_muncipality" ("mun_id", "mun_name", "dist_id") VALUES
	(2,'tdpaaa','3');
/*!40000 ALTER TABLE "tbl_muncipality" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_reguser'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_reguser" (
  "reguser_id" int(10) unsigned NOT NULL auto_increment,
  "reguser_name" varchar(40) default NULL,
  "reguser_address" varchar(100) default NULL,
  "reguser_contact1" varchar(15) default NULL,
  "reguser_contact2" varchar(15) default NULL,
  "reguser_adharno" varchar(18) default NULL,
  "reguser_photo" varchar(30) default NULL,
  "reguser_email" varchar(40) default NULL,
  "reguser_intrname" varchar(40) default NULL,
  "reguser_intraddress" varchar(100) default NULL,
  "reguser_intrcontact" varchar(15) default NULL,
  "reguser_status" varchar(1) default NULL,
  "mun_id" int(10) unsigned default NULL,
  "reguser_username" varchar(15) default NULL,
  "reguser_password" varchar(15) default NULL,
  PRIMARY KEY  ("reguser_id")
);



#
# Dumping data for table 'tbl_reguser'
#

# No data found.



#
# Table structure for table 'tbl_state'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_state" (
  "state_id" int(10) unsigned NOT NULL auto_increment,
  "state_name" varchar(40) default NULL,
  PRIMARY KEY  ("state_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_state'
#

LOCK TABLES "tbl_state" WRITE;
/*!40000 ALTER TABLE "tbl_state" DISABLE KEYS;*/
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	('7','Tamil Nadu');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	('9','Kerala');
/*!40000 ALTER TABLE "tbl_state" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
