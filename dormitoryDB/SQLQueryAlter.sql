USE [CarSecuritySoftware]
Go
INSERT INTO [Licenses]
VALUES
(null, 1, null, 1),
(1, 1, null, 1),
(null, 1, null, 1)
GO
INSERT INTO [Drivers] 
VALUES
('Олег', 'Шевчук', 'Олегович', 3, 1, 18),
('Даша', 'Шевченко', 'Олегович', 3, 2, 18),
('Катя', 'Швец', 'Олегович', 3, 3, 18)
GO 
INSERT INTO [Luggages]
VALUES
('Вода', 100),
('Цемент', 500),
('Бутылки', 200)
GO
INSERT INTO [Premiums]
VALUES
(1000),
(5000)
GO
INSERT INTO [Routes]
VALUES
('Десна', 200, 5000),
('Львов', 350, 7000),
('Киев', 300, 6000)
GO
INSERT INTO [FullInfos]
VALUES
(2, null,'2020-04-07', '2020-04-22',1, 2, null),
(3, 2, '2020-05-14', '2020-06-22',2, 1, 2),
(4, null,'2020-02-22', '2020-03-04',3, 3, 1)
GO
ALTER TABLE [dbo].[Routes]
ADD Address NVARCHAR(50) NULL;
GO
ALTER TABLE [dbo].[Routes]
ALTER COLUMN Address NVARCHAR(200) NOT NULL;
GO
ALTER TABLE [dbo].[Drivers]
ADD CHECK (Age > 21);
GO
ALTER TABLE [dbo].[Premiums]
ADD Date DATA NULL;
GO
ALTER TABLE [dbo].[Premiums]
ALTER COLUMN Date DATETIME NOT NULL;