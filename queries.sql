-- Create an "animals" table with columns for: [species, name, age, was fed (yes/no), their favorite food] ✅
CREATE TABLE animals (
id INTEGER,
species TEXT,
name TEXT,
age INTEGER,
was_fed TEXT,
favorite_food TEXT,
PRIMARY KEY(id)
);

-- Populate the table with some animals you like ✅ (I did this ⬇️ for every animal I added!) ✅
INSERT INTO animals (species, name, age, was_fed, favorite_food)
VALUES("Tiger", "Max", 3, "No", "Meat");

-- Update some properties of the animal - anything you like e.g. their age or if they were fed ✅
UPDATE animals SET was_fed="yes" WHERE name="Max";

-- Remove one of the animals - they are being transfered to a different zoo 😦
DELETE FROM animals WHERE name="Max";

-- Remove the column for their favourite_food, you don't need that information anymore (Note: if you run into issues running the command, feel free to skip this step)
ALTER TABLE animals DROP favorite_food;

-- Start tracking where the animals are from. Call it origin and add a city for a couple animals. ✅
ALTER TABLE animals ADD COLUMN  origin ; -- added a column  named origin for the whole table ✅
UPDATE animals SET origin="Rugove - Peje" WHERE name="Luna"; -- added a city for each animal like this ✅

-- Can you feed all the animals using just one command? ✅
UPDATE animals SET was_fed="Yes";