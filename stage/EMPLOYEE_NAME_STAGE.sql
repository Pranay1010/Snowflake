-- Stage for loading EMPLOYEE_NAME_DATA data from AWS S3
CREATE OR REPLACE STAGE USER_DB_DEV.EMPLOYEE_DATA.EMPLOYEE_NAME_STAGE
URL = 's3://employee_data/'
CREDENTIALS = (AWS_KEY_ID = 'AKIAAIOSFODNN7EXAMPLE' AWS_SECRET_KEY = 'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY');