CREATE TABLE Entity
(
  ID INTEGER PRIMARY KEY,
  name VARCHAR(100),
  phone VARCHAR(20),
  email VARCHAR(25),
  fax VARCHAR(30),
  country VARCHAR(20),
  state VARCHAR(20),
  city VARCHAR(20),
  street VARCHAR(20),
  building VARCHAR(20)
);

CREATE TABLE Supplier
(
  ID INTEGER PRIMARY KEY,
  contract_start DATE,
  contract_end DATE
);

CREATE TABLE Items
(
  ID INTEGER PRIMARY KEY,
  arrival_time TIMESTAMP,
  color_pallete VARCHAR(10),
  status varchar(255),
  location_letter CHAR(1),
  location_num CHAR(3),
  supplier_ID INTEGER,
  distributor_ID INTEGER,
  Category_ID INTEGER
);

CREATE TABLE Distributor
(
  ID INTEGER PRIMARY KEY,
  tax_No VARCHAR(40)
);

CREATE TABLE Company
(
  ID INTEGER PRIMARY KEY,
  register_No VARCHAR(40)
);

CREATE TABLE Person
(
  ID INTEGER PRIMARY KEY,
  SSN VARCHAR(20)
);

CREATE TABLE TV
(
  ID INTEGER PRIMARY KEY,
  screensize FLOAT,
  Model_No VARCHAR(20),
  screentype VARCHAR(10)
);

CREATE TABLE Chargers
(
  ID INTEGER PRIMARY KEY,
  voltage FLOAT
);

CREATE TABLE Category
(
  ID INTEGER PRIMARY KEY,
  name VARCHAR(100),
  weight FLOAT,
  company VARCHAR(50),
  length FLOAT,
  width FLOAT,
  height FLOAT,
  desc VARCHAR(500)
);

CREATE TABLE Mobiles
(
  ID INTEGER PRIMARY KEY,
  screensize FLOAT,
  Model_No VARCHAR(20)
);

CREATE TABLE Video_Games
(
  ID INTEGER PRIMARY KEY,
  genre VARCHAR(20),
  release_date DATE
);

CREATE TABLE platform
(
  name VARCHAR(20) PRIMARY KEY,
  version VARCHAR(20) PRIMARY KEY,
  video_game_id INTEGER PRIMARY KEY
);

CREATE TABLE Color
(
  color_pallete VARCHAR(10) PRIMARY KEY,
  Category_ID INTEGER PRIMARY KEY
);

ALTER TABLE Supplier ADD FOREIGN KEY (ID) REFERENCES Entity (ID);

ALTER TABLE Items ADD FOREIGN KEY (supplier_ID) REFERENCES Supplier (ID);

ALTER TABLE Items ADD FOREIGN KEY (distributor_ID) REFERENCES Distributor (ID);

ALTER TABLE Items ADD FOREIGN KEY (Category_ID) REFERENCES Category (ID);

ALTER TABLE Distributor ADD FOREIGN KEY (ID) REFERENCES Entity (ID);

ALTER TABLE Company ADD FOREIGN KEY (ID) REFERENCES Distributor (ID);

ALTER TABLE Person ADD FOREIGN KEY (ID) REFERENCES Distributor (ID);

ALTER TABLE TV ADD FOREIGN KEY (ID) REFERENCES Category (ID);

ALTER TABLE Chargers ADD FOREIGN KEY (ID) REFERENCES Category (ID);

ALTER TABLE Mobiles ADD FOREIGN KEY (ID) REFERENCES Category (ID);

ALTER TABLE Video_Games ADD FOREIGN KEY (ID) REFERENCES Category (ID);

ALTER TABLE platform ADD FOREIGN KEY (video_game_id) REFERENCES Video_Games (ID);

ALTER TABLE Color ADD FOREIGN KEY (Category_ID) REFERENCES Category (ID);
