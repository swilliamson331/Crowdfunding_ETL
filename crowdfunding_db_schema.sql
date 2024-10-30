CREATE TABLE "Campaign" (
    "cfID" int   NOT NULL,
    "ContactID" int   NOT NULL,
    "Company_name" varchar(70)   NOT NULL,
    "Description" varchar(200)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(20)  NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(3)   NOT NULL,
    "currency" varchar(4)   NOT NULL,
    "launch_date" Date   NOT NULL,
    "end_date" Date   NOT NULL,
    "CategoryID" varchar(5)   NOT NULL,
    "SubcategoryID" varchar(9)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cfID"
     )
);

CREATE TABLE "Contacts" (
    "ContactID" int   NOT NULL,
    "First_Name" varchar(20)   NOT NULL,
    "Last_Name" varchar(20)   NOT NULL,
    "Email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "ContactID"
     )
);

CREATE TABLE "Subcategory" (
    "SubcategoryID" varchar(9)   NOT NULL,
    "Subcategory" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "SubcategoryID"
     )
);

CREATE TABLE "Category" (
    "CategoryID" varchar(5)   NOT NULL,
    "Category" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "CategoryID"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_ContactID" FOREIGN KEY("ContactID")
REFERENCES "Contacts" ("ContactID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_CategoryID" FOREIGN KEY("CategoryID")
REFERENCES "Category" ("CategoryID");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_SubcategoryID" FOREIGN KEY("SubcategoryID")
REFERENCES "Subcategory" ("SubcategoryID");

