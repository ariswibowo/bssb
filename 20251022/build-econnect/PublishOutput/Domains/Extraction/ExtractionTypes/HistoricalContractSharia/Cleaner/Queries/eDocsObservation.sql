-- Remove data observations for a specified observationDate
WITH obs AS (
    SELECT "OriginContractId",
           "Observations"::jsonb #- array ['observations',(position - 1)::text] AS new_value
    FROM "HistoricalContractDocs",
         jsonb_array_elements("Observations"::jsonb -> 'observations') WITH ORDINALITY arr(item, position)
    WHERE TO_DATE(item ->> 'observationDate', 'YYYY-MM-DD') = @ReportingDate
)
UPDATE "HistoricalContractDocs" SET "Observations" = obs.new_value FROM obs WHERE "HistoricalContractDocs"."OriginContractId" = obs."OriginContractId";