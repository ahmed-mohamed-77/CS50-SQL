CREATE TABLE Ingredients(
    "id" INT,
    "name" TEXT NOT NULL,
    "unit" TEXT NOT NULL,
    "price_per_unit" NUMERIC NOT NULL,

    CONSTRAINT Ingredients_PK PRIMARY KEY("id")
);

CREATE TABLE Donuts(
    "id" INT,
    "ingredients_id" INT NOT NULL,
    "name" TEXT NOT NULL,
    "gluten_free" BOOLEAN NOT NULL,
    "price_per_donuts" NUMERIC NOT NULL,

    CONSTRAINT Donuts_PK PRIMARY KEY("id"),
    CONSTRAINT Ingredients_FK FOREIGN KEY("ingredients_id") REFERENCES "Ingredients"("id")
);

CREATE TABLE Orders(
    "id" INT
    ""
);

CREATE TABLE Customers(
    "id" INT,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "order_id" INT,

    CONSTRAINT Customers_PK PRIMARY KEY ("id"),
    CONSTRAINT Customers_FK FOREIGN KEY ("order_id") REFERENCES "Orders"("id")
);
