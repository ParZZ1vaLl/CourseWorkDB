create trigger InsertAndDeleteDormitoryTrigger
on dormitories after insert, delete as
begin
    DECLARE @Operation VARCHAR(6)
    IF EXISTS(SELECT 0 FROM inserted)
        BEGIN
            SELECT @Operation = 'INSERT'
        END
    ELSE
        BEGIN
            SELECT @Operation = 'DELETE'
        END
    PRINT @Operation
    IF @Operation = 'DELETE'
        insert into dormitoriesLogs (operation, information)
        SELECT (select @operation), CONCAT(d.name, ' ', a.street)
        FROM deleted d LEFT JOIN addresses a on d.addressID = a.id;

    IF @Operation = 'INSERT'
        insert into dormitoriesLogs (operation, information)
        SELECT (select @operation), CONCAT(i.name, ' ', a.street)
        FROM inserted i LEFT JOIN addresses a on i.addressID = a.id;
end
GO