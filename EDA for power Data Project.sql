
-- Exploratory Data Analysis For Net Hourly Electrical Energy output


-- Selection for all columns in data table
SELECT * FROM [Portfolio project].[dbo].[Power_data];



--Count of rows
SELECT COUNT(*) AS row_count FROM [Portfolio project].[dbo].[Power_data];


-- summ of missing vlaues for some columns

SELECT 
    SUM(CASE WHEN [Avg temperature] IS NULL THEN 1 ELSE 0 END) AS missing_temperature,
    SUM(CASE WHEN [Net hourly electrical energy output] IS NULL THEN 1 ELSE 0 END) AS missing_energy_Output,
	SUM(CASE WHEN [Relative humidity] IS NULL THEN 1 ELSE 0 END) AS missing_Relative_huimdity
FROM [Portfolio project].[dbo].[Power_data];


-- Highest Net hourly electrical energy output

Select  Max([Net hourly electrical energy output]) Highest_energy_output
From [Portfolio project].[dbo].[Power_data] 


-- Minimum Net hourly electrical energy output
Select  Min([Net hourly electrical energy output]) Lowest_energy_output
From [Portfolio project].[dbo].[Power_data] 


--Average hourly electrical energy output 

Select Avg(Cast([Net hourly electrical energy output] as float)) Average_energy_output
From [Portfolio project].[dbo].[Power_data] 




-- Average temperature for higher Net hourly electrical energy output
SELECT Top 1 [Avg temperature],[Net hourly electrical energy output] 
From [Portfolio project].[dbo].[Power_data]
Order by [Net hourly electrical energy output] desc

-- Average temperature for lower Net hourly electrical energy output
SELECT Top 1 [Avg temperature],[Net hourly electrical energy output] 
From [Portfolio project].[dbo].[Power_data]
Order by [Net hourly electrical energy output] asc


-- Average Relative humidity for higher Net hourly electrical energy output
SELECT Top 1 [Relative humidity],[Net hourly electrical energy output] 
From [Portfolio project].[dbo].[Power_data]
Order by [Net hourly electrical energy output] desc


-- Average Relative humidity for lower Net hourly electrical energy output
SELECT Top 1 [Relative humidity],[Net hourly electrical energy output] 
From [Portfolio project].[dbo].[Power_data]
Order by [Net hourly electrical energy output] asc













