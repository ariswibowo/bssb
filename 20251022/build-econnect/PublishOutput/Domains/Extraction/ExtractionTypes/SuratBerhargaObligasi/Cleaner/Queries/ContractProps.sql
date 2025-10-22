DELETE FROM
  "ContractProps" cp USING "Contracts" c
  JOIN "ContractMaster" cm ON c."ContractMasterId" = cm."ContractMasterId"
WHERE
  cp."ContractId" = c."ContractId"
  AND c."ContractMasterId" = cm."ContractMasterId"
  AND c."ReportingDate" = @ReportingDate
  AND c."Entity" = @Entity
  AND cm."OriginSystemId" = 'REPORTING_SYSTEM_SB'