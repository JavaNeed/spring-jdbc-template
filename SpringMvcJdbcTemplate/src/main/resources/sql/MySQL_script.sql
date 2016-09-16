create database contactdb;

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8

INSERT INTO contact (name,email,address,telephone) VALUES ('John Doe', 'john.doe@gmail.com','Reston, USA', 1234567890);
INSERT INTO contact (name,email,address,telephone) VALUES ('Chris Roggers','chris.roggers@gmail.com','Wokingham, UK', 7677666788);
INSERT INTO contact (name,email,address,telephone) VALUES ('Sourav ganguly','sourav.ganguly@gmail.com','Kolkata, INDIA', 88989888972);