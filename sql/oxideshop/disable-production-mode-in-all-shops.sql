-- Disable production mode in all shops for local testing
UPDATE  oxshops
SET     `OXPRODUCTIVE` = '0';
