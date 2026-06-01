use cyclistic;

--total rides
SELECT
COUNT(*) AS total_rides
FROM trips;


-- Total number of rides by member_casual
SELECT member_casual,
count(*) AS total_rides
FROM trips
GROUP BY member_casual;


--average ride duration
SELECT 
AVG(TIMESTAMPDIFF(MINUTE,started_at,ended_at)) AS avg_ride_duration
FROM trips;


--average_ride_duration by member_casual
SELECT member_casual,
AVG(TIMESTAMPDIFF(MINUTE,started_at,ended_at)) AS avg_ride_duration
FROM trips
GROUP BY member_casual;


--Rides by day of week
SELECT 
DAYNAME(started_at) AS day_of_week,
member_casual,
COUNT(*) AS num_of_rides
FROM trips
GROUP BY day_of_week,member_casual
ORDER BY member_casual;


--weekday vs weekend analysis
SELECT
CASE
WHEN DAYNAME(started_at) IN ('Saturday','Sunday')
THEN 'WEEKEND'
ELSE 'WEEKDAY'
END AS day_type,
member_casual,
COUNT(*) AS total_rides
FROM trips
GROUP BY day_type,member_casual
ORDER BY day_type;


--monthly trends
SELECT
MONTHNAME(started_at) as ride_month,
count(*) AS total_rides
FROM trips
GROUP BY ride_month
ORDER BY total_rides DESC;


--monthly trends by member_casual
SELECT
MONTHNAME(started_at) as ride_month,
member_casual,
count(*) AS total_rides
FROM trips
GROUP BY ride_month,member_casual
ORDER BY total_rides DESC;


--bike type preference
SELECT
rideable_type,
member_casual,
count(*) AS no_of_riders
FROM trips
GROUP BY rideable_type,member_casual;


--peak hour analysis
SELECT
HOUR(started_at)AS peak_hour,
count(*) as ride_count
FROM trips
GROUP BY peak_hour
ORDER BY ride_count DESC;


-- peak month analysis
SELECT
MONTHNAME(started_at) as ride_month,
count(*) AS total_rides
FROM trips
GROUP BY ride_month
ORDER BY total_rides DESC;


