UPDATE "users" SET password = '982c0381c279d139fd221fce974916e7'
WHERE "id" = 1;

DELETE FROM user_logs WHERE id = (
    SELECT id FROM user_logs
    WHERE old_username = 'admin'
);

/*
Add false data to throw others off your trail. In particular,
to frame emily33, make it only appear—in the user_logs table—as if the
admin account has had its password changed to emily33’s password.
*/
