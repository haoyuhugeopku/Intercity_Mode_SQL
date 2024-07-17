USE [gaode_new_fusion]
GO

SELECT 
    FLOOR(distance / 10.0) * 10 AS Distance,
    SUM(car) AS TotalCar,
    SUM(train) AS TotalTrain,
    SUM(air) AS TotalAir
FROM [dbo].[odlist_2019_withdistance] a
left join [HSR_Airport] b on a.ocity=b.ocity left join [HSR_Airport] c on a.dcity=c.ocity
  where b.Airport=1 and c.Airport=1
GROUP BY FLOOR(distance / 10.0) * 10
ORDER BY FLOOR(distance / 10.0) * 10
GO

SELECT 
    FLOOR(distance / 10.0) * 10 AS Distance,
    SUM(car) AS TotalCar,
    SUM(train) AS TotalTrain,
    SUM(air) AS TotalAir
FROM [dbo].[odlist_2019_withdistance] a
left join [HSR_Airport] b on a.ocity=b.ocity left join [HSR_Airport] c on a.dcity=c.ocity
  where b.HSR=1 and c.HSR=1
GROUP BY FLOOR(distance / 10.0) * 10
ORDER BY FLOOR(distance / 10.0) * 10
GO

SELECT 
    ocity,
	dcity,
    (greatest(cast(train as decimal)/(car+train+air),0.034917*power(distance,0.380799))-cast(train as decimal)/(car+train+air)) as traingrowth,
    (greatest(cast(air as decimal)/(car+train+air),0.00754*power(distance,0.462152))-cast(air as decimal)/(car+train+air)) as airgrowth
	INTO [dbo].[odlist_2019_growthpotential] 
FROM [dbo].[odlist_2019_withdistance] 
WHERE (car+train+air)>0


SELECT 
    a.ocity,
    sum(traingrowth*(car+train+air))/total as trainpotential,
    sum(airgrowth*(car+train+air))/total as airpotential
FROM [dbo].[odlist_2019_withdistance] a left join [dbo].[odlist_2019_growthpotential] b on a.ocity=b.ocity and a.dcity=b.dcity
    left join (select ocity, sum(car+train+air) as total from [dbo].[odlist_2019_withdistance] group by ocity) as c on a.ocity=c.ocity
WHERE (car+train+air)>0
GROUP BY a.ocity, c.total



SELECT 
    FLOOR(distance / 10.0) * 10 AS Distance,
	FLOOR(d.altitude / 100.0) * 100 AS oH,
	FLOOR(e.altitude / 100.0) * 100 AS oH,
    SUM(car) AS TotalCar,
    SUM(train) AS TotalTrain,
    SUM(air) AS TotalAir
FROM [dbo].[odlist_2019_withdistance] a
left join [HSR_Airport] b on a.ocity=b.ocity left join [HSR_Airport] c on a.dcity=c.ocity
left join [平均海拔] d on a.ocity=d.city left join [平均海拔] e on a.dcity=e.city 
  where b.Airport=1 and c.Airport=1
GROUP BY FLOOR(distance / 10.0) * 10, FLOOR(d.altitude / 100.0) * 100, FLOOR(e.altitude / 100.0) * 100
ORDER BY FLOOR(distance / 10.0) * 10, FLOOR(d.altitude / 100.0) * 100, FLOOR(e.altitude / 100.0) * 100
GO

SELECT 
    FLOOR(distance / 10.0) * 10 AS Distance,
	FLOOR(d.altitude / 100.0) * 100 AS oH,
	FLOOR(e.altitude / 100.0) * 100 AS oH,
    SUM(car) AS TotalCar,
    SUM(train) AS TotalTrain,
    SUM(air) AS TotalAir
FROM [dbo].[odlist_2019_withdistance] a
left join [HSR_Airport] b on a.ocity=b.ocity left join [HSR_Airport] c on a.dcity=c.ocity
left join [平均海拔] d on a.ocity=d.city left join [平均海拔] e on a.dcity=e.city 
  where b.HSR=1 and c.HSR=1
GROUP BY FLOOR(distance / 10.0) * 10, FLOOR(d.altitude / 100.0) * 100, FLOOR(e.altitude / 100.0) * 100
ORDER BY FLOOR(distance / 10.0) * 10, FLOOR(d.altitude / 100.0) * 100, FLOOR(e.altitude / 100.0) * 100
GO

SELECT 
    ocity,
	dcity,
    (greatest(cast(train as decimal)/(car+train+air),0.034917*power(distance,0.380799))-cast(train as decimal)/(car+train+air)) as traingrowth,
    (greatest(cast(air as decimal)/(car+train+air),least(1.0,0.016130*power(distance,1.269689)*power(d.altitude+1,-0.41825)*power(e.altitude+1,-0.42032)))-cast(air as decimal)/(car+train+air)) as airgrowth
	INTO [dbo].[odlist_2019_growthpotential_terrain] 
FROM [dbo].[odlist_2019_withdistance] a
left join [平均海拔] d on a.ocity=d.city left join [平均海拔] e on a.dcity=e.city 
WHERE (car+train+air)>0

SELECT 
    a.ocity,
    sum(traingrowth*(car+train+air))/total as trainpotential,
    sum(airgrowth*(car+train+air))/total as airpotential
FROM [dbo].[odlist_2019_withdistance] a left join [dbo].[odlist_2019_growthpotential_terrain] b on a.ocity=b.ocity and a.dcity=b.dcity
    left join (select ocity, sum(car+train+air) as total from [dbo].[odlist_2019_withdistance] group by ocity) as c on a.ocity=c.ocity
WHERE (car+train+air)>0
GROUP BY a.ocity, c.total

SELECT 
    ocity,
	dcity,
    (greatest(cast(train as decimal)/(car+train+air),0.034917*power(distance,0.380799))-cast(train as decimal)/(car+train+air)) as traingrowth,
    (greatest(cast(air as decimal)/(car+train+air),least(1.0,0.079526*power(distance,0.230944)*power(d.altitude+1,-0.3029)*power(e.altitude+1,-0.32796)))-cast(air as decimal)/(car+train+air)) as airgrowth
	INTO [dbo].[odlist_2019_growthpotential_terrain2] 
FROM [dbo].[odlist_2019_withdistance] a
left join [平均海拔] d on a.ocity=d.city left join [平均海拔] e on a.dcity=e.city 
WHERE (car+train+air)>0

SELECT 
    a.ocity,
    sum(traingrowth*(car+train+air))/total as trainpotential,
    sum(airgrowth*(car+train+air))/total as airpotential
FROM [dbo].[odlist_2019_withdistance] a left join [dbo].[odlist_2019_growthpotential_terrain2] b on a.ocity=b.ocity and a.dcity=b.dcity
    left join (select ocity, sum(car+train+air) as total from [dbo].[odlist_2019_withdistance] group by ocity) as c on a.ocity=c.ocity
WHERE (car+train+air)>0
GROUP BY a.ocity, c.total