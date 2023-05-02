CREATE VIEW View1 AS
SELECT c.First_Name, c.Last_Name, a.Account_Num, a.Account_Type, a.Balance, a.Status
FROM   Customer c INNER JOIN
             Account a ON c.Customer_ID = a.CustomerID