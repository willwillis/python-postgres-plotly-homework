-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "cardholder" (
    "cardholder_id" int   NOT NULL,
    "cardholder_name" varchar(120)   NOT NULL,
    CONSTRAINT "pk_cardholder" PRIMARY KEY (
        "cardholder_id"
     )
);

CREATE TABLE "creditcard" (
    "creditcard_number" int   NOT NULL,
    "cardholder_id" int   NOT NULL,
    CONSTRAINT "pk_creditcard" PRIMARY KEY (
        "creditcard_number"
     )
);

CREATE TABLE "merchant" (
    "merchant_id" int   NOT NULL,
    "merchant_name" varchar(120)   NOT NULL,
    "category_id" int   NOT NULL,
    CONSTRAINT "pk_merchant" PRIMARY KEY (
        "merchant_id"
     )
);

CREATE TABLE "merchant_category" (
    "category_id" int   NOT NULL,
    "category_name" varchar(120)   NOT NULL,
    CONSTRAINT "pk_merchant_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "transaction" (
    "transaction_id" int   NOT NULL,
    "transaction_date" date   NOT NULL,
    "transaction_amount" float   NOT NULL,
    "merchant_id" int   NOT NULL,
    "creditcard_id" int   NOT NULL,
    CONSTRAINT "pk_transaction" PRIMARY KEY (
        "transaction_id"
     )
);

ALTER TABLE "creditcard" ADD CONSTRAINT "fk_creditcard_cardholder_id" FOREIGN KEY("cardholder_id")
REFERENCES "cardholder" ("cardholder_id");

ALTER TABLE "merchant" ADD CONSTRAINT "fk_merchant_category_id" FOREIGN KEY("category_id")
REFERENCES "merchant_category" ("category_id");

ALTER TABLE "transaction" ADD CONSTRAINT "fk_transaction_merchant_id" FOREIGN KEY("merchant_id")
REFERENCES "merchant" ("merchant_id");

ALTER TABLE "transaction" ADD CONSTRAINT "fk_transaction_creditcard_id" FOREIGN KEY("creditcard_id")
REFERENCES "creditcard" ("creditcard_number");

