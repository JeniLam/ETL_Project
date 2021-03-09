-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kb9hyh
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "museums" (
    "museum_code" integer   NOT NULL,
    "museum_abb" VARCHAR   NOT NULL,
    "museum_name" VARCHAR   NOT NULL,
    "museum_location" VARCHAR   NOT NULL,
    "collection_url" VARCHAR   NOT NULL,
    CONSTRAINT "pk_museums" PRIMARY KEY (
        "museum_code"
     )
);

CREATE TABLE "artists" (
    "artist_id" integer   NOT NULL,
    "artist_name" VARCHAR   NOT NULL,
    "artist_role" VARCHAR   NOT NULL,
    "nationality" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "birth_year" VARCHAR   NOT NULL,
    "birth_place" VARCHAR   NOT NULL,
    "death_year" VARCHAR   NOT NULL,
    "death_place" VARCHAR   NOT NULL,
    "wiki" VARCHAR   NOT NULL,
    "ulan" integer   NOT NULL,
    CONSTRAINT "pk_artists" PRIMARY KEY (
        "artist_id"
     )
);

CREATE TABLE "artwork" (
    "artwork_id" integer   NOT NULL,
    "artist_id" integer   NOT NULL,
    "museum_code" integer   NOT NULL,
    "ulan" VARCHAR   NOT NULL,
    "acc_num" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "medium" VARCHAR   NOT NULL,
    "acq" VARCHAR   NOT NULL,
    "create_year" VARCHAR   NOT NULL,
    "acq_date" VARCHAR   NOT NULL,
    "copyright" VARCHAR   NOT NULL,
    "thumb_url" VARCHAR   NOT NULL,
    "web_url" VARCHAR   NOT NULL,
    "artist_name" VARCHAR   NOT NULL,
    "dept" VARCHAR   NOT NULL,
    "donor_name" VARCHAR   NOT NULL,
    "classification" VARCHAR   NOT NULL,
    "donor_type" VARCHAR   NOT NULL,
    "donor_id" VARCHAR   NOT NULL,
    CONSTRAINT "pk_artwork" PRIMARY KEY (
        "artwork_id"
     )
);

ALTER TABLE "artwork" ADD CONSTRAINT "fk_artwork_artist_id" FOREIGN KEY("artist_id")
REFERENCES "artists" ("artist_id");

ALTER TABLE "artwork" ADD CONSTRAINT "fk_artwork_museum_code" FOREIGN KEY("museum_code")
REFERENCES "museums" ("museum_code");

