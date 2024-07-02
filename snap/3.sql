
SELECT * FROM  "messages"
WHERE "from_user_id" IN (
    SELECT id FROM users
    WHERE username = 'creativewisdom377'
);
