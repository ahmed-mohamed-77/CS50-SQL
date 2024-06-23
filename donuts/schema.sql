
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


We love to see customers in person, though we realize a good number of people might order online nowadays.
We’d love to be able to keep track of those online orders. We think we would need to store:

An order number, to keep track of each order internally
All the donuts in the order
The customer who placed the order. We suppose we could assume only one customer places any given order.



CREATE TABLE IF NOT EXISTS "customers"(
    "id" INTEGER,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,

    CONSTRAINT customer_PK PRIMARY KEY ("id")
);

CREATE TABLE IF NOT EXISTS "orders" (
    "id" INTEGER,
    "customer_id" INTEGER,
    
)

