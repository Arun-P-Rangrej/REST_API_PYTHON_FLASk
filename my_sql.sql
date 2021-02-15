
CREATE DATABASE north_wind;

USE north_wind;

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` tinytext,
  `description` mediumtext,
  PRIMARY KEY (`categoryId`)
);




DROP TABLE IF EXISTS `customerCustomerDemo`;
CREATE TABLE `customerCustomerDemo` (
  `customerId` varchar(255) NOT NULL,
  `customerTypeId` varchar(255),
  PRIMARY KEY (`customerId`),
  KEY `customerTypeId` (`customerTypeId`),
  FOREIGN KEY (`customerTypeId`) REFERENCES `customerDemographics` (`customerTypeId`)
) ;





DROP TABLE IF EXISTS `customerDemographics`;
CREATE TABLE `customerDemographics` (
  `customerTypeId` varchar(255) NOT NULL,
  `cutomerDesc` mediumtext,
  PRIMARY KEY (`customerTypeId`)
) ;



DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customerId` varchar(255) NOT NULL,
  `companyName` tinytext,
  `contactName` tinytext,
  `contactTitle` tinytext,
  `address` tinytext,
  `city` tinytext,
  `region` tinytext,
  `postalCode` tinytext,
  `country` tinytext,
  `phone` tinytext,
  `fax` tinytext,
  PRIMARY KEY (`customerId`)
);


DROP TABLE IF EXISTS `employeeTerritories`;
CREATE TABLE `employeeTerritories` (
  `employeeId` int(11) NOT NULL AUTO_INCREMENT,
  `territoryId` varchar(255),
  KEY `employeeId` (`employeeId`),
  KEY `territoryId` (`territoryId`),
  FOREIGN KEY (`employeeId`) REFERENCES `employees` (`employeeId`),
  FOREIGN KEY (`territoryId`) REFERENCES `territories` (`territoryId`)
);




DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employeeId` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` tinytext,
  `firstName` tinytext,
  `title` tinytext,
  `titleOfCourtesy` tinytext,
  `birthDate` date,
  `hireDate` date,
  `address` tinytext,
  `city` tinytext,
  `region` tinytext,
  `postalCode` tinytext,
  `country` tinytext,
  `homePhone` tinytext,
  `extension` tinytext,
  `notes` mediumtext,
  `reportsTo` int(11),
  `photoPath` tinytext,
  `salary` float,
  PRIMARY KEY (`employeeId`)
);



DROP TABLE IF EXISTS `orderDetails`;
CREATE TABLE `orderDetails` (
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `unitPrice` decimal(10,4),
  `quantity` smallint(2),
  `discount` double(8,0),
  PRIMARY KEY (`orderId`,`productId`),
  KEY `productId` (`productId`),
  FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
);



DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` varchar(255),
  `employeeId` int(11),
  `orderDate` date,
  `requiredDate` date,
  `shippedDate` date,
  `address` tinytext,
  `shipvia` int(11),
  `freight` decimal(10,4),
  `shipName` tinytext,
  `shipAddress` tinytext,
  `shipCity` tinytext,
  `shipRegion` tinytext,
  `shipPostalCode` tinytext,
  `shipCountry` tinytext,
  PRIMARY KEY (`orderId`),
  KEY `customerId` (`customerId`),
  KEY `employeeId` (`employeeId`),
  FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`),
  FOREIGN KEY (`employeeId`) REFERENCES `employees` (`employeeId`)
);


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` tinytext,
  `supplierId` int(11),
  `categoryId` int(11),
  `quantityPerUnit` tinytext,
  `unitPrice` decimal(10,4),
  `unitsInStock` smallint(6),
  `unitsOnOrder` smallint(6),
  `recorderLevel` smallint(6),
  `discontinued` bit(64),
  PRIMARY KEY (`productId`)
);



DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `regionId` int(11) NOT NULL AUTO_INCREMENT,
  `regionDescription` tinytext,
  PRIMARY KEY (`regionId`)
);


DROP TABLE IF EXISTS `shippers`;
CREATE TABLE `shippers` (
  `shipperId` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` tinytext,
  `phone` tinytext,
  PRIMARY KEY (`shipperId`)
);




DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `supplierId` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` tinytext,
  `contactName` tinytext,
  `contactTitle` tinytext,
  `address` tinytext,
  `city` tinytext,
  `region` tinytext,
  `postalCode` tinytext,
  `country` tinytext,
  `phone` tinytext,
  `fax` tinytext,
  `homePage` mediumtext,
  PRIMARY KEY (`supplierId`)
) ;


DROP TABLE IF EXISTS `territories`;
CREATE TABLE `territories` (
  `territoryId` varchar(255) NOT NULL,
  `territoryDescription` tinytext,
  `regionId` int(11),
  PRIMARY KEY (`territoryId`),
  KEY `regionId` (`regionId`),
  FOREIGN KEY (`regionId`) REFERENCES `region` (`regionId`)
);