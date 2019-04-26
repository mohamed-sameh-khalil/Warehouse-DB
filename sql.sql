CREATE TABLE `Entity`
(
  `ID` INTEGER PRIMARY KEY,
  `name` VARCHAR(100),
  `phone` VARCHAR(20),
  `email` VARCHAR(25),
  `fax` VARCHAR(30),
  `country` VARCHAR(20),
  `state` VARCHAR(20),
  `city` VARCHAR(20),
  `street` VARCHAR(20),
  `building` VARCHAR(20)
);

CREATE TABLE `Supplier`
(
  `ID` INTEGER PRIMARY KEY
);

CREATE TABLE `Items`
(
  `ID` INTEGER PRIMARY KEY,
  `arrival_time` TIMESTAMP,
  `status` varchar(255),
  `location_letter` CHAR(1),
  `location_num` CHAR(3),
  `supplier_ID` INTEGER,
  `distributor_ID` INTEGER,
  `model_ID` INTEGER
);

CREATE TABLE `Distributor`
(
  `ID` INTEGER PRIMARY KEY
);

CREATE TABLE `Company`
(
  `ID` INTEGER PRIMARY KEY
);

CREATE TABLE `Person`
(
  `ID` INTEGER PRIMARY KEY
);

CREATE TABLE `Model`
(
  `ID` INTEGER PRIMARY KEY,
  `name` VARCHAR(100),
  `weight` FLOAT,
  `company` VARCHAR(50),
  `length` FLOAT,
  `width` FLOAT,
  `height` FLOAT,
  `desc` VARCHAR(500)
);

CREATE TABLE `Color`
(
  `color_pallete` VARCHAR(10) PRIMARY KEY,
  `model_ID` INTEGER PRIMARY KEY
);

ALTER TABLE `Supplier` ADD FOREIGN KEY (`ID`) REFERENCES `Entity` (`ID`);

ALTER TABLE `Items` ADD FOREIGN KEY (`supplier_ID`) REFERENCES `Supplier` (`ID`);

ALTER TABLE `Items` ADD FOREIGN KEY (`distributor_ID`) REFERENCES `Distributor` (`ID`);

ALTER TABLE `Items` ADD FOREIGN KEY (`model_ID`) REFERENCES `Model` (`ID`);

ALTER TABLE `Distributor` ADD FOREIGN KEY (`ID`) REFERENCES `Entity` (`ID`);

ALTER TABLE `Company` ADD FOREIGN KEY (`ID`) REFERENCES `Distributor` (`ID`);

ALTER TABLE `Person` ADD FOREIGN KEY (`ID`) REFERENCES `Distributor` (`ID`);

ALTER TABLE `Color` ADD FOREIGN KEY (`model_ID`) REFERENCES `Model` (`ID`);
