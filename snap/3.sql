EXPLAIN QUERY PLAN
SELECT
    id,
    COUNT(from_user_id) AS "creativewisdom377",
    to_user_id,
    picture,
    sent_timestamp,
    viewed_timestamp,
    expires_timestamp
FROM  "messages"
WHERE "from_user_id" IN (
    SELECT id FROM users
    WHERE username = 'creativewisdom377'
)
GROUP BY to_user_id
ORDER BY COUNT(from_user_id) DESC
LIMIT 3;
