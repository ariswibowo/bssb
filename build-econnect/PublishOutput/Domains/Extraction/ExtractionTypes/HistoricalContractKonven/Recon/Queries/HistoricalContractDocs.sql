SELECT
	COUNT(*) AS "RowsLoaded"
FROM
	"HistoricalContractDocs"  hcd
WHERE
("Data"::jsonb->'additionalProperties'->>'snapshotDate')::timestamp = @ReportingDate;  