
-----------------------Bills-----------------------
--1 Insert

create procedure PR_Bills_Insert
	@BillNumber varchar(100),
	@BillDate datetime,
	@OrderID int,
	@TotalAmount decimal(10,2),
	@Discount decimal(10,2),
	@NetAmount decimal(10,2),
	@UserID int
as
begin
	insert into Bills 
	(
		BillNumber,
		BillDate,
		OrderID,
		TotalAmount,
		Discount,
		NetAmount,
		UserID
	)
	values
	(
		@BillNumber,
		@BillDate,
		@OrderID,
		@TotalAmount,
		@Discount,
		@NetAmount,
		@UserID
	)
end

exec PR_Bills_Insert '1196', '2024-07-15', 1, 10.2, 20, 15, 1



--2 update
create procedure PR_Bills_Update
	@BillID int,
	@BillNumber varchar(100),
	@BillDate datetime,
	@OrderID int,
	@TotalAmount decimal(10,2),
	@Discount decimal(10,2),
	@NetAmount decimal(10,2),
	@UserID int
as
begin
	update Bills set
		BillNumber = @BillNumber,
		BillDate = @BillDate,
		OrderID = @OrderID,
		TotalAmount = @TotalAmount,
		Discount = @Discount,
		NetAmount = @NetAmount,
		UserID = @UserID
	where BillID = @BillID
end

exec PR_Bills_Update 1, '1001', '2024-07-15', 1, 100.2, 200, 15, 1



--3 delete
create procedure PR_Bills_Delete
	@BillID int
as
begin
	delete from Bills
	where BillID = @BillID
end

exec PR_Bills_Delete 1



--4 select by primary key
create procedure PR_Bills_Select_By_Primary_Key
	@BillID int
as
begin
	select b.BillID, b.BillNumber, b.BillDate, b.OrderID, b.TotalAmount, b.Discount, b.NetAmount, b.UserID , u.UserName
	from Bills b
	inner join [User] u
	on b.UserID = u.UserID
	where b.BillID = @BillID
end

exec PR_Bills_Select_By_Primary_Key 1



--5 select all
create procedure PR_Select_All_Bills
as
begin
	select b.BillID, b.BillNumber, b.BillDate, b.OrderID, b.TotalAmount, b.Discount, b.NetAmount, b.UserID , u.UserName
	from Bills b
	inner join [User] u
	on b.UserID = u.UserID
end

exec PR_Select_All 



-----------------------Customer-----------------------
--1 Insert

create procedure PR_Customer_Insert
	@CustomerName varchar(100),
	@HomeAddress varchar(100),
	@Email varchar(100),
	@MobileNo varchar(15),
	@GSTNO varchar(15),
	@CityName varchar(100),
	@Pincode varchar(15),
	@NetAmount decimal(10,2),
	@UserID int
as
begin
	insert into Customer 
	(
		CustomerName,
		HomeAddress,
		Email,
		MobileNo,
		GSTNO,
		CityName,
		PinCode,
		NetAmount,
		UserID
	)
	values
	(
		@CustomerName,
		@HomeAddress,
		@Email,
		@MobileNo,
		@GSTNO,
		@CityName,
		@Pincode,
		@NetAmount,
		@UserID
	)
end

exec PR_Customer_Insert 'shruti', 'shital park', 'shrut@gmail.com', '1234567890', '1234567890', 'Rajkot', '360006', 10.2, 1



--2 update
create procedure PR_Customers_Update
	@CustomerID int,
	@CustomerName varchar(100),
	@HomeAddress varchar(100),
	@Email varchar(100),
	@MobileNo varchar(15),
	@GSTNO varchar(15),
	@CityName varchar(100),
	@Pincode varchar(15),
	@NetAmount decimal(10,2),
	@UserID int
as
begin
	update Customer set
		CustomerName = @CustomerName,
		HomeAddress = @HomeAddress,
		Email = @Email,
		MobileNo = @MobileNo,
		GSTNO = @GSTNO,
		CityName = @CityName,
		PinCode = @Pincode,
		NetAmount = @NetAmount,
		UserID = @UserID
	where CustomerID = @CustomerID
end



--3 delete
create procedure PR_Customer_Delete
	@CustomerID int
as
begin
	delete from Customer
	where CustomerID = @CustomerID
end



--4 select by primary key
create procedure PR_Customer_Select_By_Primary_Key
	@CustomerId int
as
begin
	select c.CustomerID, c.CustomerName, c.HomeAddress, c.Email, c.MobileNo, c.GSTNO, c.CityName, c.PinCode, c.NetAmount, u.UserID, u.UserName
	from Customer c
	inner join [User] u
	on c.UserID = u.UserID
	where CustomerID = @CustomerId
end



--5 select all
create procedure PR_Customer_Select_All
as
begin
	select c.CustomerID, c.CustomerName, c.HomeAddress, c.Email, c.MobileNo, c.GSTNO, c.CityName, c.PinCode, c.NetAmount, u.UserID, u.UserName
	from Customer c
	inner join [User] u
	on c.UserID = u.UserID
end

--6 Drop down
CREATE PROCEDURE PR_Customer_DropDown
AS
BEGIN
    SELECT
		Customer.CustomerID,
        Customer.CustomerName
    FROM
        Customer
END



-----------------------Order-----------------------
--1 Insert

create procedure PR_Order_Insert
	@OrderDate datetime,
	@CustomerID int,
	@PaymentMode varchar(100),
	@TotalAmount decimal(10,2),
	@ShippingAddress varchar(100),
	@UserID int
as
begin
	insert into [Order] 
	(
		OrderDate,
		CustomerID,
		PaymentMode,
		TotalAmount,
		ShippingAddress,
		UserID
	)
	values
	(
		@OrderDate,
		@CustomerID,
		@PaymentMode,
		@TotalAmount,
		@ShippingAddress,
		@UserID
	)
end

exec PR_Customer_Insert 'shruti', 'shital park', 'shrut@gmail.com', '1234567890', '1234567890', 'Rajkot', '360006', 10.2, 1



--2 update
create procedure PR_Order_Update
	@OrderID int,
	@OrderDate datetime,
	@CustomerID int,
	@PaymentMode varchar(100),
	@TotalAmount decimal(10,2),
	@ShippingAddress varchar(100),
	@UserID int
as
begin
	update [Order] set
		OrderDate = @OrderDate,
		CustomerID = @CustomerID,
		PaymentMode = @PaymentMode,
		TotalAmount = @TotalAmount,
		ShippingAddress = @ShippingAddress,
		UserID = @UserID
	where OrderID = @OrderID
end



--3 delete
create procedure PR_Order_Delete
	@OrderID int
as
begin
	delete from [Order]
	where OrderID = @OrderID
end



--4 select by primary key
create procedure PR_Order_Select_By_Primary_Key
	@OrderID int
as
begin
	select o.OrderID, o.OrderDate, o.CustomerID, c.CustomerName, o.PaymentMode, o.TotalAmount, o.ShippingAddress, o.UserID, u.UserName
	from [Order] o
	inner join Customer c
	on o.CustomerID = c.CustomerID
	inner join [User] u
	on o.UserID = u.UserID
	where o.OrderID = @OrderID
end



--5 select all
create procedure PR_Order_Select_All
as
begin
	select o.OrderID, o.OrderDate, o.CustomerID, c.CustomerName, o.PaymentMode, o.TotalAmount, o.ShippingAddress, o.UserID, u.UserName
	from [Order] o
	inner join Customer c
	on o.CustomerID = c.CustomerID
	inner join [User] u
	on o.UserID = u.UserID
end

--6 Drop down
CREATE PROCEDURE [dbo].[PR_Order_DropDown]
AS
BEGIN
    SELECT
		[dbo].[Order].[OrderID],
        [dbo].[Order].[OrderName]
    FROM
        [dbo].[Order]
END





-----------------------Order Detail-----------------------
--1 Insert

create procedure PR_Order_Detail_Insert
	@OrderID int,
	@ProductID int,
	@Quantity int,
	@Amount decimal(10,2),
	@TotalAmount decimal(10,2),
	@UserID int
as
begin
	insert into [OrderDetail] 
	(
		OrderID,
		ProductID,
		Quantity,
		Amount,
		TotalAmount,
		UserID
	)
	values
	(
		@OrderID,
		@ProductID,
		@Quantity,
		@Amount,
		@TotalAmount,
		@UserID
	)
end



--2 update
create procedure PR_Order_Detail_Update
	@OrderDetailID int,
	@OrderID int,
	@ProductID int,
	@Quantity int,
	@Amount decimal(10,2),
	@TotalAmount decimal(10,2),
	@UserID int
as
begin
	update [OrderDetail] set
		OrderID = @OrderID,
		ProductID = @ProductID,
		Quantity = @Quantity,
		Amount = @Amount,
		TotalAmount = @TotalAmount,
		UserID = @UserID
	where OrderDetailID = @OrderDetailID
end



--3 delete
create procedure PR_Order_Detail_Delete
	@OrderDetailID int
as
begin
	delete from [OrderDetail]
	where OrderDetailID = @OrderDetailID
end



--4 select by primary key
create procedure PR_Order_Detail_Select_By_Primary_Key
	@OrderDetailID int
as
begin
	select od.OrderDetailID, od.OrderID , o.CustomerID , c.CustomerName, od.ProductID, p.ProductName, od.Quantity, od.Amount, od.TotalAmount, od.UserID, u.UserName
	from OrderDetail od
	inner join [Order] o
	on od.OrderID = o.OrderID
	inner join Customer c
	on c.CustomerID = o.CustomerID
	inner join Product p
	on od.ProductID = p.ProductID
	inner join [User] u
	on od.UserID = u.UserID
	where OrderDetailID = @OrderDetailID
end



--5 select all
create procedure PR_Order_Detail_Select_All
as
begin
	select od.OrderDetailID, od.OrderID , o.CustomerID , c.CustomerName, od.ProductID, p.ProductName, od.Quantity, od.Amount, od.TotalAmount, od.UserID, u.UserName
	from OrderDetail od
	inner join [Order] o
	on od.OrderID = o.OrderID
	inner join Customer c
	on c.CustomerID = o.CustomerID
	inner join Product p
	on od.ProductID = p.ProductID
	inner join [User] u
	on od.UserID = u.UserID
end






-----------------------Product-----------------------
--1 Insert

create procedure PR_Product_Insert
	@ProductName varchar(100),
	@ProductPrice decimal(10,2),
	@ProductCode varchar(100),
	@Description varchar(100),
	@UserID int
as
begin
	insert into Product 
	(
		ProductName,
		ProductPrice,
		ProductCode,
		Description,
		UserID
	)
	values
	(
		@ProductName,
		@ProductPrice,
		@ProductCode,
		@Description,
		@UserID
	)
end



--2 update
create procedure PR_Product_Update
	@ProductID int,
	@ProductName varchar(100),
	@ProductPrice decimal(10,2),
	@ProductCode varchar(100),
	@Description varchar(100),
	@UserID int
as
begin
	update Product set
		ProductName = @ProductName,
		ProductPrice = @ProductPrice,
		ProductCode = @ProductCode,
		Description = @Description,
		UserID = @UserID
	where ProductID = @ProductID
end



--3 delete
create procedure PR_Product_Delete
	@ProductID int
as
begin
	delete from Product
	where ProductID = @ProductID
end



--4 select by primary key
create procedure PR_Product_Select_By_Primary_Key
	@ProductID int
as
begin
	select p.ProductID, p.ProductName, p.ProductPrice, p.ProductCode, p.Description, p.UserID, u.UserName
	from Product p
	inner join [User] u
	on p.UserID = u.UserID
	where ProductID = @ProductID
end



--5 select all
create procedure PR_Product_Select_All
as
begin
	select p.ProductID, p.ProductName, p.ProductPrice, p.ProductCode, p.Description, p.UserID, u.UserName
	from Product p
	inner join [User] u
	on p.UserID = u.UserID
end

--6 Drop down
CREATE PROCEDURE [dbo].[PR_Product_DropDown]
AS
BEGIN
    SELECT
		[dbo].[Product].[ProductID],
		[dbo].[Product].[ProductName]
    FROM
        [dbo].[Product]
END





-----------------------User-----------------------
--1 Insert

create procedure PR_User_Insert
	@UserName varchar(100),
	@Email varchar(100),
	@Password varchar(100),
	@MobileNo varchar(15),
	@Address varchar(100),
	@IsActive bit
as
begin
	insert into [User] 
	(
		UserName,
		Email,
		Password,
		MobileNo,
		Address,
		IsActive
	)
	values
	(
		@UserName,
		@Email,
		@Password,
		@MobileNo,
		@Address,
		@IsActive
	)
end



--2 update
create procedure PR_User_Update
	@UserId int,
	@UserName varchar(100),
	@Email varchar(100),
	@Password varchar(100),
	@MobileNo varchar(15),
	@Address varchar(100),
	@IsActive bit
as
begin
	update [User] set
		UserName = @UserName,
		Email = @Email,
		Password = @Password,
		MobileNo = @MobileNo,
		Address = @Address,
		IsActive = @IsActive
	where UserID = @UserId
end



--3 delete
create procedure PR_User_Delete
	@UserID int
as
begin
	delete from [User]
	where UserID = @UserID
end



--4 select by primary key
create procedure PR_User_Select_By_Primary_Key
	@UserID int
as
begin
	select * from [User]
	where UserID = @UserID
end



--5 select all
create procedure PR_User_Select_All
as
begin
	select * from [User]
end

--6 drop down
CREATE PROCEDURE [dbo].[PR_User_DropDown]
AS
BEGIN
    SELECT
		[dbo].[User].[UserID],
        [dbo].[User].[UserName]
    FROM
        [dbo].[User]
END

--6 login
CREATE PROCEDURE [dbo].[PR_User_Login]
    @UserName NVARCHAR(50),
    @Password NVARCHAR(50)
AS
BEGIN
    SELECT 
        [dbo].[User].[UserID], 
        [dbo].[User].[UserName], 
        [dbo].[User].[MobileNo], 
        [dbo].[User].[Email], 
        [dbo].[User].[Password],
        [dbo].[User].[Address]
    FROM 
        [dbo].[User] 
    WHERE 
        [dbo].[User].[UserName] = @UserName 
        AND [dbo].[User].[Password] = @Password;
END