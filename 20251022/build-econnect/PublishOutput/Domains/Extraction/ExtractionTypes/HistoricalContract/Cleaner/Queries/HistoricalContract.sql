
DELETE 
	hco
FROM
  HistoricalContractObservations hco
  JOIN HistoricalSnapshots hcs ON hco.SnapshotId = hcs.SnapshotId
  JOIN HistoricalDatasets hcd ON hcs.DatasetId = hcd.DatasetId
WHERE
  hcs.SnapshotDate = @ReportingDate
  AND hcd.Name = 'Dataset-One-Obligor';
