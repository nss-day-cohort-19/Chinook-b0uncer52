SELECT MAX(trackPurchases), TrackName
FROM (

SELECT COUNT(l.TrackId) as trackPurchases, t.Name as TrackName
FROM InvoiceLine l
LEFT JOIN Track t
ON t.TrackId = l.TrackId
LEFT JOIN Invoice i
ON i.InvoiceId = l.InvoiceId
WHERE i.InvoiceDate LIKE '%2013%'
GROUP BY l.TrackId)
