create table HouseOwner 
(OwnerID int primary key,
OwnerName varchar (30) not null,
Email varchar (max),
PhoneNumber varchar(20))
go
create table Property 
(PropertyID int primary key,
PropertyName varchar (30) not null,
Address varchar(max) not null, 
City varchar(50) not null,
State varchar(50) not null,
ZipCode int,
OwnerID int foreign key REFERENCES HouseOwner(OwnerID))
go
create table Expenses 
(ExpenseID int primary key,
PropertyID int foreign key REFERENCES Property(PropertyID),
ExpenseCategory varchar(max) not null, 
ExpenseAmount decimal (10,2) not null,
OwnerID int foreign key REFERENCES HouseOwner(OwnerID),
ExpenseDate datetime,
PaymentMethod varchar(15) not null)
go
create table Income  
(IncomeID int primary key,
PropertyID int foreign key REFERENCES Property(PropertyID),
OwnerID int foreign key REFERENCES HouseOwner(OwnerID),
IncomeSource varchar(50) not null,
IncomeAmount decimal (10,2) not null,
IncomeDate decimal (10,2) not null)
go
create table Bills  
(BillsID int primary key,
PropertyID int foreign key REFERENCES Property(PropertyID),
OwnerID int foreign key REFERENCES HouseOwner(OwnerID),
IncomeID int foreign key REFERENCES Income(IncomeID),
BillName  varchar(50) not null,
BillType  varchar(10) not null,
BillAmount decimal (10,2) not null,
DueDate datetime not null,
PaymentStatus varchar(10) not null,
PaymentMethod varchar(10) not null,
ProviderName varchar(10) not null,
BillingCycle varchar(50) null,
PaymentMethod varchar(max) null)
go
create table Maintenance   
(ID int primary key,
PropertyID int foreign key REFERENCES Property(PropertyID),
PersonWhoPaid  varchar(50) not null,
MaintenanceDescription  varchar(50) not null,
BillType  varchar(10) not null,
MaintenanceStartDate datetime not null,
MaintenanceEndDate datetime not null,
Cost decimal (10,2) not null,
ExpenseCategory varchar(max) not null, 
EstimateFinishDate datetime)
go
create table Tenant
(TenantID int primary key,
PropertyID int foreign key REFERENCES Property(PropertyID),
TenantName varchar (30) not null,
PhoneNumber varchar (20) not null,
OtherContactInformation varchar(50),
LeaseStartDate datetime not null, 
LeaseEndDate datetime not null, 
RentAmount decimal (10,2),
PaymentStatus varchar(10) not null,
PaymentMethod varchar(10) not null,
PaymentCycle int)
