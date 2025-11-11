\echo '';
\echo 'Installing OutboundExecutions table...';
\echo '';

CREATE TABLE "OutboundExecutions"(
	"ExecutionId" uuid NOT NULL,
	"ReportingDate" timestamp NOT NULL,
	"Type" varchar(50) NOT NULL,
	"OutboundType" varchar(50) NOT NULL,
	"Status" varchar(50) NOT NULL,
	"Data" text NOT NULL,
	"StartTimestamp" timestamp NOT NULL,
	"EndTimestamp" timestamp NULL,
	CONSTRAINT "PK_OutboundExecutions" PRIMARY KEY ("ExecutionId")
);

ALTER TABLE "OutboundExecutions" OWNER TO "Elysian";