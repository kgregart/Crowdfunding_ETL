-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- Drop the database if it already exists
DROP DATABASE IF EXISTS crowdfunding_db;

-- Create the crowdfunding_db database
CREATE DATABASE crowdfunding_db;

-- Connect to the crowdfunding_db database
\c crowdfunding_db;

-- Drop existing foreign key constraints and tables if they exist
DROP TABLE IF EXISTS "campaign";

DROP TABLE IF EXISTS "category";

DROP TABLE IF EXISTS "subcategory";

DROP TABLE IF EXISTS "contacts";

CREATE TABLE IF NOT EXISTS "campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR(50) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(3) NOT NULL,
    "currency" VARCHAR(3) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(10) NOT NULL,
    "subcategory_id" VARCHAR(10) NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id")
);

CREATE TABLE IF NOT EXISTS "category" (
    "category_id" VARCHAR(10) NOT NULL,
    "category" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

CREATE TABLE IF NOT EXISTS "subcategory" (
    "subcategory_id" VARCHAR(10) NOT NULL,
    "subcategory" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE IF NOT EXISTS "contacts" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR(100) NOT NULL,
    "last_name" VARCHAR(100) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);

ALTER TABLE IF EXISTS "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id");

ALTER TABLE IF EXISTS "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY ("category_id") REFERENCES "category" ("category_id");

ALTER TABLE IF EXISTS "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id");
