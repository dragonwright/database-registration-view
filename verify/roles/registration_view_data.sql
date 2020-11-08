-- Verify dragonwright/database-registration-view:roles/registration_view_data on pg

BEGIN;

SELECT 1/COUNT(*) FROM pg_roles WHERE rolname = 'registration_view_data';

ROLLBACK;
