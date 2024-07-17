USE [gaode_new_fusion]
GO

SELECT a.[ocity]
      ,a.[dcity]
      ,a.[gaode]
	  ,b.[expanded]
  FROM [dbo].[gaode2018] a left join dbo.data_2018_car_expanded_test b on a.ocity=b.ocity and a.dcity=b.dcity
  where b.expanded is not null
GO


