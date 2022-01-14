create function getAllOccupantsByDate(@id int, @fromDate date, @toDate date)
returns table
as
return
    SELECT s.name, s.lastName
    FROM livingRecords lr LEFT JOIN students s on lr.occupantID = s.id LEFT JOIN rooms r on lr.roomID = r.id
    WHERE r.dormitoryID = @id AND ((lr.fromDate > @fromDate AND lr.fromDate < @toDate) OR ((lr.toDate > @fromDate AND lr.toDate < @toDate)))