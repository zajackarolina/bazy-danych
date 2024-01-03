use AdventureWorks2022;
-- transkacje
--zadanie 1

BEGIN TRANSACTION;

UPDATE Production.Product
SET ListPrice = ListPrice * 1.1 -- Zwiêkszenie ceny o 10%
WHERE ProductID = 680;

COMMIT TRANSACTION;

--zadanie 2

BEGIN TRANSACTION;
INSERT INTO Production.Product (Name, Color, StandardCost, ListPrice, ProductNumber, SafetyStockLevel, ReorderPoint, DaysToManufacture, SellStartDate)
VALUES ('Nowy produkt', 'Czerwony', 10.00, 20.00, 'NP001', 50, 5, 6,11-10-2022);

COMMIT TRANSACTION;

SELECT Name, ProductID
FROM Production.Product
WHERE Color = 'Czerwony';
--zadanie 3
BEGIN TRANSACTION;

DELETE FROM Production.Product
WHERE ProductID=1005;

COMMIT TRANSACTION;

--zadanie 4

BEGIN TRANSACTION;

DECLARE @TotalCost DECIMAL(18, 2);
SELECT @TotalCost = SUM( StandardCost * 1.1)
FROM Production.Product;

IF @TotalCost <=50000
BEGIN
UPDATE Production.Product
SET StandardCost=StandardCost *1.1;

COMMIT TRANSACTION;
END
ELSE
BEGIN
ROLLBACK TRANSACTION;
END

SELECT SUM(StandardCost)
FROM Production.Product;

--zadanie 5

BEGIN TRANSACTION;
 
 DECLARE @TOTALPRODUCT INT;

 SELECT @TOTALPRODUCT=COUNT(*)
 FROM Production.Product
 WHERE Name='Nowy produkt';
 IF @TOTALPRODUCT > 0
 BEGIN
 ROLLBACK TRANSACTION;
 END
 ELSE 
 BEGIN
 INSERT INTO Production.Product (Name, Color, StandardCost, ListPrice, ProductNumber, SafetyStockLevel, ReorderPoint, DaysToManufacture, SellStartDate)
VALUES ('Nowy produkt', 'Czerwony', 10.00, 20.00, 'NP001', 50, 5, 6,11-10-2022);
COMMIT TRANSACTION;
END


SELECT Name, ProductID
FROM Production.Product
WHERE Color = 'Czerwony';
*/
--ZADANIE 6
/*
BEGIN TRANSACTION;
UPDATE Sales.SalesOrderDetail
SET OrderQty = 10
WHERE OrderQty <> 0;
DECLARE @ROWS INT;
IF @ROWS = (SELECT COUNT(*) FROM Sales.SalesOrderDetail WHERE OrderQty = 0 )
BEGIN
ROLLBACK TRANSACTION;
END
ELSE
BEGIN
COMMIT TRANSACTION;
END

SELECT OrderQty
FROM Sales.SalesOrderDetail;
*/
--Zadanie 7
BEGIN TRANSACTION;

DECLARE @AVERAGE FLOAT;
DECLARE @AVERAGEPRODUCT FLOAT;

SELECT @AVERAGE = AVG(StandardCost)
FROM Production.Product;
 
 UPDATE Production.Product
 SET @AVERAGE = StandardCost
 WHERE  StandardCost > @AVERAGE;

 SELECT @AVERAGEPRODUCT = @@ROWCOUNT;

 IF @AVERAGEPRODUCT > 200
 BEGIN 
 ROLLBACK TRANSACTION;
 END
 ELSE
 BEGIN
 COMMIT TRANSACTION;
 END
















