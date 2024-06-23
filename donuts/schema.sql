Ingredients
We certainly need to keep track of our ingredients. Some of the typical ingredients we
use include flour, yeast, oil, butter, and several different types of sugar. Moreover, we would love to keep track of
the price we pay per unit of ingredient (whether it’s pounds, grams, etc.).

CREATE TABLE IF NOT EXISTS "ingredients" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR(50) NOT NULL,
    "unit" INTEGER NOT NULL,
    "price_per_unit" 
)
