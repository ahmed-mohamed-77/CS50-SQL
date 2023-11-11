/*
In 7.sql, write a SQL query to count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.
*/
SELECT COUNT(*) , "bats", "throws" FROM players
GROUP BY "bats"
HAVING "bats" = 'R' OR "throws" = 'L';
