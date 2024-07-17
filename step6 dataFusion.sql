USE [gaode_new_fusion]
GO

SELECT a.[ocity]
      ,a.[dcity]
      ,ISNULL((case when 2.5107*b.expanded-312857>0 then 2.5107*b.expanded-312857 else c.oall*a.ratio end),0) as expanded
  INTO [dbo].[data_2015_car_expanded_fusioncompleted]
  FROM [dbo].[gaode2018ratiotoocity] a left join [dbo].[data_2015_car_expanded] b on a.ocity=b.ocity and a.dcity=b.dcity
  left join
(SELECT a.[ocity]
      ,sum(a.[ratio]) as ratiosum
	  ,sum(2.5107*b.expanded-312857) as gaodesum
	  ,sum(2.5107*b.expanded-312857)/sum(a.[ratio]) as oall
  FROM [dbo].[gaode2018ratiotoocity] a left join data_2015_car_expanded b on a.ocity=b.ocity and a.dcity=b.dcity
  where 2.5107*b.expanded-312857>0
  group by a.[ocity]) c on a.ocity=c.ocity
GO

SELECT a.[ocity]
      ,a.[dcity]
      ,ISNULL((case when 2.5107*b.expanded-312857>0 then 2.5107*b.expanded-312857 else c.oall*a.ratio end),0) as expanded
  INTO [dbo].[data_2016_car_expanded_fusioncompleted]
  FROM [dbo].[gaode2018ratiotoocity] a left join [dbo].[data_2016_car_expanded] b on a.ocity=b.ocity and a.dcity=b.dcity
  left join
(SELECT a.[ocity]
      ,sum(a.[ratio]) as ratiosum
	  ,sum(2.5107*b.expanded-312857) as gaodesum
	  ,sum(2.5107*b.expanded-312857)/sum(a.[ratio]) as oall
  FROM [dbo].[gaode2018ratiotoocity] a left join data_2016_car_expanded b on a.ocity=b.ocity and a.dcity=b.dcity
  where 2.5107*b.expanded-312857>0
  group by a.[ocity]) c on a.ocity=c.ocity
GO

SELECT a.[ocity]
      ,a.[dcity]
      ,ISNULL((case when 2.5107*b.expanded-312857>0 then 2.5107*b.expanded-312857 else c.oall*a.ratio end),0) as expanded
  INTO [dbo].[data_2017_car_expanded_fusioncompleted]
  FROM [dbo].[gaode2018ratiotoocity] a left join [dbo].[data_2017_car_expanded] b on a.ocity=b.ocity and a.dcity=b.dcity
  left join
(SELECT a.[ocity]
      ,sum(a.[ratio]) as ratiosum
	  ,sum(2.5107*b.expanded-312857) as gaodesum
	  ,sum(2.5107*b.expanded-312857)/sum(a.[ratio]) as oall
  FROM [dbo].[gaode2018ratiotoocity] a left join data_2017_car_expanded b on a.ocity=b.ocity and a.dcity=b.dcity
  where 2.5107*b.expanded-312857>0
  group by a.[ocity]) c on a.ocity=c.ocity
GO

SELECT a.[ocity]
      ,a.[dcity]
      ,ISNULL((case when 2.5107*b.expanded-312857>0 then 2.5107*b.expanded-312857 else c.oall*a.ratio end),0) as expanded
  INTO [dbo].[data_2018_car_expanded_fusioncompleted]
  FROM [dbo].[gaode2018ratiotoocity] a left join [dbo].[data_2018_car_expanded] b on a.ocity=b.ocity and a.dcity=b.dcity
  left join
(SELECT a.[ocity]
      ,sum(a.[ratio]) as ratiosum
	  ,sum(2.5107*b.expanded-312857) as gaodesum
	  ,sum(2.5107*b.expanded-312857)/sum(a.[ratio]) as oall
  FROM [dbo].[gaode2018ratiotoocity] a left join data_2018_car_expanded b on a.ocity=b.ocity and a.dcity=b.dcity
  where 2.5107*b.expanded-312857>0
  group by a.[ocity]) c on a.ocity=c.ocity
GO

SELECT a.[ocity]
      ,a.[dcity]
      ,ISNULL(
	  (case 
	  when 2.5107*b.expanded-312857>0 then 2.5107*b.expanded-312857 
	  when 2.5107*b.expanded-312857<=0 and a.ratio>0.5 then c.oall*a.ratio 
	  else d.gaode*130.12/136.72
	  end),
	  0) as expanded
  INTO [dbo].[data_2019_car_expanded_fusioncompleted]
  FROM [dbo].[gaode2018ratiotoocity] a left join [dbo].[data_2019_car_expanded] b on a.ocity=b.ocity and a.dcity=b.dcity
  left join
(SELECT a.[ocity]
      ,sum(a.[ratio]) as ratiosum
	  ,sum(2.5107*b.expanded-312857) as gaodesum
	  ,sum(2.5107*b.expanded-312857)/sum(a.[ratio]) as oall
  FROM [dbo].[gaode2018ratiotoocity] a left join data_2019_car_expanded b on a.ocity=b.ocity and a.dcity=b.dcity
  where 2.5107*b.expanded-312857>0
  group by a.[ocity]) c on a.ocity=c.ocity
  left join [dbo].[gaode2018] d on a.ocity=d.ocity and a.dcity=d.dcity
GO