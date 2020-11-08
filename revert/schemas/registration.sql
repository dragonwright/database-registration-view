-- Revert dragonwright/database-registration-view:schemas/registration from pg

BEGIN;

DROP SCHEMA registration;

COMMIT;
