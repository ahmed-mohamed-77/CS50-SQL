The app’s user engagement team needs to identify active users. Find all usernames of users who have logged in
 since 2024-01-01. Ensure your query uses the search_users_by_last_login index, which is defined as follows:


CREATE TABLE IF NOT EXISTS "users" (
    "id" INTEGER,
    "username" TEXT NOT NULL UNIQUE,
    "phone_number" TEXT NOT NULL UNIQUE,
    "joined_date" NUMERIC NOT NULL,
    "last_login_date" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);
select * from users where strftime('%Y',joined_date) = 2024;
