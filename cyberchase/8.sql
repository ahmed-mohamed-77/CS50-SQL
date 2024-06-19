SELECT count(*) FROM episodes
WHERE strftime('%Y', air_date) BETWEEN '2018' and '2023';
