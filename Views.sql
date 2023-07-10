--Views

--This view combines the Property and Expenses tables to display the expenses associated with each property. 
--It includes the property ID, property name, expense category, expense amount, and expense date.
CREATE VIEW PropertyExpenses AS
SELECT P.PropertyID, P.PropertyName, E.ExpenseCategory, E.ExpenseAmount, E.ExpenseDate
FROM Property P
INNER JOIN Expenses E ON P.PropertyID = E.PropertyID;

SELECT * FROM PropertyExpenses;

--This view combines the Property and Tenant tables to display the tenants associated with 
--each property. It includes the property ID, property name, tenant name, lease start date, 
--lease end date, rent amount, and payment status.

CREATE VIEW PropertyTenants AS
SELECT P.PropertyID, P.PropertyName, T.TenantName, T.LeaseStartDate, T.LeaseEndDate, T.RentAmount, T.PaymentStatus
FROM Property P
INNER JOIN Tenant T ON P.PropertyID = T.PropertyID;

SELECT * FROM PropertyTenants;

--This view generates a financial report for each property, including the property ID, 
--property name, total income, total expenses, and net income 
--(calculated as the difference between total income and total expenses).

CREATE VIEW PropertyFinancialReport AS
SELECT P.PropertyID, P.PropertyName, 
       SUM(I.IncomeAmount) AS TotalIncome,
       SUM(E.ExpenseAmount) AS TotalExpenses,
       SUM(I.IncomeAmount) - SUM(E.ExpenseAmount) AS NetIncome
FROM Property P
INNER JOIN HouseOwner H ON P.OwnerID = H.OwnerID
LEFT JOIN Income I ON H.OwnerID = I.OwnerID
LEFT JOIN Expenses E ON P.PropertyID = E.PropertyID
GROUP BY P.PropertyID, P.PropertyName;

Select * from PropertyFinancialReport;

--This view generates a report showing the number of tenants and total rent amount for each property. 
--It includes the property ID, property name, total number of tenants, and total rent collected.

CREATE VIEW PropertyBillReport AS
SELECT P.PropertyID, P.PropertyName,
       B.BillType,
       COUNT(*) AS TotalBills,
       SUM(B.BillAmount) AS TotalBillAmount
FROM Property P
INNER JOIN Bills B ON P.PropertyID = B.PropertyID
GROUP BY P.PropertyID, P.PropertyName, B.BillType;

Select * from PropertyBillReport;

--This view generates a report summarizing the number and total cost of maintenance activities for each property. 
--It includes the property ID, property name, total number of maintenance activities, and total maintenance cost.

CREATE VIEW PropertyMaintenanceReport AS
SELECT P.PropertyID, P.PropertyName,
       COUNT(*) AS TotalMaintenance,
       SUM(M.Cost) AS TotalMaintenanceCost
FROM Property P
INNER JOIN Maintenance M ON P.PropertyID = M.PropertyID
GROUP BY P.PropertyID, P.PropertyName;

Select * from PropertyMaintenanceReport;