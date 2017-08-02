SELECT l.InvoiceLineId, t.Name
FROM InvoiceLine l
LEFT JOIN Track t
ON t.TrackId = l.TrackId;
