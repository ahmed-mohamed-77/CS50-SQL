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
WHERE "month" = 7 AND "day" = 29;

/*TARGET (RECIVER = (375) 555-8161 AND RECIVER NAME = Robin)*/
-- FIRST license_plate is passport_number = 5773159633 ,phone_number is (367) 555-5533
-- and name is Bruce
SELECT * FROM people
WHERE "license_plate" = '94KL13X';

/*TARGET (RECIVER = (996) 555-8899 AND RECIVER NAME = Jack)*/
-- FIRST license_plate is passport_number = 1695452385 ,phone_number is (130) 555-0289
-- and name is Sofia
SELECT * FROM people
WHERE "license_plate" = 'G412CB7';

/*TARGET = (725) 555-3243  AND RECIVER NAME = Philip*/
-- FIRST license_plate is passport_number = 3592750733 ,phone_number is (770) 555-1861
-- and name is Diana
SELECT * FROM people
WHERE "license_plate" = '322W7JE';

/*TARGET (RECIVER = (676) 555-6554  AND RECIVER NAME = James)*/
-- FIRST license_plate is passport_number = 1988161715 ,phone_number is (286) 555-6063
-- and name is Taylor
SELECT * FROM people
WHERE "license_plate" = '1106N58';

-- filter calls less than 60 sec
SELECT * FROM phone_calls
WHERE "month" = 7 AND "day" = 28 AND "duration" < 60;

SELECT * FROM phone_calls
WHERE "month" = 7 AND "day" = 28 AND "duration" < 60
AND "caller" = '(286) 555-6063';

-- early flights
-- All flights in 29/7
SELECT * FROM flights
WHERE "month" = 7 AND "day" = 29 AND "hour" < 12;

-- IDENTIFY THE RECIVER
SELECT * FROM  people
WHERE "phone_number" = '(676) 555-6554';

SELECT * FROM flights AS F
JOIN passengers AS P ON F.id = P.flight_id
WHERE "month" = 7 AND "day" = 29 AND "hour" < 12;

