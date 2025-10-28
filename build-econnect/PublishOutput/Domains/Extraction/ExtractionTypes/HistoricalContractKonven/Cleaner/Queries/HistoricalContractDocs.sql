DELETE FROM 
    "HistoricalContractDocs" hcd
WHERE 
(hcd."Data"::jsonb->'additionalProperties'->>'snapshotDate')::timestamp = @ReportingDate;