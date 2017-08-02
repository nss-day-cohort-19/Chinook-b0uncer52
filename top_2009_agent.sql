SELECT MAX(salesTotal) as "Sales Total", FirstName
FROM(
SELECT SUM(i.Total) as salesTotal, e.FirstName as FirstName
FROM Invoice i
LEFT JOIN Customer c
ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e
ON e.EmployeeId = c.SupportRepId
WHERE InvoiceDate LIKE '%2009%'
GROUP BY e.FirstName)