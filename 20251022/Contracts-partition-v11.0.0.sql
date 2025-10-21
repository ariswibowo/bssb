DROP TABLE IF EXISTS "Contracts";

CREATE TABLE "Contracts" (
    "ContractId" uuid NOT NULL,
    "ContractMasterId" uuid NOT NULL,
    "ReportingDate" timestamp without time zone NOT NULL,
    "Entity" varchar(50) NOT NULL,
    "IsAdjusted" boolean NOT NULL,
    "ProductType" varchar(50) NOT NULL,
    "ProductSubtype" varchar(50) NOT NULL,
    "BusinessUnit" varchar(50) NULL,
    "CounterpartyId" uuid NOT NULL,
    "BaseLgd" numeric(12, 9),
    "BasePd" numeric(12, 9),
    "CreditRating" varchar(50),
    "CreditRatingAgency" varchar(50),
    "Collectibility" varchar(50),
    "IsRestructured" boolean NOT NULL,
    "Currency" char(3) NOT NULL,
    "CurrentPd" numeric(12, 9),
    "DaysPastDue" integer,
    "DiscountRate" numeric(12, 9),
    "EffectiveInterestRate" numeric(12, 9),
    "EffectiveInterestRateIncludingFeesAndCosts" numeric(12, 9),
    "Segment" varchar(50),
    "IsSecured" boolean NOT NULL,
    "InitialPd" numeric(12, 9),
    "InterestRate" numeric(12, 9),
    "InterestSpread" numeric(12, 9),
    "InterestCurve" varchar(50),
    "StartDate" timestamp without time zone NOT NULL,
    "MaturityDate" timestamp without time zone NULL,
    "PrincipalAmount" numeric(20, 2),
    "OutstandingAmount" numeric(20, 2),
    "LimitAmount" numeric(20, 2),
    "UndrawnAmount" numeric(20, 2),
    "AccruedInterest" numeric(20, 2),
    "PresentValue" numeric(20, 2),
    "PresentValueIncludingFeesAndCosts" numeric(20, 2),
    "Data" text NULL,
    "CreatedBy" uuid NOT NULL,
    "CreatedWhen" timestamp without time zone NOT NULL,
    "LastModifiedBy" uuid NOT NULL,
    "LastModifiedWhen" timestamp without time zone NOT NULL,
    "AsLb" varchar(1) NULL,
    "IsNew" boolean NOT NULL DEFAULT false,
    "SearchText" text NULL
) PARTITION BY RANGE ("ReportingDate");

ALTER TABLE ONLY "Contracts"
    ADD CONSTRAINT "PK_Contracts" PRIMARY KEY ("ReportingDate", "ContractId");

ALTER TABLE "Contracts" 
    ADD CONSTRAINT "FK_Contracts_ContractMaster_ContractMasterId"
        FOREIGN KEY ("ContractMasterId") 
        REFERENCES "ContractMaster" ("ContractMasterId") ON DELETE CASCADE;

ALTER TABLE "Contracts" OWNER TO "Elysian";

CREATE INDEX "IX_Contracts_ReportingDate_Entity" ON "Contracts" USING btree ("ReportingDate", "Entity");
