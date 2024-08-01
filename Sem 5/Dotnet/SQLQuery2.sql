--1 
select CategoryName from Categories

--2
select ContactName, CustomerId, CompanyName from Customers
where city = 'London'

--3
select * from Suppliers
where Fax is not null

--4
select * from Orders
select CustomerId from Orders
where (RequiredDate between '1997-01-01'  and '1998-01-01') and Freight < 100

--5
select CompanyName, ContactName from Customers
where Country in ('Mexico','Sweden','Germany')

--6
select count(ProductID) from Products
where Discontinued = 0

--7
select CategoryName, Description from Categories
where CategoryName like 'Co%' or Description like 'Co%'

--8
select CompanyName, City, Country, PostalCode from Suppliers
where Address like '%rue%'
order by CompanyName

--9
select ProductID, count(Quantity) from [Order Details]
group by ProductID

--10
select Customers.ContactName, Customers.Address
from Customers inner join Orders
on Customers.CustomerID = Orders.CustomerID
where Orders.ShipVia = 1

--11
select CompanyName, ContactName, ContactTitle, Region from Customers

--12
select ProductName from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.CategoryID = 2

--13
select * from Customers full outer join Orders
on Customers.CustomerID = Orders.CustomerID 
where OrderID is NULL

--14
insert into Shippers
values ('Amazon','(503)555-9832')

--15
update Shippers set CompanyName = 'Amazon Prime Shipping'
where CompanyName = 'Amazon'

--16
select CompanyName, sum(ROUND(Orders.Freight,0)) from Shippers inner join Orders
on Shippers.ShipperID = Orders.ShipVia
group by CompanyName

--17
select FirstName as FirstName, LastName as LastName, CONCAT(FirstName,' ', LastName) as DisplayName from Employees

--18
insert into Customers
values ('madha','madhav','madhav',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
insert into Orders
values('madha',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

--19
delete from Customers 
where CustomerID = 'madha'
delete from Orders
where CustomerID = 'madha'

--20
select * from Products
select *, UnitsInStock as TotalUnits from Products
where UnitsInStock > 100