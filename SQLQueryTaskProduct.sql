CREATE DATABASE Market
USE Market
Create TABLE Product
(
   Id int Primary key identity,
   Name nvarchar(25),
   Price money,
)
Alter Table Product
Add Brand nvarchar(20)
Insert into Product(Name,Price,Brand)
Values('Egg',0.5,'Kendimiz'),
('Butter',3,'GoldenCow'),
('Bread',0.7,'Baker'),
('Candy',3,'Nestle'),
('Water',0.5,'Sirab'),
('Gum',0.8,'Dirol'),
('Olive Oil',7.8,'Best'),
('TEA',4.5,'Beta'),
('Coffee',5,'Jacobs'),
('Cola',1,'Coca-Cola'),
('Yogurt',5,'Activia'),
('Toothpaste',5,'Colgate'),
('Chocolate',5,'Nutella'),
('Cokie',5,'Yubileyni')
('Meat',12,'MyFarm')
Select *FROM Product where Price < (SELECT AVG(Price) From Product)
SELECT * FROM Product where Price > 10
Select CONCAT(Name, ' ', Brand) 'ProductInfo' from Product where LEN(Brand) > 5