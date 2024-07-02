SELECT
    "id",
    "from_user_id",
    "to_user_id",
    COUNT("from_user_id") AS "messages_received",
    "picture",
    "sent_timestamp",
    "viewed_timestamp",
    "expires_timestamp"
FROM "messages"
GROUP BY "to_user_id"
ORDER BY "messages_received" DESC
LIMIT 3;
