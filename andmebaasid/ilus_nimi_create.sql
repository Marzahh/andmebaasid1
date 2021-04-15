-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-09-29 10:06:39.125

-- tables
-- Table: movie
CREATE TABLE movie (
    movie_id int NOT NULL,
    title varchar(100) NOT NULL,
    CONSTRAINT movie_pk PRIMARY KEY (movie_id)
);

-- Table: person
CREATE TABLE person (
    person_id int NOT NULL AUTO_INCREMENT,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    birth_date date NOT NULL,
    CONSTRAINT person_pk PRIMARY KEY (person_id)
);

-- Table: person_in_movie
CREATE TABLE person_in_movie (
    person_in_movie_id int NOT NULL,
    role varchar(100) NOT NULL,
    person_id int NOT NULL,
    movie_id int NOT NULL,
    CONSTRAINT person_in_movie_pk PRIMARY KEY (person_in_movie_id)
);

-- foreign keys
-- Reference: person_in_movie_movie (table: person_in_movie)
ALTER TABLE person_in_movie ADD CONSTRAINT person_in_movie_movie FOREIGN KEY person_in_movie_movie (movie_id)
    REFERENCES movie (movie_id);

-- Reference: person_in_movie_person (table: person_in_movie)
ALTER TABLE person_in_movie ADD CONSTRAINT person_in_movie_person FOREIGN KEY person_in_movie_person (person_id)
    REFERENCES person (person_id);

-- End of file.

