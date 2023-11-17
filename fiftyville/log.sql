SELECT "description" FROM crime_scene_reports
WHERE "month" = 7 AND "day" = 28 AND "street" = 'Humphrey Street';

SELECT * FROM crime_scene_reports
WHERE  "street" LIKE  'hump%';


/*Theft of the CS50 duck took place at 10:15am at the Humphrey Street bakery.
Interviews were conducted today with three witnesses who were present at the time –
each of their interview transcripts mentions the bakery.
*/

SELECT * FROM  bakery_security_logs
WHERE "month" = 7 AND "day" = 28 AND "hour" = 10 AND "minute" = 15;

SELECT * FROM interviews
WHERE 	"month" = 7 AND	"day" = 28 AND "transcript" LIKE '%the bakery%';
