-- Shuja Uddin
-- Used for a select statement in the procedure.
ALTER TABLE `mpr_test_data` ADD FULLTEXT( `execution_status`);

-- Procedure to process all rows from mpr_test_data.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `import_movies_people_data`(OUT `processed_row_count` INT)
BEGIN
	DECLARE mpr_id INT(6);
	DECLARE nativename VARCHAR(180);
    DECLARE yearmade INT(4);
    DECLARE stagename, screenname VARCHAR(30);
    DECLARE role_data VARCHAR(20);
    DECLARE executionstatus VARCHAR(100);
    DECLARE finished INT(1);
    
    DECLARE mpr_cursor CURSOR FOR
    	SELECT id, native_name, year_made, stage_name, role, screen_name
        FROM mpr_test_data;
    
    DECLARE CONTINUE HANDLER
    FOR NOT FOUND SET finished = 1;
    
    OPEN mpr_cursor;
    
    get_row: LOOP
    	FETCH mpr_cursor INTO mpr_id, nativename, yearmade, stagename, role_data, screenname;
        IF finished = 1 THEN
        	LEAVE get_row;
        END IF;
        CALL process_mpr_single_row(nativename, yearmade, stagename, role_data, screenname, executionstatus);
        UPDATE `mpr_test_data` SET `execution_status` = executionstatus WHERE `mpr_test_data`.`id` = mpr_id;
    END LOOP get_row;

    CLOSE mpr_cursor;
    
    SELECT COUNT(execution_status)
    INTO processed_row_count
    FROM mpr_test_data
    WHERE MATCH(execution_status) AGAINST('created');
END$$
DELIMITER ;


-- SQL script for processing all rows
CALL import_movies_people_data(@count);

SELECT @count;