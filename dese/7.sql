SELECT  "name" FROM "schools"
WHERE "district_id" IN (
    SELECT "id" from "districts"
    WHERE "name" = 'Cambridge'
);
