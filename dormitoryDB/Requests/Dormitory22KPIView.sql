CREATE VIEW dormitory22KPI
AS
SELECT r.code, r.capacity
FROM rooms r LEFT JOIN dormitories d on r.dormitoryID = d.id LEFT JOIN universities u on d.universityID = u.id
WHERE u.name LIKE '%Sikorsky%' AND d.name LIKE '%¹22%';