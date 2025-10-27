SELECT
  COUNT(*) AS RowsLoaded
FROM
  HistoricalContractObservations hco
  JOIN HistoricalSnapshots hs ON hco.SnapshotId = hs.SnapshotId
  JOIN HistoricalDatasets hd ON hs.DatasetId = hd.DatasetId
WHERE
  hd.Name = 'Dataset-One-Obligor'
  AND hs.SnapshotDate = @ReportingDate;