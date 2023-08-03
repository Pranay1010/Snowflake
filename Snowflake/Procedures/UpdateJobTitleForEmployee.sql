CREATE OR REPLACE PROCEDURE USER_DB_DEV.EMPLOYEE_DATA.UpdateJobTitleForEmployee(
    in_eeid VARCHAR,
    in_new_job_title VARCHAR
)
LANGUAGE SQL
AS
$$
    UPDATE USER_DB_DEV.EMPLOYEE_DATA.EMPLOYEE_JOB_DATA
    SET JOB_TITLE = in_new_job_title
    WHERE EEID = in_eeid;
$$;
