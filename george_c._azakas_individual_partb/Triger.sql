DELIMITER $$
CREATE TRIGGER StudentKeyGeneratorOnInsert
	BEFORE INSERT on students for each row
BEGIN
declare temp_day char(2);
declare temp_month char(2);
declare temp_year char(2);
declare temp_date char(6);
declare temp_partial_pk char(4);
declare temp_pk char(10);
set temp_day = SUBSTRING(new.dateOfBirth, 9, 2);
set temp_month = SUBSTRING(new.dateOfBirth, 6, 2);
set temp_year = SUBSTRING(new.dateOfBirth, 3, 2);
set temp_date = CONCAT(temp_day,temp_month,temp_year);
set temp_partial_pk = CAST(new.studentKey AS char(4));
set temp_pk = CONCAT(temp_date,temp_partial_pk);
set new.studentKey = CAST(temp_pk AS UNSIGNED);
END $$
DELIMITER ;