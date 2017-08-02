SELECT Count(c.FirstName), e.FirstName
FROM Employee e
LEFT JOIN Customer c
ON c.SupportRepId = e.EmployeeId
WHERE e.Title = "Sales Support Agent"
GROUP BY e.EmployeeId