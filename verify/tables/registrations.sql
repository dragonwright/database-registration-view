-- Verify dragonwright/database-registration-view:tables/registrations on pg

BEGIN;

SELECT
  "registration_id",
  "player_id",
  "email_address",
  "is_email_rejected",
  "is_registered",
  "global_position",
  "position",
  "created_at",
  "updated_at"
FROM "registration"."registrations"
WHERE FALSE;

ROLLBACK;
