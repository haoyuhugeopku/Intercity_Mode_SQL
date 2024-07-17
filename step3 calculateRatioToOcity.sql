USE [gaode_new_fusion]
GO

SELECT a.[ocity]
      ,a.[dcity]
	  ,a.[gaode]/cast(b.[oall] as float) as ratio
  INTO [dbo].[gaode2018ratiotoocity]
  FROM [dbo].[gaode2018] a left join
  (SELECT [ocity]
      ,sum([gaode]) as oall
  FROM [dbo].[gaode2018]
  group by [ocity]) b on a.ocity=b.ocity
  order by a.[gaode]/cast(b.[oall] as float) desc
GO


