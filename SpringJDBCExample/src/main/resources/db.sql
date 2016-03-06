CREATE TABLE `Employee` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
); 

INSERT INTO Employee VALUES (101,'Pankaj','Java Developer');
INSERT INTO Employee VALUES (102,'John','Hadoop Developer');
INSERT INTO Employee VALUES (103,'Andrew','JavaScript Developer');
INSERT INTO Employee VALUES (104,'Deepak','PHP Developer');
INSERT INTO Employee VALUES (105,'Savani','.NET Developer');