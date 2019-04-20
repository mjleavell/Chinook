-- temp table
create table #myCoolTable (FullName varchar(255), CoolnessRating int) ---temp tables always have #; file has to be open to access this table
select * from #myCoolTable
drop table #myCoolTable

-- global temp table
create table ##myCoolerTable (FullName varchar(255), CoolnessRating int) ---GLOBAL temp table (any user and file can access this table)
select * from ##myCoolerTable
drop table ##myCoolerTable


---other way to create a table
select c.*, i.Total
INTO #invoice_temp_data
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
WHERE c.FirstName like 'a%'

--select everything from temp table to view table
select * from #invoice_temp_data 

-- drop table when you dont want to use table anymore
drop table #invoice_temp_data