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

--Select the time frame
SELECT * FROM  bakery_security_logs
WHERE "month" = 7 AND "day" = 28 AND "hour" = 10 and "minute" BETWEEN 16 AND 35
    AND"activity" = 'exit';

-- All flights in 29/7
SELECT * FROM flights
WHERE "month" = 7 AND "day" = 29 ;

-- FIRST license_plate is passport_number = 2963008352 ,phone_number is (725) 555-4692
-- and name is Vanessa
SELECT * FROM people
WHERE "license_plate" = '5P2BI95';

-- FIRST license_plate is passport_number = 5773159633 ,phone_number is (367) 555-5533
-- and name is Bruce
SELECT * FROM people
WHERE "license_plate" = '94KL13X';

-- FIRST license_plate is passport_number = 7526138472 ,phone_number is (301) 555-4174
-- and name is Barry
SELECT * FROM people
WHERE "license_plate" = '6P58WS2';

-- FIRST license_plate is passport_number = 8496433585 ,phone_number is (389) 555-5198
-- and name is Luca
SELECT * FROM people
WHERE "license_plate" = '4328GD8';

-- FIRST license_plate is passport_number = 1695452385 ,phone_number is (130) 555-0289
-- and name is Sofia
SELECT * FROM people
WHERE "license_plate" = 'G412CB7';

-- FIRST license_plate is passport_number = 7049073643 ,phone_number is (829) 555-5269
-- and name is Iman
SELECT * FROM people
WHERE "license_plate" = 'L93JTIZ';

-- FIRST license_plate is passport_number = 3592750733 ,phone_number is (770) 555-1861
-- and name is Diana
SELECT * FROM people
WHERE "license_plate" = '322W7JE';

-- FIRST license_plate is passport_number = 8294398571 ,phone_number is (499) 555-9472
-- and name is Kelsey
SELECT * FROM people
WHERE "license_plate" = '0NTHK55';

-- FIRST license_plate is passport_number = 1988161715 ,phone_number is (286) 555-6063
-- and name is Taylor
SELECT * FROM people
WHERE "license_plate" = '1106N58';

-- filter calls less than 60 sec
SELECT * FROM phone_calls
WHERE "month" = 7 AND "day" = 28 AND "duration" < 60;

SELECT * FROM phone_calls
WHERE "month" = 7 AND "day" = 28 AND "duration" < 60
AND "caller" = '(725) 555-4692';
