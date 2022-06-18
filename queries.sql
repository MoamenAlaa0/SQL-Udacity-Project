-- Question 1
SELECT Genre.Name,
       COUNT(*) purchases
FROM Invoice
JOIN InvoiceLine LINE ON line.InvoiceId = Invoice.InvoiceId
JOIN Track ON Track.TrackId = line.TrackId
JOIN Genre ON Genre.GenreId = Track.GenreId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Question 2
SELECT Album.Title,
       COUNT(*) AS Quantity
FROM Track
JOIN InvoiceLine I ON I.TrackId = Track.TrackId
JOIN Album ON Album.AlbumId = Track.AlbumId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

-- Question 3
SELECT MediaType.Name,
       COUNT(*) no_tracks
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY 1
ORDER BY 2 DESC;

-- Question 4
SELECT Track.Composer,
       COUNT(*) no_tracks
FROM Track
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
WHERE Track.Composer IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
