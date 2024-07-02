SELECT
    "id",
    COUNT("from_user_id"),
    "to_user_id",
    "picture",
    "sent_timestamp",
    "viewed_timestamp",
    "expires_timestamp"
FROM "messages"
GROUP BY "to_user_id";
