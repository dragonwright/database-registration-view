-- Revert dragonwright/database-registration-view:tables/registrations from pg

BEGIN;

DROP TABLE "registration"."registrations";

COMMIT;
