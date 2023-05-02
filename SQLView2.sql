CREATE VIEW View2 AS
SELECT t.Transaction_ID, t.Transaction_Type, t.Amount, t.Date, a.Account_Num, c.First_Name, c.Last_Name
FROM   Transactions t INNER JOIN
             Account a ON t.Account_Num = a.Account_Num INNER JOIN
             Customer c ON a.CustomerID = c.Customer_ID