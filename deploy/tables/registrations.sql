-- Deploy dragonwright/database-registration-view:tables/registrations to pg
-- requires: schemas/registration

BEGIN;

CREATE TABLE "registration"."registrations" (
  "registration_id" UUID PRIMARY KEY,
  "player_id" UUID NOT NULL,
  "email_address" varchar NOT NULL,
  "is_email_rejected" BOOLEAN NOT NULL,
  "is_registered" BOOLEAN NOT NULL,
  "global_position" bigserial NOT NULL,
  "position" bigint NOT NULL,
  "created_at" TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  "updated_at" TIMESTAMP WITHOUT TIME ZONE NOT NULL
) WITHOUT OIDS;

COMMIT;
