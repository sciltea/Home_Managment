--CTEs

--CTE: PropertyExpensesCTE

/*This CTE combines the Property and Expenses tables to create a temporary result set named PropertyExpensesCTE. 
It selects the PropertyID, PropertyName, ExpenseCategory, ExpenseAmount, and ExpenseDate columns from the joined tables. 
The final SELECT statement retrieves the result set from the CTE.
*/

WITH PropertyExpensesCTE AS (
    SELECT P.PropertyID, P.PropertyName, E.ExpenseCategory, E.ExpenseAmount, E.ExpenseDate
    FROM Property P
    INNER JOIN Expenses E ON P.PropertyID = E.PropertyID
)
SELECT *
FROM PropertyExpensesCTE;

--CTE: PropertyTenantsCTE
/*
This CTE combines the Property and Tenant tables to create a temporary result set named PropertyTenantsCTE.
It selects the PropertyID, PropertyName, TenantName, LeaseStartDate, LeaseEndDate, RentAmount, and PaymentStatus 
columns from the joined tables. 
The final SELECT statement retrieves the result set from the CTE
*/

WITH PropertyTenantsCTE AS (
    SELECT P.PropertyID, P.PropertyName, T.TenantName, T.LeaseStartDate, T.LeaseEndDate, T.RentAmount, T.PaymentStatus
    FROM Property P
    INNER JOIN Tenant T ON P.PropertyID = T.PropertyID
)
SELECT *
FROM PropertyTenantsCTE;

--CTE: PropertyMaintenanceCTE

/*This CTE combines the Property and Maintenance tables to create a temporary result set named PropertyMaintenanceCTE. 
It selects the PropertyID, PropertyName, PersonWhoPaid, MaintenanceDescription, MaintenanceStartDate, MaintenanceEndDate, 
and Cost columns from the joined tables. 
The final SELECT statement retrieves the result set from the CTE.*/

WITH PropertyMaintenanceCTE AS (
    SELECT P.PropertyID, P.PropertyName, M.PersonWhoPaid, M.MaintenanceDescription, M.MaintenanceStartDate, M.MaintenanceEndDate, M.Cost
    FROM Property P
    INNER JOIN Maintenance M ON P.PropertyID = M.PropertyID
)
SELECT *
FROM PropertyMaintenanceCTE;
