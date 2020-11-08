-- Verify dragonwright/database-registration-view:privileges/registration_view_data on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('registration_view_data', 'registration', 'usage');

SELECT pg_catalog.has_table_privilege('registration_view_data', 'registration.registrations', 'select');
SELECT pg_catalog.has_table_privilege('registration_view_data', 'registration.registrations', 'insert');
SELECT pg_catalog.has_table_privilege('registration_view_data', 'registration.registrations', 'update');
SELECT pg_catalog.has_table_privilege('registration_view_data', 'registration.registrations', 'delete');
SELECT has_sequence_privilege('registration_view_data', 'registration.registrations_global_position_seq', 'usage');
SELECT has_sequence_privilege('registration_view_data', 'registration.registrations_global_position_seq', 'select');

ROLLBACK;
