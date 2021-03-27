create table ssis.tablelist (	table_schema varchar(255), table_name varchar(255), insDtm datetime2 default(getdate()))

select	s.name as schema_name, t.name	as table_name
from	sys.tables	t
join	sys.schemas	s	on	t.schema_id	= s.schema_id
order by schema_name, table_name