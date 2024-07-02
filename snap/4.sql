SELECT
    u.username
FROM messages m
JOIN users u ON m.to_user_id = u.id
GROUP BY u.username, m.to_user_id
ORDER BY COUNT(m.from_user_id) DESC, u.username ASC
