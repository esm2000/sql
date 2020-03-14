/* add a dead column to person */
ALTER TABLE person ADD COLUMN dead INTEGER;

/* add a phone_number column to person */
ALTER TABLE person ADD COLUMN phone_number TEXT;

/* add a salary column to person that's float */
ALTER TABLE person ADD COLUMN salary REAL;

/* add a dob column to both person and pet that is DATETIME */
ALTER TABLE person ADD COLUMN dob DATETIME;

.schema person

ALTER TABLE pet ADD COLUMN dob DATETIME;

/* Add a purchased_on column of type DATETIME to person_pet */
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

.schema person_pet

/* Add a parent column to pet that contains the id of a pet's parent*/
ALTER TABLE pet ADD COLUMN parent INTEGER;

.schema pet

/* Update the existing database records with the new column data using UPDATE statements */
UPDATE person 
    SET dead = 0, phone_number = "555-555-5555", salary = 120000.0, dob = "1983-03-21", weight = 180, height = '5''9"'
    WHERE id = 0;

UPDATE person
    SET dead = 0, phone_number = "646-555-5555", salary = 5000, dob = "1998-12-28", weight = 225, height = '6''4"'
    WHERE id = 1;

SELECT * FROM person;

UPDATE pet 
    SET dob = "1020-12-28"
    WHERE age = 1000;

UPDATE pet 
    SET dob = "2019-01-31"
    WHERE breed = "Robot";

SELECT * FROM pet;

UPDATE person_pet
    SET purchased_on = "1990-04-04"
    WHERE person_id = 0 AND 
    pet_id = 0;

UPDATE person_pet
    SET purchased_on = "2020-01-01"
    WHERE person_id = 0 AND 
    pet_id = 1;

UPDATE person_pet
    SET purchased_on = "2010-05-04"
    WHERE person_id = 1 AND 
    pet_id = 0;

UPDATE person_pet
    SET purchased_on = "2020-02-04"
    WHERE person_id = 1 AND 
    pet_id = 1;

SELECT * FROM person_pet;

/* Add four more people. */
INSERT INTO person(id, first_name, last_name, age, height, weight, dead, phone_number, salary, dob)
    VALUES(2, "Eliza", "Vasquez", 23, '5''5"', 140, 0, "347-555-5555", 15000, "1997-07-21");

INSERT INTO person(id, first_name, last_name, age, height, weight, dead, phone_number, salary, dob)
    VALUES(3, "Bob", "the Builder", 45, '5''7"', 190, 0, "555-555-5555", 70000, "1975-07-21");

INSERT INTO person(id, first_name, last_name, age, height, weight, dead, phone_number, salary, dob)
    VALUES(4, "Dead", "Guy1", 80, '6''7"', 250, 1, "666-555-5555", 0, "1940-07-21");

INSERT INTO person(id, first_name, last_name, age, height, weight, dead, phone_number, salary, dob)
    VALUES(5, "Dead", "Guy2", 56, '5''5"', 250, 1, "555-555-5555", 0, "1964-07-21");

SELECT * FROM person;

/* Add five more pets. */
INSERT INTO pet(id, name, breed, age, dead, dob)
    VALUES(2, "Sparky", "Dog", 8, 0, "2012-05-04");

INSERT INTO pet(id, name, breed, age, dead, dob, parent)
    VALUES(3, "Fluffer", "Unicorn", 500, 1, "2012-05-04", 0);

INSERT INTO pet(id, name, breed, age, dead, dob)
    VALUES(4, "Megatron", "Robot", 1500, 0, "0500-07-04");

UPDATE pet 
    SET parent = 3
    WHERE id = 1;

INSERT INTO pet(id, name, breed, age, dead, dob)
    VALUES(5, "Rocky", "Rock", 1, 1, "2019-06-20");

INSERT INTO pet(id, name, breed, age, dead, dob, parent)
    VALUES(6, "Rockette", "Rock", 2, 1, "2018-07-18", 4);

SELECT * FROM pet;

/* Update person_pet */
INSERT INTO person_pet(person_id, pet_id, purchased_on) 
    VALUES(3, 2, "2003-01-02");

INSERT INTO person_pet(person_id, pet_id, purchased_on)
    VALUES(6, 3, "2003-09-08");

INSERT INTO person_pet(person_id, pet_id, purchased_on)
    VALUES(4, 4, "1986-08-12");

INSERT INTO person_pet(person_id, pet_id, purchased_on)
    VALUES(5, 5, "2019-09-08");

INSERT INTO person_pet(person_id, pet_id, purchased_on)
    VALUES(5, 6, "2018-09-08");

SELECT * FROM person_pet;

/* Write a query that can find all the names of pets and their owners bought after 2004. */
SELECT pet.name, person.first_name, person.last_name 
    FROM pet, person, person_pet 
    WHERE 
    pet.id = person_pet.pet_id AND
    person.id = person_pet.person_id AND
    person_pet.purchased_on > "2004-01-01";

/* Write a query that can find the pets that are children of a given pet. */
SELECT * FROM pet WHERE parent = 4;
SELECT * FROM pet WHERE parent = 3;
SELECT * FROM pet WHERE parent = 0;

    







