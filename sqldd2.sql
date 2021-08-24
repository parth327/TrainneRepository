ASSIGNMENT :-

Update Queries:

1. UPDATE Employees SET Email='not available';

2. UPDATE Employees SET Email='not available',CommissionPct =0.10;
 
3. UPDATE Employees SET Email='not available',CommissionPct= 0.10 WHERE DepartmentID=110;
 
4. UPDATE Employees SET Email='not available' WHERE DepartmentID=80 AND CommissionPct<0.20;
 
5. UPDATE Employees SET Email='not available' WHERE DepartmentID=(SELECT DepartmentID FROM Departments WHERE DepartmentName='Accounting'); 

6. UPDATE Employees SET Salary=8000 WHERE ID=105 AND Salary<5000;

7. UPDATE Employees SET JobId= 'SH_CLERK' WHERE EmployeeId=118 AND DepartmentId=30 AND NOT JobId LIKE 'SH%';

8. UPDATE Employees SET Salary= CASE DepartmentId WHEN 40 THEN Salary+(Salary*.25) WHEN 90 THEN Salary+(Salary*.15) WHEN 110 THEN Salary+(Salary*.10) ELSE Salary END WHERE DepartmentId IN (40,50,50,60,70,80,90,110);
 
==9. UPDATE Jobs,Employees SET Jobs.MinSalary=Jobs.MinSalary+2000,Jobs.MaxSalary=Jobs.MaxSalary+2000,Employees.Salary=Employees.Salary+(Employees.Salary*.20),Employees.Commission_Pct=Employees.CommissionPct+.10 WHERE Jobs.JobId='PU_CLERK'AND Employees.JobId='PU_CLERK';
 
 







Basic Select Queries :

1. SELECT * FROM Employees;

2. SELECT FirstName,LastName FROM Employees;

3. SELECT FirstName FROM Employees AS EmployeeName ;

4. SELECT FirstName FROM Employees AS EmployeeName WHERE FirstName='Steven';

5. SELECT FirstName AS EmployeeName FROM Employees WHERE FirstName='Neena' OR FirstName='Lex';

6. SELECT FirstName FROM Employees AS EmployeeName WHERE NOT FirstName='Neena';

7. SELECT * FROM Employees WHERE Salary BETWEEN 5000 AND 8000;

8. SELECT FirstName,LastName,Salary,Salary*0.12 AS PF FROM Employees;

9. SELECT * FROM Employees WHERE FirstName LIKE 'N%';

10.SELECT DISTINCT DepartmentID FROM Employees;

11.SELECT * FROM Employees ORDER BY FirstName DESC;

12. SELECT EmployeeId,FirstName,LastName,Salary FROM Employees ORDER BY Salary;

13. SELECT TOP 2 Salary FROM Employees;
