USE [gaode_new_fusion]
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2015_car_expanded]
  FROM [dbo].[data_2015_car] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2015_air_expanded]
  FROM [dbo].[data_2015_air] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2015_train_expanded]
  FROM [dbo].[data_2015_train] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2016_car_expanded]
  FROM [dbo].[data_2016_car] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2016_air_expanded]
  FROM [dbo].[data_2016_air] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2016_train_expanded]
  FROM [dbo].[data_2016_train] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2017_car_expanded]
  FROM [dbo].[data_2017_car] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2017_air_expanded]
  FROM [dbo].[data_2017_air] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2017_train_expanded]
  FROM [dbo].[data_2017_train] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2018_car_expanded]
  FROM [dbo].[data_2018_car] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2018_air_expanded]
  FROM [dbo].[data_2018_air] 
GO

SELECT ocity
      ,dcity
      ,[volume]*365.0/[totaldays] as expanded
      into [dbo].[data_2018_train_expanded]
  FROM [dbo].[data_2018_train] 
GO

SELECT b.fullname as ocity
      ,c.fullname as dcity
      ,[volume]*365.0/[totaldays] as expanded
	  into [dbo].[data_2019_car_expanded]
  FROM [dbo].[data_2019_car] a left join txcityname b on a.oid=b.cityid left join txcityname c on a.did=c.cityid
  where b.fullname is not null and c.fullname is not null
GO

SELECT b.fullname as ocity
      ,c.fullname as dcity
      ,[volume]*365.0/[totaldays] as expanded
	  into [dbo].[data_2019_air_expanded]
  FROM [dbo].[data_2019_air] a left join txcityname b on a.oid=b.cityid left join txcityname c on a.did=c.cityid
  where b.fullname is not null and c.fullname is not null
GO

SELECT b.fullname as ocity
      ,c.fullname as dcity
      ,[volume]*365.0/[totaldays] as expanded
	  into [dbo].[data_2019_train_expanded]
  FROM [dbo].[data_2019_train] a left join txcityname b on a.oid=b.cityid left join txcityname c on a.did=c.cityid
  where b.fullname is not null and c.fullname is not null
GO