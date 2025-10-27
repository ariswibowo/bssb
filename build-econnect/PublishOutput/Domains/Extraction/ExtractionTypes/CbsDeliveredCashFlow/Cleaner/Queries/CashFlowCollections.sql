DELETE 
	cc
FROM
  CashFlowCollections cc
  JOIN CashFlowSnapshots cs ON cc.SnapshotId = cs.SnapshotId
  JOIN CashFlowDatasets cd ON cs.DatasetId = cd.DatasetId
WHERE
  cs.SnapshotDate = @ReportingDate
  AND cd.Name = 'cbsdeliveredcashflow';
