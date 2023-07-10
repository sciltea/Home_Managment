--inserting data

Insert Into HouseOwner (OwnerID, OwnerName, Email, PhoneNumber)
VALUES 
	(1, 'John Doe', 'johnd@example.com', '0775235412'),
    (2, 'Jane Smith', 'janesm@example.com', '0723541698');
GO
INSERT INTO Property (PropertyID, PropertyName, Address, City, State, ZipCode,OwnerID)
VALUES (1, 'Apartament 32','strada Florilor, nr. 10, ap 32, sc. I6','Brasov','Romania','505452', 1), --Owner John
(2, 'Apartament 1','strada Muresenilor, nr. 33, ap 1, sc. A','Brasov','Romania','504212', 1), --Tenant Dave and Sarah
(3, 'Apartament 5','strada Ion Constantin, nr. 4, ap 5, sc. B32','Brasov','Romania','500236', 1), --Tenant Michael
(4, 'Apartament 7','strada Dealul Morii, nr. 47, ap 7, sc. I4','Brasov','Romania','501423', 1), --Tenant Emily
(5, 'Apartament 15','strada Ion Heliade Radulescu, nr. 5, ap 15, sc.8','Brasov','Romania','505404', 1), --Tenant Jane Smith
(6, 'Apartament 21','strada Palariilor, nr. 29, ap 32, sc. 9C','Fagaras','Romania','505200', 1), --Jessica and Olivia
(7, 'Casa 29','strada Bulevardul Mare, nr. 17','Fagaras','Romania','505200', 2); --Owner Sahar
GO
INSERT INTO Tenant (TenantID, PropertyID, TenantName, PhoneNumber, OtherContactInformation, LeaseStartDate, LeaseEndDate, 
RentAmount, PaymentStatus, PaymentMethod, TemporaryOwner, PaymentCycle)
VALUES (1, 2, 'Dave Rossi', '0745854253','d.rossi@example.com','2021-10-15','2024-10-15',150,'Paid','Cash', 1,'Monthly'),
(2, 2, 'Sarah Johnson', '0723569587', 'sarah.johnson@email.com', '2021-10-15','2024-10-15', 150, 'Paid', 'Cash',1,'Monthly'),
(3, 3, 'Michael Davis', '0754856541', 'michael.davis@email.com', '2021-12-01', '2022-12-01', 800, 'Paid', 'Cash',1,'Monthly'),
(4,4, 'Emily Wilson', '0721542365', 'emily.wilson@email.com', '2022-03-10', '2023-03-10', 1500, 'Paid', 'Card',1,'Monthly'),
(5,5, 'Jane Smith',  '0723541698',  'janesm@example.com', '2020-03-10', '2023-03-10', 210, 'Paid', 'Card',1,'Monthly'),
(6,6, 'Jessica Lee','0724563985', 'jessica.lee@email.com', '2022-04-01', '2023-04-01', 900, 'Paid', 'Cash',1,'Monthly'),
(7,6, 'Olivia Taylor',  '0732569875', 'olivia.taylor@email.com', '2022-04-01', '2023-04-01', 900, 'Paid', 'Cash',1,'Monthly');
GO
INSERT INTO Expenses (ExpenseID, PropertyID, ExpenseCategory, ExpenseAmount, ExpenseDate,PaymentMethod)
VALUES
(1, 1, 'Utilities', 100.00, '2023-01-05', 'Credit Card'),
(2, 1, 'Maintenance', 50.00, '2023-02-10', 'Cash'),
(3, 2, 'Insurance', 200.00, '2023-03-15', 'Bank Transfer'),
(4, 2, 'Taxes', 150.00, '2023-04-20', 'Cash'),
(5, 3, 'Utilities', 120.00, '2023-05-25', 'Credit Card'),
(6, 3, 'Maintenance', 75.00, '2023-06-30', 'Cash'),
(7, 4, 'Insurance', 180.00, '2023-07-05', 'Bank Transfer'),
(8, 4, 'Taxes', 100.00, '2023-08-10', 'Cash'),
(9, 5, 'Utilities', 110.00, '2023-09-15', 'Credit Card'),
(10, 5, 'Maintenance', 60.00, '2023-10-20', 'Cash'),
(11, 6, 'Insurance', 220.00, '2023-11-25', 'Bank Transfer'),
(12, 6, 'Taxes', 130.00, '2023-12-30', 'Cash'),
(13, 7, 'Utilities', 90.00, '2024-01-05', 'Credit Card'),
(14, 7, 'Maintenance', 70.00, '2024-02-10', 'Cash'),
(15, 1, 'Insurance', 250.00, '2024-03-15', 'Bank Transfer'),
(16, 2, 'Taxes', 180.00, '2024-04-20', 'Cash'),
(17, 3, 'Utilities', 95.00, '2024-05-25', 'Credit Card'),
(18, 4, 'Maintenance', 80.00, '2024-06-30', 'Cash'),
(19, 5, 'Insurance', 210.00, '2024-07-05', 'Bank Transfer'),
(20, 7, 'Taxes', 140.00, '2024-08-10', 'Cash');
GO
INSERT INTO Bills (BillsID, PropertyID, BillName, BillType, BillAmount, DueDate, PaymentStatus, PaymentMethod, ProviderName,
BillingCycle, ExpenseCategory)
VALUES
    (1, 1, 'Electricity Bill', 'Utility', 100.00, '2023-01-15', 'Paid', 'Card', 'Power Company A', 'Monthly', 'Utilities'),
    (2, 1, 'Internet Bill', 'Service', 50.00, '2023-02-10', 'Paid', 'Bank Transfer', 'Internet Provider A', 'Monthly', 'Internet'),
    (3, 1, 'Water Bill', 'Utility', 75.00, '2023-03-20', 'Paid', 'Cash', 'Water Company A', 'Monthly', 'Utilities'),
    (4, 1, 'Insurance Premium', 'Insurance', 200.00, '2023-04-05', 'Paid', 'Cash', 'Insurance Provider A', 'Annual', 'Insurance'),
    (5, 1, 'Phone Bill', 'Service', 30.00, '2023-05-10', 'Paid', 'Credit Card', 'Phone Provider A', 'Monthly', 'Phone'),
    (6, 2, 'Maintenance Fee', 'Service', 80.00, '2023-06-15', 'Pending', 'Cash', 'Property Management A', 'Monthly', 'Maintenance'),
    (7, 2, 'Cable TV Subscription', 'Service', 60.00, '2023-06-20', 'Paid', 'Bank Transfer', 'Cable Provider A', 'Monthly', 'Cable TV'),
    (8, 7, 'Garbage Collection Fee', 'Utility', 20.00, '2023-06-05', 'Pending', 'Card', 'Waste Management A', 'Monthly', 'Utilities'),
    (9, 1, 'Property Tax', 'Tax', 300.00, '2023-09-10', 'Paid', 'Card', 'Local Tax Authority', 'Annual', 'Taxes'),
    (10, 2, 'Electricity Bill', 'Utility', 50.00, '2023-06-15', 'Pending', 'Card', 'Power Company B', 'Monthly', 'Utilities'),
	(11, 7, 'Home Security System', 'Service', 100.00, '2023-06-02', 'Paid', 'Bank Transfer', 'Security Provider A', 'Monthly', 'Security'),
    (12, 2, 'Electricity Bill', 'Utility', 80.00, '2023-12-05', 'Pending', 'Cash', 'Power Company B', 'Monthly', 'Utilities'),
    (13, 3, 'Internet Bill', 'Service', 150.00, '2024-01-10', 'Paid', 'Card', 'HOA Association A', 'Monthly', 'Internet'),
    (14, 4, 'Trash Collection Fee', 'Utility', 30.00, '2024-02-15', 'Pending', 'Bank Transfer', 'Waste Management A', 'Monthly', 'Utilities'),
    (15, 5, 'Water Bill', 'Utility', 250.00, '2024-03-20', 'Paid', 'Card', 'Water Company B', 'Monthly', 'Utilities'),
    (16, 6, 'Water Bill', 'Utility', 70.00, '2024-04-05', 'Pending', 'Card', 'Water Company A', 'Monthly', 'Utilities'),
    (17, 4, 'Gas', 'Utility', 60.00, '2024-05-10', 'Paid', 'Cash', 'Gas Company A', 'Monthly', 'Internet'),
    (18, 3, 'Gas', 'Utility', 1000.00, '2024-06-15', 'Pending', 'Bank Transfer', 'Bank A', 'Monthly', 'Utilities'),
    (19, 3, 'Electricity Bill', 'Utility', 150.00, '2024-07-20', 'Paid', 'Card', 'Company C', 'Monthly', 'Utilities'),
    (20, 5, 'Electricity Bill', 'Utility', 250.00, '2024-08-05', 'Pending', 'Card', 'Waste Management B', 'Monthly', 'Utilities');
GO
	INSERT INTO Maintenance (Id, PropertyID, PersonWhoPaid, MaintenanceDescription, BillType, MaintenanceStartDate, MaintenanceEndDate, Cost, ExpenseCategory, EstimateFinishDate)
VALUES
    (1, 7, 'Jane Smith', 'HVAC System Repair', 'Repair', '2023-01-05', '2023-01-10', 200.00, 'Maintenance', '2023-01-10'),
    (2, 3, 'Michael Davis', 'Plumbing Inspection', 'Service', '2023-02-10', '2023-02-12', 100.00, 'Maintenance', '2023-02-12'),
    (3, 7, 'Jane Smith', 'Roof Leak Repair', 'Repair', '2023-03-15', '2023-03-17', 150.00, 'Maintenance', '2023-03-17'),
    (4, 7, 'Jane Smith', 'Garden Landscaping', 'Service', '2023-04-20', '2023-04-25', 300.00, 'Landscaping', '2023-04-25'),
    (5, 2, 'Dave Rossi', 'Painting the Living Room', 'Service', '2023-05-25', '2023-05-28', 250.00, 'Maintenance', '2023-05-28'),
    (6, 4, 'Emily Wilson', 'Carpet Cleaning', 'Service', '2023-06-30', '2023-07-02', 80.00, 'Maintenance', '2023-07-02'),
    (7, 6, 'Jessica Lee', 'Window Replacement', 'Repair', '2023-07-05', '2023-07-10', 500.00, 'Maintenance', '2023-07-10'),
    (8, 5, 'Jane Smith', 'Electrical Wiring Check', 'Service', '2023-08-10', '2023-08-12', 50.00, 'Maintenance', '2023-08-12'),
    (9, 2, 'Olivia Taylor', 'Electrical Wiring Check', 'Service', '2023-09-15', '2023-09-17', 120.00, 'Maintenance', '2023-09-17'),
    (10, 1, 'John Doe', 'Flooring Replacement', 'Repair', '2023-10-20', '2023-10-23', 150.00, 'Maintenance', '2023-10-23'),
    (11, 4, 'Emily Wilson', 'Security System Upgrade', 'Service', '2023-08-10', '2023-08-12', 250.00, 'Maintenance', '2024-08-12'),
	(12, 2, 'Sarah Johnson', 'Electrical repairs', 'Repair', '2023-06-12', '2023-06-15', 150.00, 'Maintenance', '2023-06-18');
GO
INSERT INTO Income (IncomeID, TenantID, OwnerID, Name, IncomeSource, IncomeAmount)
VALUES (1, null, 1, 'John Doe', 'Salary', 10000),
	   (2, 5, 2, 'Jane Smith','Salary', 15000),
	   (3, 1,null, 'Dave Rossi', 'Salary', 8500),
	   (4, 2, null, 'Sarah Johnson', 'Salary', 6752),
	   (5, 3, null, 'Michael Davis', 'Salary', 9524),
	   (6, 4,null, 'Emily Wilson','Salary', 14202),
	   (7, 6, null, 'Jessica Lee','Salary',  4521),
	   (8, 7, null, 'Olivia Taylor','Salary', 7542);




