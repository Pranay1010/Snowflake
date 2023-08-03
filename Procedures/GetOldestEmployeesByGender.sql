-- Create procedure
CREATE OR REPLACE PROCEDURE USER_DB_DEV.EMPLOYEE_DATA.GetOldestEmployeesByGender()
RETURNS TABLE (
    GENDER VARCHAR,
    EMPLOYEE_FULL_NAME VARCHAR,
    AGE INTEGER,
    RANK INTEGER
)
LANGUAGE SQL
AS
$$
    WITH RankedEmployees AS (
        SELECT EN.GENDER,
               EN.EMPLOYEE_FULL_NAME,
               EA.AGE::INTEGER,
               RANK() OVER (PARTITION BY EN.GENDER ORDER BY EA.AGE::INTEGER DESC) AS RANK
        FROM USER_DB_DEV.EMPLOYEE_DATA.EMPLOYEE_NAME_DATA EN
        JOIN USER_DB_DEV.EMPLOYEE_DATA.EMPLOYEE_AGE_DATA EA ON EN.EEID = EA.FULL_NAME
    )
    SELECT GENDER, EMPLOYEE_FULL_NAME, AGE, RANK
    FROM RankedEmployees
    WHERE RANK = 1;
$$;

