-- Revert dragonwright/database-registration-view:roles/registration_view_web from pg

BEGIN;

DROP ROLE registration_view_web;

COMMIT;
