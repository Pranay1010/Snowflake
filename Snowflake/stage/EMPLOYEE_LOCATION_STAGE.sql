-- Stage for loading EMPLOYEE_LOCATION_DATA data from Azure
CREATE OR REPLACE STAGE USER_DB_DEV.EMPLOYEE_DATA.EMPLOYEE_LOCATION_STAGE
URL = 'azure://container_21/employee_data/employee_location/'
CREDENTIALS = (AZURE_SAS_TOKEN = 'Rcp2gQPfV7WAlURddTqCa+qEArnfJxDgE+KH3LAAhIs=');