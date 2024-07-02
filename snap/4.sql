SELECT
    "users"."username"
FROM "messages"
JOIN "users" ON "messages"."from_user_id" = "users"."id"
GROUP BY "to_user_id"
ORDER BY COUNT("from_user_id") DESC, "users"."username" ASC;
