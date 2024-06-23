CREATE TABLE IF NOT EXISTS "users" (
    "id" INTEGER,
    "user_name" VARCHAR(100) NOT NULL,
    "password" VARCHAR(30) NOT NULL,

    CONSTRAINT user_pk PRIMARY KEY ("id")
);


