USE BankManagementSystem1;
CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    Bdate DATE,
    Address VARCHAR(255),
    Jobtype VARCHAR(255),
    Salary FLOAT,
    Name VARCHAR(255),
    PhoneNum INT
);

CREATE TABLE Dependent (
    Dependent_ID INT PRIMARY KEY,
    D_Name VARCHAR(255),
    Relationship VARCHAR(255),
    EmployeeID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Accountant (
    Employee_ID INT PRIMARY KEY,
    Proficiency VARCHAR(255),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Technician (
    EmployeeID INT PRIMARY KEY,
    Technical_Expertise VARCHAR(255),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Data_Analyst (
    Employee_ID INT PRIMARY KEY,
    Proficiency_in_tools VARCHAR(255),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Bank_Teller (
    Employee_ID INT PRIMARY KEY,
    Organizational_skills VARCHAR(255),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    PhoneNum INT,
    Email VARCHAR(255),
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Address VARCHAR(255),
    Date_Of_Birth DATE
);
CREATE TABLE Bank (
    Bank_Code INT PRIMARY KEY,
    Bank_Name VARCHAR(255),
    Address VARCHAR(255)
);

CREATE TABLE Account (
    Account_Num INT PRIMARY KEY,
    Account_Type VARCHAR(255),
    Balance FLOAT,
    Status VARCHAR(255),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY,
    Transaction_Type VARCHAR(255),
    Amount FLOAT,
    Date DATE,
    Account_Num INT,
    FOREIGN KEY (Account_Num) REFERENCES Account(Account_Num)
);

CREATE TABLE Branch (
    Branch_ID INT PRIMARY KEY,
    Branch_Name VARCHAR(255),
    Address VARCHAR(255),
    PhoneNum INT
);

CREATE TABLE Loan (
    Loan_ID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(Customer_ID)
);

CREATE TABLE Transaction_Branch (
    Transaction_ID INT,
    Branch_ID INT,
    FOREIGN KEY (Transaction_ID) REFERENCES Transactions(Transaction_ID),
    FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);

CREATE TABLE Head_Bank_Employee (
    Employee_ID INT,
    Bank_Code INT,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
    FOREIGN KEY (Bank_Code) REFERENCES Bank(Bank_Code)
);

CREATE TABLE Branch_Employee (
    Branch_ID INT,
    Employee_ID INT,
    FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

CREATE TABLE Branch_Manager (
    EmployeeID INT,
    Branch_ID INT,
    Leadership_skills VARCHAR(255),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(Employee_ID),
    FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);

CREATE INDEX idx_CustomerID ON Account (CustomerID);
CREATE INDEX idx_AccountNum ON Transactions (Account_Num);
CREATE INDEX idx_TransactionID ON Transaction_Branch (Transaction_ID);
CREATE INDEX idx_BranchID ON Transaction_Branch (Branch_ID);
CREATE INDEX idx_EmployeeID ON Branch_Employee (Employee_ID);
CREATE INDEX idx_BranchID2 ON Branch_Employee(Branch_ID);
INSERT INTO Employee(Employee_ID, Bdate, Address, Jobtype, Salary, Name, PhoneNum) 
VALUES (1, '1990-01-01', '123 Main St', 'Manager', 50000, 'John Smith', 5551234);
SELECT * FROM Employee;
INSERT INTO Customer (Customer_ID, PhoneNum, Email, First_Name, Last_Name, Address, Date_Of_Birth)
VALUES (1, 5551234, 'john@example.com', 'John', 'Doe', '123 Main St', '1990-01-01');
SELECT * FROM Customer;
INSERT INTO Account (Account_Num, Account_Type, Balance, Status, CustomerID) 
VALUES 
  (1001, 'Checking', 5000.00, 'Active', 1);
SELECT * FROM Account;

