USE hw;

CREATE TABLE hw1
(
	Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price DECIMAL
);

INSERT hw1 (ProductName, Manufacturer, ProductCount, Price)
VALUE
("iPhone X", "Apple", 3, 76000),
("iPhone 8", "Apple", 2, 51000),
("iPhone 7", "Apple", 5, 32000),
("iPhone 14Pro", "Apple", 7, 99000),
("Galaxy S9", "Samsung", 2, 56000),
("Galaxy S8", "Samsung", 1, 41000),
("Galaxy S23", "Samsung", 7, 120000),
("P20 Pro", "Hyawei", 5, 36000);

SELECT ProductName, Manufacturer, Price 
FROM hw1
WHERE ProductCount > 2;

SELECT *
FROM hw1
WHERE Manufacturer = 'Samsung';



SELECT * 
FROM hw1
WHERE NOT Manufacturer IN ("Apple", "Samsung");

DELETE FROM hw1
WHERE Manufacturer = "Hyawei";

SELECT * FROM hw1;

SELECT * 
FROM hw1
WHERE Manufacturer IN ("Apple") AND Price > 50000;

SELECT * 
FROM hw1
WHERE Manufacturer IN ("Samsung") OR NOT (Price > 30000 AND ProductCount > 2);