-- Revert dragonwright/database-registration-view:privileges/registration_view_web from pg

BEGIN;

REVOKE USAGE ON SCHEMA registration FROM registration_view_web;

REVOKE SELECT ON registration.registrations FROM registration_view_web;

COMMIT;
