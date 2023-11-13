
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

SELECT * FROM packages
WHERE "from_address_id" IS NULL;

SELECT * FROM scans
WHERE "package_id" =
    (SELECT "id" FROM packages
    WHERE "from_address_id" IS NULL);

SELECT * FROM addresses
WHERE "id" = 348;

-- *** The Forgotten Gift ***

-- BOTH ADDRESSES CORRECT
SELECT * FROM addresses
WHERE "address" = '109 Tileston Street';

SELECT * FROM addresses
WHERE "address" = '728 Maple Place';

-- TO FIND THE CONTENT ID

SELECT * FROM packages
WHERE "from_address_id" = (
    SELECT "id" FROM addresses
    WHERE "address" = '109 Tileston Street'
)
AND "to_address_id" = (
    SELECT "id" FROM addresses
    WHERE "address" = '728 Maple Place'
);

SELECT * FROM scans
WHERE package_id =(
        SELECT "id" FROM packages
    WHERE "from_address_id" = (
        SELECT "id" FROM addresses
        WHERE "address" = '109 Tileston Street'
    )
    AND "to_address_id" = (
        SELECT "id" FROM addresses
        WHERE "address" = '728 Maple Place'
    )
);
