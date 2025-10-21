DROP TABLE IF EXISTS "Counterparties";

CREATE TABLE "Counterparties" (
    "CounterpartyId" uuid NOT NULL,
    "ReportingDate" timestamp without time zone NOT NULL,
    "Name" varchar(300) NOT NULL,
    "CounterpartyType" varchar(50) NOT NULL,
    "BusinessUnit" varchar(50) NULL,
    "IsStale" boolean NOT NULL,
    "NumContracts" integer NOT NULL,
    "TotalOutstanding" numeric(20, 2) NOT NULL,
    "Collectibility" varchar(50) NOT NULL,
    "HasRestructure" boolean NOT NULL,
    "MaxDaysPastDue" integer NOT NULL,
    "Data" text NULL,
    "CreatedBy" uuid NOT NULL,
    "CreatedWhen" timestamp without time zone NOT NULL,
    "LastModifiedBy" uuid NOT NULL,
    "LastModifiedWhen" timestamp without time zone NOT NULL,
    "CounterpartyMasterId" uuid NOT NULL,
    "IsNew" boolean NOT NULL DEFAULT false,
    "IsAdjusted" boolean NOT NULL DEFAULT false,
    "SearchText" text NULL
) PARTITION BY RANGE ("ReportingDate");

ALTER TABLE ONLY "Counterparties"
    ADD CONSTRAINT "PK_Counterparties" PRIMARY KEY ("ReportingDate", "CounterpartyId");

ALTER TABLE "Counterparties" OWNER TO "Elysian";

ALTER TABLE "Counterparties" 
    ADD CONSTRAINT "FK_Counterparties_CounterpartyMaster_CounterpartyMasterId"
        FOREIGN KEY ("CounterpartyMasterId") 
        REFERENCES "CounterpartyMaster" ("CounterpartyMasterId") ON DELETE CASCADE;

CREATE UNIQUE INDEX "IX_Counterparties_CounterpartyId" ON "Counterparties" USING btree ("ReportingDate", "CounterpartyId");
CREATE INDEX "IX_Counterparties_ReportingDate" ON "Counterparties" USING btree ("ReportingDate");