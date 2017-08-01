SELECT e.FirstName, e.LastName, i.InvoiceId FROM Invoice i LEFT JOIN Customer c ON i.CustomerId = c.CustomerId LEFT JOIN Employee e ON e.EmployeeId = c.SupportRepId
