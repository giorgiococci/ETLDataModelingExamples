drop procedure if exists ssis.insertLog
drop procedure if exists ssis.updateLog

drop table if exists ssis.log

create table ssis.log
(
	idRun int identity(1,1) primary key, 
	fileName varchar(100) not null,
	message varchar(max) null,
	startDtm datetime default(getdate()) not null,
	endDtm datetime
)

go

create procedure ssis.insertLog
	@fileName varchar(100)
as
begin

	insert into ssis.log (fileName)
	values (@fileName)

	return scope_identity()

end

go

create procedure ssis.updateLog
	@idRun int, @fileName varchar(100), @message varchar(max)
as
begin

	update ssis.log
	set message = @message,
		endDtm = GETDATE()
	where idRun = @idRun
	and fileName = @fileName

end