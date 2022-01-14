USE dormitoryDB;
GO

-- Створення таблиці Міста(cities) 

create table dormitoryDB.dbo.cities
(
    id   int not null
        constraint cities_pk
            primary key nonclustered,
    name varchar(30)
)
go

create unique index cities_id_uindex
    on dormitoryDB.dbo.cities (id)
go


-- Створення таблиці Адреси(adresses) 

create table dormitoryDB.dbo.addresses
(
    id int identity (1, 1)
        constraint addresses_pk
            primary key,
    street nvarchar(100),
    cityID int not null
        constraint addresses_cities_id_fk
            references dbo.cities
)
go

create unique index addresses_cityID_uindex
    on dormitoryDB.dbo.addresses (id)
go


-- Створення таблиці Університети(universities) 

create table dormitoryDB.dbo.universities
(
    id   int identity
        constraint universities_pk
            primary key nonclustered,
    name nvarchar(200)
)
go

create unique index universities_id_uindex
    on dormitoryDB.dbo.universities (id)
go

-- Створення таблиці Типи гуртожитків(types) 

create table dormitoryDB.dbo.types
(
    id   int identity
        constraint types_pk
            primary key nonclustered,
    name nvarchar(30) not null
)
go

create unique index types_id_uindex
    on dormitoryDB.dbo.types (id)
go

-- Створення таблиці Коменданти(commandants) 

create table dormitoryDB.dbo.commandants
(
    id       int identity
        constraint commandant_pk
            primary key nonclustered,
    name     nvarchar(30),
    lastName nvarchar(30) not null
)
go

create unique index commandant_id_uindex
    on dormitoryDB.dbo.commandants (id)
go

-- Створення таблиці Завідуючі(matrons) 

create table matrons
(
    id       int identity
        constraint matrons_pk
            primary key nonclustered,
    name     nvarchar(30),
    lastName nvarchar(30) not null
)
go

create unique index matrons_id_uindex
    on dormitoryDB.dbo.matrons (id)
go

-- Створення таблиці Гуртожитки(dormitories) 

create table dormitoryDB.dbo.dormitories
(
    id           int identity
        constraint dormitories_pk
            primary key nonclustered,
    name         nvarchar(200) not null,
    universityID int
        constraint dormitories_universities_id_fk
            references dormitoryDB.dbo.universities,
    addressID    int
        constraint dormitories_addresses_id_fk
            references dormitoryDB.dbo.addresses,
    typeID       int           not null
        constraint dormitories_types_id_fk
            references dormitoryDB.dbo.types,
    commandantID int
        constraint dormitories_commandants_id_fk
            references dormitoryDB.dbo.commandants,
    matronID     int
        constraint dormitories_matrons_id_fk
            references dormitoryDB.dbo.matrons
)
go

create unique index dormitories_id_uindex
    on dormitoryDB.dbo.dormitories (id)
go

-- Створення таблиці Кімнати(rooms) 

create table dormitoryDB.dbo.rooms
(
    id          int identity
        constraint rooms_pk
            primary key nonclustered,
    code        int not null,
    dormitoryID int not null
        constraint rooms_dormitories_id_fk
            references dormitoryDB.dbo.dormitories,
    capacity    int
)
go

create unique index rooms_id_uindex
    on dormitoryDB.dbo.rooms (id)
go

-- Створення таблиці Студенти(students)

create table students
(
    id       int identity
        constraint students_pk
            primary key nonclustered,
    name     nvarchar(30),
    lastName nvarchar(30) not null,
    roomID   int
        constraint students_rooms_id_fk
            references dormitoryDB.dbo.rooms
)
go

create unique index students_id_uindex
    on dormitoryDB.dbo.students (id)
go

-- Створення таблиці Термін проживання(livingRecords) 

create table dormitoryDB.dbo.livingRecords
(
    id         int identity
        constraint livingRecords_pk
            primary key nonclustered,
    roomID     int  not null
        constraint livingRecords_rooms_id_fk
            references dormitoryDB.dbo.rooms,
    occupantID int  not null
        constraint livingRecords_students_id_fk
            references dormitoryDB.dbo.students,
    fromDate   date not null,
    toDate     date not null
)
go

create unique index livingRecords_id_uindex
    on dormitoryDB.dbo.livingRecords (id)
go
