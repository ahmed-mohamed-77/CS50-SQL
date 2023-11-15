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
