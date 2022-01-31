/*Coolaborators: Fatima_Azucena_Martinez_Cadena and Raul_Hernandez_Lopez_@Neo
 *Date: wednesday, december 29
 *Description: creates a database with two tables, users and survey with their 
 *respective attributes*/
CREATE OR REPLACE DATABASE Satisfaction_system;

USE 'Satisfaction_system';

/*Creation of the users table if it already exists it is deleted and a new one is 
created*/
DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id_user varchar(30) NOT NULL,
        type_of_user varchar(30) DEFAULT 'Starndard user',
        name_of_user varchar(100) NOT NULL,
        password varchar(30) NOT NULL,
        status varchar(10) DEFAULT 'Inactive',
	PRIMARY KEY(id_user)
);

/*Creation of the survey_satisfactio table if it already exists it is deleted and a new one is
 created*/
DROP TABLE IF EXISTS satisfaction_survey;
CREATE TABLE satisfaction_survey(
        id_satisfaction_survey varchar(30) NOT NULL,
	id_user1 varchar(30) NOT NULL,
        date_and_time datetime NOT NULL,
        level_of_satisfaction int(1) NOT NULL,
        coment varchar(120) NOT NULL,
        folio_ticket varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY(id_satisfaction_survey),
	FOREIGN KEY(id_user1)
		REFERENCES users(id_user)
);

/*Creation of the survey table if it already exists it is deleted and a new one is
 created*/
DROP TABLE IF EXISTS surveys;
CREATE TABLE surveys(
	id_survey VARCHAR(30),
	name_survey VARCHAR(50) NOT NULL UNIQUE,
	PRIMARY KEY(id_survey)
);
