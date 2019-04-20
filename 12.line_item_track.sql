--12. `line_item_track.sql`: Provide a query that includes the purchased track name with each invoice line item.

SELECT t.Name, il.*
FROM InvoiceLine il
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.Name, il.InvoiceLineId, il.InvoiceId, il.TrackId, il.UnitPrice, il.Quantity