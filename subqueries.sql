
--in clause with subquery
select * 
from Invoice i
where i.CustomerId in (select CustomerId from Customer where FirstName like 'a%')

--correlated subquery
select * 
from Invoice i
where i.CustomerId in (
		select CustomerId 
		from Customer c 
		where FirstName like 'a%' 
		  and i.customerid = c.customerid
		)

--Joined subquery		
select * 
from Invoice i
join (
		select CustomerId 
		from Customer
		where FirstName like 'a%' 
		) c
on i.customerid = c.customerid

--just a regular join
select * 
from Invoice i
join Customer c on c.CustomerId = i.CustomerId
where FirstName like 'a%'
