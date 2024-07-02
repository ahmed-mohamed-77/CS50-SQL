SELECT
    "users"."username"
FROM "messages"
JOIN "users" ON "messages"."from_user_id" = "users"."id"
GROUP BY "from_user_id"
ORDER BY COUNT("to_user_id") DESC, "users"."username" ASC;

