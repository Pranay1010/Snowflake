-- Create Tasks
CREATE OR REPLACE TASK Task_GetEmployeeDetailsWithAttributes
    WAREHOUSE = PRANAY_DB_DEV
    SCHEDULE = 'EVERY 1 HOUR'
AS
CALL GetEmployeeDetailsWithAttributes();