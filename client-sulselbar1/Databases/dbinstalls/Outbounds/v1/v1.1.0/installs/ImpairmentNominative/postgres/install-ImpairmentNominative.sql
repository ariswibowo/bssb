\echo '';
\echo 'Installing ImpairmentNominative table...';
\echo '';

CREATE TABLE "ImpairmentNominative" (
    "ReportingDate" timestamp without time zone NOT NULL,
    "ContractId" uuid NOT NULL,
    "Stage" varchar(50),
    "Level" varchar(50),
    "Ecl" numeric(20,2)
);

ALTER TABLE "ImpairmentNominative" OWNER TO "Elysian";