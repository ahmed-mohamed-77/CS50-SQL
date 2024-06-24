id, which represents the unique ID of the meteorite.
name, which represents the given name of the meteorite.
class, which is the classification of the meteorite, according to the traditional classification scheme.
mass, which is the weight of the meteorite, in grams.
discovery, which is either “Fell” or “Found”. “Fell” indicates the meteorite was seen falling to Earth, whereas “Found” indicates the meteorite was found only after landing on Earth.
year, which is the year in which the the meteorite was discovered.
lat, which is the latitude at which the meteorite landed.
long, which is the longitude at which the meteorite landed.


CREATE TABLE IF NOT EXISTS "meteorite" (
    "id" INTEGER
    "name" VARCHAR(50) NOT NULL,
    "class" VARCHAR(15) NOT NULL,
    "mass" REAL NOT NULL,
    "discovery" VARCHAR(15) NOT NULL,
    "year" REAL NOT NULL,
    "lat" REAL NOT NULL,
    "long" REAL NOT NULL
)
