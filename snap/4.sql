SELECT
    "users"."username",
    "to_user_id",
    COUNT("from_user_id") AS "messages_received"
FROM "messages"
JOIN "users" ON "messages"."from_user_id" = "users"."id"
GROUP BY "to_user_id"
ORDER BY "messages_received" DESC;
