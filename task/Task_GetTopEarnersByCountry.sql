-- Create task
CREATE OR REPLACE TASK Task_GetTopEarnersByCountry
    WAREHOUSE = PRANAY_DB_DEV
    SCHEDULE = 'EVERY 1 DAY'
AS
CALL GetTopEarnersByCountry();