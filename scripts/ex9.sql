SELECT * FROM person;

UPDATE person SET first_name = 'Hilarious Guy'
    WHERE first_name = 'Zed';

UPDATE pet SET name = 'Fancy Pants'
    WHERE id = 0;

SELECT * FROM person;
SELECT * FROM pet;

UPDATE person SET first_name = 'Zed'
    WHERE first_name = 'Hilarious Guy';

SELECT * FROM person;

UPDATE pet SET name = 'DECEASED'
    WHERE dead = 1;

SELECT * FROM pet;