SELECT title
FROM episodes
WHERE strftime('%m', air_date) = '12';

SELECT
    strftime('%Y', air_date) AS "year",
    min(strftime('%m-%d', air_date)) AS "earliest_month_day"
FROM
    episodes
WHERE
    "title" LIKE 'Cyberchase%'
GROUP BY
    "air_date";