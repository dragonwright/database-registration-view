-- Deploy dragonwright/database-registration-view:privileges/registration_view_web to pg
-- requires: roles/registration_view_web
-- requires: schemas/registration

BEGIN;

GRANT USAGE ON SCHEMA registration TO registration_view_web;

GRANT SELECT ON registration.registrations TO registration_view_web;

COMMIT;
