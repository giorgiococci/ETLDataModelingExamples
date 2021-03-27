-- create table for esempio 7
create schema ssis
go

drop table if exists ssis.cdcsource
drop table if exists ssis.cdcdest


SELECT TOP 50 Title, FirstName, LastName, PersonType, Salary = len(LastName) * 1000
into ssis.cdcsource
FROM [AdventureWorks2017].[Person].[Person]

SELECT TOP 30 Title, FirstName, LastName, PersonType, Salary = len(LastName) * 9000
into ssis.cdcdest
FROM [AdventureWorks2017].[Person].[Person]

go