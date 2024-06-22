
-- *** The Lost Letter ***
SELECT *  FROM addresses
WHERE "address" = '900 Somerville Avenue';

SELECT *  FROM addresses
WHERE "address" = '2 Finnigan Street';

SELECT * FROM "scans"
WHERE "address_id" = (
    SELECT "id"  FROM addresses
    WHERE "address" = '900 Somerville Avenue'
);

SELECT * FROM "packages" AS P
JOIN "addresses" AS A ON P.from_address_id = A.id
WHERE P.from_address_id = (
    SELECT "id"  FROM addresses
    WHERE "address" = '900 Somerville Avenue'
) AND P.to_address_id =(
    SELECT "id"  FROM addresses
    WHERE "address" = '2 Finnigan Street'
);


SELECT * FROM "packages" WHERE id = 384;
SELECT * FROM "scans" WHERE "package_id" = 384;

-- *** The Devious Delivery ***
SELECT *  FROM addresses
WHERE "address" = '109 Tileston Street';

SELECT *  FROM addresses
WHERE "address" = '728 Maple Place';



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

-- *** The Forgotten Gift ***



