…1. View all employees with full details (JOIN)
SELECT e.EmployeeID, d.FirstName, d.LastName, e.JobTitle, e.Salary
FROM EmployeeSalary e
JOIN EmployeeDemographics d
ON e.EmployeeID = d.EmployeeID;

…2. List employees earning more than 45,000
SELECT d.FirstName, d.LastName, e.JobTitle, e.Salary
FROM EmployeeSalary e
JOIN EmployeeDemographics d
ON e.EmployeeID = d.EmployeeID
WHERE e.Salary > 45000;

…3. Find the average salary
SELECT AVG(Salary) AS AverageSalary
FROM EmployeeSalary;

…4. Find the highest salary
SELECT MAX(Salary) AS HighestSalary
FROM EmployeeSalary;

…5. Find the lowest salary
SELECT MIN(Salary) AS LowestSalary
FROM EmployeeSalary;

…6. Count number of employees by gender
SELECT Gender, COUNT(*) AS TotalEmployees
FROM EmployeeDemographics
GROUP BY Gender;

…7. Count employees by job title
SELECT JobTitle, COUNT(*) AS TotalEmployees
FROM EmployeeSalary
GROUP BY JobTitle;

…8. Average salary by job title
SELECT JobTitle, AVG(Salary) AS AvgSalary
FROM EmployeeSalary
GROUP BY JobTitle;

…9. Employees older than 30
SELECT FirstName, LastName, Age
FROM EmployeeDemographics
WHERE Age > 30;

…10. Employees whose job title contains “Manager”
SELECT d.FirstName, d.LastName, e.JobTitle
FROM EmployeeSalary e
JOIN EmployeeDemographics d
ON e.EmployeeID = d.EmployeeID
WHERE e.JobTitle LIKE '%Manager%';

…11. Total salary cost for the company
SELECT SUM(Salary) AS TotalSalaryCost
FROM EmployeeSalary;

…12. Male employees earning over 40,000
SELECT d.FirstName, d.LastName, e.Salary
FROM EmployeeSalary e
JOIN EmployeeDemographics d
ON e.EmployeeID = d.EmployeeID
WHERE d.Gender = 'Male'
AND e.Salary > 40000;

…13. Employees sorted by salary (highest first)
SELECT d.FirstName, d.LastName, e.Salary
FROM EmployeeSalary e
JOIN EmployeeDemographics d
ON e.EmployeeID = d.EmployeeID
ORDER BY e.Salary DESC;

…14. Find the oldest employee
SELECT FirstName, LastName, Age
FROM EmployeeDemographics
ORDER BY Age DESC;

…15. Employees with salary above the average salary
SELECT d.FirstName, d.LastName, e.Salary
FROM EmployeeSalary e
JOIN EmployeeDemographics d
ON e.EmployeeID = d.EmployeeID
WHERE e.Salary > (
    SELECT AVG(Salary)
    FROM EmployeeSalary);
