SELECT
    "users"."username"
FROM "messages"
JOIN "users" ON "messages"."from_user_id" = "users"."id"
GROUP BY "to_user_id"
ORDER BY COUNT("from_user_id") DESC, "users"."username" ASC;
The app needs to send users a summary of their engagement. Find the username of the most popular user, defined as the user who has had the most messages sent to them. If two or more users have had the same number of messages sent to them, return the username that is first alphabetically.

Ensure your query uses the search_messages_by_to_user_id index, which is defined as follows:
