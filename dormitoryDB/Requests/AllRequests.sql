-- 1) Обрати всі гуртожитки Києва

select d.name 
from dormitories d inner join addresses a on d.addressID=d.addressID inner join cities c on a.cityID=c.id
where c.name='Kyiv'

-- 2) Обрати всі гуртожитки КПІ коридорного типу 

select d.name 
from dormitories d inner join universities u on d.universityID=u.id inner join types t on d.typeID=t.id
where u.name like '%Sikorsky%' and t.name='corridor';

-- 3)  Вивести всю інформацію про гуртожитки

select d.name as dormitory_name, c.name as city, a.street
from dormitories d inner join universities u on d.universityID=u.id inner join types t on d.typeID=t.id 
          inner join addresses a on d.addressID=a.id inner join cities c on a.cityID=c.id;

-- 4) Вивести кількість гуртожитків Києва

select COUNT(*) as count_of_dormitories
from dormitories d inner join  addresses a on d.addressID = a.id inner join cities c on a.cityID = c.id
WHERE c.name = 'Kyiv'
GROUP BY c.name;

-- 5) Вивести кількість кімнат 22го гуртожитку КПІ

select COUNT(1) as count_of_rooms
from dormitories d left join universities u on d.universityID = u.id right join rooms r on d.id = r.dormitoryID
where u.name LIKE '%Sikorsky%' AND d.name='№22'
group by d.name;

-- 6) Вивести завідуючих та гуртожитки, в яких вони завідують

select m.name, m.lastName, d.name as dormitory
from matrons m inner join dormitories d on m.id = d.matronID;

-- 7) Вивести комендатна 6го гуртожитку КПІ

select c.name, c.lastName
from commandants c right join dormitories d on c.id = d.commandantID left join universities u on d.universityID = u.id
where d.name LIKE '%№6%' AND u.name LIKE '%Sikorsky%';

-- 8) Вивести всі кімнати 22го гуртожитку КПІ, в яких живе хоча б одна людина

select r.code
from dormitories d right join rooms r on d.id = r.dormitoryID right join livingRecords lr on r.id = lr.roomID
        left join universities u on d.universityID = u.id
where u.name LIKE '%Sikorsky%' AND d.name LIKE '%№22%' AND lr.fromDate < GETDATE() AND lr.toDate > GETDATE();

-- 9) Вивести всіх студентів, які жили в кімнаті 404 гуртожитку 8 КПІ

select s.name, s.lastName
from livingRecords lr left join students s on lr.occupantID = s.id left join rooms r on lr.roomID = r.id
left join dormitories d on r.dormitoryID = d.id left join universities u on d.universityID = u.id
where u.name LIKE '%Sikorsky%' AND d.name LIKE '%№22%' AND r.code = '331'

-- 10) Вивести всіх студентів, що в 2019 році жили в 8ому гуртожитку КПІ

select s.name, s.lastName
from livingRecords lr left join students s on lr.occupantID = s.id left join rooms r on lr.roomID = r.id
    left join dormitories d on r.dormitoryID = d.id left join universities u on d.universityID = u.id
where u.name LIKE '%Sikorsky%' AND d.name LIKE '%№22%' AND
    ((lr.fromDate > '2019-1-1' AND lr.fromDate < '2020-1-1') OR (lr.toDate > '2019-1-1' AND lr.toDate < '2020-1-1'))

-- 11) Вивести місто, в якому знаходиться найбільше гуртожитків

select TOP 1 c.name
from dormitories d left join addresses a on d.addressID = a.id left join cities c on a.cityID = c.id
group by c.name
order by COUNT(1) DESC;

-- 12) Вивести кількість гуртожитків Києва

select COUNT(1) as countOfDormitories
from dormitories d left join addresses a on d.addressID = a.id left join cities c on a.cityID = c.id
where c.name = 'Kyiv'
group by c.name;

-- 13) Вивести всі гуртожитки, які знаходяться на вулиці Янгеля

select d.name AS 'dormitory', u.name AS 'university'
from dormitories d left join addresses a on d.addressID = a.id left join universities u on d.universityID = u.id
where a.street LIKE '%Yanhela%';

-- 14) Вивести середню місткість кімнат гуртожитку №8

select AVG(capacity) as averageCapacity
from rooms r right join dormitories d on r.dormitoryID = d.id left join universities u on d.universityID = u.id
where d.name LIKE '№22' AND u.name LIKE '%Sikorsky%';

-- 15) Вивести гуртожитки, в яких немає коменданта

select d.name as 'dormitory', u.name as 'university'
from dormitories d left join universities u on d.universityID = u.id
where NOT EXISTS(select * from commandants c where c.id = d.commandantID);

-- 16) Погрупувати гуртожитки за типом та дізнатися, якого типу найбільше

select t.name, COUNT(1) as countOfTypes
from dormitories d left join types t on d.typeID = t.id
group by t.name
order by COUNT(1) DESC;

-- 17) Вивести коридорні гуртожитки, що знаходяться на вулиці Металістів

select d.name as 'dormitory', u.name as 'university'
from dormitories d left join addresses a on d.addressID = a.id left join universities u on d.universityID = u.id
left join types t on d.typeID = t.id
where a.street LIKE '%Metalistiv%' AND t.name = 'corridor';

-- 18) Вивести, гуртожитків якого типу найбільше на вулиці Янгеля

select TOP 1 t.name
from dormitories d left join types t on d.typeID = t.id left join addresses a on d.addressID = a.id
where a.street LIKE '%Yanhela%'
group by t.name
order by COUNT(1) DESC;

-- 19) Вивести кількість гуртожитків на вулиці Борщагівській

select COUNT(1) as numOFDormitories
from dormitories d left join addresses a on d.addressID = a.id
where a.street LIKE '%Borschahivska%';

-- 20) Вивести завідуючих разом з комендантами, з якими вони працюють

select m.name as 'matronName', m.lastName as 'matronLastName', c.name as 'commandantName', c.lastName as 'commandantLastname'
from dormitories d left join matrons m on d.matronID = m.id left join commandants c on d.commandantID = c.id;