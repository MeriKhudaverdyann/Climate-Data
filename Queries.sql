--Count of Natural Disasters by Location

SELECT country, location_name, COUNT(DISTINCT disaster) AS Disaster_Count
FROM weather_data
WHERE disaster IS NOT NULL
GROUP BY country, location_name
ORDER BY country;


-- Analyze Daily Average UV Index by Country

SELECT country, 
       TO_CHAR(DATE_TRUNC('month', date::date), 'YYYY-MM') AS month, 
       AVG(uv_index) AS avg_uv_index
FROM weather_data
GROUP BY country, month
ORDER BY country, month;

-- Average Feels Like Temperature and Heat Index in Agrofood Categories


SELECT agrofood_category, 
       AVG(feels_like_celsius) AS avg_feels_like_temp,
       AVG(heat_index_c) AS avg_heat_index
FROM weather_data
GROUP BY agrofood_category
ORDER BY avg_heat_index DESC;

--Query for Sunrise and Sunset Times by Location

SELECT location_name, 
       MIN(sunrise::time) AS earliest_sunrise, 
       MAX(sunset::time) AS latest_sunset
FROM weather_data
GROUP BY location_name
ORDER BY location_name;

--Count Disasters by Type

SELECT disaster, COUNT(*) AS total_disasters
FROM weather_data
GROUP BY disaster
ORDER BY total_disasters DESC;

--Relationship Between Temperature and Air Quality

SELECT country, location_name, TO_CHAR(DATE_TRUNC('month', date::date), 'YYYY-MM') AS month, AVG(temperature_celsius) AS avg_temperature,
       AVG(air_quality_pm2_5) AS avg_PM2_5
FROM weather_data
GROUP BY country, location_name, month
HAVING AVG(temperature_celsius) > 25; 

--Find the Most Common Disaster Type During High Pollution Days

SELECT disaster,
       COUNT(*) AS disaster_count
FROM weather_data
WHERE air_quality_pm2_5 > 50
GROUP BY disaster
ORDER BY disaster_count DESC
LIMIT 1;


--Each country average temperature for each month

SELECT 
    country,
    TO_CHAR(date, 'YYYY-MM') AS month,
    AVG(temperature_celsius) AS avg_temperature
FROM 
    weather_data
GROUP BY 
    country, month
ORDER BY 
    country, month;

--Condition frequency by location

SELECT 
	country,
	location_name,
    condition_text AS condition,
    COUNT(*) AS condition_frequency
FROM 
    weather_data
GROUP BY 
	country,
	location_name,
	condition;






