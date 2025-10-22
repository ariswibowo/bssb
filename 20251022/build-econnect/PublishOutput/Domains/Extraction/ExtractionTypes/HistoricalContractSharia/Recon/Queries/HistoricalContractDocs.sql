SELECT
	OBS."ObservationCount" AS "RowsLoaded"
FROM
(
	SELECT 
		COUNT(obs.val->>'observationId') AS "ObservationCount", 
		SUM(CAST(obs.val->>'outstandingAmount' AS NUMERIC)) AS "OutstandingAmount"
	FROM "HistoricalContractDocs" hc
	JOIN LATERAL 
	jsonb_array_elements(hc."Observations"::jsonb->'observations') obs(val)
	ON TO_DATE(obs.val->>'observationDate', 'YYYY-MM-DD') = @ReportingDate
) OBS