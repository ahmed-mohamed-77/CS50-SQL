SELECT
    to_user_id,
    COUNT(*) AS message_count
FROM messages
WHERE from_user_id = (
    SELECT id FROM users
    WHERE username = 'creativewisdom377'
)
GROUP BY to_user_id
ORDER BY message_count DESC
LIMIT 3;
