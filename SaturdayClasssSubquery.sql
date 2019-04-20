------without subquery
SELECT *
FROM Invoice i
	JOIN Customer c
		ON c.CustomerId = i.CustomerId
WHERE c.FirstName like 'c%' --%c% = contains letter c; c% = first name starts with c

------JOINED SUBQUERY******************
SELECT *
FROM Invoice i
--WHERE i.CustomerId in (1,2,3,4)
WHERE i.CustomerId in (select CustomerId from Customer where FirstName like 'c%') --YOU CAN ONLY HAVE ONLY COLUMN IN SUBQUERY


--view queryPlan = ctrl + L

---------- stored procedures are how you create functions within sql ----------


---- CORRELATED SUBQUERY: OTHER TYPE OF SUBQUERY-----
SELECT *
FROM Invoice i
WHERE i.CustomerId in (
	select CustomerId 
	from Customer c
	where FirstName like 'a%'
		and i.CustomerId = c.CustomerId
	)


----SUBQUERY WE ARE JOINING A TABLE 
SELECT *
FROM Invoice i
JOIN (
	select CustomerId 
	from Customer c
	where FirstName like 'a%'
	) c
ON i.CustomerId = c.CustomerId
