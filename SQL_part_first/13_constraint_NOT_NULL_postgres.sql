-- ALTER TABLE users
-- ALTER COLUMN full_name SET NOT NULL,
-- ALTER COLUMN current_status SET NOT NULL;


ALTER TABLE employers
ALTER COLUMN company_name SET NOT NULL,
ALTER COLUMN company_address SET NOT NULL,
ALTER COLUMN is_hiring SET NOT NULL;

ALTER TABLE conversation
ALTER COLUMN user_name SET NOT NULL,
ALTER COLUMN employer_name SET NOT NULL,
ALTER COLUMN message SET NOT NULL,
ALTER COLUMN date_sent SET NOT NULL;