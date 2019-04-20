--27. `top_media_type.sql`: Provide a query that shows the most purchased Media Type.

SELECT Top 1 mt.[Name] as MediaType, COUNT(*) Total
FROM InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackId 
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
GROUP BY mt.[Name]
ORDER BY Total DESC