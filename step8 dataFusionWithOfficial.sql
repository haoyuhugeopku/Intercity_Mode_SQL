USE [gaode_new_fusion]
GO

SELECT [ocity]
      ,[dcity]
      ,cast(sum([car])/cast(carall as float)*161.91*100000000 as bigint) as car
      ,cast(sum([train])/cast(trainall as float)*25.35*100000000 as bigint) as train
      ,cast(sum([air])/cast(airall as float)*4.36*100000000 as bigint) as air
  INTO [dbo].[odlist_2015]
  FROM [dbo].[odlist_2015raw] a
  cross join
  (SELECT sum([car]) as carall
      ,sum([train]) as trainall
      ,sum([air]) as airall
  FROM [dbo].[odlist_2015raw]) b
  group by [ocity],[dcity],carall,trainall, airall
GO

SELECT [ocity]
      ,[dcity]
      ,cast(sum([car])/cast(carall as float)*154.28*100000000 as bigint) as car
      ,cast(sum([train])/cast(trainall as float)*28.14*100000000 as bigint) as train
      ,cast(sum([air])/cast(airall as float)*4.88*100000000 as bigint) as air
  INTO [dbo].[odlist_2016]
  FROM [dbo].[odlist_2016raw] a
  cross join
  (SELECT sum([car]) as carall
      ,sum([train]) as trainall
      ,sum([air]) as airall
  FROM [dbo].[odlist_2016raw]) b
  group by [ocity],[dcity],carall,trainall, airall
GO

SELECT [ocity]
      ,[dcity]
      ,cast(sum([car])/cast(carall as float)*145.68*100000000 as bigint) as car
      ,cast(sum([train])/cast(trainall as float)*30.84*100000000 as bigint) as train
      ,cast(sum([air])/cast(airall as float)*5.52*100000000 as bigint) as air
  INTO [dbo].[odlist_2017]
  FROM [dbo].[odlist_2017raw] a
  cross join
  (SELECT sum([car]) as carall
      ,sum([train]) as trainall
      ,sum([air]) as airall
  FROM [dbo].[odlist_2017raw]) b
  group by [ocity],[dcity],carall,trainall, airall
GO

SELECT [ocity]
      ,[dcity]
      ,cast(sum([car])/cast(carall as float)*136.72*100000000 as bigint) as car
      ,cast(sum([train])/cast(trainall as float)*33.75*100000000 as bigint) as train
      ,cast(sum([air])/cast(airall as float)*6.12*100000000 as bigint) as air
  INTO [dbo].[odlist_2018]
  FROM [dbo].[odlist_2018raw] a
  cross join
  (SELECT sum([car]) as carall
      ,sum([train]) as trainall
      ,sum([air]) as airall
  FROM [dbo].[odlist_2018raw]) b
  group by [ocity],[dcity],carall,trainall, airall
GO

SELECT [ocity]
      ,[dcity]
      ,cast(sum([car])/cast(carall as float)*130.12*100000000 as bigint) as car
      ,cast(sum([train])/cast(trainall as float)*36.6*100000000 as bigint) as train
      ,cast(sum([air])/cast(airall as float)*6.6*100000000 as bigint) as air
  INTO [dbo].[odlist_2019]
  FROM [dbo].[odlist_2019raw] a
  cross join
  (SELECT sum([car]) as carall
      ,sum([train]) as trainall
      ,sum([air]) as airall
  FROM [dbo].[odlist_2019raw]) b
  group by [ocity],[dcity],carall,trainall, airall
GO


