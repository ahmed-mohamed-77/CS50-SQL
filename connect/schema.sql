CREATE TABLE users(
    "id" INT NOT NULL,
    "first_name" TEXT NOT NULL,
    "Last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,

    CONSTRAINT user_PK PRIMARY KEY ("id")
);

CREATE TABLE schoolsanduniversities(
    "id" INT NOT NULL,
    
);
