/*Coolaborators: Fatima_Azucena_Martinez_Cadena and Raul_Hernandez_Lopez_@Neo
*Date: wednesday, december 29
*Description: stored procedure for inserting data to the surbeys table*/

DELIMITER //
CREATE OR REPLACE PROCEDURE AddAttributesForSurveys(in IDSURVEY VARCHAR(50), in NAME VARCHAR(50))
BEGIN
	INSERT INTO surveys VALUES (IDSURVEY, NAME);
END //
DELIMITER ;
