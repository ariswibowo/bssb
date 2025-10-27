DELETE FROM
  "Counterparties" cp
WHERE
  cp."CounterpartyId" IN 
  (
    SELECT 
      c."CounterpartyId"
    FROM "Contracts" c
    INNER JOIN "ContractMaster" cm ON cm."ContractMasterId" = c."ContractMasterId"
    WHERE 
      c."ReportingDate" = @ReportingDate
  )