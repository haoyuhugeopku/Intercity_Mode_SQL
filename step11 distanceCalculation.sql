USE [gaode_new_fusion]
GO

CREATE FUNCTION [dbo].[fnCalculateDistance]
(
    @Latitude1 DECIMAL(9,6),
    @Longitude1 DECIMAL(9,6),
    @Latitude2 DECIMAL(9,6),
    @Longitude2 DECIMAL(9,6)
)
RETURNS FLOAT
AS
BEGIN
    DECLARE @EarthRadius FLOAT = 6371; -- 地球平均半径，单位为公里
    DECLARE @dLat FLOAT = RADIANS(@Latitude2 - @Latitude1);
    DECLARE @dLon FLOAT = RADIANS(@Longitude2 - @Longitude1);
    DECLARE @a FLOAT = SIN(@dLat / 2) * SIN(@dLat / 2) +
                        COS(RADIANS(@Latitude1)) * COS(RADIANS(@Latitude2)) *
                        SIN(@dLon / 2) * SIN(@dLon / 2);
    DECLARE @c FLOAT = 2 * ATN2(SQRT(@a), SQRT(1 - @a));
    DECLARE @distance FLOAT = @EarthRadius * @c;

    RETURN @distance;
END;

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
	  ,[azimuth]
	  ,dbo.fnCalculateDistance(oy, ox, dy, dx) as distance
  INTO odlist_2015_withdistance
  FROM [dbo].[odlist_2015_withdirection]

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
	  ,[azimuth]
	  ,dbo.fnCalculateDistance(oy, ox, dy, dx) as distance
  INTO odlist_2016_withdistance
  FROM [dbo].[odlist_2016_withdirection]

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
	  ,[azimuth]
	  ,dbo.fnCalculateDistance(oy, ox, dy, dx) as distance
  INTO odlist_2017_withdistance
  FROM [dbo].[odlist_2017_withdirection]

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
	  ,[azimuth]
	  ,dbo.fnCalculateDistance(oy, ox, dy, dx) as distance
  INTO odlist_2018_withdistance
  FROM [dbo].[odlist_2018_withdirection]

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
	  ,[azimuth]
	  ,dbo.fnCalculateDistance(oy, ox, dy, dx) as distance
  INTO odlist_2019_withdistance
  FROM [dbo].[odlist_2019_withdirection]
GO

SELECT 
    FLOOR(distance / 10.0) * 10 AS Distance,
    SUM(car) AS TotalCar,
    SUM(train) AS TotalTrain,
    SUM(air) AS TotalAir
FROM [dbo].[odlist_2019_withdistance]
GROUP BY FLOOR(distance / 10.0) * 10
ORDER BY FLOOR(distance / 10.0) * 10

