/***********************************************
** DATA ANALYTICS
** File: crowdfunding_db
** Desc: DDL Script for the crowdfunding_db Database
** Auth: Eunice Mwangi & Maero Lutta
** Date: 05/23/2024
** Ref : Crowdfunding ETL Mini Project
************************************************/


CREATE TABLE "category" (
    "category_id" VARCHAR(10)   NOT NULL,
    "category" VARCHAR(100)   NOT NULL,
    PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(20)   NOT NULL,
    "category" VARCHAR(100)   NOT NULL,
    PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(100)   NOT NULL,
    "last_name" VARCHAR(100)   NOT NULL,
    "email" VARCHAR(200)   NOT NULL,
    PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "campaign" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR(200)   NOT NULL,
    "goal" DECIMAL(10,1)   NOT NULL,
    "pledged" DECIMAL(10,1)   NOT NULL,
    "outcome" VARCHAR(100)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(100)   NOT NULL,
    "currency" VARCHAR(20)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(10)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT NULL,
    PRIMARY KEY ("cf_id"),
	FOREIGN KEY("category_id") REFERENCES "category" ("category_id"),
	FOREIGN KEY("subcategory_id") REFERENCES "subcategory" ("subcategory_id"),
	FOREIGN KEY("contact_id") REFERENCES "contacts" ("contact_id")
	
);


