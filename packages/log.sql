
-- *** The Lost Letter ***

-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***

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
    WHERE "address_id" = '109 Tileston Street'
);
