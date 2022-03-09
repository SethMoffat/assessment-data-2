
CREATE TABLE animals(
animal_id SERIAL PRIMARY KEY,
animal_name VARCHAR(50) NOT NULL,
when_rescued TIMESTAMP NOT NULL,
animal_care_routine INT NOT NULL references care_routines(care_routine_id)
);

CREATE TABLE adopter(
adopter_id SERIAL PRIMARY KEY ,
reason_for_adoption VARCHAR(80) Not NULL,
animal_adopted INT NOT NULL REFERENCES animals(animal_id) NOT NULL,
criminal_record VARCHAR NOT NULL
);

CREATE TABLE care_routines(
care_routine_id SERIAL PRIMARY KEY,
special_care VARCHAR(1000),
animal_medicine_content VarChar(1000),
animal_history TEXT

);

Create Table Adoption_agency_supplies(
    food_quantity VARCHAR(300),
    medicine_quantity VarChar(300),
    stock_needs TEXT REFERENCES care_routines(special_care)
);