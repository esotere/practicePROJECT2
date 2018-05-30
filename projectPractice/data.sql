DROP DATABASE IF EXISTS stocksDB;

CREATE DATABASE stocksDB;

USE stocksDB;

CREATE TABLE Stock_Offetings (
	id INTEGER (12) AUTO_INCREMENT NOT NULL,
	Stock_Name VARCHAR (50) NOT NULL,
	Ticker VARCHAR (20) NOT NULL,
	Price DEC (2,4)
--	Purchase_Price DEC (2,4) NOT NULL,
	Previous_Closing_Price DEC (2,4) NOT NULL,
	Closing_Price DEC (2,4) NOT NULL,
--	Purchased DATETIME NOT NULL,
	PRIMARY KEY (id)


);

CREATE TABLE Stocks_Owned (
	id INTEGER (12) AUTO_INCREMENT NOT NULL,
	Stock_Name VARCHAR (50) NOT NULL,
	Ticker VARCHAR (20) NOT NULL,
	Price DEC (2,4)
	Purchase_Price DEC (2,4) NOT NULL,
	Previous_Closing_Price DEC (2,4) NOT NULL,
	Closing_Price DEC (2,4) NOT NULL,
	Purchased DATETIME NOT NULL,
	PRIMARY KEY (id)

);
