CREATE LOGIN ssisuser WITH PASSWORD = 'P@ssword01!', DEFAULT_DATABASE=AdventureWorks2017
GO  
use AdventureWorks2017
CREATE USER ssisuser FOR LOGIN ssisuser; 
GO
use AdventureWorks2017
ALTER ROLE [db_owner] ADD MEMBER ssisuser
GO  
use AdventureWorksDW2017
CREATE USER ssisuser FOR LOGIN ssisuser; 
GO
use AdventureWorksDW2017
ALTER ROLE [db_owner] ADD MEMBER ssisuser