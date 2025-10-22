SELECT
  COUNT(*) AS RowsLoaded
FROM
  Contracts
WHERE
  ReportingDate = @ReportingDate
  AND SEGMENT IN ('TREASURY')