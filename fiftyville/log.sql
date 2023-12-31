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

/*TARGET (RECIVER = (676) 555-6554  AND RECIVER NAME = James)*/
-- FIRST license_plate is passport_number = 1988161715 ,phone_number is (286) 555-6063
-- and name is Taylor
-- 266 | 76054385| 2021| 7| 28|Leggett Street | withdraw| 60
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

SELECT * FROM flights AS F
JOIN passengers AS P ON F.id = P.flight_id
WHERE "month" = 7 AND "day" = 29 AND "hour" < 12
AND "passport_number" IN ('5773159633', '1695452385', '1988161715');


SELECT DISTINCT atm_location FROM  atm_transactions
WHERE "month" = 7 AND "day" BETWEEN 28 AND 29;
/*I don't know the thief's name, but it was someone I recognized.
Earlier this morning, before I arrived at Emma's bakery,
I was walking by the ATM on Leggett Street and saw the thief there withdrawing some money.*/

SELECT * FROM  atm_transactions
WHERE "month" = 7 AND "day" = 28
AND "atm_location" = 'Leggett Street' AND "transaction_type" = 'withdraw';


/*TARGET (RECIVER = (676) 555-6554  AND RECIVER NAME = James)*/
-- FIRST license_plate is passport_number = 1988161715 ,phone_number is (286) 555-6063
-- and name is Taylor
-- 266 | 76054385| 2021| 7| 28|Leggett Street | withdraw| 60
SELECT * FROM bank_accounts AS BA
JOIN people AS P ON BA.person_id =P.id
WHERE "account_number" = '76054385';


-- the theif
/*TARGET (RECIVER = (375) 555-8161 AND RECIVER NAME = Robin)*/
-- FIRST license_plate is passport_number = 5773159633 ,phone_number is (367) 555-5533
-- and name is Bruce
SELECT * FROM bank_accounts AS BA
JOIN people AS P ON BA.person_id =P.id
WHERE "account_number" = '49610011';

-- The city the thief ESCAPED TO:
SELECT city  FROM airports
WHERE "id" = (
    SELECT destination_airport_id FROM flights
    WHERE "year" = 2021 AND  "month" = 7 AND "day" = 29
    AND "origin_airport_id" = (
        SELECT "id" FROM airports
        WHERE "city" = 'Fiftyville'
    )
    ORDER BY "hour", "minute"
    LIMIT 1
);

