-- Create task
CREATE OR REPLACE TASK Task_GetOldestEmployeesByGender
    WAREHOUSE = PRANAY_DB_DEV
    SCHEDULE = 'EVERY 1 DAY'
AS
CALL GetOldestEmployeesByGender();