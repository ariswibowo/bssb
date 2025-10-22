SELECT
  COUNT(*) AS "RowsLoaded"
FROM "Counterparties" c
 WHERE c."ReportingDate" = @ReportingDate