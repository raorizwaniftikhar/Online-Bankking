# MySQL-Front Dump 2.5
#
# Host: localhost   Database: address_book
# --------------------------------------------------------
# Server version 4.0.14-nt


#
# Table structure for table 'login'
#

CREATE TABLE login (
  user_name varchar(200) NOT NULL default '0',
  user_password varchar(200) NOT NULL default '0',
  user_type char(1) default '0'
) TYPE=MyISAM;



#
# Dumping data for table 'login'
#

INSERT INTO login VALUES("admin", "admin", "B");


#
# Table structure for table 'users'
#

CREATE TABLE users (
  user_index int(5) NOT NULL auto_increment,
  u_first_name varchar(200) NOT NULL default '',
  u_last_name varchar(200) NOT NULL default '',
  u_email varchar(200) NOT NULL default '',
  u_country varchar(200) NOT NULL default '0',
  u_age int(3) NOT NULL default '0',
  u_rate int(3) NOT NULL default '0',
  u_comments varchar(255) NOT NULL default '',
  date timestamp(14) NOT NULL,
  PRIMARY KEY  (user_index)
) TYPE=MyISAM;



#
# Dumping data for table 'users'
#

INSERT INTO users VALUES("19", "Buddhika", "eee", "buddhikap@unionb.com", "Sri Lanka", "22", "5", "sdfgdfg", "20051216121103");
