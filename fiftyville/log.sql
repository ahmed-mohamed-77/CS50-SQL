SELECT "description" FROM crime_scene_reports
WHERE "month" = 7 AND "day" = 28 AND "street" = 'Humphrey Street';

SELECT * FROM crime_scene_reports
WHERE  "street" LIKE  'hump%';


/*Theft of the CS50 duck took place at 10:15am at the Humphrey Street bakery.
Interviews were conducted today with three witnesses who were present at the time –
each of their interview transcripts mentions the bakery.
*/

SELECT * FROM  bakery_security_logs
WHERE "month" = 7 AND "day" = 28 AND "activity" = 'exit';

SELECT * FROM interviews
WHERE 	"month" = 7 AND	"day" = 28 AND "transcript" LIKE '%the bakery%';

/*
If you have security footage from the bakery parking lot, you might want to look for cars that left the parking lot in that time frame.
they called someone who talked to them for less than a minute. In the call, I heard the thief say that they were planning to
take the earliest flight out of Fiftyville tomorrow. The thief then asked the person on the other end of the phone to purchase the flight ...
*/

SELECT * FROM bakery_security_logs
WHERE month	day	hour	minute	activity

-- All flights in 29/7
SELECT * FROM flights
WHERE "month" = 7 AND "day" = 29 ;
