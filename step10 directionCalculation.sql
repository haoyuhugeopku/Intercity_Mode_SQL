USE [gaode_new_fusion]
GO

SELECT [odid]
      ,[ocity]
      ,[dcity]
      ,[ox]
      ,[oy]
      ,[dx]
      ,[dy]
      ,[car]
      ,[train]
      ,[air]
	  ,CASE 
			WHEN (ATN2(dy - oy, dx - ox) * 180.0 / PI()) > 90 THEN -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 360 + 90
			ELSE -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 90
		END AS azimuth
  INTO odlist_2015_withdirection
  FROM [dbo].[odlist_2015_withlocation]
GO

SELECT [odid]
      ,[ocity]
      ,[dcity]
      ,[ox]
      ,[oy]
      ,[dx]
      ,[dy]
      ,[car]
      ,[train]
      ,[air]
	  ,CASE 
			WHEN (ATN2(dy - oy, dx - ox) * 180.0 / PI()) > 90 THEN -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 360 + 90
			ELSE -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 90
		END AS azimuth
  INTO odlist_2016_withdirection
  FROM [dbo].[odlist_2016_withlocation]
GO

SELECT [odid]
      ,[ocity]
      ,[dcity]
      ,[ox]
      ,[oy]
      ,[dx]
      ,[dy]
      ,[car]
      ,[train]
      ,[air]
	  ,CASE 
			WHEN (ATN2(dy - oy, dx - ox) * 180.0 / PI()) > 90 THEN -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 360 + 90
			ELSE -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 90
		END AS azimuth
  INTO odlist_2017_withdirection
  FROM [dbo].[odlist_2017_withlocation]
GO

SELECT [odid]
      ,[ocity]
      ,[dcity]
      ,[ox]
      ,[oy]
      ,[dx]
      ,[dy]
      ,[car]
      ,[train]
      ,[air]
	  ,CASE 
			WHEN (ATN2(dy - oy, dx - ox) * 180.0 / PI()) > 90 THEN -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 360 + 90
			ELSE -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 90
		END AS azimuth
  INTO odlist_2018_withdirection
  FROM [dbo].[odlist_2018_withlocation]
GO

SELECT [odid]
      ,[ocity]
      ,[dcity]
      ,[ox]
      ,[oy]
      ,[dx]
      ,[dy]
      ,[car]
      ,[train]
      ,[air]
	  ,CASE 
			WHEN (ATN2(dy - oy, dx - ox) * 180.0 / PI()) > 90 THEN -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 360 + 90
			ELSE -(ATN2(dy - oy, dx - ox) * 180.0 / PI()) + 90
		END AS azimuth
  INTO odlist_2019_withdirection
  FROM [dbo].[odlist_2019_withlocation]
GO

SELECT 
    FLOOR(Azimuth / 5.0) * 5 AS Direction,
    SUM(car) AS TotalCar,
    SUM(train) AS TotalTrain,
    SUM(air) AS TotalAir
FROM [dbo].[odlist_2019_withdirection]
GROUP BY FLOOR(Azimuth / 5.0) * 5
ORDER BY FLOOR(Azimuth / 5.0) * 5
