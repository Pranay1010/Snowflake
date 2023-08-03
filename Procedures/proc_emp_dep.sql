CREATE OR REPLACE PROCEDURE USER_DB_DEV.EMPLOYEE_DATA.GetEmployeesByDepartmentAndJobTitle(
    in_department VARCHAR,
    in_job_title VARCHAR
)
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
    JOIN USER_DB_DEV.EMPLOYEE_DATA.EMPLOYEE_JOB_DATA EJ ON ED.EEID = EJ.EEID
    WHERE ED.DEPARTMENT = in_department AND EJ.JOB_TITLE = in_job_title;
$$;
