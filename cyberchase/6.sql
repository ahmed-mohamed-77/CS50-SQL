SELECT title FROM episodes
WHERE season = 6 AND strftime('%Y', air_date) = '2007';
