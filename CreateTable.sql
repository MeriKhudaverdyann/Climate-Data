CREATE TABLE weather_data (
    unnamed_id SERIAL PRIMARY KEY,
    country VARCHAR(255) NOT NULL,
    location_name VARCHAR(255) NOT NULL,
    latitude FLOAT8 NOT NULL,
    longitude FLOAT8 NOT NULL,
    timezone VARCHAR(255) NOT NULL,
    last_updated_epoch BIGINT NOT NULL,
    last_updated VARCHAR(255) NOT NULL,
    temperature_celsius FLOAT8 NOT NULL,
    temperature_fahrenheit FLOAT8 NOT NULL,
    condition_text VARCHAR(255) NOT NULL,
    wind_mph FLOAT8 NOT NULL,
    wind_kph FLOAT8 NOT NULL,
    wind_degree INT NOT NULL,
    wind_direction VARCHAR(50) NOT NULL,
    pressure_mb FLOAT8 NOT NULL,
    pressure_in FLOAT8 NOT NULL,
    precip_mm FLOAT8 NOT NULL,
    precip_in FLOAT8 NOT NULL,
    humidity INT NOT NULL,
    cloud INT NOT NULL,
    feels_like_celsius FLOAT8 NOT NULL,
    feels_like_fahrenheit FLOAT8 NOT NULL,
    visibility_km FLOAT8 NOT NULL,
    visibility_miles FLOAT8 NOT NULL,
    uv_index FLOAT8 NOT NULL,
    gust_mph FLOAT8 NOT NULL,
    gust_kph FLOAT8 NOT NULL,
    air_quality_carbon_monoxide FLOAT8 NOT NULL,
    air_quality_ozone FLOAT8 NOT NULL,
    air_quality_nitrogen_dioxide FLOAT8 NOT NULL,
    air_quality_sulphur_dioxide FLOAT8 NOT NULL,
    air_quality_pm2_5 FLOAT8 NOT NULL,
    air_quality_pm10 FLOAT8 NOT NULL,
    air_quality_us_epa_index INT NOT NULL,
    air_quality_gb_defra_index INT NOT NULL,
    sunrise VARCHAR(255) NOT NULL,
    sunset VARCHAR(255) NOT NULL,
    moonrise VARCHAR(255) NOT NULL,
    moonset VARCHAR(255) NOT NULL,
    moon_phase VARCHAR(255) NOT NULL,
    moon_illumination INT NOT NULL,
    agrofood_category VARCHAR(255) NOT NULL,
    heat_index_c FLOAT8 NOT NULL,
    wind_chill_index_c FLOAT8 NOT NULL,
    cloud_cover_percentage FLOAT8 NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    disaster VARCHAR(255) NOT NULL,
    air_pollution_level FLOAT8 NOT NULL,
    pollution_category VARCHAR(255) NOT NULL
);

UPDATE weather_data
SET location_name = CASE
    WHEN location_name = '-Kingdom' THEN 'Gülşehir'
    WHEN location_name = '''S Gravenjansdyk' THEN '''S Gravenjansdijk'
    ELSE location_name  -- Keep the original name if it doesn't match
END
WHERE location_name IN ('-Kingdom', '''S Gravenjansdyk');


