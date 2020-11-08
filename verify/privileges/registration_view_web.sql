-- Verify dragonwright/database-registration-view:privileges/registration_view_web on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('registration_view_web', 'registration', 'usage');

SELECT pg_catalog.has_table_privilege('registration_view_web', 'registration.registrations', 'select');

ROLLBACK;
