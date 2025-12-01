\echo '';
\echo 'Installing ImpairmentNominative table...';
\echo '';

CREATE TABLE "ImpairmentNominative" (
    "ReportingDate" timestamp without time zone NOT NULL,
    "Entity" varchar(50) NOT NULL,
    "ContractId" uuid NOT NULL,
    "OriginContractId" varchar(100) NOT NULL,
    "OriginSystemId" varchar(100) NOT NULL,
    "StartDate" timestamp without time zone NOT NULL,
    "MaturityDate" timestamp without time zone NULL,
    "Currency" char(3) NOT NULL,
    "ProductType" varchar(50) NOT NULL,
    "ProductSubtype" varchar(50) NOT NULL,
    "BusinessUnit" varchar(50) NULL,
    "Segment" varchar(50),
    "IsSecured" boolean NOT NULL,
    "EffectiveInterestRate" numeric(12, 9),
    "EffectiveInterestRateIncludingFeesAndCosts" numeric(12, 9),
    "PresentValue" numeric(20, 2),
    "PresentValueIncludingFeesAndCosts" numeric(20, 2),
    "DaysPastDue" integer,
    "CreditRatingAgency" varchar(50),
    "CreditRating" varchar(50),
    "Collectibility" varchar(50),
    "DiscountRate" numeric(12, 9),
    "OutstandingAmount" numeric(20, 2),
    "PrincipalAmount" numeric(20, 2),
    "InterestRate" numeric(12, 9),
    "AccruedInterest" numeric(20, 2),
    "LimitAmount" numeric(20, 2),
    "UndrawnAmount" numeric(20, 2),
    "Stage" varchar(50),
    "Level" varchar(50),
    "Ecl" numeric(20,2)
);

ALTER TABLE "ImpairmentNominative" OWNER TO "Elysian";