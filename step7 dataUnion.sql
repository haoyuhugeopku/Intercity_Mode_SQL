USE [gaode_new_fusion]
GO

SELECT a.[ocity]
      ,a.[dcity]
	  ,cast(isnull(b.expanded,0) as bigint) as car
	  ,cast(isnull(c.expanded,0) as bigint) as train
	  ,cast(isnull(d.expanded,0) as bigint) as air
	  ,cast(isnull(b.expanded,0) as bigint)+cast(isnull(c.expanded,0) as bigint)+cast(isnull(d.expanded,0) as bigint) as volume
	  INTO [dbo].[odlist_2015raw]
  FROM [dbo].[odlist_empty] a
  left join data_2015_car_expanded_fusioncompleted b on a.ocity=b.ocity and	a.dcity=b.dcity 
  left join data_2015_train_expanded c on a.ocity=c.ocity and a.dcity=c.dcity 
  left join data_2015_air_expanded d on a.ocity=d.ocity and	a.dcity=d.dcity 
  where a.[ocity] is not null and a.[dcity] is not null
GO

SELECT a.[ocity]
      ,a.[dcity]
	  ,cast(isnull(b.expanded,0) as bigint) as car
	  ,cast(isnull(c.expanded,0) as bigint) as train
	  ,cast(isnull(d.expanded,0) as bigint) as air
	  ,cast(isnull(b.expanded,0) as bigint)+cast(isnull(c.expanded,0) as bigint)+cast(isnull(d.expanded,0) as bigint) as volume
	  INTO [dbo].[odlist_2016raw]
  FROM [dbo].[odlist_empty] a
  left join data_2016_car_expanded_fusioncompleted b on a.ocity=b.ocity and	a.dcity=b.dcity 
  left join data_2016_train_expanded c on a.ocity=c.ocity and a.dcity=c.dcity 
  left join data_2016_air_expanded d on a.ocity=d.ocity and	a.dcity=d.dcity 
  where a.[ocity] is not null and a.[dcity] is not null
GO

SELECT a.[ocity]
      ,a.[dcity]
	  ,cast(isnull(b.expanded,0) as bigint) as car
	  ,cast(isnull(c.expanded,0) as bigint) as train
	  ,cast(isnull(d.expanded,0) as bigint) as air
	  ,cast(isnull(b.expanded,0) as bigint)+cast(isnull(c.expanded,0) as bigint)+cast(isnull(d.expanded,0) as bigint) as volume
	  INTO [dbo].[odlist_2017raw]
  FROM [dbo].[odlist_empty] a
  left join data_2017_car_expanded_fusioncompleted b on a.ocity=b.ocity and	a.dcity=b.dcity 
  left join data_2017_train_expanded c on a.ocity=c.ocity and a.dcity=c.dcity 
  left join data_2017_air_expanded d on a.ocity=d.ocity and	a.dcity=d.dcity 
  where a.[ocity] is not null and a.[dcity] is not null
GO

SELECT a.[ocity]
      ,a.[dcity]
	  ,cast(isnull(b.expanded,0) as bigint) as car
	  ,cast(isnull(c.expanded,0) as bigint) as train
	  ,cast(isnull(d.expanded,0) as bigint) as air
	  ,cast(isnull(b.expanded,0) as bigint)+cast(isnull(c.expanded,0) as bigint)+cast(isnull(d.expanded,0) as bigint) as volume
	  INTO [dbo].[odlist_2018raw]
  FROM [dbo].[odlist_empty] a
  left join data_2018_car_expanded_fusioncompleted b on a.ocity=b.ocity and	a.dcity=b.dcity 
  left join data_2018_train_expanded c on a.ocity=c.ocity and a.dcity=c.dcity 
  left join data_2018_air_expanded d on a.ocity=d.ocity and	a.dcity=d.dcity 
  where a.[ocity] is not null and a.[dcity] is not null
GO

SELECT a.[ocity]
      ,a.[dcity]
	  ,cast(isnull(b.expanded,0) as bigint) as car
	  ,cast(isnull(c.expanded,0) as bigint) as train
	  ,cast(isnull(d.expanded,0) as bigint) as air
	  ,cast(isnull(b.expanded,0) as bigint)+cast(isnull(c.expanded,0) as bigint)+cast(isnull(d.expanded,0) as bigint) as volume
	  INTO [dbo].[odlist_2019raw]
  FROM [dbo].[odlist_empty] a
  left join data_2019_car_expanded_fusioncompleted b on a.ocity=b.ocity and	a.dcity=b.dcity 
  left join data_2019_train_expanded c on a.ocity=c.ocity and a.dcity=c.dcity 
  left join data_2019_air_expanded d on a.ocity=d.ocity and	a.dcity=d.dcity 
  where a.[ocity] is not null and a.[dcity] is not null
GO


