DELETE 
FROM
  "CashFlowCollectionIndex" ci
  USING "CashFlowCollections" cc
  JOIN "CashFlowSnapshots" cs ON cc."SnapshotId" = cs."SnapshotId"
  JOIN "CashFlowDatasets" cd ON cs."DatasetId" = cd."DatasetId"
WHERE
  ci."CollectionId" = cc."CollectionId"
  AND cs."SnapshotDate" = @ReportingDate
  AND cd."Name" = 'Contractual-Cashflow-Konven';
