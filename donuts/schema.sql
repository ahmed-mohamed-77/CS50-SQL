
CREATE TABLE IF NOT EXISTS "ingredients" (
    "id" INTEGER,
    "name" VARCHAR(50) NOT NULL,
    "unit" INTEGER NOT NULL,
    "price_per_unit" REAL,

    CONSTRAINT ingredients_PK PRIMARY KEY ("id")
);




CREATE TABLE IF NOT EXISTS "donuts" (
    "id" INTEGER,
    "name" VARCHAR(50) NOT NULL,
    "gluten_free" INTEGER NOT NULL CHECK ("gluten_free" IN (0,1)),
    "price" REAL NOT NULL,

    CONSTRAINT donuts_PK PRIMARY KEY ("id")
);


CREATE TABLE IF NOT EXISTS "donuts_ingredients" (
    "donuts_id" INTEGER,
    "ingredients_id" INTEGER,

    CONSTRAINT donuts_ingredients_PK PRIMARY KEY ( "donuts_id", "ingredients_id"),
    CONSTRAINT donuts_FK FOREIGN KEY ("donuts_id") REFERENCES "donuts"("donuts_id"),
    CONSTRAINT ingredients_FK FOREIGN KEY ("ingredients_id") REFERENCES "ingredients"("ingredients_id")
);



CREATE TABLE IF NOT EXISTS "customers"(
    "id" INTEGER,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,

    CONSTRAINT customer_PK PRIMARY KEY ("id")
);



CREATE TABLE IF NOT EXISTS "orders" (
    "id" INTEGER,
    "customer_id" INTEGER,

    CONSTRAINT order_pk PRIMARY KEY ("id")
);


CREATE TABLE IF NOT EXISTS "orders_donuts" (
    "orders_id" INTEGER,
    "donuts_id" INTEGER,
    "quantity" INTEGER NOT NULL,

    CONSTRAINT orders_donuts_pk PRIMARY KEY ("orders_id", "donuts_id"),
    CONSTRAINT orders_id_fk FOREIGN KEY ("orders_id") REFERENCES "orders" ("id"),
    CONSTRAINT donuts_id_fk FOREIGN KEY ("donuts_id") REFERENCES "donuts" ("id")
);
