CREATE VIEW v_Employee_Job_Details AS
SELECT e.Employee_ID, e.Name, e.Bdate, e.Address, e.PhoneNum, e.Jobtype, 
CASE
    WHEN e.Jobtype = 'Accountant' THEN a.Proficiency
    WHEN e.Jobtype = 'Technician' THEN t.Technical_Expertise
    WHEN e.Jobtype = 'Data Analyst' THEN da.Proficiency_in_tools
    WHEN e.Jobtype = 'Bank Teller' THEN bt.Organizational_skills
    WHEN e.Jobtype = 'Branch Manager' THEN bm.Leadership_skills
END AS Job_Details
FROM Employee e
LEFT JOIN Accountant a ON e.Employee_ID = a.Employee_ID
LEFT JOIN Technician t ON e.Employee_ID = t.EmployeeID
LEFT JOIN Data_Analyst da ON e.Employee_ID = da.Employee_ID
LEFT JOIN Bank_Teller bt ON e.Employee_ID = bt.Employee_ID
LEFT JOIN Branch_Manager bm ON e.Employee_ID = bm.EmployeeID;

