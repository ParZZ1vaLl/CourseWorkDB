create function fullDormitoryInformation(@id int)
returns table
as
return
    SELECT d.name, u.name as 'university_name', a.street, c.name as 'city'
    FROM dormitories d LEFT JOIN addresses a on d.addressID = a.id LEFT JOIN cities c on a.cityID = c.id
    LEFT JOIN universities u on d.universityID = u.id
    WHERE d.id = @id;