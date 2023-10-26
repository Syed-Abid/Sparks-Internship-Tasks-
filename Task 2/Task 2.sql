SELECT *
FROM PortfolioProject.dbo.Terrorism

-- Which region has more number of crime occurences? ( Use in Dashboard)
SELECT DISTINCT(Region), COUNT(Region) AS TotalCrime
FROM dbo.Terrorism
GROUP BY Region
ORDER BY TotalCrime DESC;

-- Which country has more crime occurences? (Use in Dashboard)
SELECT DISTINCT(Country), COUNT(Country) AS Attack_Occurence
FROM dbo.Terrorism
GROUP BY Country
ORDER BY Attack_Occurence DESC;

-- In which year most of the crime occurred? (Use in Dashboard)
SELECT DISTINCT(Year), COUNT(Year) AS Attack_Occurrence
FROM dbo.Terrorism
GROUP BY Year
ORDER BY Attack_Occurrence DESC;

-- Most Common attacktype? ( Use in Dashboard)
SELECT DISTINCT(Attacktype1),COUNT(Attacktype1) AS Method_Frequency
FROM dbo.Terrorism
GROUP BY Attacktype1
ORDER BY Method_Frequency DESC;

-- Number of attacks in certain countries and it's cities
--SELECT DISTINCT(Country), City,Attacktype1,Location
--FROM dbo.globalterrorismdb_0718dist$
--GROUP BY Country, City, Location, Attacktype1;

--SELECT CAST(Success AS VARCHAR(100)) AS Success1
--FROM dbo.Terrorism;

--SELECT COLUMN_NAME, DATA_TYPE
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = 'Terrorism' AND COLUMN_NAME = 'Success1';



--SELECT COLUMN_NAME, DATA_TYPE
--FROM INFORMATION_SCHEMA.COLUMNS
--WHERE TABLE_NAME = 'Terrorism' AND COLUMN_NAME = 'Success';


-- Upating data for Success column
--UPDATE dbo.Terrorism
--SET Success = 'Successful'
--WHERE Success = 1;

--How many attacks were successful? but first rename 1 with successful and 0 with unsuccessful
--SELECT DISTINCT(Success) , COUNT(Success) AS NO_of_Attacks
--FROM dbo.Terrorism
--WHERE Success = '1' OR Success = '0'
--GROUP BY Success
--ORDER BY NO_of_Attacks;


--What is the most common weapon type used in all of the attacks? (Use in Dashboard)
SELECT DISTINCT(Weaponsubtype1) , COUNT(Weaponsubtype1) AS Weapon_usage_frequency
FROM dbo.Terrorism
GROUP BY Weaponsubtype1
ORDER BY Weapon_usage_frequency DESC;

-- Whom was mostly targeted in these attacks?(Use in Dashboard)
SELECT DISTINCT(Target1), COUNT(Target1) AS TargetUsed
FROM dbo.Terrorism
GROUP BY Target1
HAVING COUNT(Target1) > 150
ORDER BY COUNT(Target1) DESC;


