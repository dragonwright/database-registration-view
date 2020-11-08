-- Deploy dragonwright/database-registration-view:roles/registration_view_web to pg
-- requires: schemas/registration

BEGIN;

CREATE ROLE registration_view_web LOGIN INHERIT;

ALTER ROLE registration_view_web SET search_path = registration, public;

COMMIT;
