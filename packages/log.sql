
-- *** The Lost Letter ***

-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***

SELECT *  FROM addresses
WHERE "address" = '109 Tileston Street';

SELECT *  FROM addresses
WHERE "address" = '728 Maple Place';

SELECT *  FROM addresses
WHERE "address" = '900 Somerville Avenue';

SELECT *  FROM addresses
WHERE "address" = '2 Finnigan Street';

SELECT * FROM "packages"
WHERE "from_address_id" = (
    SELECT "id"  FROM addresses
    WHERE "address" = '109 Tileston Street'
);

SELECT * FROM "packages"
WHERE "from_address_id" = 9873;


SELECT * FROM "scans"
WHERE "address_id" = (
    SELECT "id"  FROM addresses
    WHERE "address" = '109 Tileston Street'
);
SELECT * FROM "scans"
WHERE "address_id" =9873;


SELECT * FROM "scans"
WHERE "address_id" = (
    SELECT "id"  FROM addresses
    WHERE "address" = '900 Somerville Avenue'
);

SELECT * FROM "packages" AS P
JOIN "addresses" AS A ON P.from_address_id = A.id AND  P.to_address_id = A.id
WHERE P.from_address_id =(
    SELECT "id"  FROM addresses
    WHERE "address" = '900 Somerville Avenue'
) AND P.to_address_id =(
    SELECT "id"  FROM addresses
    WHERE "address" = '2 Finnigan Street'
);
