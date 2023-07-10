--Manipulating Data

UPDATE Bills 
SET IncomeID = 1, OwnerID = 1
WHERE PropertyID = 1

UPDATE Bills 
SET OwnerID = 2
WHERE PropertyID = 7

ALTER TABLE Income
DROP COLUMN IncomeDate;

ALTER TABLE Tenant
ADD PaymentCycle varchar(50);

ALTER TABLE Income
ADD Name varchar(50);

SELECT CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'Income'
    AND CONSTRAINT_TYPE = 'FOREIGN KEY';

ALTER TABLE Income
DROP CONSTRAINT FK__Income__Property__5535A963;

ALTER TABLE Income
ADD CONSTRAINT FK_Income_HouseOwner
FOREIGN KEY (OwnerID) REFERENCES HouseOwner(OwnerID);

ALTER TABLE Income
DROP COLUMN PropertyID

