--1
select FirstName, Address, City, Region from Employees

--2
select FirstName, Address, City, Region from Employees
where Country = 'USA'

--3
select FirstName, Address, City, Region from Employees
where YEAR(getDate())- YEAR(BirthDate) > 50

--4
select FirstName, Address, City, Region from Employees inner join Orders
on Employees.EmployeeID = Orders.EmployeeID
where ShipCountry = 'Belgium'

select FirstName, Address, City, Region from Employees 
where EmployeeID IN (
    select EmployeeID from Orders 
    where ShipCountry = 'Belgium'
);
--check this again

--5
select Employees.FirstName from Employees
full outer join Orders
on Employees.EmployeeID = Orders.EmployeeID
full outer join Shippers
on Orders.ShipVia = Shippers.ShipperID 
where Shippers.ShipperID = 1 and Orders.ShipCountry = 'Brussels'

select * from Employees
select * from Orders
select * from Customers
select * from Shippers