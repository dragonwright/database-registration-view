-- Deploy dragonwright/database-registration-view:privileges/registration_view_data to pg
-- requires: roles/registration_view_data
-- requires: schemas/registration

BEGIN;

GRANT USAGE ON SCHEMA registration TO registration_view_data;

GRANT SELECT, INSERT, UPDATE, DELETE ON registration.registrations TO registration_view_data;
GRANT USAGE, SELECT ON SEQUENCE registration.registrations_global_position_seq TO registration_view_data;

COMMIT;
