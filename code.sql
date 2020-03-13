DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS person_car;

CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

ALTER TABLE person ADD COLUMN height INTEGER;
ALTER TABLE person ADD COLUMN weight INTEGER;

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);

CREATE TABLE car (
    id INTEGER PRIMARY KEY,
    model TEXT,
    year INTEGER,
    insurance TEXT
);

CREATE TABLE person_car (
    person_id INTEGER,
    car_id INTEGER
);

INSERT INTO person(id, first_name, last_name, age)
    VALUES (0, 'Zed', 'Shaw', 37);

INSERT INTO pet(id, name, breed, age, dead)
    VALUES (0, 'Fluffy', 'Unicorn', 1000, 0);
    
INSERT INTO pet VALUES (1, 'Gigantor', 'Robot', 1, 1);

INSERT INTO person_pet(person_id, pet_id) VALUES (0,0);
INSERT INTO person_pet VALUES (0,1);

INSERT INTO person(id, first_name, last_name, age)
    VALUES (1, "Emeka", "Mbazor", 21);

INSERT INTO person_pet(person_id, pet_id) VALUES (1,0);
INSERT INTO person_pet VALUES (1,1);

/* make sure there's dead pets */
SELECT name, age FROM pet WHERE dead = 1;

DELETE FROM pet WHERE dead = 1;

/* make sure dead pets are gone */
SELECT * FROM pet;

INSERT INTO pet(id, name, breed, age, dead) VALUES (1, 'Gigantor', 'Robot', 1, 1);

SELECT * FROM pet;

/* STUDY DRILL */
SELECT * FROM pet;
DELETE FROM pet WHERE name = 'Fluffy';
SELECT * FROM pet;
INSERT INTO pet(id, name, breed, age, dead) VALUES(0, 'Fluffy', 'Unicorn', 1000, 0);
SELECT * FROM pet;