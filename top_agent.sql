SELECT MAX(agentSales), AgentName
FROM(SELECT Sum(i.Total) as agentSales, e.FirstName as AgentName
FROM Invoice i
LEFT JOIN Customer c
ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e
ON e.EmployeeId = c.SupportRepId
GROUP BY e.FirstName)
