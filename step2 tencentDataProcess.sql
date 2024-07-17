USE [gaode_new_fusion]
GO

SELECT  b.fullname ocity
      ,[city] dcity
	  ,[time] 
      ,[type] mode
      ,[nums] volume
  into [dbo].temptx2015_in
  FROM [dbo].[tx2015] a left join txdatacityname b on a.citys=b.[txname]
  where inout='in' 
GO

SELECT [city] ocity
      ,b.fullname dcity
      ,[time]
      ,[type] mode
      ,[nums] volume
  into [dbo].temptx2015_out
  FROM [dbo].[tx2015] a left join txdatacityname b on a.citys=b.[txname]
  where inout='out' 
GO

SELECT * into dbo.tx2015_final from(
SELECT *
  FROM [dbo].[temptx2015_in]
union
SELECT *
  FROM [dbo].[temptx2015_out]) a where a.ocity is not null and a.dcity is not null
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2015_air]
  FROM [dbo].[tx2015_final] a
  WHERE [mode]='air'
  GROUP BY ocity
	  ,dcity
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2015_car]
  FROM [dbo].[tx2015_final] a
  WHERE [mode]='bus'
  GROUP BY ocity
	  ,dcity
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2015_train]
  FROM [dbo].[tx2015_final] a
  WHERE [mode]='train'
  GROUP BY ocity
	  ,dcity
GO

SELECT  b.fullname ocity
      ,[city] dcity
	  ,[time] 
      ,[type] mode
      ,[nums] volume
  into [dbo].temptx2016_in
  FROM [dbo].[tx2016] a left join txdatacityname b on a.citys=b.[txname]
  where inout='in' 
GO

SELECT [city] ocity
      ,b.fullname dcity
      ,[time]
      ,[type] mode
      ,[nums] volume
  into [dbo].temptx2016_out
  FROM [dbo].[tx2016] a left join txdatacityname b on a.citys=b.[txname]
  where inout='out' 
GO

SELECT * into dbo.tx2016_final from(
SELECT *
  FROM [dbo].[temptx2016_in]
union
SELECT *
  FROM [dbo].[temptx2016_out]) a where a.ocity is not null and a.dcity is not null
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2016_air]
  FROM [dbo].[tx2016_final] a
  WHERE [mode]='air'
  GROUP BY ocity
	  ,dcity
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2016_car]
  FROM [dbo].[tx2016_final] a
  WHERE [mode]='bus'
  GROUP BY ocity
	  ,dcity
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2016_train]
  FROM [dbo].[tx2016_final] a
  WHERE [mode]='train'
  GROUP BY ocity
	  ,dcity
GO

SELECT  b.fullname ocity
      ,[city] dcity
	  ,[time] 
      ,[type] mode
      ,[nums] volume
  into [dbo].temptx2017_in
  FROM [dbo].[tx2017] a left join txdatacityname b on a.citys=b.[txname]
  where inout='in' 
GO

SELECT [city] ocity
      ,b.fullname dcity
      ,[time]
      ,[type] mode
      ,[nums] volume
  into [dbo].temptx2017_out
  FROM [dbo].[tx2017] a left join txdatacityname b on a.citys=b.[txname]
  where inout='out' 
GO

SELECT * into dbo.tx2017_final from(
SELECT *
  FROM [dbo].[temptx2017_in]
union
SELECT *
  FROM [dbo].[temptx2017_out]) a where a.ocity is not null and a.dcity is not null
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2017_air]
  FROM [dbo].[tx2017_final] a
  WHERE [mode]='air'
  GROUP BY ocity
	  ,dcity
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2017_car]
  FROM [dbo].[tx2017_final] a
  WHERE [mode]='bus'
  GROUP BY ocity
	  ,dcity
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2017_train]
  FROM [dbo].[tx2017_final] a
  WHERE [mode]='train'
  GROUP BY ocity
	  ,dcity
GO

SELECT  b.fullname ocity
      ,[city] dcity
	  ,[time] 
      ,[type] mode
      ,[nums] volume
  into [dbo].temptx2018_in
  FROM [dbo].[tx2018] a left join txdatacityname b on a.citys=b.[txname]
  where inout='in' 
GO

SELECT [city] ocity
      ,b.fullname dcity
      ,[time]
      ,[type] mode
      ,[nums] volume
  into [dbo].temptx2018_out
  FROM [dbo].[tx2018] a left join txdatacityname b on a.citys=b.[txname]
  where inout='out' 
GO

SELECT * into dbo.tx2018_final from(
SELECT *
  FROM [dbo].[temptx2018_in]
union
SELECT *
  FROM [dbo].[temptx2018_out]) a where a.ocity is not null and a.dcity is not null
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2018_air]
  FROM [dbo].[tx2018_final] a
  WHERE [mode]='air'
  GROUP BY ocity
	  ,dcity
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2018_car]
  FROM [dbo].[tx2018_final] a
  WHERE [mode]='bus'
  GROUP BY ocity
	  ,dcity
GO

SELECT ocity
	  ,dcity
      ,count([time]) as totaldays
      ,sum([volume]) as volume
  INTO [dbo].[data_2018_train]
  FROM [dbo].[tx2018_final] a
  WHERE [mode]='train'
  GROUP BY ocity
	  ,dcity
GO