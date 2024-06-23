
CREATE TABLE IF NOT EXISTS "ingredients" (
    "id" INTEGER,
    "name" VARCHAR(50) NOT NULL,
    "unit" INTEGER NOT NULL,
    "price_per_unit" REAL,

    CONSTRAINT ingredients_PK PRIMARY KEY ("id")
);


Donuts
We’ll need to include our selection of donuts, past and present! For each donut on the menu, we’d love to include three things:

The name of the donut
Whether the donut is gluten-free
The price per donut
Oh, and it’s important that we be able to look up the ingredients for each of the donuts!


CREATE TABLE IF NOT EXISTS "donuts" (
    "id" INTEGER,
    "name" VARCHAR(50) NOT NULL,
    "
    CONSTRAINT donuts_PK PRIMARY KEY ("id")
)
