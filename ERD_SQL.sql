CREATE TABLE Supplier
(
  Contract_end INT NOT NULL,
  Contract_start INT NOT NULL,
  Name INT NOT NULL,
  State INT NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Category
(
  ID INT NOT NULL,
  Description INT NOT NULL,
  Comapny INT NOT NULL,
  Name INT NOT NULL,
  Height INT NOT NULL,
  Width INT NOT NULL,
  Length INT NOT NULL,
  Height INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Distributor
(
  Tax_no INT NOT NULL,
  ID INT NOT NULL,
  Name INT NOT NULL,
  State INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Category_Color
(
  Color INT NOT NULL,
  ID INT NOT NULL,
  PRIMARY KEY (Color, ID),
  FOREIGN KEY (ID) REFERENCES Category(ID)
);

CREATE TABLE Item
(
  Status INT NOT NULL,
  Supplier_ID INT NOT NULL,
  arrival_time INT NOT NULL,
  Color INT NOT NULL,
  ID INT NOT NULL,
  Location_num INT NOT NULL,
  Location_letter INT NOT NULL,
  ID INT NOT NULL,
  ID INT,
  ID INT,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Supplier(ID),
  FOREIGN KEY (ID) REFERENCES Category(ID),
  FOREIGN KEY (ID) REFERENCES Distributor(ID)
);
