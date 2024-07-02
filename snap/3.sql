
SELECT * , COUNT("to_user_id") FROM  "messages"
WHERE "from_user_id" IN (
    SELECT id FROM users
    WHERE username = 'creativewisdom377'
)
GROUP BY from_user_id;
