SELECT MAX(tote), country
FROM(SELECT SUM(i.Total) as tote, i.BillingCountry as country
FROM Invoice i
GROUP BY i.BillingCountry)
