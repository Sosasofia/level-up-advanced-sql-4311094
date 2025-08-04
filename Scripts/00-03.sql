SELECT firstName, lastName, title
FROM employee
LIMIT 5;

GO

SELECT model, EngineType
FROM model
LIMIT 5;

SELECT sql 
FROM sqlite_schema 
WHERE name = 'employee';
/*
List of employees, including first and last name, and the 
first and last names of their inmediate managers
*/

SELECT 
  emp.firstName,
  emp.title,
  mng.firstName AS ManagerFirstName,
  mng.lastName AS ManagerLastName
FROM employee emp
INNER JOIN employee mng
  ON emp.managerId = mng.employeeId;