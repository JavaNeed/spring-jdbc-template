use test;

CREATE TABLE `test`.`suppliers` (
  `SupplierID` INT NOT NULL,
  `SupplierName` VARCHAR(255) NULL,
  `ContactName` VARCHAR(255) NULL,
  `Address` VARCHAR(255) NULL,
  `City` VARCHAR(45) NULL,
  `PostalCode` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Phone` VARCHAR(45) NULL,
  PRIMARY KEY (`SupplierID`))
COMMENT = '		';


INSERT INTO suppliers VALUES 
(1, 'Exotic Liquid','Charlotte Cooper','49 Gilbert St.', 'Londona', 'EC1 4SD','UK','(171) 555-2222)');
INSERT INTO suppliers VALUES
(2, 'New Orleans Cajun Delights','Shelley Burke','P.O. Box 78934', 'New Orleans', '70117','USA','(100) 555-4822');
INSERT INTO suppliers VALUES
(3, 'Grandma Kellys Homestead','Regina Murphy','707 Oxford Rd.', 'Ann Arbor', '48104','USA','(313) 555-5735');
INSERT INTO suppliers VALUES
(4, 'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi', 'Tokyo', '100','Japan','(03) 3555-5011');
INSERT INTO suppliers VALUES
(5, 'Cooperativa de Quesos Las Cabras','Antonio del Valle Saavedra','Calle del Rosal 4', 'Oviedo', '33007','Spain','(98) 598 76 54');
INSERT INTO suppliers VALUES
(6, 'Mayumis','Mayumi Ohno','92 Setsuko Chuo-ku', 'Osaka', '545','Japan','(06) 431-7877');
INSERT INTO suppliers VALUES
(7, 'Pavlova, Ltd.','Ian Devling','74 Rose St. Moonie Ponds', 'Melbourne', '3058','Australia','(03) 444-2343');
INSERT INTO suppliers VALUES
(8, 'Specialty Biscuits, Ltd.','Peter Wilson','29 Kings Way', 'Manchester', 'M14 GSD','UK','(161) 555-4448');
INSERT INTO suppliers VALUES
(9, 'PB Knäckebröd AB','Lars Peterson','Kaloadagatan 13', 'Göteborg', 'S-345 67','Sweden','031-987 65 43');
INSERT INTO suppliers VALUES
(10, 'Refrescos Americanas LTDA','Carlos Diaz','Av. das Americanas 12.890', 'São Paulo', '5442','Brazil','(11) 555 4640');
INSERT INTO suppliers VALUES
(11, 'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Tiergartenstraße 5', 'Berlin', '10785','Germany','(010) 9984510');
INSERT INTO suppliers VALUES
(12, 'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','Bogenallee 51', 'Frankfurt', '60439','Germany','(069) 992755');
INSERT INTO suppliers VALUES
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Frahmredder 112a', 'Cuxhaven', '27478','Germany','(04721) 8713');
INSERT INTO suppliers VALUES
(14, 'Formaggi Fortini s.r.l.','Elio Rossi','Viale Dante, 75', 'Ravenna', '48100','Italy','(0544) 60323');
INSERT INTO suppliers VALUES
(15, 'Norske Meierier','Beate Vileid','Hatlevegen 5', 'Sandvika', '1320','Norway','(0)2-953010');
INSERT INTO suppliers VALUES
(16, 'Bigfoot Breweries','Cheryl Saylor','3400 - 8th Avenue Suite 210', 'Bend', '97101','USA','(503) 555-9931');
INSERT INTO suppliers VALUES
(17, 'Svensk Sjöföda AB','Michael Björn','Brovallavägen 231', 'Stockholm', 'S-123 45','Sweden','08-123 45 67');
INSERT INTO suppliers VALUES
(18, 'Aux joyeux ecclésiastiques','Guylène Nodier','203, Rue des Francs-Bourgeois', 'Paris', '75004','France','(1) 03.83.00.68');
INSERT INTO suppliers VALUES
(19, 'New England Seafood Cannery','Robb Merchant','Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', '02134','USA','(617) 555-3267');
INSERT INTO suppliers VALUES
(20, 'Leka Trading','Chandra Leka','471 Serangoon Loop, Suite #402', 'Singapore', '0512','Singapore','555-8787');
INSERT INTO suppliers VALUES
(21, 'Lyngbysild','Niels Petersen','Lyngbysild Fiskebakken 10', 'Lyngby', '2800','Denmark','43844108');
INSERT INTO suppliers VALUES
(22, 'Zaanse Snoepfabriek','Dirk Luchte','Verkoop Rijnweg 22', 'Zaandam', '9999 ZZ','Netherlands','(12345) 1212');
INSERT INTO suppliers VALUES
(23, 'Karkki Oy','Anne Heikkonen','Valtakatu 12', 'Lappeenranta', '53120','Finland','(953) 10956');
INSERT INTO suppliers VALUES
(24, 'Gday, Mate','Wendy Mackenzie','170 Prince Edward Parade Hunters Hill', 'Sydney', '2042','Australia','(02) 555-5914');
INSERT INTO suppliers VALUES
(25, 'Ma Maison','Jean-Guy Lauzon','2960 Rue St. Laurent', 'Montréal', 'H1J 1C3','Canada','(514) 555-9022');
INSERT INTO suppliers VALUES
(26, 'Pasta Buttini s.r.l.','Giovanni Giudici','Via dei Gelsomini, 153', 'Salerno', '84100','Italy','(089) 6547665');
INSERT INTO suppliers VALUES
(27, 'Escargots Nouveaux','Marie Delamare','22, rue H. Voiron', 'Montceau', '71300','France','85.57.00.07');
INSERT INTO suppliers VALUES
(28, 'Gai pâturage','Eliane Noz','Bat. B 3, rue des Alpes', 'Annecy', '74000','France','38.76.98.06');
INSERT INTO suppliers VALUES
(29, 'Forêts dérables','Chantal Goulet','148 rue Chasseur', 'Ste-Hyacinthe', 'J2S 7S8','Canada','(514) 555-2955');



CREATE TABLE `test`.`products` (
  `ProductID` INT NOT NULL,
  `ProductName` VARCHAR(255) NULL,
  `SupplierID` INT NULL,
  `CategoryID` INT NULL,
  `Unit` VARCHAR(255) NULL,
  `Price` DECIMAL(7,3) NULL,
  PRIMARY KEY (`ProductID`));
  
INSERT INTO Products VALUES (1,'Chais',1,1,'10 boxes x 20 bags',18);
INSERT INTO Products VALUES (2,'Chang',1,1,'24 - 12 oz bottles',19);
INSERT INTO Products VALUES (3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10);
INSERT INTO Products VALUES (4,'Chef Antons Cajun Seasoning',2,2,'48 - 6 oz jars',22);
INSERT INTO Products VALUES (5,'Chef Antons Gumbo Mix',2,2,'36 boxes',21.35);
INSERT INTO Products VALUES (6,'Grandmas Boysenberry Spread',3,2,'12 - 8 oz jars',25);
INSERT INTO Products VALUES (7,'Uncle Bobs Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30);
INSERT INTO Products VALUES (8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40);
INSERT INTO Products VALUES (9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97);
INSERT INTO Products VALUES (10,'Ikura',4,8,'12 - 200 ml jars',31);
INSERT INTO Products VALUES (11,'Queso Cabrales',5,4,'1 kg pkg.',21);
INSERT INTO Products VALUES (12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38);
INSERT INTO Products VALUES (13,'Konbu',6,8,'2 kg box',6);
INSERT INTO Products VALUES (14,'Tofu',6,7,'40 - 100 g pkgs.',23.25);
INSERT INTO Products VALUES (15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5);
INSERT INTO Products VALUES (16,'Pavlova',7,3,'32 - 500 g boxes',17.45);
INSERT INTO Products VALUES (17,'Alice Mutton',7,6,'20 - 1 kg tins',39);
INSERT INTO Products VALUES (18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5);
INSERT INTO Products VALUES (19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2);
INSERT INTO Products VALUES (20,'Sir Rodneys Marmalade',8,3,'30 gift boxes',81);
INSERT INTO Products VALUES (21,'Sir Rodneys Scones',8,3,'24 pkgs. x 4 pieces',10);
INSERT INTO Products VALUES (22,'Gustafs Kn„ckebr”d',9,5,'24 - 500 g pkgs.',21);
INSERT INTO Products VALUES (23,'Tunnbr”d',9,5,'12 - 250 g pkgs.',9);
INSERT INTO Products VALUES (24,'Guaran  Fant stica',10,1,'12 - 355 ml cans',4.5);
INSERT INTO Products VALUES (25,'NuNuCa Nuá-Nougat-Creme',11,3,'20 - 450 g glasses',14);
INSERT INTO Products VALUES (26,'Gumb„r Gummib„rchen',11,3,'100 - 250 g bags',31.23);
INSERT INTO Products VALUES (27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9);
INSERT INTO Products VALUES (28,'R”ssle Sauerkraut',12,7,'25 - 825 g cans',45.6);
INSERT INTO Products VALUES (29,'Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79);
INSERT INTO Products VALUES (30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89);
INSERT INTO Products VALUES (31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5);
INSERT INTO Products VALUES (32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32);
INSERT INTO Products VALUES (33,'Geitost',15,4,'500 g',2.5);
INSERT INTO Products VALUES (34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14);
INSERT INTO Products VALUES (35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18);
INSERT INTO Products VALUES (36,'Inlagd Sill',17,8,'24 - 250 g jars',19);
INSERT INTO Products VALUES (37,'Gravad lax',17,8,'12 - 500 g pkgs.',26);
INSERT INTO Products VALUES (38,'C“te de Blaye',18,1,'12 - 75 cl bottles',263.5);
INSERT INTO Products VALUES (39,'Chartreuse verte',18,1,'750 cc per bottle',18);
INSERT INTO Products VALUES (40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4);
INSERT INTO Products VALUES (41,'Jacks New England Clam Chowder',19,8,'12 - 12 oz cans',9.65);
INSERT INTO Products VALUES (42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14);
INSERT INTO Products VALUES (43,'Ipoh Coffee',20,1,'16 - 500 g tins',46);
INSERT INTO Products VALUES (44,'Gula Malacca',20,2,'20 - 2 kg bags',19.45);
INSERT INTO Products VALUES (45,'R?gede sild',21,8,'1k pkg.',9.5);
INSERT INTO Products VALUES (46,'Spegesild',21,8,'4 - 450 g glasses',12);
INSERT INTO Products VALUES (47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5);
INSERT INTO Products VALUES (48,'Chocolade',22,3,'10 pkgs.',12.75);
INSERT INTO Products VALUES (49,'Maxilaku',23,3,'24 - 50 g pkgs.',20);
INSERT INTO Products VALUES (50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.25);
INSERT INTO Products VALUES (51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53);
INSERT INTO Products VALUES (52,'Filo Mix',24,5,'16 - 2 kg boxes',7);
INSERT INTO Products VALUES (53,'Perth Pasties',24,6,'48 pieces',32.8);
INSERT INTO Products VALUES (54,'TourtiŠre',25,6,'16 pies',7.45);
INSERT INTO Products VALUES (55,'Pƒt‚ chinois',25,6,'24 boxes x 2 pies',24);
INSERT INTO Products VALUES (56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38);
INSERT INTO Products VALUES (57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5);
INSERT INTO Products VALUES (58,'Escargots de Bourgogne',27,8,'24 pieces',13.25);
INSERT INTO Products VALUES (59,'Raclette Courdavault',28,4,'5 kg pkg.',55);
INSERT INTO Products VALUES (60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34);
INSERT INTO Products VALUES (61,'Sirop d‚rable',29,2,'24 - 500 ml bottles',28.5);
INSERT INTO Products VALUES (62,'Tarte au sucre',29,3,'48 pies',49.3);
INSERT INTO Products VALUES (63,'Vegie-spread',7,2,'15 - 625 g jars',43.9);
INSERT INTO Products VALUES (64,'Wimmers gute Semmelkn”del',12,5,'20 bags x 4 pieces',33.25);
INSERT INTO Products VALUES (65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.05);
INSERT INTO Products VALUES (66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17);
INSERT INTO Products VALUES (67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14);
INSERT INTO Products VALUES (68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5);
INSERT INTO Products VALUES (69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36);
INSERT INTO Products VALUES (70,'Outback Lager',7,1,'24 - 355 ml bottles',15);
INSERT INTO Products VALUES (71,'Fl?temysost',15,4,'10 - 500 g pkgs.',21.5);
INSERT INTO Products VALUES (72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8);
INSERT INTO Products VALUES (73,'R”d Kaviar',17,8,'24 - 150 g jars',15);
INSERT INTO Products VALUES (74,'Longlife Tofu',4,7,'5 kg pkg.',10);
INSERT INTO Products VALUES (75,'Rh”nbr„u Klosterbier',12,1,'24 - 0.5 l bottles',7.75);
INSERT INTO Products VALUES (76,'Lakkalik””ri',23,1,'500 ml',18);
INSERT INTO Products VALUES (77,'Original Frankfurter grüne Soße',12,2,'12 boxes',13);



-- This is for Customers
CREATE TABLE `test`.`customers` (
  `CustomerID` INT NOT NULL,
  `CustomerName` VARCHAR(255) NULL,
  `ContactName` VARCHAR(255) NULL,
  `Address` VARCHAR(255) NULL,
  `City` VARCHAR(45) NULL,
  `PostalCode` VARCHAR(100) NULL,
  `Country` VARCHAR(100) NULL,
  PRIMARY KEY (`CustomerID`));

INSERT INTO Customers VALUES (1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');
INSERT INTO Customers VALUES (2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','05021','Mexico');
INSERT INTO Customers VALUES (3,'Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','05023','Mexico');
INSERT INTO Customers VALUES (4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK');
INSERT INTO Customers VALUES (5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden');
INSERT INTO Customers VALUES (6,'Blauer See Delikatessen','Hanna Moos','Forsterstr. 57','Mannheim','68306','Germany');
INSERT INTO Customers VALUES (7,'Blondel père et fils','Frédérique Citeaux','24, place Kléber','Strasbourg','67000','France');
INSERT INTO Customers VALUES (8,'Bólido Comidas preparadas','Martín Sommer','C/ Araquil, 67','Madrid','28023','Spain');
INSERT INTO Customers VALUES (9,'Bon app','Laurence Lebihans','12, rue des Bouchers','Marseille','13008','France');
INSERT INTO Customers VALUES (10,'Bottom-Dollar Marketse','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','Canada');
INSERT INTO Customers VALUES (11,'Bs Beverages','Victoria Ashworth','Fauntleroy Circus','London','EC2 5NT','UK');
INSERT INTO Customers VALUES (12,'Cactus Comidas para llevar','Patricio Simpson','Cerrito 333','Buenos Aires','1010','Argentina');
INSERT INTO Customers VALUES (13,'Centro comercial Moctezuma','Francisco Chang','Sierras de Granada 9993','México D.F.','05022','Mexico');
INSERT INTO Customers VALUES (14,'Chop-suey Chinese','Yang Wang','Hauptstr. 29','Bern','3012','Switzerland');
INSERT INTO Customers VALUES (15,'Comércio Mineiro','Pedro Afonso','Av. dos Lusíadas, 23','São Paulo','05432-043','Brazil');
INSERT INTO Customers VALUES (16,'Consolidated Holdings','Elizabeth Brown','Berkeley Gardens 12 Brewery','London','WX1 6LT','UK');
INSERT INTO Customers VALUES (17,'Drachenblut Delikatessend','Sven Ottlieb','Walserweg 21','Aachen','52066','Germany');
INSERT INTO Customers VALUES (18,'Du monde entier','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','France');
INSERT INTO Customers VALUES (19,'Eastern Connection','Ann Devon','35 King George','London','WX3 6FW','UK');
INSERT INTO Customers VALUES (20,'Ernst Handel','Roland Mendel','Kirchgasse 6','Graz','8010','Austria');
INSERT INTO Customers VALUES (21,'Familia Arquibaldo','Aria Cruz','Rua Orós, 92','São Paulo','05442-030','Brazil');
INSERT INTO Customers VALUES (22,'FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','Spain');
INSERT INTO Customers VALUES (23,'Folies gourmandes','Martine Rancé','184, chaussée de Tournai','Lille','59000','France');
INSERT INTO Customers VALUES (24,'Folk och fä HB','Maria Larsson','Åkergatan 24','Bräcke','S-844 67','Sweden');
INSERT INTO Customers VALUES (25,'Frankenversand','Peter Franken','Berliner Platz 43','München','80805','Germany');
INSERT INTO Customers VALUES (26,'France restauration','Carine Schmitt','54, rue Royale','Nantes','44000','France');
INSERT INTO Customers VALUES (27,'Franchi S.p.A.','Paolo Accorti','Via Monte Bianco 34','Torino','10100','Italy');
INSERT INTO Customers VALUES (28,'Furia Bacalhau e Frutos do Mar','Lino Rodriguez','Jardim das rosas n. 32','Lisboa','1675','Portugal');
INSERT INTO Customers VALUES (29,'Galería del gastrónomo','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona','08022','Spain');
INSERT INTO Customers VALUES (30,'Godos Cocina Típica','José Pedro Freyre','C/ Romero, 33','Sevilla','41101','Spain');
INSERT INTO Customers VALUES (31,'Gourmet Lanchonetes','André Fonseca','Av. Brasil, 442','Campinas','04876-786','Brazil');
INSERT INTO Customers VALUES (32,'Great Lakes Food Market','Howard Snyder','2732 Baker Blvd.','Eugene','97403','USA');
INSERT INTO Customers VALUES (33,'GROSELLA-Restaurante','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','1081','Venezuela');
INSERT INTO Customers VALUES (34,'Hanari Carnes','Mario Pontes','Rua do Paço, 67','Rio de Janeiro','05454-876','Brazil');
INSERT INTO Customers VALUES (35,'HILARIÓN-Abastos','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','5022','Venezuela');
INSERT INTO Customers VALUES (36,'Hungry Coyote Import Store','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','97827','USA');
INSERT INTO Customers VALUES (37,'Hungry Owl All-Night Grocers','Patricia McKenna','8 Johnstown Road','Cork',' ','Ireland');
INSERT INTO Customers VALUES (38,'Island Trading','Helen Bennett','Garden House Crowther Way','Cowes','PO31 7PJ','UK');
INSERT INTO Customers VALUES (39,'Königlich Essen','Philip Cramer','Maubelstr. 90','Brandenburg','14776','Germany');
INSERT INTO Customers VALUES (40,'La corne dabondance','Daniel Tonini','67, avenue de lEurope','Versailles','78000','France');
INSERT INTO Customers VALUES (41,'La maison dAsie','Annette Roulet','1 rue Alsace-Lorraine','Toulouse','31000','France');
INSERT INTO Customers VALUES (42,'Laughing Bacchus Wine Cellars','Yoshi Tannamuri','1900 Oak St.','Vancouver','V3F 2K1','Canada');
INSERT INTO Customers VALUES (43,'Lazy K Kountry Store','John Steel','12 Orchestra Terrace','Walla Walla','99362','USA');
INSERT INTO Customers VALUES (44,'Lehmanns Marktstand','Renate Messner','Magazinweg 7','Frankfurt a.M.','60528','Germany');
INSERT INTO Customers VALUES (45,'Lets Stop N Shop','Jaime Yorres','87 Polk St. Suite 5','San Francisco','94117','USA');
INSERT INTO Customers VALUES (46,'LILA-Supermercado','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','3508','Venezuela');
INSERT INTO Customers VALUES (47,'LINO-Delicateses','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','4980','Venezuela');
INSERT INTO Customers VALUES (48,'Lonesome Pine Restaurant','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','USA');
INSERT INTO Customers VALUES (49,'Magazzini Alimentari Riuniti','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo','24100','Italy');
INSERT INTO Customers VALUES (50,'Maison Dewey','Catherine Dewey','Rue Joseph-Bens 532','Bruxelles','B-1180','Belgium');
INSERT INTO Customers VALUES (51,'Mère Paillarde','Jean Fresnière','43 rue St. Laurent','Montréal','H1J 1C3','Canada');
INSERT INTO Customers VALUES (52,'Morgenstern Gesundkost','Alexander Feuer','Heerstr. 22','Leipzig','04179','Germany');
INSERT INTO Customers VALUES (53,'North/South','Simon Crowther','South House 300 Queensbridge','London','SW7 1RZ','UK');
INSERT INTO Customers VALUES (54,'Océano Atlántico Ltda.','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires','1010','Argentina');
INSERT INTO Customers VALUES (55,'Old World Delicatessen','Rene Phillips','2743 Bering St.','Anchorage','99508','USA');
INSERT INTO Customers VALUES (56,'Ottilies Käseladen','Henriette Pfalzheim','Mehrheimerstr. 369','Köln','50739','Germany');
INSERT INTO Customers VALUES (57,'Paris spécialités','Marie Bertrand','265, boulevard Charonne','Paris','75012','France');
INSERT INTO Customers VALUES (58,'Pericles Comidas clásicas','Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.','05033','Mexico');
INSERT INTO Customers VALUES (59,'Piccolo und mehr','Georg Pipps','Geislweg 14','Salzburg','5020','Austria');
INSERT INTO Customers VALUES (60,'Princesa Isabel Vinhoss','Isabel de Castro','Estrada da saúde n. 58','Lisboa','1756','Portugal');
INSERT INTO Customers VALUES (61,'Que Delícia	Bernardo','Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','Brazil');
INSERT INTO Customers VALUES (62,'Queen Cozinha','Lúcia Carvalho','Alameda dos Canàrios, 891','São Paulo','05487-020','Brazil');
INSERT INTO Customers VALUES (63,'QUICK-Stop','Horst Kloss','Taucherstraße 10','Cunewalde','01307','Germany');
INSERT INTO Customers VALUES (64,'Rancho grande','Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires','1010','Argentina');
INSERT INTO Customers VALUES (65,'Rattlesnake Canyon Grocery','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','USA');
INSERT INTO Customers VALUES (66,'Reggiani Caseifici','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','Italy');
INSERT INTO Customers VALUES (67,'Ricardo Adocicados','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','Brazil');
INSERT INTO Customers VALUES (68,'Richter Supermarkt','Michael Holz','Grenzacherweg 237','Genève','1203','Switzerland');
INSERT INTO Customers VALUES (69,'Romero y tomillo','Alejandra Camino','Gran Vía, 1','Madrid','28001','Spain');
INSERT INTO Customers VALUES (70,'Santé Gourmet','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','Norway');
INSERT INTO Customers VALUES (71,'Save-a-lot Markets','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','USA');
INSERT INTO Customers VALUES (72,'Seven Seas Imports','Hari Kumar','90 Wadhurst Rd.','London','OX15 4NB','UK');
INSERT INTO Customers VALUES (73,'Simons bistro','Jytte Petersen','Vinbæltet 34','København','1734','Denmark');
INSERT INTO Customers VALUES (74,'Spécialités du monde','Dominique Perrier','25, rue Lauriston','Paris','75016','France');
INSERT INTO Customers VALUES (75,'Split Rail Beer & Ale','Art Braunschweiger','P.O. Box 555','Lander','82520','USA');
INSERT INTO Customers VALUES (76,'Suprêmes délices','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','Belgium');
INSERT INTO Customers VALUES (77,'The Big Cheese','Liz Nixon','89 Jefferson Way Suite 2','Portland','97201','USA');
INSERT INTO Customers VALUES (78,'The Cracker Box','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','USA');
INSERT INTO Customers VALUES (79,'Toms Spezialitäten','Karin Josephs','Luisenstr. 48','Münster','44087','Germany');
INSERT INTO Customers VALUES (80,'Tortuga Restaurante','Miguel Angel Paolino','Avda. Azteca 123','México D.F.','05033','Mexico');
INSERT INTO Customers VALUES (81,'Tradição Hipermercados','Anabela Domingues','Av. Inês de Castro, 414','São Paulo','05634-030','Brazil');
INSERT INTO Customers VALUES (82,'Trails Head Gourmet Provisioners','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','USA');
INSERT INTO Customers VALUES (83,'Vaffeljernet','Palle Ibsen','Smagsløget 45','Århus','8200','Denmark');
INSERT INTO Customers VALUES (84,'Victuailles en stock','Mary Saveley','2, rue du Commerce','Lyon','69004','France');
INSERT INTO Customers VALUES (85,'Vins et alcools Chevalier','Paul Henriot','59 rue de lAbbaye','Reims','51100','France');
INSERT INTO Customers VALUES (86,'Die Wandernde Kuh','Rita Müller','Adenauerallee 900','Stuttgart','70563','Germany');
INSERT INTO Customers VALUES (87,'Wartian Herkku','Pirkko Koskitalo','Torikatu 38','Oulu','90110','Finland');
INSERT INTO Customers VALUES (88,'Wellington Importadora','Paula Parente','Rua do Mercado, 12','Resende','08737-363','Brazil');
INSERT INTO Customers VALUES (89,'White Clover Markets','Karl Jablonski','305 - 14th Ave. S. Suite 3B','Seattle','98128','USA');
INSERT INTO Customers VALUES (90,'Wilman Kala','Matti Karttunen','Keskuskatu 45','Helsinki','21240','Finland');
INSERT INTO Customers VALUES (91,'Wolski','Zbyszek','ul. Filtrowa 68','Walla','01-012','Poland');


CREATE TABLE `test`.`orders` (
  `OrderID` INT NOT NULL,
  `CustomerID` INT NULL,
  `EmployeeID` INT NULL,
  `OrderDate` DATE NULL,
  `ShipperID` INT NULL,
  PRIMARY KEY (`OrderID`));

INSERT INTO Orders VALUES (10248,90,5,STR_TO_DATE('7/4/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10249,81,6,STR_TO_DATE('7/5/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10250,34,4,STR_TO_DATE('7/8/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10251,84,3,STR_TO_DATE('7/8/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10252,76,4,STR_TO_DATE('7/9/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10253,34,3,STR_TO_DATE('7/10/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10254,14,5,STR_TO_DATE('7/11/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10255,68,9,STR_TO_DATE('7/12/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10256,88,3,STR_TO_DATE('7/15/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10257,35,4,STR_TO_DATE('7/16/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10258,20,1,STR_TO_DATE('7/17/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10259,13,4,STR_TO_DATE('7/18/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10260,55,4,STR_TO_DATE('7/19/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10261,61,4,STR_TO_DATE('7/19/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10262,65,8,STR_TO_DATE('7/22/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10263,20,9,STR_TO_DATE('7/23/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10264,24,6,STR_TO_DATE('7/24/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10265,7,2,STR_TO_DATE('7/25/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10266,87,3,STR_TO_DATE('7/26/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10267,25,4,STR_TO_DATE('7/29/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10268,33,8,STR_TO_DATE('7/30/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10269,89,5,STR_TO_DATE('7/31/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10270,87,1,STR_TO_DATE('8/1/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10271,75,6,STR_TO_DATE('8/1/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10272,65,6,STR_TO_DATE('8/2/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10273,63,3,STR_TO_DATE('8/5/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10274,85,6,STR_TO_DATE('8/6/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10275,49,1,STR_TO_DATE('8/7/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10276,80,8,STR_TO_DATE('8/8/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10277,52,2,STR_TO_DATE('8/9/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10278,5,8,STR_TO_DATE('8/12/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10279,44,8,STR_TO_DATE('8/13/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10280,5,2,STR_TO_DATE('8/14/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10281,69,4,STR_TO_DATE('8/14/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10282,69,4,STR_TO_DATE('8/15/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10283,46,3,STR_TO_DATE('8/16/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10284,44,4,STR_TO_DATE('8/19/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10285,63,1,STR_TO_DATE('8/20/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10286,63,8,STR_TO_DATE('8/21/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10287,67,8,STR_TO_DATE('8/22/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10288,66,4,STR_TO_DATE('8/23/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10289,11,7,STR_TO_DATE('8/26/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10290,15,8,STR_TO_DATE('8/27/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10291,61,6,STR_TO_DATE('8/27/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10292,81,1,STR_TO_DATE('8/28/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10293,80,1,STR_TO_DATE('8/29/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10294,65,4,STR_TO_DATE('8/30/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10295,85,2,STR_TO_DATE('9/2/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10296,46,6,STR_TO_DATE('9/3/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10297,7,5,STR_TO_DATE('9/4/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10298,37,6,STR_TO_DATE('9/5/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10299,67,4,STR_TO_DATE('9/6/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10300,49,2,STR_TO_DATE('9/9/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10301,86,8,STR_TO_DATE('9/9/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10302,76,4,STR_TO_DATE('9/10/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10303,30,7,STR_TO_DATE('9/11/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10304,80,1,STR_TO_DATE('9/12/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10305,55,8,STR_TO_DATE('9/13/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10306,69,1,STR_TO_DATE('9/16/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10307,48,2,STR_TO_DATE('9/17/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10308,2,7,STR_TO_DATE('9/18/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10309,37,3,STR_TO_DATE('9/19/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10310,77,8,STR_TO_DATE('9/20/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10311,18,1,STR_TO_DATE('9/20/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10312,86,2,STR_TO_DATE('9/23/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10313,63,2,STR_TO_DATE('9/24/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10314,65,1,STR_TO_DATE('9/25/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10315,38,4,STR_TO_DATE('9/26/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10316,65,1,STR_TO_DATE('9/27/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10317,48,6,STR_TO_DATE('9/30/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10318,38,8,STR_TO_DATE('10/1/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10319,80,7,STR_TO_DATE('10/2/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10320,87,5,STR_TO_DATE('10/3/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10321,38,3,STR_TO_DATE('10/3/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10322,58,7,STR_TO_DATE('10/4/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10323,39,4,STR_TO_DATE('10/7/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10324,71,9,STR_TO_DATE('10/8/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10325,39,1,STR_TO_DATE('10/9/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10326,8,4,STR_TO_DATE('10/10/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10327,24,2,STR_TO_DATE('10/11/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10328,28,4,STR_TO_DATE('10/14/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10329,75,4,STR_TO_DATE('10/15/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10330,46,3,STR_TO_DATE('10/16/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10331,9,9,STR_TO_DATE('10/16/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10332,51,3,STR_TO_DATE('10/17/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10333,87,5,STR_TO_DATE('10/18/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10334,84,8,STR_TO_DATE('10/21/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10335,37,7,STR_TO_DATE('10/22/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10336,60,7,STR_TO_DATE('10/23/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10337,25,4,STR_TO_DATE('10/24/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10338,55,4,STR_TO_DATE('10/25/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10339,51,2,STR_TO_DATE('10/28/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10340,9,1,STR_TO_DATE('10/29/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10341,73,7,STR_TO_DATE('10/29/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10342,25,4,STR_TO_DATE('10/30/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10343,44,4,STR_TO_DATE('10/31/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10344,89,4,STR_TO_DATE('11/1/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10345,63,2,STR_TO_DATE('11/4/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10346,65,3,STR_TO_DATE('11/5/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10347,21,4,STR_TO_DATE('11/6/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10348,86,4,STR_TO_DATE('11/7/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10349,75,7,STR_TO_DATE('11/8/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10350,41,6,STR_TO_DATE('11/11/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10351,20,1,STR_TO_DATE('11/11/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10352,28,3,STR_TO_DATE('11/12/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10353,59,7,STR_TO_DATE('11/13/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10354,58,8,STR_TO_DATE('11/14/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10355,4,6,STR_TO_DATE('11/15/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10356,86,6,STR_TO_DATE('11/18/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10357,46,1,STR_TO_DATE('11/19/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10358,41,5,STR_TO_DATE('11/20/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10359,72,5,STR_TO_DATE('11/21/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10360,7,4,STR_TO_DATE('11/22/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10361,63,1,STR_TO_DATE('11/22/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10362,9,3,STR_TO_DATE('11/25/1996','%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10363,17,4,STR_TO_DATE('11/26/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10364,19,1,STR_TO_DATE('11/26/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10365,3,3,STR_TO_DATE('11/27/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10366,29,8,STR_TO_DATE('11/28/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10367,83,7,STR_TO_DATE('11/28/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10368,20,2,STR_TO_DATE('11/29/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10369,75,8,STR_TO_DATE('12/2/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10370,14,6,STR_TO_DATE('12/3/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10371,41,1,STR_TO_DATE('12/3/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10372,62,5,STR_TO_DATE('12/4/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10373,37,4,STR_TO_DATE('12/5/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10374,91,1,STR_TO_DATE('12/5/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10375,36,3,STR_TO_DATE('12/6/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10376,51,1,STR_TO_DATE('12/9/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10377,72,1,STR_TO_DATE('12/9/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10378,24,5,STR_TO_DATE('12/10/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10379,61,2,STR_TO_DATE('12/11/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10380,37,8,STR_TO_DATE('12/12/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10381,46,3,STR_TO_DATE('12/12/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10382,20,4,STR_TO_DATE('12/13/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10383,4,8,STR_TO_DATE('12/16/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10384,5,3,STR_TO_DATE('12/16/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10385,75,1,STR_TO_DATE('12/17/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10386,21,9,STR_TO_DATE('12/18/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10387,70,1,STR_TO_DATE('12/18/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10388,72,2,STR_TO_DATE('12/19/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10389,10,4,STR_TO_DATE('12/20/1996', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10390,20,6,STR_TO_DATE('12/23/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10391,17,3,STR_TO_DATE('12/23/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10392,59,2,STR_TO_DATE('12/24/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10393,71,1,STR_TO_DATE('12/25/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10394,36,1,STR_TO_DATE('12/25/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10395,35,6,STR_TO_DATE('12/26/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10396,25,1,STR_TO_DATE('12/27/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10397,60,5,STR_TO_DATE('12/27/1996', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10398,71,2,STR_TO_DATE('12/30/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10399,83,8,STR_TO_DATE('12/31/1996', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10400,19,1,STR_TO_DATE('1/1/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10401,65,1,STR_TO_DATE('1/1/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10402,20,8,STR_TO_DATE('1/2/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10403,20,4,STR_TO_DATE('1/3/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10404,49,2,STR_TO_DATE('1/3/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10405,47,1,STR_TO_DATE('1/6/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10406,62,7,STR_TO_DATE('1/7/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10407,56,2,STR_TO_DATE('1/7/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10408,23,8,STR_TO_DATE('1/8/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10409,54,3,STR_TO_DATE('1/9/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10410,10,3,STR_TO_DATE('1/10/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10411,10,9,STR_TO_DATE('1/10/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10412,87,8,STR_TO_DATE('1/13/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10413,41,3,STR_TO_DATE('1/14/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10414,21,2,STR_TO_DATE('1/14/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10415,36,3,STR_TO_DATE('1/15/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10416,87,8,STR_TO_DATE('1/16/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10417,73,4,STR_TO_DATE('1/16/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10418,63,4,STR_TO_DATE('1/17/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10419,68,4,STR_TO_DATE('1/20/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10420,88,3,STR_TO_DATE('1/21/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10421,61,8,STR_TO_DATE('1/21/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10422,27,2,STR_TO_DATE('1/22/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10423,31,6,STR_TO_DATE('1/23/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10424,51,7,STR_TO_DATE('1/23/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10425,41,6,STR_TO_DATE('1/24/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10426,29,4,STR_TO_DATE('1/27/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10427,59,4,STR_TO_DATE('1/27/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10428,66,7,STR_TO_DATE('1/28/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10429,37,3,STR_TO_DATE('1/29/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10430,20,4,STR_TO_DATE('1/30/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10431,10,4,STR_TO_DATE('1/30/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10432,75,3,STR_TO_DATE('1/31/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10433,60,3,STR_TO_DATE('2/3/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10434,24,3,STR_TO_DATE('2/3/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10435,16,8,STR_TO_DATE('2/4/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10436,7,3,STR_TO_DATE('2/5/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10437,87,8,STR_TO_DATE('2/5/1997', '%m/%d/%Y'),1);
INSERT INTO Orders VALUES (10438,79,3,STR_TO_DATE('2/6/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10439,51,6,STR_TO_DATE('2/7/1997', '%m/%d/%Y'),3);
INSERT INTO Orders VALUES (10440,71,4,STR_TO_DATE('2/10/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10441,55,3,STR_TO_DATE('2/10/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10442,20,3,STR_TO_DATE('2/11/1997', '%m/%d/%Y'),2);
INSERT INTO Orders VALUES (10443,66,8,STR_TO_DATE('2/12/1997', '%m/%d/%Y'),1);


CREATE TABLE `test`.`employees` (
  `EmployeeID` INT NOT NULL,
  `LastName` VARCHAR(45) NULL,
  `FirstName` VARCHAR(45) NULL,
  `BirthDate` DATE NULL,
  `Photo` VARCHAR(100) NULL,
  `Notes` VARCHAR(5000) NULL,
  PRIMARY KEY (`EmployeeID`));

INSERT INTO Employees VALUES 
(1,'Davolio','Nancy',STR_TO_DATE('12/8/1968', '%m/%d/%Y'),'EmpID1.pic',
'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of Toastmasters International');

INSERT INTO Employees VALUES 
(2,'Fuller','Andrew',STR_TO_DATE('2/19/1952', '%m/%d/%Y'),'EmpID2.pic',
'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.');

INSERT INTO Employees VALUES 
(3,'Leverling','Janet',STR_TO_DATE('8/30/1963', '%m/%d/%Y'),'EmpID3.pic',
'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.');

INSERT INTO Employees VALUES 
(4,'Peacock','Margaret',STR_TO_DATE('9/19/1958', '%m/%d/%Y'),'EmpID4.pic',
'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.');

INSERT INTO Employees VALUES 
(5,'Buchanan','Steven',STR_TO_DATE('3/4/1955', '%m/%d/%Y'),'EmpID5.pic',
'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses Successful Telemarketing and International Sales Management. He is fluent in French.');


INSERT INTO Employees VALUES 
(6,'Suyama','Michael',STR_TO_DATE('7/2/1963', '%m/%d/%Y'),'EmpID6.pic',
'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses Multi-Cultural Selling and Time Management for the Sales Professional. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.');


INSERT INTO Employees VALUES 
(7,'King','Robert',STR_TO_DATE('5/29/1960', '%m/%d/%Y'),'EmpID7.pic',
'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled Selling in Europe, he was transferred to the London office.');


INSERT INTO Employees VALUES 
(8,'Callahan','Laura',STR_TO_DATE('1/9/1958', '%m/%d/%Y'),'EmpID8.pic',
'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.');


INSERT INTO Employees VALUES 
(9,'Dodsworth','Anne',STR_TO_DATE('7/2/1969', '%m/%d/%Y'),'EmpID9.pic',
'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.');

INSERT INTO Employees VALUES 
(10,'West','Adam',STR_TO_DATE('9/19/1928', '%m/%d/%Y'),'EmpID10.pic',
'An old chum');
