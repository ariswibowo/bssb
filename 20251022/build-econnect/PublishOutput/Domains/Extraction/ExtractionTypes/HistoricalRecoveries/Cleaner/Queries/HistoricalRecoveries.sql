
DELETE 
	hcr
FROM
  HistoricalContractRecoveries hcr
  JOIN HistoricalSnapshots hcs ON hcr.SnapshotId = hcs.SnapshotId
  JOIN HistoricalDatasets hcd ON hcs.DatasetId = hcd.DatasetId
WHERE
  hcs.SnapshotDate = @ReportingDate
  AND hcd.Name = 'Dataset-One-Obligor';
