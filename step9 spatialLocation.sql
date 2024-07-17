USE [gaode_new_fusion]
GO

SELECT ROW_NUMBER() OVER (ORDER BY [car]+[train]+[air] desc) AS odid
      ,[ocity]
      ,[dcity]
	  ,b.Lon as ox
	  ,b.Lat as oy
	  ,c.Lon as dx
	  ,c.Lat as dy
      ,[car]
      ,[train]
      ,[air]
  INTO [dbo].[odlist_2015_withlocation]
  FROM [dbo].[odlist_2015] a
  LEFT JOIN [dbo].[city_location] b on a.ocity=b.city
  LEFT JOIN [dbo].[city_location] c on a.dcity=c.city
  ORDER BY odid
GO

SELECT ROW_NUMBER() OVER (ORDER BY [car]+[train]+[air] desc) AS odid
      ,[ocity]
      ,[dcity]
	  ,b.Lon as ox
	  ,b.Lat as oy
	  ,c.Lon as dx
	  ,c.Lat as dy
      ,[car]
      ,[train]
      ,[air]
  INTO [dbo].[odlist_2016_withlocation]
  FROM [dbo].[odlist_2016] a
  LEFT JOIN [dbo].[city_location] b on a.ocity=b.city
  LEFT JOIN [dbo].[city_location] c on a.dcity=c.city
  ORDER BY odid
GO

SELECT ROW_NUMBER() OVER (ORDER BY [car]+[train]+[air] desc) AS odid
      ,[ocity]
      ,[dcity]
	  ,b.Lon as ox
	  ,b.Lat as oy
	  ,c.Lon as dx
	  ,c.Lat as dy
      ,[car]
      ,[train]
      ,[air]
  INTO [dbo].[odlist_2017_withlocation]
  FROM [dbo].[odlist_2017] a
  LEFT JOIN [dbo].[city_location] b on a.ocity=b.city
  LEFT JOIN [dbo].[city_location] c on a.dcity=c.city
  ORDER BY odid
GO

SELECT ROW_NUMBER() OVER (ORDER BY [car]+[train]+[air] desc) AS odid
      ,[ocity]
      ,[dcity]
	  ,b.Lon as ox
	  ,b.Lat as oy
	  ,c.Lon as dx
	  ,c.Lat as dy
      ,[car]
      ,[train]
      ,[air]
  INTO [dbo].[odlist_2018_withlocation]
  FROM [dbo].[odlist_2018] a
  LEFT JOIN [dbo].[city_location] b on a.ocity=b.city
  LEFT JOIN [dbo].[city_location] c on a.dcity=c.city
  ORDER BY odid
GO

SELECT ROW_NUMBER() OVER (ORDER BY [car]+[train]+[air] desc) AS odid
      ,[ocity]
      ,[dcity]
	  ,b.Lon as ox
	  ,b.Lat as oy
	  ,c.Lon as dx
	  ,c.Lat as dy
      ,[car]
      ,[train]
      ,[air]
  INTO [dbo].[odlist_2019_withlocation]
  FROM [dbo].[odlist_2019] a
  LEFT JOIN [dbo].[city_location] b on a.ocity=b.city
  LEFT JOIN [dbo].[city_location] c on a.dcity=c.city
  ORDER BY odid
GO

