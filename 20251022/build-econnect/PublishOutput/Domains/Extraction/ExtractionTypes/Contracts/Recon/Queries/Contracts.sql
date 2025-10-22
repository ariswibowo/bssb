SELECT
  COUNT(*) AS RowsLoaded
FROM
  Contracts
WHERE
  ReportingDate = @ReportingDate
  AND ISNULL([SEGMENT],'') NOT IN ('TREASURY')