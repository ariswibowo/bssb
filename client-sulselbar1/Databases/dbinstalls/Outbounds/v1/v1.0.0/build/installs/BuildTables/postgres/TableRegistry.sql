\echo '';
\echo 'Installing TableRegistry table...';
\echo '';

CREATE SEQUENCE "TableRegistry_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE "TableRegistry" (
    "RegistryId" uuid NOT NULL,
    "DeckId" uuid NOT NULL,
    "TableType" varchar(100) NOT NULL,
    "TableName" varchar(100) NOT NULL,
    "Status" varchar(50) NOT NULL,
    "Data" text,
    "CreatedWhen" timestamp without time zone NOT NULL,
    "LastModifiedWhen" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "TableRegistry" ADD CONSTRAINT "PK_TableRegistry" PRIMARY KEY ("RegistryId");

ALTER TABLE "TableRegistry" OWNER TO "Elysian";