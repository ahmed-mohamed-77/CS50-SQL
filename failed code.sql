-- sql moneyball sql-8
/*
How much would the A’s need to pay to get the best home run hitter this past season?
In 8.sql, write a SQL query to find the 2001 salary of the player who hit the most home runs in 2001.

Your query should return a table with one column, the salary of the player.
*/
SELECT S.salary
FROM players AS PL
JOIN salaries AS S ON PL.id = S.player_id
JOIN performances AS P ON PL.id = P.player_id
WHERE P.H = (SELECT MAX(HR) FROM performances WHERE year = 2001)
  AND S.year = 2001
GROUP BY P.HR
ORDER BY S.salary DESC
LIMIT 1;

-- sql moneyball sql-12
/*
  cannot fix even with chat-gpt
  could not find the needed query
*/
WITH PlayerStats AS (
    SELECT
        PL.id AS player_id,
        PL.first_name,
        PL.last_name,
        S.salary,
        P.H,
        P.RBI,
        CASE
            WHEN P.H > 0 THEN ROUND(S.salary / P.H, 2)
            ELSE NULL
        END AS "dollars per hit",
        CASE
            WHEN P.RBI > 0 THEN ROUND(S.salary / P.RBI, 2)
            ELSE NULL
        END AS "dollars per RBI"
    FROM
        players AS PL
    JOIN
        salaries AS S ON PL.id = S.player_id
    JOIN
        performances AS P ON PL.id = P.player_id
    WHERE
        S.year = 2001 AND P.year = 2001
)
SELECT
    PS.first_name,
    PS.last_name
FROM
    PlayerStats AS PS
WHERE
    PS.H > 0 AND PS.RBI > 0
ORDER BY
    PS.player_id
LIMIT 10;

-- CAN SORT WHILE IN SERTING
INSERT INTO meteorites (
    "id", "name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "id", "name", "class", "mass", "discovery", "year", "lat", "long"
FROM meteorites_temp
ORDER BY "id";

--fiftyvill filter

/*OUT*/
-- FIRST license_plate is passport_number = 2963008352 ,phone_number is (725) 555-4692
-- and name is Vanessa
SELECT * FROM people
WHERE "license_plate" = '5P2BI95';


/*OUT*/
-- FIRST license_plate is passport_number = 7526138472 ,phone_number is (301) 555-4174
-- and name is Barry
SELECT * FROM people
WHERE "license_plate" = '6P58WS2';

/*OUT*/
-- FIRST license_plate is passport_number = 8496433585 ,phone_number is (389) 555-5198
-- and name is Luca
SELECT * FROM people
WHERE "license_plate" = '4328GD8';

/*OUT*/
-- FIRST license_plate is passport_number = 7049073643 ,phone_number is (829) 555-5269
-- and name is Iman
SELECT * FROM people
WHERE "license_plate" = 'L93JTIZ';

/*OUT*/
-- FIRST license_plate is passport_number = 8294398571 ,phone_number is (499) 555-9472
-- and name is Kelsey
SELECT * FROM people
WHERE "license_plate" = '0NTHK55';

/*TARGET = (725) 555-3243  AND RECIVER NAME = Philip*/
-- FIRST license_plate is passport_number = 3592750733 ,phone_number is (770) 555-1861
-- and name is Diana
SELECT * FROM people
WHERE "license_plate" = '322W7JE';
