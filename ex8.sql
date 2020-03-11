DELETE FROM pet WHERE id IN (
    SELECT pet.id 
    FROM pet, person_pet, person
    WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = 'Zed'
);

SELECT * FROM pet;
SELECT * FROM person_pet;

DELETE FROM person_pet
    WHERE pet_id NOT IN (
        SELECT id FROM pet
    );

SELECT * FROM person_pet;

/* STUDY DRILL */
/*SELECT * FROM person_pet;

DELETE FROM person_pet WHERE pet_id IN 
    (
        SELECT pet_id FROM person_pet, pet
            WHERE 
            pet_id = pet.id AND
            pet.dead = 1
    );

SELECT * FROM person_pet;*/