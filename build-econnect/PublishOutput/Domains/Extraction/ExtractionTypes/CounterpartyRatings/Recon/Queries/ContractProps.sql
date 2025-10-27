SELECT
  COUNT(*) AS "RowsLoaded"
FROM "Contracts" c
JOIN "ContractMaster" cm
  ON c."ContractMasterId" = cm."ContractMasterId"
JOIN "ContractProps" cp
  ON cp."ContractId" = c."ContractId"
 WHERE c."ReportingDate" = @ReportingDate
  AND cm."OriginSystemId" = 'credit'