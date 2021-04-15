-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-09-27 13:38:27.953

-- tables
-- Table: genre
CREATE TABLE genre (
    genre_id int NOT NULL AUTO_INCREMENT,
    genre_name varchar(50) NOT NULL,
    description varchar(500) NULL,
    CONSTRAINT genre_pk PRIMARY KEY (genre_id)
);

-- Table: movie
CREATE TABLE movie (
    movie_id int NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    production_year int NOT NULL,
    duration int NOT NULL,
    description varchar(1000) NULL,
    CONSTRAINT movie_pk PRIMARY KEY (movie_id)
);

-- Table: movie_by_production_company
CREATE TABLE movie_by_production_company (
    movie_by_production_comoany_id int NOT NULL AUTO_INCREMENT,
    movie_movie_id int NOT NULL,
    production_company_id int NOT NULL,
    CONSTRAINT movie_by_production_company_pk PRIMARY KEY (movie_by_production_comoany_id)
);

-- Table: movie_genre
CREATE TABLE movie_genre (
    movie_genre_id int NOT NULL AUTO_INCREMENT,
    movie_id int NOT NULL,
    genre_id int NOT NULL,
    CONSTRAINT movie_genre_pk PRIMARY KEY (movie_genre_id)
);

-- Table: person
CREATE TABLE person (
    person_id int NOT NULL AUTO_INCREMENT,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    birth_date date NOT NULL,
    CONSTRAINT person_pk PRIMARY KEY (person_id)
);

-- Table: person_in_movie
CREATE TABLE person_in_movie (
    person_in_movie_id int NOT NULL AUTO_INCREMENT,
    person_id int NOT NULL,
    movie_id int NOT NULL,
    position_id int NOT NULL,
    role varchar(50) NULL,
    CONSTRAINT person_in_movie_pk PRIMARY KEY (person_in_movie_id)
);

-- Table: position
CREATE TABLE position (
    position_id int NOT NULL AUTO_INCREMENT,
    position_name varchar(50) NOT NULL,
    description varchar(500) NULL,
    CONSTRAINT position_pk PRIMARY KEY (position_id)
);

-- Table: production_company
CREATE TABLE production_company (
    production_company_id int NOT NULL AUTO_INCREMENT,
    company_name varchar(100) NOT NULL,
    company_address varchar(100) NULL,
    CONSTRAINT production_company_pk PRIMARY KEY (production_company_id)
);

-- Table: quote
CREATE TABLE quote (
    quote_id int NOT NULL AUTO_INCREMENT,
    quote_text varchar(1000) NOT NULL,
    person_in_movie_id int NOT NULL,
    CONSTRAINT quote_pk PRIMARY KEY (quote_id)
);

-- foreign keys
-- Reference: FilmGenre_Film (table: movie_genre)
ALTER TABLE movie_genre ADD CONSTRAINT FilmGenre_Film FOREIGN KEY FilmGenre_Film (movie_id)
    REFERENCES movie (movie_id);

-- Reference: FilmGenre_Genre (table: movie_genre)
ALTER TABLE movie_genre ADD CONSTRAINT FilmGenre_Genre FOREIGN KEY FilmGenre_Genre (genre_id)
    REFERENCES genre (genre_id);

-- Reference: PersonActingInFilm_Film (table: person_in_movie)
ALTER TABLE person_in_movie ADD CONSTRAINT PersonActingInFilm_Film FOREIGN KEY PersonActingInFilm_Film (movie_id)
    REFERENCES movie (movie_id);

-- Reference: PersonActingInFilm_Person (table: person_in_movie)
ALTER TABLE person_in_movie ADD CONSTRAINT PersonActingInFilm_Person FOREIGN KEY PersonActingInFilm_Person (person_id)
    REFERENCES person (person_id);

-- Reference: movie_by_production_company_movie (table: movie_by_production_company)
ALTER TABLE movie_by_production_company ADD CONSTRAINT movie_by_production_company_movie FOREIGN KEY movie_by_production_company_movie (movie_movie_id)
    REFERENCES movie (movie_id);

-- Reference: movie_by_production_company_production_company (table: movie_by_production_company)
ALTER TABLE movie_by_production_company ADD CONSTRAINT movie_by_production_company_production_company FOREIGN KEY movie_by_production_company_production_company (production_company_id)
    REFERENCES production_company (production_company_id);

-- Reference: person_in_movie_position (table: person_in_movie)
ALTER TABLE person_in_movie ADD CONSTRAINT person_in_movie_position FOREIGN KEY person_in_movie_position (position_id)
    REFERENCES position (position_id);

-- Reference: quote_person_in_movie (table: quote)
ALTER TABLE quote ADD CONSTRAINT quote_person_in_movie FOREIGN KEY quote_person_in_movie (person_in_movie_id)
    REFERENCES person_in_movie (person_in_movie_id);

-- End of file.

