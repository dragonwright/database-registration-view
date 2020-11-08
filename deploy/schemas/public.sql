-- Deploy dragonwright/database-registration-view:schemas/public to pg

BEGIN;

DROP SCHEMA IF EXISTS public;

COMMIT;
