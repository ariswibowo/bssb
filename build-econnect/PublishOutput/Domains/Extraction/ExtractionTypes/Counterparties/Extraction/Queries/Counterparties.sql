SELECT
     DISTINCT
     [REPOSTING_DATE] AS 'reposting_date'
    ,[ORIGIN_SYSTEMID] AS 'origin_systemid'
    ,[ORIGIN_COUNTER_PARTYDID] AS 'origin_counter_partydid'
    ,[ORIGIN_COUNTER_PARTY_NAME] AS 'origin_counter_party_name'
    --,[BUSINESS_UNIT] AS 'business_unit'
FROM [PSAK71_STG_MIG].[dbo].[PSAK_CONTRACT]
WHERE 1=1
AND [REPOSTING_DATE] = @ReportingDate
GROUP BY 
     [REPOSTING_DATE]
    ,[ORIGIN_SYSTEMID]
    ,[ORIGIN_COUNTER_PARTYDID]
    ,[ORIGIN_COUNTER_PARTY_NAME]
    --,[BUSINESS_UNIT]