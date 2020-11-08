-- Revert dragonwright/database-registration-view:privileges/registration_view_data from pg

BEGIN;

REVOKE USAGE ON SCHEMA registration FROM registration_view_data;

REVOKE SELECT, INSERT, UPDATE, DELETE ON registration.registrations FROM registration_view_data;
REVOKE USAGE, SELECT ON SEQUENCE registration.registrations_global_position_seq FROM registration_view_data;

COMMIT;
