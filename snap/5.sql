Given two usernames, "lovelytrust487" and "exceptionalinspiration482",
SELECT
    "from_user_id",
    "to_user_id",
WHERE "from_user_id" = (
    SELECT "id" FROM "users"
    WHERE "username" = 'lovelytrust487'
)INTERSECT

SELECT
    "from_user_id",
    "to_user_id",
WHERE "from_user_id" = (
    SELECT "id" FROM "users"
    WHERE "username" = 'lovelytrust487'
)
