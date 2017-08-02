SELECT Sum(i.Total) as "Total Sales", e.FirstName as "Salesman"
FROM Invoice i
LEFT JOIN Customer c
ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e
ON e.EmployeeId = c.SupportRepId
GROUP BY e.FirstName