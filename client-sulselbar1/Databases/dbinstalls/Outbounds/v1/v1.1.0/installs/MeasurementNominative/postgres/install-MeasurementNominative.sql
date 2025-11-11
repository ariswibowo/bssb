\echo '';
\echo 'Installing MeasurementNominative table...';
\echo '';

CREATE TABLE "MeasurementNominative" (
    "ReportingDate" timestamp without time zone NOT NULL,
    "ContractId" uuid NOT NULL
);

ALTER TABLE "MeasurementNominative" OWNER TO "Elysian";