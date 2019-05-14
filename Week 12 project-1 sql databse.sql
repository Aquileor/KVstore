--Aquileo Reyes
--Week 7 Gis Project Database

--Create database and use that database
CREATE DATABASE [Reyes GIS Project]
GO

USE [Reyes GIS Project]

--Created table with primary key and Foreign key
GO
CREATE TABLE [dbo].[2nd Order Boundaries](
 [District] [varchar](50)not NULL primary key,
 [ObjectID] [int] NULL

  Constraint [FK_2ndOrderBoundariess_District] Foreign Key([District])
 references [dbo].[2nd Order Boundaries] ([District])
) 

GO 
CREATE TABLE [dbo].[FacilityByAmenity](
 [OsmFacilityID] [money] not NULL primary key,
 [Name] [varchar](50) NULL,
 [Amenity] [varchar](50) NULL,
 [OtherTags] [varchar](50) NULL,
 [ObjectID] [int] NULL

--Constraint [FK_FacilityByAmenity_Place] Foreign Key([Name])
--references [dbo].[Place] ([Name])
--trying to figure out
)


GO 
CREATE TABLE [dbo].[FirstOrderBoundrie](
 [AdminArea] [varchar](50)not NULL primary key,
 [District] [varchar](50) NULL,
 [SqKmAera] [money] NULL,
 [ObjectID] [int] NULL

Constraint [FK_FirstOrderBoundrie_District] Foreign Key([District])
 references [dbo].[2nd Order Boundaries] ([District])
)

GO 
CREATE TABLE [dbo].[Floods & LandSlides](
 [District] [varchar](50) not NULL primary key,
 [Flood Areas] [varchar](50) NULL,
 [ObjectID] [int] NULL,
 [Name] [varchar](50) NULL

 Constraint [FK_FloodsLandSlides_2ndOrderBoundariess_District] Foreign Key([District])
 references [dbo].[2nd Order Boundaries] ([District])
)

GO 
CREATE TABLE [dbo].[Place](
 [OsmFacilityID] [money] not NULL,
 [Name] [varchar](50) not NULL primary key,
 [Amenity] [varchar](50) NULL,
 [Population] [money] NULL,
 [ObjectID] [int] NULL

  Constraint [FK_Places_FacilityByAmenity_OsmFacilityID] Foreign Key([OsmFacilityID])
 references [dbo].[FacilityByAmenity] ([OsmFacilityID])
)

GO 
CREATE TABLE [dbo].[Poverty Area](
 [District] [varchar](50) not NULL primary key,
 [Poverty Aera] [money] NULL,
 [Food Sortage] [varchar](50) NULL,
 [ObjectID] [int] NULL

  Constraint [FK_PovertyArea_2ndOrderBoundariess_District] Foreign Key([District])
 references [dbo].[2nd Order Boundaries] ([District])
) 

GO 
CREATE TABLE [dbo].[RailRoad](
 [FidRoad] [money] not NULL,
 [CodeDescription] [varchar](50) NULL,
 [ExsDescription] [varchar](50) NULL,
 [FcoDescription] [varchar](50) NULL,
 [FisCountry] [int] not NULL primary key,
 [Iso] [varchar](50) NULL,
 [IsoCountry] [varchar](50) NULL,
 [FID] [int] NULL,
 [Name][varchar](50) not NULL 

--Constraint [FK_Road_FidRoad] Foreign Key([FidRoad])
--references [dbo].[Road] ([FidRoad])
 --trying to figure out
)

GO 
CREATE TABLE [dbo].[Road](
 [FidRoad] [money] not NULL,
 [CodeDescription] [varchar](50) NULL,
 [ExsDescription] [varchar](50) NULL,
 [FcoDescription] [varchar](50) NULL,
 [FisCountry] [int] NULL,
 [Iso] [varchar](50) NULL,
 [IsoCountry] [varchar](50) NULL,
 [FID] [int] NULL,
 [Name][varchar](50) not NULL primary key

 Constraint [FK_Road_FisCountry] Foreign Key([FisCountry])
 references [dbo].[RailRoad] ([FisCountry])
)

GO 
CREATE TABLE [dbo].[Text Example](
 [Name] [varchar](50) not NULL ,
 [Decscrption] [varchar](50) NULL,
 [Type] [varchar](50) not NULL primary key,
-- [GemType] [geography] NULL,
-- [GeoType] [geometry] NULL,
 [ObjectID] [int] NULL

 --Constraint [FK_Text_Nameee] Foreign Key([Name])
 --references [dbo].[Road] ([Name])
 --trying to figure out
) 

GO 
CREATE TABLE [dbo].[User](
 [Name] [varchar](50) not NULL  primary key,
 [Descrtiption] [varchar](50) NULL,
 [Pull] [varchar](50) NULL,
 [Push] [varchar](50) NULL,
 [Edit] [varchar](50) NULL,
 [Type] [varchar](50) not NULL

 Constraint [FK_User_TextExample_Type] Foreign Key([Type])
 references [dbo].[Text Example] ([Type])

) 

--Insert data into created table

Go
Insert INTO [2nd Order Boundaries] ([District], [ObjectID])
VALUES ('Flordia', 1), ('Flordiaa', 2), ('Flordiaaa', 3), ('Flordiaaaa', 4);
GO
Insert INTO [FacilityByAmenity] ([OsmFacilityID], [Name],[Amenity],[OtherTags],[ObjectID])
VALUES (267584, 'Flordia', 'new', 'old',  1), (267585, 'Flordiaa', 'new', 'old',  2),
(267586, 'Flordiaaa', 'new', 'old',  3),(267587, 'Flordiaaaa', 'new', 'old',  4);
GO
Insert INTO [FirstOrderBoundrie] ([AdminArea],[District], [SqKmAera], [ObjectID])
VALUES ('North','Flordia',56748, 1), ('South','Flordiaa',6778, 2), ('West','Flordiaaa', 6879, 3), 
('East', 'Flordiaaaa',5778, 4);
GO
Insert INTO [Floods & LandSlides] ([District], [Flood Areas], [ObjectID],[Name])
VALUES ('Flordia', 'Floods', 1,'Flordia'),('Flordiaa', 'Floods', 2,'Flordiaa')
,('Flordiaaa', 'Floods', 3,'Flordiaaa'),('Flordiaaaa', 'Floods', 4,'Flordiaaaa');
GO
Insert INTO [Place] ([OsmFacilityID],[Name],[Amenity],[Population], [ObjectID])
VALUES (267584, 'Flordia', 'place', 89738332, 1),(267585, 'Flordiaa', 'placee', 89738332, 2)
,(267586, 'Flordiaaa', 'placeee', 89738332, 3), (267587, 'Flordiaaaa', 'placeeee', 89738332, 4);
GO
Insert INTO [Poverty Area] ([District], [Poverty Aera],[Food Sortage], [ObjectID])
VALUES ('Flordia', 467, 'Low', 1),('Flordiaa',467, 'Low', 2),('Flordiaaa',467, 'Highaaaa', 3),
('Flordiaaaa',467, 'Meduim', 4);
GO

Insert INTO [RailRoad] ( [FidRoad],[CodeDescription],[ExsDescription],
[FcoDescription],[FisCountry],[Iso],[IsoCountry],[FID],[Name])
VALUES (47869, 'Flordia', 'Rail', 'RRD',113,'FL','USA', 1,'Flordia'),
(47870, 'Flordia', 'Rail', 'RRD',114,'FLL','USA', 2,'Flordiaa'),
(47871, 'Flordia', 'Rail', 'RRD',115,'FLLL','USA', 3,'Flordiaaa'),
(47872, 'Flordia', 'Rail', 'RRD',116,'FLLLL','USA', 4,'Flordiaaaa');

GO
Insert INTO [Road] ( [FidRoad],[CodeDescription],[ExsDescription],
[FcoDescription],[FisCountry],[Iso],[IsoCountry],[FID],[Name])
VALUES (47869, 'Flordia', 'Road', 'RRD',113,'FL','USA', 1,'Flordia'),
(47870, 'Flordia', 'Road', 'RRD',114,'FLL','USA', 2,'Flordiaa'),
(47871, 'Flordia', 'Road', 'RRD',115,'FLLL','USA', 3,'Flordiaaa'),
(47872, 'Flordia', 'Road', 'RRD',116,'FLLLL','USA', 4,'Flordiaaaa');
GO
Insert INTO [Text Example] ([Name],[Decscrption], [Type], [ObjectID])
VALUES ('North','Flordia','Point', 1),
('South','Flordiaa','Line', 2),
('East','Flordiaaa','Polygon', 3),
('West','Flordiaaaa','Home', 4);
Go
Insert INTO [User] ([Name],[Descrtiption],[Pull], [Push], [Edit],[Type] )
VALUES ('Aquileo','Flordia','Pull Data', 'Push Data', 'Edit Data','Point'),
('Keyla','Flordiaa','Pull Data', 'Push Data', 'Edit Data', 'Line'),
('Quio','Flordiaaa','Pull Data', 'Push Data', 'Edit Data','Polygon'),
('Matthew','Flordiaaaa','Pull Data', 'Push Data', 'Edit Data','Home');


--Display the tables
Go 

Select *
From [2nd Order Boundaries];

Select *
From [FacilityByAmenity];

Select *
From [FirstOrderBoundrie];

Select *
From [Floods & LandSlides];

Select *
From [Place];

Select *
From [Poverty Area];

Select *
From [RailRoad];

Select *
From [Road];

Select *
From [Text Example];

Select *
From [User]

