-- Deploy dragonwright/database-registration-view:roles/registration_view_data to pg
-- requires: schemas/registration

BEGIN;

CREATE ROLE registration_view_data LOGIN INHERIT;

GRANT message_store_reader TO registration_view_data;
GRANT message_store_writer TO registration_view_data;

ALTER ROLE registration_view_data SET search_path = message_store, registration, public;

COMMIT;
