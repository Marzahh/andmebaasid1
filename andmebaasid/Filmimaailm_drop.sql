-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-09-27 13:38:27.953

-- foreign keys
ALTER TABLE movie_genre
    DROP FOREIGN KEY FilmGenre_Film;

ALTER TABLE movie_genre
    DROP FOREIGN KEY FilmGenre_Genre;

ALTER TABLE person_in_movie
    DROP FOREIGN KEY PersonActingInFilm_Film;

ALTER TABLE person_in_movie
    DROP FOREIGN KEY PersonActingInFilm_Person;

ALTER TABLE movie_by_production_company
    DROP FOREIGN KEY movie_by_production_company_movie;

ALTER TABLE movie_by_production_company
    DROP FOREIGN KEY movie_by_production_company_production_company;

ALTER TABLE person_in_movie
    DROP FOREIGN KEY person_in_movie_position;

ALTER TABLE quote
    DROP FOREIGN KEY quote_person_in_movie;

-- tables
DROP TABLE genre;

DROP TABLE movie;

DROP TABLE movie_by_production_company;

DROP TABLE movie_genre;

DROP TABLE person;

DROP TABLE person_in_movie;

DROP TABLE position;

DROP TABLE production_company;

DROP TABLE quote;

-- End of file.

