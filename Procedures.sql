--Procedures

--Procedure: CalculateTotalIncome
--This procedure calculates the total income for a specific tenant by summing up the income amounts from the Income table. 

CREATE PROCEDURE CalculateTotalIncome
    @TenantID int,
    @TotalIncome decimal(10,2) OUTPUT
AS
BEGIN
    SELECT @TotalIncome = SUM(IncomeAmount)
    FROM Income
    WHERE TenantID = @TenantID;
END;

DECLARE @TotalIncome decimal(10,2);
EXEC CalculateTotalIncome @TenantID = 1, @TotalIncome = @TotalIncome OUTPUT;
SELECT @TotalIncome AS TotalIncome;

--Procedure: UpdatePaymentStatus
--This procedure updates the payment status for bills and tenants associated with a specific property.

CREATE PROCEDURE UpdatePaymentStatus
    @PropertyID int,
    @PaymentStatus varchar(10)
AS
BEGIN
    UPDATE Bills
    SET PaymentStatus = @PaymentStatus
    WHERE PropertyID = @PropertyID;

    UPDATE Tenant
    SET PaymentStatus = @PaymentStatus
    WHERE PropertyID = @PropertyID;
END;

EXEC UpdatePaymentStatus @PropertyID = 4, @PaymentStatus = 'UnPaid';

--Procedure: GetPropertyExpenses
--This procedure retrieves the total expenses for a specific property and expense category. 

CREATE PROCEDURE GetPropertyExpenses
    @PropertyID int,
    @ExpenseCategory varchar(max),
    @TotalExpenses decimal(10,2) OUTPUT
AS
BEGIN
    SELECT @TotalExpenses = SUM(ExpenseAmount)
    FROM Expenses
    WHERE PropertyID = @PropertyID
    AND ExpenseCategory = @ExpenseCategory;
END;

DECLARE @TotalExpenses decimal(10,2);
EXEC GetPropertyExpenses @PropertyID = 5, @ExpenseCategory = 'Maintenance', @TotalExpenses = @TotalExpenses OUTPUT;
SELECT @TotalExpenses AS TotalExpenses;