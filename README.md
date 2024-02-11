# Bank Management System Database

**Course:** CMPS 244, American University of Beirut

## Abstract

The goal of this project is to create a database management system for a fictitious bank that will store information about customers, accounts, transactions, loans, branches, and employees. The system will provide a user-friendly interface for bank employees and customers to access and manage this information.

## Schema

Our database will consist of the following tables and their respective attributes:

- <p>Employee(Employee_ID integer (primary key), Bdate date, Address varchar(255), Jobtype varchar(255), Salary float, Name varchar(255), PhoneNum integer)</p>
- <p>Dependent(Dependent_ID integer (primary key), D_Name varchar(255), Relationship varchar(255), EmployeeID integer (foreign key references Employee.Employee_ID))</p>
- <p>Accountant(Employee_ID integer (primary key, foreign key references Employee.Employee_ID), Proficiency string)</p>
- <p>Technician(EmployeeID integer (primary key, foreign key references Employee.Employee_ID), Technical_Expertise varchar(255))</p>
- <p>Data_Analyst(Employee_ID integer (primary key, foreign key references Employee.Employee_ID), Proficiency_in_tools varchar(255))</p>
- <p>Bank_Teller(Employee_ID integer (primary key, foreign key references Employee.Employee_ID), Organizational_skills varchar(255))</p>
- <p>Customer(Customer_ID integer (primary key), PhoneNum integer, Email varchar(15), First_Name varchar(255), Last_Name varchar(255), Address varchar(255), Date_Of_Birth date)</p>
- <p>Bank(Bank_Code integer (primary key), Bank_Name varchar(255), Address varchar(255))</p>
- <p>Account(Account_Num integer (primary key), Account_Type varchar(255), Balance float, Status varchar(255), CustomerID integer (foreign key references Customer.Customer_ID))</p>
- <p>Transaction(Transaction_ID integer (primary key), Transaction_Type varchar(255), Amount float, Date date, Account_Num integer (foreign key references Account.Account_Num))</p>
- <p>Branch(Branch_ID integer (primary key), Branch_Name varchar(255), Address varchar(255), PhoneNum integer)</p>
- <p>Loan(Loan_ID integer (primary key), CustomerID integer (foreign key references Customer.Customer_ID))</p>
- <p>Transaction_Branch(Transaction_ID integer (foreign key references Transaction.Transaction_ID), Branch_ID integer (foreign key references  Branch.Branch_ID))</p>
- <p>Head_Bank_Employee(Employee_ID integer (foreign key references Employee.Employee_ID), Bank_Code integer (foreign key references Bank.Bank_Code))</p>
- <p>Branch_Employee(Branch_ID integer (foreign key references Branch.Branch_ID), Employee_ID integer (foreign key references Employee.Employee_ID))</p>
- <p>Branch_Manager(EmployeeID integer (foreign key references Employee.Employee_ID), Branch_ID integer (foreign key references Branch.Branch_ID), Branch_Manager varchar(255))</p>

## Views

In addition to the tables, the following views have been created to provide a more user-friendly interface to the database:

- <p>Customer_Accounts: This view lists all the accounts associated with each customer, along with their balance and status.</p>
- <p>Employee_Details: This view lists all the details of each employee, including their name, job type, and salary.</p>
- <p>Branch_Transactions: This view lists all the transactions that have taken place at each branch, along with the date, type, and amount of the transaction.</p>

## Indexes

The following indexes have been created in order to optimize the performance of the database:

- <p>Index on Employee.Employee_ID</p>
- <p>Index on Dependent.Dependent_ID</p>
- <p>Index on Customer.Customer_ID</p>
- <p>Index on Bank.Bank_Code</p>
- <p>Index on Account.Account_Num</p>
- <p>Index on Transaction.Transaction_ID</p>
- <p>Index on Branch.Branch_ID</p>
- <p>Index on Loan.Loan_ID</p>

## Usage

To use this database, you will first need to set up MySQL. Once you have done so, you can create a new database and import the schema and data from the provided SQL files. After that, you can use a variety of SQL queries to interact with the database and retrieve the information you need.

## Contributions

If you would like to contribute to this project, please fork the repository and create a new branch for your changes. Once you have made your changes, submit a pull request and we will review your changes and merge them into the main branch if they are accepted.

## EER Model
![EER Model](EER_Model.png)
