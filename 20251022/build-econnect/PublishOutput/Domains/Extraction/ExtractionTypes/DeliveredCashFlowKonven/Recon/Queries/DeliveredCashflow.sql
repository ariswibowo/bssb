SELECT
  COUNT(*) AS "RowsLoaded"
FROM
  "CashFlowCollections" cfc
  JOIN "CashFlowSnapshots" cfs ON cfc."SnapshotId" = cfs."SnapshotId"
  JOIN "CashFlowDatasets" cfd ON cfs."DatasetId" = cfd."DatasetId"
WHERE
  cfd."Name" = 'Contractual-Cashflow-Konven'
  AND cfs."SnapshotDate" = @ReportingDate;