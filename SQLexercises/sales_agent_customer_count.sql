SELECT Employee.FirstName ||' '||Employee.LastName, COUNT(Customer.CustomerId)
FROM Employee
JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId