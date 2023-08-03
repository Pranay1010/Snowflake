-- Stage for loading EMPLOYEE_SALARY_DATA data from a local directory
CREATE OR REPLACE STAGE USER_DB_DEV.EMPLOYEE_DATA.EMPLOYEE_SALARY_STAGE
URL = 'C:///Users/kpran/Snowflake/directory/employee';