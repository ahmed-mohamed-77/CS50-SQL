SELECT COUNT(*) FROM episodes
WHERE strftime('%Y', air_date) between '2002' AND '2007';
