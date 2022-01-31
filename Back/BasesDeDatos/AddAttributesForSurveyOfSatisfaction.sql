/*Coolaborators: Fatima_Azucena_Martinez_Cadena and Raul_Hernandez_Lopez_@Neo
 *Date: wednesday, december 29
 *Description: stored procedure for inserting data to the satisfaction_survey table*/

DELIMITER //
CREATE OR REPLACE PROCEDURE AddAttributesForSatisfactionSurvey (in IDSATISFACTIONSURVEY VARCHAR(30), in LEVELOFSATISFACTION INT(1), in COMENTS VARCHAR(120), FOLIOTICKET VARCHAR(30))
BEGIN
        INSERT INTO survey VALUES (IDSATISFACTIONSURVEY , CURRENT_TIMESTAMP, LEVELOFSATISFACTION, COMENTS, FOLIOTICKET);
END //
DELIMITER ;

