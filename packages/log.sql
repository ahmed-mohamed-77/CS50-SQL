
-- *** The Lost Letter ***

SELECT * FROM addresses
WHERE "address" = '900 Somerville Avenue';

SELECT * FROM addresses
WHERE "address" LIKE '2 Fin%';

SELECT * FROM packages
WHERE "from_address_id" =(
    SELECT  FROM addresses
    WHERE "address" = '900 Somerville Avenue')
AND "to_address_id" =
    (SELECT * FROM addresses
    WHERE "address" LIKE '2 Fin%');

-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***

