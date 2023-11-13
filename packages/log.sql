
-- *** The Lost Letter ***

SELECT * FROM addresses
WHERE "address" LIKE '2 Fin%';

SELECT "id" FROM addresses
WHERE "address" = '900 Somerville Avenue')

SELECT * FROM scans
WHERE "package_id" = (
    SELECT "id" FROM packages
    WHERE "from_address_id" =(
        SELECT "id" FROM addresses
        WHERE "address" = '900 Somerville Avenue')
    AND "to_address_id" =
        (SELECT "id" FROM addresses
        WHERE "address" LIKE '2 Fin%')
);

-- *** The Devious Delivery ***
/*
At what type of address did the Devious Delivery end up?:
What were the contents of the Devious Delivery?:
*/

SELECT * FROM packages
WHERE "from_address_id" IS NULL;

SELECT * FROM addresses
WHERE "id" = 50;

-- *** The Forgotten Gift ***

