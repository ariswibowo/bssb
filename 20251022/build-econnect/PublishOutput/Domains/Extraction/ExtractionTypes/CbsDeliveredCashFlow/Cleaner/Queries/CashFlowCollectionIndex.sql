DELETE 
	ci
FROM
  CashFlowCollectionIndex ci
  JOIN CashFlowCollections cc ON ci.CollectionId = cc.CollectionId
  JOIN CashFlowSnapshots cs ON cc.SnapshotId = cs.SnapshotId
  JOIN CashFlowDatasets cd ON cs.DatasetId = cd.DatasetId
WHERE
  cs.SnapshotDate = @ReportingDate
  AND cd.Name = 'cbsdeliveredcashflow';
