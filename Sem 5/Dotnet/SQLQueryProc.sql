alter proc SelectAllEmployees
as begin
	select EmployeeID, EmployeeName, EmployeeSalary, EmployeeJoiningDate, EmployeeDOB, EmployeeAddress, EmployeeEmail, Department.DepartmentName, Designation.DesignationName
	from Employee 
	inner join Department
	on Employee.DepartmentID = Department.DepartmentID
	inner join Designation
	on Employee.DesignationID = Designation.DesignationID
end
-------------------------------------------------------

alter proc SelectByEmployeeId 1
@id int
as 
begin
	select EmployeeID, EmployeeName, EmployeeSalary, EmployeeJoiningDate, EmployeeDOB, EmployeeAddress, EmployeeEmail, Department.DepartmentName, Designation.DesignationName
	from Employee 
	inner join Department
	on Employee.DepartmentID = Department.DepartmentID
	inner join Designation
	on Employee.DesignationID = Designation.DesignationID
	where EmployeeID = @id
end
-------------------------------------------------------

create proc InsertEmployee 'madhav', 100000, '2024-08-02', '2004-02-08', 2, 4, 'Homee', 'm@g.c'
@EmployeeName varchar(50), 
@EmployeeSalary int, 
@EmployeeJoiningDate date,
@EmployeeDOB date, 
@DepartmentID int, 
@DesignationId int,
@EmployeeAddress varchar(100), 
@EmployeeEmail varchar(50)
as
begin
	insert into Employee
	values (@EmployeeName, @EmployeeSalary, @EmployeeJoiningDate, @EmployeeDOB, @DepartmentID, @DesignationId, @EmployeeAddress, @EmployeeEmail)
end

-------------------------------------------------------
create proc UpdateEmployee
@EmployeeID int,
@EmployeeName varchar(50), 
@EmployeeSalary int, 
@EmployeeJoiningDate date,
@EmployeeDOB date, 
@DepartmentID int, 
@DesignationId int,
@EmployeeAddress varchar(100), 
@EmployeeEmail varchar(50)
as
begin
	update Employee 
	set
		Employee.EmployeeName = @EmployeeName
		@EmployeeSalary int, 
		@EmployeeJoiningDate date,
		@EmployeeDOB date, 
		@DepartmentID int, 
		@DesignationId int,
		@EmployeeAddress varchar(100), 
		@EmployeeEmail varchar(50)
	where Employee.EmployeeID = @EmployeeID
end
-------------------------------------------------------
