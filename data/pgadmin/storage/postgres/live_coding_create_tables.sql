-- temp table 1
DROP TABLE IF EXISTS public."Products1";
CREATE TABLE public."Products1"
(
    "ProductName" character varying(50) COLLATE pg_catalog."default",
    "UnitPrice" money
) WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

-- temp table 2
DROP TABLE IF EXISTS public."Products2";
CREATE TABLE public."Products2"
(
    "ProductName" character varying(50) COLLATE pg_catalog."default",
    "UnitPrice" money
) WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

-- instert some data

INSERT INTO public."Products1"("ProductName", "UnitPrice") VALUES ('Melon', 800);
INSERT INTO public."Products1"("ProductName", "UnitPrice") VALUES ('Strawberry', 150);
INSERT INTO public."Products1"("ProductName", "UnitPrice") VALUES ('Apple', 120);
INSERT INTO public."Products1"("ProductName", "UnitPrice") VALUES ('Lemon', 200);

INSERT INTO public."Products2"("ProductName", "UnitPrice") VALUES ('Melon', 800);
INSERT INTO public."Products2"("ProductName", "UnitPrice") VALUES ('Strawberry', 150);
INSERT INTO public."Products2"("ProductName", "UnitPrice") VALUES ('Chestnut', 100);
INSERT INTO public."Products2"("ProductName", "UnitPrice") VALUES ('Persimmon', 350);

-- Table: public."Sales"

DROP TABLE IF EXISTS public."Sales";

CREATE TABLE public."Sales"
(
    "Date" character varying(10) COLLATE pg_catalog."default" NOT NULL,
    "ProductCode" bigint NOT NULL,
    "Quantity" double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

-- insert some data
INSERT
	INTO public."Sales"
	("Date", "ProductCode", "Quantity")
	VALUES ('11/1', 102, 1100);

INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/1', 101, 300);
INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/5', 103, 1700);
INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/8', 101, 500);

INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/12', 103, 700);
INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/11', 103, 620);
INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/1', 102, 200);
INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/3', 102, 600);
INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/3', 104, 500);
INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/6', 104, 510);
INSERT INTO public."Sales"("Date", "ProductCode", "Quantity") VALUES ('11/9', 104, 20);


-- Table: public."Products"

DROP TABLE IF EXISTS public."Products";

CREATE TABLE public."Products"
(
    "ProductCode" SERIAL NOT NULL UNIQUE,
    "ProductName" character varying(50) COLLATE pg_catalog."default",
    "UnitPrice" money,
	"District" character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT "Products_pkey" PRIMARY KEY ("ProductCode")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;


-- insert some data
INSERT
	INTO public."Products"
	("ProductCode", "ProductName", "UnitPrice", "District")
	VALUES (101, 'Melon', 800, 'South Sea');

INSERT INTO public."Products"("ProductCode", "ProductName", "UnitPrice", "District") VALUES (102, 'Strawberry', 150, 'Middle');
INSERT INTO public."Products"("ProductCode", "ProductName", "UnitPrice", "District") VALUES (103, 'Apple', 120, 'North Sea');
INSERT INTO public."Products"("ProductCode", "ProductName", "UnitPrice", "District") VALUES (104, 'Lemon', 200, 'South Sea');
INSERT INTO public."Products"("ProductCode", "ProductName", "UnitPrice", "District") VALUES (201, 'Chestnut', 100, 'North Sea');
INSERT INTO public."Products"("ProductCode", "ProductName", "UnitPrice", "District") VALUES (202, 'Persimmon', 160, 'Middle');
INSERT INTO public."Products"("ProductCode", "ProductName", "UnitPrice", "District") VALUES (301, 'Peach', 130, 'South Sea');
INSERT INTO public."Products"("ProductCode", "ProductName", "UnitPrice", "District") VALUES (302, 'Kiwi', 200, 'South Sea');



-- Table: public."ExportDestinations"

DROP TABLE IF EXISTS public."ExportDestinations";

CREATE TABLE public."ExportDestinations"
(
    "ExportDestCode" bigint NOT NULL,
    "ExportDestName" character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT "ExportDestinations_pkey" PRIMARY KEY ("ExportDestCode")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;



-- insert some data
INSERT INTO public."ExportDestinations"("ExportDestCode", "ExportDestName") VALUES (12, 'The Kingdom of Minanmi');
INSERT INTO public."ExportDestinations"("ExportDestCode", "ExportDestName") VALUES (23, 'Alpha Empire');
INSERT INTO public."ExportDestinations"("ExportDestCode", "ExportDestName") VALUES (25, 'The Kingdom of Ritol');
