SELECT
	COUNT(*) AS "RowsLoaded"
FROM "CounterpartyRatings" cpr
--JOIN "Contracts" c
--  ON cpr."CounterpartyId" = c."CounterpartyId"
-- WHERE c."ReportingDate" = @ReportingDate