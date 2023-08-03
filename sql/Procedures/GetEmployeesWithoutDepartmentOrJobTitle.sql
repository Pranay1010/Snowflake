CREATE OR REPLACE PROCEDURE USER_DB_DEV.EMPLOYEE_DATA.GetEmployeesWithoutDepartmentOrJobTitle()
RETURNS TABLE (
    EEID VARCHAR,
    DEPARTMENT VARCHAR,
    BUSINESS_UNIT VARCHAR,
    JOB_TITLE VARCHAR
)
LANGUAGE SQL
AS
$$
    SELECT ED.EEID, ED.DEPARTMENT, ED.BUSINESS_UNIT, EJ.JOB_TITLE
    FROM USER_DB_DEV.EMPLOYEE_DATA.EMPLOYEE_DEPARTMENT_DATA ED
    FULL OUTER JOIN USER_DB_DEV.EMPLOYEE_DATA.EMPLOYEE_JOB_DATA EJ ON ED.EEID = EJ.EEID
    WHERE ED.EEID IS NULL OR EJ.EEID IS NULL;
$$;

