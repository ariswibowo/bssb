SELECT
	COUNT(*) AS "RowsLoaded",
	SUM(c."OutstandingAmount") AS "OutstandingAmount"
FROM "Contracts" c
JOIN "ContractMaster" cm
  ON c."ContractMasterId" = cm."ContractMasterId"
 WHERE c."ReportingDate" = @ReportingDate
  AND cm."OriginSystemId" = 'credit'