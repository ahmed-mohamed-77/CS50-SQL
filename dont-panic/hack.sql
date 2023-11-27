UPDATE "users" SET password = 'oops!'
WHERE "id" = 1;

DELETE FROM user_logs WHERE id = (
    SELECT id FROM user_logs
    WHERE old_username = 'admin'
);
