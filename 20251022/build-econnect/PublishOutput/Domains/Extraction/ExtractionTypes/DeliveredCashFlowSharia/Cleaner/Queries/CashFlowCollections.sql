DELETE 
FROM
  "CashFlowCollections" cc
  USING "CashFlowSnapshots" cs
  JOIN "CashFlowDatasets" cd ON cs."DatasetId" = cd."DatasetId"
WHERE
  cc."SnapshotId" = cs."SnapshotId"
  AND cs."SnapshotDate" = @ReportingDate
  AND cd."Name" = 'Contractual-Cashflow-Syariah';
