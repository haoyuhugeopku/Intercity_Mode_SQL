USE [gaode_new_fusion]
GO

SELECT a.[fullname] as ocity
	   ,b.[fullname] as dcity
	   INTO [dbo].[odlist_empty]
  FROM [dbo].[txdatacityname] a, [dbo].[txdatacityname] b
  WHERE a.[fullname] <> b.[fullname] and a.[fullname] <> '台湾省' and b.[fullname] <> '台湾省'
GO


