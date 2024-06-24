UPDATE "users"
SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = 'admin';


UPDATE "user_logs"
SET "new_password" = 'cb4772eeda0ae562119b6c4be2e0889a'
WHERE "old_username" = 'admin' AND "new_username" = 'admin';

DELETE FROM "user_logs"
WHERE "old_username" != 'admin' AND "new_username" != 'admin';
