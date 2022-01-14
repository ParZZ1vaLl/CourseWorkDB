USE [FreightTransports]
GO
DELETE FullInfos FROM
(SELECT TOP 2 * FROM FullInfos
WHERE RouteID = 1) AS Selected
WHERE FullInfos.Id = Selected.Id
GO
DELETE Drivers
GO
DROP TABLE Drivers
GO
ALTER TABLE FullInfos
DROP COLUMN Arrival